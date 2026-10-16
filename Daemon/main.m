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
    if ([action hasPrefix:TGShortcutPrefix]) {
        // Channel v3: the whole WorkflowKit chain runs here (no sandbox, full
        // DB access) — SpringBoard only drops the request in the queue.
        TGRunShortcutInDaemon([action substringFromIndex:TGShortcutPrefix.length]);
    } else if ([action hasPrefix:TGShellPrefix]) {
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

// ===== Shortcut channel v3: run the whole WorkflowKit chain HERE (no sandbox,
// full DB access) instead of inside SpringBoard. SB only posts the name.
static id s_scDb;
static id s_scObserver;

static void TGSCLog(NSString *msg) {
    [NSFileManager.defaultManager createDirectoryAtPath:@"/var/mobile/Library/Triggr" withIntermediateDirectories:YES attributes:nil error:nil];
    NSString *line = [NSString stringWithFormat:@"[sc %@] %@\n",
        [NSDateFormatter new].dateFormat ? @"x" : @"x", msg]; // replaced below
    NSDateFormatter *df = [NSDateFormatter new];
    df.dateFormat = @"MM-dd HH:mm:ss";
    line = [NSString stringWithFormat:@"[sc %@] %@\n", [df stringFromDate:[NSDate date]], msg];
    FILE *fp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
    if (fp) { fwrite(line.UTF8String, 1, line.length, fp); fclose(fp); }
}

@interface TGSCObserver : NSObject
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end
@implementation TGSCObserver
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled {
    // Result sink for phase 2: write to file for SB to consume.
    TGSCLog([NSString stringWithFormat:@"done: out=%@ err=%@ cancelled=%d",
        output ? @"(data)" : @"(null)", error ? error : @"(null)", cancelled]);
}
@end

static void TGRunShortcutInDaemon(NSString *name) {
    if (!s_scObserver) s_scObserver = [TGSCObserver new];
    dlopen("/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient", RTLD_LAZY);
    dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", RTLD_LAZY);
    Class dbCls = NSClassFromString(@"WFDatabase");
    if (!dbCls) { TGSCLog(@"no WFDatabase"); return; }
    // Fresh database per run: the Shortcuts App may have changed things since.
    s_scDb = nil;
    @try {
        NSPersistentStoreDescription *desc = [[NSPersistentStoreDescription alloc]
            initWithURL:[NSURL fileURLWithPath:@"/var/mobile/Library/Shortcuts/Shortcuts.sqlite"]];
        desc.type = NSSQLiteStoreType;
        NSError *dbErr = nil;
        id db = ((id (*)(id, SEL, id, BOOL, BOOL, NSError *__autoreleasing *))objc_msgSend)([dbCls alloc],
            @selector(initWithStoreDescription:runMigrationsIfNecessary:useLockFile:error:),
            desc, YES, YES, &dbErr);
        if (!db) { TGSCLog([NSString stringWithFormat:@"db init nil: %@", dbErr]); return; }
        s_scDb = db;
        id list = ((id (*)(id, SEL))objc_msgSend)(db, @selector(sortedVisibleWorkflowsByName));
        if (![list respondsToSelector:@selector(descriptors)]) { TGSCLog(@"no descriptors"); return; }
        NSArray *arr = ((id (*)(id, SEL))objc_msgSend)(list, @selector(descriptors));
        NSString *ident = nil;
        for (id ref in arr) {
            NSString *nm = [ref respondsToSelector:@selector(name)] ? [ref name] : nil;
            if ([nm isEqualToString:name]) {
                ident = [ref respondsToSelector:@selector(identifier)] ? [ref identifier] : nil;
                break;
            }
        }
        if (!ident.length) { TGSCLog([NSString stringWithFormat:@"not found: %@", name]); return; }
        TGSCLog([NSString stringWithFormat:@"resolved: %@ -> %@", name, ident]);
        Class clientCls = NSClassFromString(@"WFSpringBoardWorkflowRunnerClient")
                       ?: NSClassFromString(@"WFWidgetWorkflowRunnerClient");
        if (!clientCls) { TGSCLog(@"no client class"); return; }
        id client = ((id (*)(id, SEL, id))objc_msgSend)([clientCls alloc],
            @selector(initWithWorkflowIdentifier:), ident);
        if (!client) { TGSCLog(@"client init nil"); return; }
        if ([client respondsToSelector:@selector(setDelegate:)])
            ((void (*)(id, SEL, id))objc_msgSend)(client, @selector(setDelegate:), s_scObserver);
        ((void (*)(id, SEL))objc_msgSend)(client, @selector(start));
        TGSCLog([NSString stringWithFormat:@"started via %@", NSStringFromClass(clientCls)]);
    } @catch (NSException *e) {
        TGSCLog([NSString stringWithFormat:@"exc: %@", e]);
    }
}

// Daemon lifecycle log (own file; SB uses diag.log). mobile user, same dir.
static void TGDLog(NSString *msg) {
    [NSFileManager.defaultManager createDirectoryAtPath:@"/var/mobile/Library/Triggr" withIntermediateDirectories:YES attributes:nil error:nil];
    NSDateFormatter *df = [NSDateFormatter new];
    df.dateFormat = @"MM-dd HH:mm:ss";
    NSString *line = [NSString stringWithFormat:@"[daemon %@] %@\n", [df stringFromDate:[NSDate date]], msg];
    FILE *fp = fopen("/var/mobile/Library/Triggr/daemon.log", "a");
    if (fp) { fwrite(line.UTF8String, 1, line.length, fp); fclose(fp); }
}



// Watches the live database for writes (Shortcuts App commits to its WAL) and
// syncs on change. Event-driven: zero polling. Re-arms itself if the file is
// replaced; a 300ms debounce merges bursty WAL commits into one copy.
static void TGWatchShortcutDB(void);
static dispatch_source_t s_vnodes[3]; // .sqlite / -wal / -shm

static void TGWatchFile(int idx, const char *path) {
    // SQLite runs in WAL mode: commits land in -wal, so all three files are
    // watched — any of them moving means the database changed.
    static const char *suffixes[3] = {"", "-wal", "-shm"};
    char full[256];
    snprintf(full, sizeof(full), "/var/mobile/Library/Shortcuts/Shortcuts.sqlite%s", suffixes[idx]);
    int fd = open(full, O_RDONLY);
    if (fd < 0) return; // e.g. no WAL/shm yet — main file is always there
    dispatch_source_t src = dispatch_source_create(DISPATCH_SOURCE_TYPE_VNODE, fd,
                                 DISPATCH_VNODE_WRITE | DISPATCH_VNODE_EXTEND | DISPATCH_VNODE_DELETE | DISPATCH_VNODE_RENAME,
                                 dispatch_get_main_queue());
    s_vnodes[idx] = src;
    __block BOOL armed = YES;
    dispatch_source_set_event_handler(src, ^{
        if (!armed) return;
        armed = NO; // re-arm below after handling
        dispatch_source_cancel(src);
        static dispatch_source_t debounce;
        if (debounce) { dispatch_source_cancel(debounce); debounce = nil; }
        debounce = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        dispatch_source_set_timer(debounce, dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)),
                                  DISPATCH_TIME_FOREVER, 0);
        dispatch_source_set_event_handler(debounce, ^{
            debounce = nil;
            TGSyncShortcutDB();
            TGWatchShortcutDB(); // re-arm all three (DELETE invalidates fds)
        });
        dispatch_resume(debounce);
    });
    dispatch_source_set_cancel_handler(src, ^{ close(fd); });
    dispatch_resume(src);
}

static void TGWatchShortcutDB(void) {
    for (int i = 0; i < 3; i++) {
        if (s_vnodes[i]) { dispatch_source_cancel(s_vnodes[i]); s_vnodes[i] = nil; }
    }
    static const char *suffixes[3] = {"", "-wal", "-shm"};
    for (int i = 0; i < 3; i++) {
        char full[256];
        snprintf(full, sizeof(full), "/var/mobile/Library/Shortcuts/Shortcuts.sqlite%s", suffixes[i]);
        TGWatchFile(i, full);
    }
}

// Copies the shortcuts database into the Triggr dir so SpringBoard (sandboxed

// Copies the shortcuts database into the Triggr dir so SpringBoard (sandboxed
// out of /var/mobile/Library/Shortcuts, POSIX EPERM on 16.3) can read it.
// Plain file work: no WorkflowKit in this process, minimal moving parts.
static void TGSyncShortcutDB(void) {
    TGDLog(@"sync begin");
    NSFileManager *files = NSFileManager.defaultManager;
    [files createDirectoryAtPath:@"/var/mobile/Library/Triggr" withIntermediateDirectories:YES attributes:nil error:nil];
    for (NSString *suffix in @[@"", @"-wal", @"-shm"]) {
        NSString *src = [@"/var/mobile/Library/Shortcuts/Shortcuts.sqlite" stringByAppendingString:suffix];
        NSString *dst = [TGShortcutDBCopy stringByAppendingString:suffix];
        BOOL srcThere = [files fileExistsAtPath:src];
        if (!srcThere) { TGDLog([NSString stringWithFormat:@"sync: src missing%@", suffix]); continue; }
        [files removeItemAtPath:dst error:nil];
        NSError *e = nil;
        BOOL ok = [files copyItemAtPath:src toPath:dst error:&e];
        if (ok) chmod(dst.fileSystemRepresentation, 0644);
        TGDLog([NSString stringWithFormat:@"sync: copy%@ %@", suffix, ok ? @"ok" : [NSString stringWithFormat:@"FAILED %@", e]]);
    }
    TGDLog(@"sync done");
}

int main(void) {
    @autoreleasepool {
        // Only the mobile user (SpringBoard) may drop requests here.
        [NSFileManager.defaultManager createDirectoryAtPath:TGRunQueue withIntermediateDirectories:YES attributes:@{NSFilePosixPermissions: @0700} error:nil];
        chmod(TGRunQueue.fileSystemRepresentation, 0700);
        int token;
        notify_register_dispatch(TGRunRequestNotification, &token, dispatch_get_main_queue(), ^(int t) { TGDrainQueue(); });
        TGDLog(@"daemon started (this line = fresh binary running)");
        int dbToken;
        notify_register_dispatch(TGShortcutDBRefreshNotification, &dbToken, dispatch_get_main_queue(), ^(int t) {
            TGDLog(@"refresh notification received");
            TGSyncShortcutDB();
        });

        TGSyncShortcutDB();
        TGWatchShortcutDB();
        TGDrainQueue();
        dispatch_main();
    }
}
