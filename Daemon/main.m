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

#import <objc/message.h>
// ---- 触摸引擎（AutoTouch 同架构：arm64 守护进程内捕获 senderID + 派发，无 PAC 限制） ----
#import <mach/mach_time.h>
typedef struct CF_BRIDGED_TYPE(id) IOHIDEvent *IOHIDEventRef;
typedef struct CF_BRIDGED_TYPE(id) IOHIDEventSystemClient *IOHIDEventSystemClientRef;
extern IOHIDEventRef IOHIDEventCreateDigitizerEvent(CFAllocatorRef, uint64_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, float, float, float, float, float, Boolean, Boolean, uint32_t);
extern IOHIDEventRef IOHIDEventCreateDigitizerFingerEvent(CFAllocatorRef, uint64_t, uint32_t, uint32_t, uint32_t, float, float, float, float, float, Boolean, Boolean, uint32_t);
extern void IOHIDEventAppendEvent(IOHIDEventRef, IOHIDEventRef, uint32_t);
extern void IOHIDEventSetFloatValue(IOHIDEventRef, uint32_t, float);
extern void IOHIDEventSetIntegerValue(IOHIDEventRef, uint32_t, int64_t);
extern void IOHIDEventSetSenderID(IOHIDEventRef, uint64_t);
extern uint64_t IOHIDEventGetSenderID(IOHIDEventRef);
extern int32_t IOHIDEventGetType(IOHIDEventRef);
extern IOHIDEventSystemClientRef IOHIDEventSystemClientCreate(CFAllocatorRef);
extern void IOHIDEventSystemClientDispatchEvent(IOHIDEventSystemClientRef, IOHIDEventRef);
extern void IOHIDEventSystemClientScheduleWithRunLoop(IOHIDEventSystemClientRef, CFRunLoopRef, CFStringRef);
extern void IOHIDEventSystemClientRegisterEventCallback(IOHIDEventSystemClientRef, void *, void *, void *);
extern void IOHIDEventSystemClientUnregisterEventCallback(IOHIDEventSystemClientRef);

static IOHIDEventSystemClientRef TGTouchClient;
static uint64_t TGTouchSender;
#define kIOHIDDigitizer 11

static void TGTouchLog(NSString *msg) {
    NSString *path = @"/var/mobile/Documents/triggrd_touch.log";
    NSString *line = [NSString stringWithFormat:@"[%@] %@\n", [NSDate date], msg];
    NSFileHandle *h = [NSFileHandle fileHandleForWritingAtPath:path];
    if (!h) { [line writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil]; return; }
    [h seekToEndOfFile]; [h writeData:[line dataUsingEncoding:NSUTF8StringEncoding]]; [h closeFile];
}

static void TGTouchCaptureCB(void *target, void *refcon, void *service, IOHIDEventRef event) {
    if (!event || TGTouchSender || IOHIDEventGetType(event) != kIOHIDDigitizer) return;
    TGTouchSender = IOHIDEventGetSenderID(event);
    TGTouchLog([NSString stringWithFormat:@"senderID captured: %qX", TGTouchSender]);
    [[NSDictionary dictionaryWithObjectsAndKeys:@(TGTouchSender), @"senderID", nil]
        writeToFile:@"/var/mobile/Library/Preferences/com.triggr.cn.daemon.senderid.plist" atomically:YES];
    if (TGTouchClient) IOHIDEventSystemClientUnregisterEventCallback(TGTouchClient);
}
static void TGTouchSend(int type, float x, float y) {
    if (!TGTouchClient) {
        TGTouchClient = IOHIDEventSystemClientCreate(kCFAllocatorDefault);
        TGTouchLog([NSString stringWithFormat:@"client=%@", TGTouchClient ? @"created" : @"FAILED"]);
        if (!TGTouchClient) return;
        IOHIDEventSystemClientScheduleWithRunLoop(TGTouchClient, CFRunLoopGetMain(), kCFRunLoopDefaultMode);
        IOHIDEventSystemClientRegisterEventCallback(TGTouchClient, (void *)TGTouchCaptureCB, NULL, NULL);
    }
    uint64_t ts = mach_absolute_time();
    IOHIDEventRef parent = IOHIDEventCreateDigitizerEvent(kCFAllocatorDefault, ts, 3, 0, 1, 0, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0);
    if (!parent) return;
    IOHIDEventSetIntegerValue(parent, 0xb0019, 1);
    IOHIDEventSetIntegerValue(parent, 0x4, 1);
    IOHIDEventSetIntegerValue(parent, 0xb0006, 1); // 千里眼实证：被接受的事件 b0006=1（真手指/合成一致）
    Boolean touch = (type != 2);
    uint32_t flags = (type == 0) ? 4 : 3;
    IOHIDEventRef finger = IOHIDEventCreateDigitizerFingerEvent(kCFAllocatorDefault, ts, 0, 2, flags, x, y, 0.0f, 0.0f, 0.0f, touch, touch, 0);
    if (!finger) { CFRelease(parent); return; }
    IOHIDEventSetFloatValue(finger, 0xb0014, 0.04f);
    IOHIDEventSetFloatValue(finger, 0xb0015, 0.04f);
    IOHIDEventAppendEvent(parent, finger, 0);
    IOHIDEventSetFloatValue(parent, 0xb0000, x);
    IOHIDEventSetFloatValue(parent, 0xb0001, y);
    IOHIDEventSetIntegerValue(parent, 0xb0007, 0x23); // 千里眼实证：AutoTouch 被接受事件 b0007=0x23
    IOHIDEventSetIntegerValue(parent, 0xb0008, touch ? 1 : 0);
    IOHIDEventSetSenderID(parent, 0); // 千里眼实证：被接受的合成事件 sender=0（显式清零，默认值≠0 会被拒）
    TGTouchLog([NSString stringWithFormat:@"dispatch: type=%d x=%.1f y=%.1f sender=0", type, x, y]);
    // 通行证（逆向实锤）：派发前必须告知用户事件，否则 backboardd 丢弃合成事件
    Class BKUET = NSClassFromString(@"BKUserEventTimer");
    if (BKUET) {
        id timer = ((id (*)(id, SEL))objc_msgSend)(BKUET, sel_registerName("sharedInstance"));
        if (timer) ((void (*)(id, SEL, long long))objc_msgSend)(timer, sel_registerName("userEventOccurredOnDisplay:"), 0);
    }
    IOHIDEventSystemClientDispatchEvent(TGTouchClient, parent);
    CFRelease(parent);
}
static void TGBackSwipe(void) {
    NSDictionary *f = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.triggr.cn.frame.plist"];
    float w = [f[@"w"] floatValue], h = [f[@"h"] floatValue];
    if (!TGTouchSender) {
        // 1) SB 端历史捕获值
        NSDictionary *d = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.triggr.cn.senderid.plist"];
        TGTouchSender = [d[@"senderID"] unsignedLongLongValue];
        TGTouchLog([NSString stringWithFormat:@"fallback1 plist senderID: %qX", TGTouchSender]);
    }
    if (!TGTouchSender) {
        // 2) AutoTouch 的 sender_id_meta 文件（8 字节裸值，App 容器内，AutoTouch 每次探测都会刷新=最新值）
        static NSString *metaPath;
        if (!metaPath) {
            NSString *cont = @"/var/mobile/Containers/Data/Application";
            for (NSString *uuid in [NSFileManager.defaultManager contentsOfDirectoryAtPath:cont error:nil]) {
                NSString *doc = [NSString stringWithFormat:@"%@/%@/Documents", cont, uuid];
                for (NSString *sub in @[ @"sender_id_meta", @"AutoTouch/sender_id_meta", @"Library/sender_id_meta" ]) {
                    NSString *p = [doc stringByAppendingPathComponent:sub];
                    if ([NSFileManager.defaultManager fileExistsAtPath:p]) { metaPath = p; break; }
                }
                if (metaPath) break;
                // 兜底浅搜 Documents 一层子目录
                for (NSString *sd in [NSFileManager.defaultManager contentsOfDirectoryAtPath:doc error:nil]) {
                    NSString *p = [[doc stringByAppendingPathComponent:sd] stringByAppendingPathComponent:@"sender_id_meta"];
                    if ([NSFileManager.defaultManager fileExistsAtPath:p]) { metaPath = p; break; }
                }
                if (metaPath) break;
            }
            TGTouchLog([NSString stringWithFormat:@"meta file: %@", metaPath ?: @"NOT FOUND"]);
        }
        if (metaPath) {
            FILE *fp = fopen(metaPath.fileSystemRepresentation, "rb");
            if (fp) {
                uint64_t v = 0;
                fread(&v, 8, 1, fp);
                fclose(fp);
                if (v && v != 0xFFFFFFFFFFFFFFFF) { TGTouchSender = v; TGTouchLog([NSString stringWithFormat:@"meta senderID: %qX", v]); }
            }
        }
    }
    TGTouchLog([NSString stringWithFormat:@"swipe fire: w=%.0f h=%.0f sender=%qX", w, h, TGTouchSender]);
    if (w < 100 || h < 100) return;
    float x0 = 6, y = h / 2, x1 = w * 0.4;
    TGTouchSend(0, x0, y);
    for (int i = 1; i <= 24; i++) {
        TGTouchSend(i == 24 ? 2 : 1, x0 + (x1 - x0) * i / 24, y);
        usleep(14000);
    }
}

int main(void) {
    @autoreleasepool {
        // Only the mobile user (SpringBoard) may drop requests here.
        [NSFileManager.defaultManager createDirectoryAtPath:TGRunQueue withIntermediateDirectories:YES attributes:@{NSFilePosixPermissions: @0700} error:nil];
        chmod(TGRunQueue.fileSystemRepresentation, 0700);
        int token;
        notify_register_dispatch(TGRunRequestNotification, &token, dispatch_get_main_queue(), ^(int t) { TGDrainQueue(); });
        int ttoken;
        notify_register_dispatch("cn.triggr.backswipe", &ttoken, dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^(int t) { TGBackSwipe(); });
        TGTouchLog(@"triggrd touch engine started");
        TGDrainQueue();
        dispatch_main();
    }
}
