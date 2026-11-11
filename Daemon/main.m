// triggrd: runs Triggr's commands (Run Command) for SpringBoard where
// SpringBoard itself isn't allowed to start programs (iOS 18).
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
        // "<mode>/<trigger>" and "menu/<id>" only. 仅当条件键（if:…）的值是条件，
        // 不是可执行的动作，别把它们放进白名单。
        if (![key containsString:@"/"] || [key hasPrefix:TGOnlyKeyPrefix]) return;
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
    int error = posix_spawn(&pid, TGJB(@"/bin/sh").fileSystemRepresentation, &actions, NULL, (char *const *)argv, (char *const *)envp);
    if (error == 0) {
        // Reaped on a background queue so a slow command never blocks the next.
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{ int status; waitpid(pid, &status, 0); });
    } else {
        NSLog(@"[triggrd] 起不来 sh（errno %d），这条命令没执行", error);
    }
    posix_spawn_file_actions_destroy(&actions);
}

static void TGPerform(NSString *action) {
    if ([action hasPrefix:TGShellPrefix]) {
        const char *argv[] = {"sh", "-c", [action substringFromIndex:TGShellPrefix.length].UTF8String, NULL};
        TGRun(argv);
    } else if ([action hasPrefix:TGExtensionPrefix]) {
        // 扩展动作：sh 跑 Program，条目名单独作一个参数。这里只按 plist 里写的程序走，
        // 不拼接、不解释条目名——它在 plist 的目录里能出现，就已经是文件名了。
        NSArray *parts = TGExtensionAction(action);
        NSString *program = parts ? TGExtension(parts[0])[@"Program"] : nil;
        if (!program) {
            NSLog(@"[triggrd] 扩展未找到或缺少 Program：%@", action);
            return;
        }
        const char *argv[] = {"sh", program.UTF8String, [parts[1] UTF8String], NULL};
        TGRun(argv);
    }
}

// 白名单里暂时没有这个动作时的退避重试。CFPreferences 的跨进程可见性不是立刻的，
// 只等 0.5 s 再判一次，在偏好刚改完的那几秒里经常判不过——然后请求就被静默丢掉了，
// 用户只看到「命令没跑」。这里最多再等约 1.5 s，仍不通过才写一行日志。
static void TGRetry(NSString *action, int attempt) {
    if ([TGAllowedActions() containsObject:action]) {
        TGPerform(action);
        return;
    }
    if (attempt >= 3) {
        NSLog(@"[triggrd] 未执行：%@ 不在当前指派里（偏好未同步或已被删除）", action);
        return;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)((0.3 + 0.3 * attempt) * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        TGRetry(action, attempt + 1);
    });
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
        if (![action isKindOfClass:NSString.class]) continue;
        if (![action hasPrefix:TGShellPrefix] && ![action hasPrefix:TGExtensionPrefix]) continue;
        if ([allowed containsObject:action]) {
            TGPerform(action);
            continue;
        }
        // A setting saved a moment ago may not have reached this process yet.
        TGRetry(action, 0);
    }
}

int main(void) {
    @autoreleasepool {
        // Only the mobile user (SpringBoard) may drop requests here.
        NSError *error = nil;
        [NSFileManager.defaultManager createDirectoryAtPath:TGRunQueue withIntermediateDirectories:YES attributes:@{NSFilePosixPermissions: @0700} error:&error];
        if (chmod(TGRunQueue.fileSystemRepresentation, 0700) != 0) {
            // 队列目录建不起来 = 所有 Run Command 都会静默失败，必须留下痕迹。
            NSLog(@"[triggrd] 队列目录不可用：%@（%d）", TGRunQueue, errno);
            if (error) NSLog(@"[triggrd] %@", error);
        }
        int token;
        notify_register_dispatch(TGRunRequestNotification, &token, dispatch_get_main_queue(), ^(int t) { TGDrainQueue(); });
        TGDrainQueue();
        dispatch_main();
    }
}
