// 实验分支（cn4.17-1）：返回上级 = 屏幕级右滑注入。
//
// 背景：cn4.17 的返回是「App 内 escape → 公开 pop」，靠控制器栈，用户在微信文章页
// 一次按键退两层（escape 退一层、页面戳没测出来、再补一次 pop）。实验分支换一条
// 完全不同的路子：不碰视图控制器，直接在 SpringBoard 里往触摸子系统注入一次
// 「从左缘按下 → 向右拖 → 抬起」，剩下的交给 App 自己的边缘返回手势——
// 有原生转场动画，也不需要猜 App 用的是什么容器。
//
// 本分支刻意摘掉了原有的两条返回路径（Relay 的 escape/pop、EdgeBack 的边缘手势放行），
// 免得两套机制互相干扰、实验结果说不清是谁起的作用。
//
// 注入用 IOHIDEventSystemClient（私有，dlsym 取符号）。坐标单位各机型/系统版本上
// 有差异：有的是 0..1 归一化，有的是屏幕点数。默认先归一化，页面没反应再试点数，
// 哪一种成功就记住；也可以用 SwipeCoordMode（1 归一化 / 2 点数）手动钉死。
//
// 判定「有没有反应」靠 Relay：它在 App 进程里比对自己的页面身份，变了就 notify_post
// 一条 swipe-moved。日志写在 /var/mobile/Library/Logs/TriggrSwipe.log。

#import <UIKit/UIKit.h>
#import <notify.h>
#import <dlfcn.h>
#import <mach/mach_time.h>
#import "TGSwipe.h"
#import "../Shared/TGCatalog.h"
#import "../Shared/TGRelay.h"

#pragma mark - IOHIDEvent（私有，全部 dlsym）

typedef struct __IOHIDEvent *IOHIDEventRef;
typedef struct __IOHIDEventSystemClient *IOHIDEventSystemClientRef;
typedef double IOHIDFloat;
// IOKit 的 Boolean / IOOptionBits 在 UIKit 里没有定义，按 ABI 自己补（unsigned char / uint32_t）。
typedef unsigned char TGBoolean;
typedef uint32_t TGIOOptionBits;

typedef IOHIDEventRef (*TGDigitizerFn)(CFAllocatorRef, uint64_t, uint32_t, uint32_t, uint32_t,
                                       uint32_t, uint32_t, IOHIDFloat, IOHIDFloat, IOHIDFloat,
                                       IOHIDFloat, IOHIDFloat, TGBoolean, TGBoolean, TGIOOptionBits);
typedef IOHIDEventRef (*TGFingerFn)(CFAllocatorRef, uint64_t, uint32_t, uint32_t, uint32_t,
                                    uint32_t, IOHIDFloat, IOHIDFloat, IOHIDFloat, IOHIDFloat,
                                    IOHIDFloat, TGBoolean, TGBoolean, TGIOOptionBits);
typedef void (*TGAppendFn)(IOHIDEventRef, IOHIDEventRef, TGIOOptionBits);
typedef IOHIDEventSystemClientRef (*TGClientFn)(CFAllocatorRef);
typedef void (*TGDispatchFn)(IOHIDEventSystemClientRef, IOHIDEventRef);

static TGDigitizerFn tgDigitizer;
static TGFingerFn tgFinger;
static TGAppendFn tgAppend;
static TGClientFn tgClientCreate;
static TGDispatchFn tgDispatch;

// 事件掩码（IOHIDEventTypes.h 里的 kIOHIDDigitizerEvent*）：
// range = 在感应范围内，touch = 接触，position = 坐标有效。
static const uint32_t TGMaskRange = 1u << 0;
static const uint32_t TGMaskTouch = 1u << 1;
static const uint32_t TGMaskPosition = 1u << 2;
static const uint32_t TGTransducerHand = 3;

static BOOL TGSwipeLoad(void) {
    static BOOL ok;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        void *h = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", RTLD_LAZY);
        if (!h) return;
        tgDigitizer = (TGDigitizerFn)dlsym(h, "IOHIDEventCreateDigitizerEvent");
        tgFinger = (TGFingerFn)dlsym(h, "IOHIDEventCreateDigitizerFingerEvent");
        tgAppend = (TGAppendFn)dlsym(h, "IOHIDEventAppendEvent");
        tgClientCreate = (TGClientFn)dlsym(h, "IOHIDEventSystemClientCreate");
        tgDispatch = (TGDispatchFn)dlsym(h, "IOHIDEventSystemClientDispatchEvent");
        ok = tgDigitizer && tgFinger && tgAppend && tgClientCreate && tgDispatch;
    });
    return ok;
}

static IOHIDEventSystemClientRef TGSwipeClient(void) {
    static IOHIDEventSystemClientRef client;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        if (tgClientCreate) client = tgClientCreate(kCFAllocatorDefault);
    });
    return client;
}

#pragma mark - 日志

static void TGSwipeLog(NSString *line) {
    NSString *dir = @"/var/mobile/Library/Logs";
    NSString *path = [dir stringByAppendingPathComponent:@"TriggrSwipe.log"];
    NSFileManager *fm = NSFileManager.defaultManager;
    [fm createDirectoryAtPath:dir withIntermediateDirectories:YES attributes:nil error:NULL];
    NSDictionary *attrs = [fm attributesOfItemAtPath:path error:NULL];
    if (attrs && [attrs fileSize] > 64 * 1024) [fm removeItemAtPath:path error:NULL];
    NSString *text = [NSString stringWithFormat:@"%@ %@\n", [NSDate date], line];
    NSData *data = [text dataUsingEncoding:NSUTF8StringEncoding];
    if (![fm fileExistsAtPath:path]) {
        [data writeToFile:path atomically:YES];
        return;
    }
    NSFileHandle *fh = [NSFileHandle fileHandleForWritingAtPath:path];
    [fh seekToEndOfFile];
    [fh writeData:data];
    [fh closeFile];
}

#pragma mark - 触摸序列

#define TGSwipeSteps 12
static const int64_t TGSwipeStepNanos = 14 * NSEC_PER_MSEC; // 12 步约 170ms

static void TGSwipeSend(CGFloat x, CGFloat y, BOOL down) {
    uint64_t now = mach_absolute_time();
    uint32_t mask = TGMaskRange | TGMaskTouch | TGMaskPosition;
    uint32_t button = down ? 1 : 0;
    IOHIDEventRef hand = tgDigitizer(kCFAllocatorDefault, now, TGTransducerHand, 0, 1,
                                     mask, button, 0, 0, 0, 0, 0, down, down, 0);
    IOHIDEventRef finger = tgFinger(kCFAllocatorDefault, now, 1, 1, mask, button,
                                    x, y, 0, down ? 1.0 : 0.0, 0, down, down, 0);
    if (hand && finger) tgAppend(hand, finger, 0);
    if (finger) CFRelease(finger);
    if (!hand) return;
    tgDispatch(TGSwipeClient(), hand);
    CFRelease(hand);
}

// mode 1 = 0..1 归一化，mode 2 = 屏幕点数。
static void TGSwipePoint(int mode, CGFloat x, CGFloat y, BOOL down) {
    CGSize size = UIScreen.mainScreen.bounds.size;
    if (mode == 1 && size.width > 0 && size.height > 0) {
        x /= size.width;
        y /= size.height;
    }
    TGSwipeSend(x, y, down);
}

static void TGSwipeSequence(int mode, int step, void (^done)(void)) {
    CGSize size = UIScreen.mainScreen.bounds.size;
    CGFloat y = size.height * 0.55;
    CGFloat fromX = 2;
    CGFloat toX = size.width * 0.75;
    if (step > TGSwipeSteps) {
        TGSwipePoint(mode, toX, y, NO); // 抬起
        if (done) done();
        return;
    }
    CGFloat x = fromX + (toX - fromX) * (CGFloat)step / TGSwipeSteps;
    TGSwipePoint(mode, x, y, YES);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, TGSwipeStepNanos), dispatch_get_main_queue(), ^{
        TGSwipeSequence(mode, step + 1, done);
    });
}

#pragma mark - 页面有没有动（诊断）

static BOOL tgSwipeMoved;

static void TGSwipeProbeBegin(void) {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        static int token = -1;
        notify_register_dispatch(TGRelaySwipeMoved, &token, dispatch_get_main_queue(), ^(int t) {
            tgSwipeMoved = YES;
        });
    });
    tgSwipeMoved = NO;
    notify_post(TGRelaySwipeProbe);
}

#pragma mark - 坐标单位

// 0 = 自动，1 = 归一化，2 = 点数。默认自动。
static int TGSwipeCoordPref(void) {
    CFStringRef domain = (__bridge CFStringRef)TGDomain;
    CFPreferencesAppSynchronize(domain);
    id value = CFBridgingRelease(CFPreferencesCopyAppValue(CFSTR("SwipeCoordMode"), domain));
    if ([value respondsToSelector:@selector(intValue)]) {
        int mode = [value intValue];
        if (mode == 1 || mode == 2) return mode;
    }
    return 0;
}

// 学会的单位，进程内记住，下次直接用。
static int tgSwipeLearnedMode;

#pragma mark - 入口

static void TGSwipeAttempt(int mode, int pref, void (^after)(BOOL moved));

// 一次不行换另一种单位再试一次（只在自动模式下、且上一次确实没动时）。
static void TGSwipeFallbackMode(int tried, int pref) {
    if (pref != 0 || tried != 1) return;
    TGSwipeLog(@"归一化无效，改用屏幕点数重试");
    TGSwipeAttempt(2, pref, ^(BOOL moved) {
        if (moved) tgSwipeLearnedMode = 2;
        TGSwipeLog(moved ? @"点数坐标成功" : @"两种坐标都没反应");
    });
}

static void TGSwipeAttempt(int mode, int pref, void (^after)(BOOL moved)) {
    TGSwipeProbeBegin();
    TGSwipeSequence(mode, 0, ^{
        // Relay 在按下后 0.30 / 0.70 秒各看一眼，这里等它的第二眼（抬手后再 0.85 秒），
        // 免得转场还没落位就判「没动」、触发换单位重试，白白多滑一次。
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.85 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            BOOL moved = tgSwipeMoved;
            if (after) after(moved);
            if (!moved) TGSwipeFallbackMode(mode, pref);
        });
    });
}

void TGSwipeBackStart(void) {
    // 上一次还在跑就别叠加，两次注入会变成两个手势。
    static BOOL running;
    if (running) {
        TGSwipeLog(@"上一次注入还没结束，忽略");
        return;
    }

    if (!TGSwipeLoad()) {
        TGSwipeLog(@"IOKit 符号取不到，注入不可用");
        return;
    }
    if (!TGSwipeClient()) {
        TGSwipeLog(@"IOHIDEventSystemClient 创建失败（多半是 entitlement 不足）");
        return;
    }

    int pref = TGSwipeCoordPref();
    int mode = pref ? pref : (tgSwipeLearnedMode ? tgSwipeLearnedMode : 1);
    TGSwipeLog([NSString stringWithFormat:@"注入开始 mode=%d pref=%d", mode, pref]);

    running = YES;
    // 看门狗：自动模式下可能换单位重试一次（每次约 1 秒），留足余量再放开，避免连按叠加手势。
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        running = NO;
    });
    TGSwipeAttempt(mode, pref, ^(BOOL moved) {
        if (moved) {
            if (!tgSwipeLearnedMode) tgSwipeLearnedMode = mode;
            TGSwipeLog([NSString stringWithFormat:@"页面已变化（mode=%d 成功）", mode]);
        } else {
            TGSwipeLog([NSString stringWithFormat:@"页面未变化（mode=%d）", mode]);
        }
    });
}
