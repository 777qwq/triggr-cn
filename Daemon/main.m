// triggrd: runs Triggr's commands (Run Command, action extensions) for
// SpringBoard where SpringBoard itself isn't allowed to start programs (iOS 18).
//
// SpringBoard drops one plist per request ({Action = "shell:…" | "ext:…"}) in
// TGRunQueue and posts TGRunRequestNotification. triggrd runs a request only
// if that exact action is in one of the user's Triggr assignments or menus, so
// nothing but what the user set up can be run through it. Runs as mobile.
#import <Foundation/Foundation.h>
#import <notify.h>
#import <spawn.h>
#import <sys/wait.h>
#import <sys/stat.h>
#import <fcntl.h>
#import "../Shared/TGCatalog.h"
#import "../Shared/TGPaths.h"

extern char **environ;

// Every action in the user's assignments and menus.
static NSSet<NSString *> *TGAllowedActions(void) {
    CFStringRef domain = (__bridge CFStringRef)TGDomain;
    CFPreferencesAppSynchronize(domain);
    NSArray *keys = CFBridgingRelease(CFPreferencesCopyKeyList(domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost));
    NSDictionary *values = keys.count ? CFBridgingRelease(CFPreferencesCopyMultiple((__bridge CFArrayRef)keys, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) : @{};
    NSMutableSet *allowed = [NSMutableSet set];
    [values enumerateKeysAndObjectsUsingBlock:^(NSString *key, id value, BOOL *stop) {
        if (![key containsString:@"/"]) return; // "<mode>/<trigger>" and "menu/<id>" only
        for (id item in [value isKindOfClass:NSArray.class] ? value : @[value])
            if ([item isKindOfClass:NSString.class]) [allowed addObject:item];
    }];
    return allowed;
}

static void TGRun(const char *const argv[]) {
    const char *envp[] = {TG_SHELL_PATH, "HOME=/var/mobile", "USER=mobile", "LANG=en_US.UTF-8", NULL};
    posix_spawn_file_actions_t actions;
    posix_spawn_file_actions_init(&actions);
    posix_spawn_file_actions_addopen(&actions, STDIN_FILENO, "/dev/null", O_RDONLY, 0);
    posix_spawn_file_actions_addopen(&actions, STDOUT_FILENO, "/dev/null", O_WRONLY, 0);
    posix_spawn_file_actions_addopen(&actions, STDERR_FILENO, "/dev/null", O_WRONLY, 0);
    pid_t pid = 0;
    if (posix_spawn(&pid, TGJB(@"/bin/sh").fileSystemRepresentation, &actions, NULL, (char *const *)argv, (char *const *)envp) == 0) {
        // Reaped on a background queue so a slow command never blocks the next.
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{ int status; waitpid(pid, &status, 0); });
    }
    posix_spawn_file_actions_destroy(&actions);
}

static void TGPerform(NSString *action) {
    if ([action hasPrefix:TGShellPrefix]) {
        const char *argv[] = {"sh", "-c", [action substringFromIndex:TGShellPrefix.length].UTF8String, NULL};
        TGRun(argv);
    } else if ([action hasPrefix:TGExtensionPrefix]) {
        NSArray *parts = TGExtensionAction(action);
        NSString *program = TGExtension(parts[0])[@"Program"];
        if (!program) return;
        const char *argv[] = {"sh", program.UTF8String, [parts[1] UTF8String], NULL};
        TGRun(argv);
    }
}

static void TGDrainQueue(void) {
    NSFileManager *files = NSFileManager.defaultManager;
    NSArray *names = [[files contentsOfDirectoryAtPath:TGRunQueue error:nil] sortedArrayUsingSelector:@selector(compare:)];
    if (!names.count) return;
    NSSet *allowed = TGAllowedActions();
    for (NSString *name in names) {
        NSString *path = [TGRunQueue stringByAppendingPathComponent:name];
        NSDictionary *request = [NSDictionary dictionaryWithContentsOfFile:path];
        [files removeItemAtPath:path error:nil];
        NSString *action = request[@"Action"];
        if (![action isKindOfClass:NSString.class] || (![action hasPrefix:TGShellPrefix] && ![action hasPrefix:TGExtensionPrefix])) continue;
        if ([allowed containsObject:action]) {
            TGPerform(action);
            continue;
        }
        // A setting saved a moment ago may not have reached this process yet:
        // look once more shortly before refusing.
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if ([TGAllowedActions() containsObject:action]) TGPerform(action);
        });
    }
}

static void TGSyncShortcutDB(void); // fwd — the watcher calls it

// Watches the live database for writes (Shortcuts App commits to its WAL) and
// syncs on change. Event-driven: zero polling. Re-arms itself if the file is
// replaced; a 300ms debounce merges bursty WAL commits into one copy.
static void TGWatchShortcutDB(void) {
    static dispatch_source_t src;
    static dispatch_source_t debounce;
    int fd = open("/var/mobile/Library/Shortcuts/Shortcuts.sqlite", O_RDONLY);
    if (fd < 0) { // DB may not exist yet; retry on the next refresh poke
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(60ull * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{ TGWatchShortcutDB(); });
        return;
    }
    src = dispatch_source_create(DISPATCH_SOURCE_TYPE_VNODE, fd,
                                 DISPATCH_VNODE_WRITE | DISPATCH_VNODE_EXTEND | DISPATCH_VNODE_DELETE | DISPATCH_VNODE_RENAME,
                                 dispatch_get_main_queue());
    dispatch_source_set_event_handler(src, ^{
        if (debounce) { dispatch_source_cancel(debounce); debounce = nil; }
        debounce = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        dispatch_source_set_timer(debounce, dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)),
                                  DISPATCH_TIME_FOREVER, 0);
        dispatch_source_set_event_handler(debounce, ^{
            debounce = nil;
            TGSyncShortcutDB();
            if (src) { dispatch_source_cancel(src); src = nil; TGWatchShortcutDB(); } // re-arm
        });
        dispatch_resume(debounce);
    });
    dispatch_source_set_cancel_handler(src, ^{ close(fd); });
    dispatch_resume(src);
}

// Copies the shortcuts database into the Triggr dir so SpringBoard (sandboxed

// Copies the shortcuts database into the Triggr dir so SpringBoard (sandboxed
// out of /var/mobile/Library/Shortcuts, POSIX EPERM on 16.3) can read it.
// Plain file work: no WorkflowKit in this process, minimal moving parts.
static void TGSyncShortcutDB(void) {
    NSFileManager *files = NSFileManager.defaultManager;
    [files createDirectoryAtPath:@"/var/mobile/Library/Triggr" withIntermediateDirectories:YES attributes:nil error:nil];
    for (NSString *suffix in @[@"", @"-wal", @"-shm"]) {
        NSString *src = [@"/var/mobile/Library/Shortcuts/Shortcuts.sqlite" stringByAppendingString:suffix];
        NSString *dst = [TGShortcutDBCopy stringByAppendingString:suffix];
        if (![files fileExistsAtPath:src]) continue;
        [files removeItemAtPath:dst error:nil];
        if ([files copyItemAtPath:src toPath:dst error:nil]) chmod(dst.fileSystemRepresentation, 0644);
    }
}

int main(void) {
    @autoreleasepool {
        // Only the mobile user (SpringBoard) may drop requests here.
        [NSFileManager.defaultManager createDirectoryAtPath:TGRunQueue withIntermediateDirectories:YES attributes:@{NSFilePosixPermissions: @0700} error:nil];
        chmod(TGRunQueue.fileSystemRepresentation, 0700);
        int token;
        notify_register_dispatch(TGRunRequestNotification, &token, dispatch_get_main_queue(), ^(int t) { TGDrainQueue(); });
        int dbToken;
        notify_register_dispatch(TGShortcutDBRefreshNotification, &dbToken, dispatch_get_main_queue(), ^(int t) { TGSyncShortcutDB(); });
        TGSyncShortcutDB();
        TGWatchShortcutDB();
        TGDrainQueue();
        dispatch_main();
    }
}
