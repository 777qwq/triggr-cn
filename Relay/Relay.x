// Triggr's in-app half. Apps handle their own status bar taps and shakes, so
// this tiny library tells SpringBoard about them, and performs the one action
// that must run in-process: the accessibility "back / dismiss" escape.

#import <UIKit/UIKit.h>
#import <notify.h>
#import <objc/message.h>
#import <objc/runtime.h>
#import "../Shared/TGRelay.h"


static void TGRelay(const char *name, uint64_t wantedBit) {
    static int token = -1;
    if (token == -1 && notify_register_check(TGRelayWanted, &token) != NOTIFY_STATUS_OK) token = -1;
    uint64_t wanted = 0;
    if (token != -1) notify_get_state(token, &wanted);
    if (wanted & wantedBit) notify_post(name);
}

// Verified on-device: every status bar tap reaches the app as
// -[UIStatusBarManager handleTapAction:]. (SpringBoard watches its own status bar.)
%group StatusBar
%hook UIStatusBarManager
- (void)handleTapAction:(id)action {
    %orig;
    // Which half of the status bar was tapped, for Left / Right triggers.
    const char *name = TGRelayStatusBarTap;
    CGFloat width = ((UIStatusBarManager *)self).statusBarFrame.size.width;
    if ([action respondsToSelector:@selector(xPosition)] && width > 0) {
        CGFloat x = ((CGFloat (*)(id, SEL))objc_msgSend)(action, @selector(xPosition));
        if (x >= 0) name = x < width / 2 ? TGRelayStatusBarTapLeft : TGRelayStatusBarTapRight;
    }
    TGRelay(name, TGRelayWantsStatusBar);
}
%end
%end

// iOS's own shake detection (the one behind Shake to Undo) ends at the
// application object, in apps and in SpringBoard alike.
%group Shake
%hook UIApplication
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    %orig;
    if (motion == UIEventSubtypeMotionShake) TGRelay(TGRelayShake, TGRelayWantsShake);
}
%end
%end


// ---- 返回上级：先问语义，再动容器 ----
// 入口是 SpringBoard 发来的一条 Darwin 通知（com.johndie.triggr/back）。
// iOS 没有跨 App 的返回 API，所以按「信息可信度」依次试两步：
//
//   1 accessibilityPerformEscape                      App 自己声明能处理关闭/返回，零副作用
//   2 _popViewControllerWithTransition:allowPoppingLast:  真导航栈，退一级
//
// 第 1 步说「处理了」不代表页面真动了，0.35 秒后比对页面身份，没变才走第 2 步；
// 第 1 步没人应答也直接走第 2 步。两步都不会指定落点以外的事情。

#define TGBackMaxDepth 24

// 所有可见窗口，key window 排最前。
static NSArray<UIWindow *> *TGRelayWindows(void) {
    NSMutableArray *windows = [NSMutableArray array];
    UIWindow *key = nil;
    if (@available(iOS 13.0, *)) {
        for (__kindof UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
            if (![scene isKindOfClass:[UIWindowScene class]]) continue;
            UIWindowScene *ws = (UIWindowScene *)scene;
            if (ws.activationState == UISceneActivationStateBackground) continue;
            for (UIWindow *w in ws.windows) {
                if (w.hidden) continue;
                if (w.isKeyWindow) key = w; else [windows addObject:w];
            }
        }
    } else {
        #pragma clang diagnostic push
        #pragma clang diagnostic ignored "-Wdeprecated-declarations"
        for (UIWindow *w in UIApplication.sharedApplication.windows) {
            if (w.hidden) continue;
            if (w.isKeyWindow) key = w; else [windows addObject:w];
        }
        #pragma clang diagnostic pop
    }
    if (key) [windows insertObject:key atIndex:0];
    return windows;
}

// 当前真正看得见的那条控制器链，从最外层排到最内层。
// tab 只走选中的那个、nav 沿栈顶下钻、presented 只走最上层——后台 tab 里的栈、
// 被盖住的页面一律不进链。淘宝那种自绘容器没有 selectedViewController，
// 链上就只剩它自己，正好就是「当前这一屏」。
static NSArray<UIViewController *> *TGVisibleChain(UIViewController *root) {
    NSMutableArray *chain = [NSMutableArray array];
    UIViewController *vc = root;
    int guard = 0;
    while (vc && guard++ < TGBackMaxDepth) {
        [chain addObject:vc];
        UIViewController *next = nil;
        if (vc.presentedViewController) {
            next = vc.presentedViewController;
        } else if ([vc isKindOfClass:[UITabBarController class]]) {
            next = ((UITabBarController *)vc).selectedViewController;
        } else if ([vc isKindOfClass:[UINavigationController class]]) {
            next = ((UINavigationController *)vc).topViewController;
        } else if (vc.childViewControllers.count) {
            next = vc.childViewControllers.lastObject;
        }
        if (!next || next == vc || [chain containsObject:next]) break;
        vc = next;
    }
    return chain;
}



// 辅助功能逃逸：iOS 自己的「返回 / 关闭」语义（双指 Z 手势、VoiceOver 走的都是它）。
// 跳过 UIViewController 的基类空实现，只认真重写了的控制器，否则每个 VC 都会空转返回 YES。
static IMP TGVCBaseEscapeImp(void) {
    static IMP imp;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        imp = class_getMethodImplementation([UIViewController class], @selector(accessibilityPerformEscape));
    });
    return imp;
}

// 有没有「自己的」escape 实现。基类那份对谁都应 YES，但什么都不做，必须排除。
static BOOL TGEscapeAllowed(UIViewController *vc) {
    SEL sel = @selector(accessibilityPerformEscape);
    if (![vc respondsToSelector:sel]) return NO;
    return class_getMethodImplementation(object_getClass(vc), sel) != TGVCBaseEscapeImp();
}

static BOOL TGEscapeOne(UIViewController *vc) {
    if (!TGEscapeAllowed(vc)) return NO;
    return ((BOOL (*)(id, SEL))objc_msgSend)(vc, @selector(accessibilityPerformEscape));
}

static BOOL TGEscapeTree(UIViewController *vc, int depth) {
    if (!vc || depth > TGBackMaxDepth) return NO;
    if (vc.presentedViewController && TGEscapeTree(vc.presentedViewController, depth + 1)) return YES;
    if (TGEscapeOne(vc)) return YES;
    for (UIViewController *child in vc.childViewControllers)
        if (TGEscapeTree(child, depth + 1)) return YES;
    return NO;
}

// 先问看得见的那一层（最内层优先），不行再扫全树。返回有没有控制器应答。
static BOOL TGEscapeIn(UIViewController *root) {
    for (UIViewController *vc in TGVisibleChain(root).reverseObjectEnumerator)
        if (TGEscapeOne(vc)) return YES;
    return TGEscapeTree(root, 0);
}

// 页面身份：根类名 + 各子控制器的类名与子视图数。
// 只用来判断「动作发出后页面有没有变」，不展示、不记录。
static NSString *TGPageStamp(UIViewController *vc) {
    if (!vc) return @"";
    NSMutableString *s = [NSMutableString stringWithString:NSStringFromClass(vc.class)];
    for (UIViewController *child in vc.childViewControllers)
        [s appendFormat:@"/%@#%lu", NSStringFromClass(child.class),
            (unsigned long)child.viewIfLoaded.subviews.count];
    [s appendFormat:@"#%lu", (unsigned long)vc.viewIfLoaded.subviews.count];
    return s;
}

// ---- 实验（cn4.17-1）：屏幕级右滑的页面戳探针 ----
// 只用于诊断注入的滑动有没有让页面动起来，不参与任何返回逻辑（本分支已摘除 escape/pop）。
// 和 TGPageStamp 的区别：走 TGVisibleChain，并把 nav 栈深、tab 选中项显式拼进戳——
// 微信那种「根容器 → 内层 nav → 会话 → 文章」的层级，只看直接子控制器测不出变化。
static NSString *TGSwipeStamp(UIViewController *root) {
    if (!root) return @"";
    NSMutableString *s = [NSMutableString string];
    for (UIViewController *vc in TGVisibleChain(root)) {
        [s appendFormat:@"%@#%lu|", NSStringFromClass(vc.class),
            (unsigned long)vc.viewIfLoaded.subviews.count];
        if ([vc isKindOfClass:[UINavigationController class]])
            [s appendFormat:@"nav%lu|", (unsigned long)((UINavigationController *)vc).viewControllers.count];
        if ([vc isKindOfClass:[UITabBarController class]])
            [s appendFormat:@"tab%ld|", (long)((UITabBarController *)vc).selectedIndex];
    }
    return s;
}

static void TGInstallSwipeProbe(void) {
    static int token = -1;
    notify_register_dispatch(TGRelaySwipeProbe, &token, dispatch_get_main_queue(), ^(int t) {
        UIWindow *win = TGRelayWindows().firstObject;
        NSString *before = TGSwipeStamp(win.rootViewController);
        // 探针在按下时就到了，右滑本身要 0.17 秒、转场还要落位，所以看两次：
        // 0.30 秒多数还没走完（转场中 pop 尚未改栈），0.70 秒再补一次。
        for (NSNumber *delay in @[@0.30, @0.70]) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay.doubleValue * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                UIWindow *now = TGRelayWindows().firstObject;
                if (![TGSwipeStamp(now.rootViewController) isEqualToString:before]) notify_post(TGRelaySwipeMoved);
            });
        }
    });
}

// ---- 实验（cn4.17-7）：在 App 自己进程里注入「左缘 → 右滑」 ----
// cn4.17-6 是在 SpringBoard 里 IOHIDEventSystemClientDispatchEvent，日志显示注入执行了、
// 页面不动：SpringBoard 发出的合成触摸不会跨进程进到前台 App 的事件队列。
// 改成在 App 进程内构造 IOHIDEvent，用 UIApplication 的 _enqueueHIDEvent: 直接入队，
// 不经过 IPC，也不需要猜 SpringBoard 往哪个 mach port 转发。
//
// 坐标单位、是否带 window contextID 各机型/版本有差异，一次按键按顺序试几种组合，
// 哪种让页面戳变了就停；也可以用 SwipeVariant（1..N）钉死只跑其中一种。

#import <dlfcn.h>
#import <mach/mach_time.h>

typedef struct __IOHIDEvent *IOHIDEventRef;
typedef struct __IOHIDEventSystemClient *IOHIDEventSystemClientRef;

typedef IOHIDEventRef (*TGDigitizerFn)(CFAllocatorRef, uint64_t, uint32_t, uint32_t, uint32_t,
                                       uint32_t, uint32_t, double, double, double, double,
                                       double, unsigned char, unsigned char, uint32_t);
typedef IOHIDEventRef (*TGFingerFn)(CFAllocatorRef, uint64_t, uint32_t, uint32_t, uint32_t,
                                    uint32_t, double, double, double, double, double,
                                    unsigned char, unsigned char, uint32_t);
typedef void (*TGAppendFn)(IOHIDEventRef, IOHIDEventRef, uint32_t);
typedef IOHIDEventSystemClientRef (*TGClientFn)(CFAllocatorRef);
typedef void (*TGDispatchFn)(IOHIDEventSystemClientRef, IOHIDEventRef);
typedef void (*TGSetInfoFn)(IOHIDEventRef, uint32_t, unsigned char, unsigned char,
                            CFStringRef, uint64_t, uint32_t);

static TGDigitizerFn tgHIDDigitizer;
static TGFingerFn tgHIDFinger;
static TGAppendFn tgHIDAppend;
static TGClientFn tgHIDClientCreate;
static TGDispatchFn tgHIDDispatch;
static TGSetInfoFn tgHIDSetInfo;

// IOHIDDigitizerEventMask：range=在感应范围内，touch=接触，position=坐标有效。
enum { TGHIDRange = 1, TGHIDTouch = 2, TGHIDPosition = 4 };
// kIOHIDDigitizerTransducerTypeHand
enum { TGHIDHand = 3 };

static BOOL TGHIDLoad(void) {
    static BOOL ok;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        void *h = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", RTLD_LAZY);
        if (h) {
            tgHIDDigitizer = (TGDigitizerFn)dlsym(h, "IOHIDEventCreateDigitizerEvent");
            tgHIDFinger = (TGFingerFn)dlsym(h, "IOHIDEventCreateDigitizerFingerEvent");
            tgHIDAppend = (TGAppendFn)dlsym(h, "IOHIDEventAppendEvent");
            tgHIDClientCreate = (TGClientFn)dlsym(h, "IOHIDEventSystemClientCreate");
            tgHIDDispatch = (TGDispatchFn)dlsym(h, "IOHIDEventSystemClientDispatchEvent");
        }
        // BKSHIDEventSetDigitizerInfo：给事件标上目标窗口，UIApplication 才知道投给谁。
        void *b = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", RTLD_LAZY);
        if (b) tgHIDSetInfo = (TGSetInfoFn)dlsym(b, "BKSHIDEventSetDigitizerInfo");
        ok = tgHIDDigitizer && tgHIDFinger && tgHIDAppend;
    });
    return ok;
}

static void TGSwipeLog(NSString *line) {
    NSString *dir = @"/var/mobile/Library/Logs";
    NSString *path = [dir stringByAppendingPathComponent:@"TriggrSwipe.log"];
    NSFileManager *fm = NSFileManager.defaultManager;
    [fm createDirectoryAtPath:dir withIntermediateDirectories:YES attributes:nil error:NULL];
    NSDictionary *attrs = [fm attributesOfItemAtPath:path error:NULL];
    if (attrs && [attrs fileSize] > 64 * 1024) [fm removeItemAtPath:path error:NULL];
    NSData *data = [[NSString stringWithFormat:@"%@ %@\n", [NSDate date], line]
                    dataUsingEncoding:NSUTF8StringEncoding];
    if (![fm fileExistsAtPath:path]) {
        [data writeToFile:path atomically:YES];
        return;
    }
    NSFileHandle *fh = [NSFileHandle fileHandleForWritingAtPath:path];
    [fh seekToEndOfFile];
    [fh writeData:data];
    [fh closeFile];
}

static IOHIDEventRef TGHIDEvent(CGPoint p, BOOL down, BOOL normalized, CGSize size) {
    uint64_t now = mach_absolute_time();
    uint32_t mask = down ? (TGHIDRange | TGHIDTouch | TGHIDPosition)
                         : (TGHIDTouch | TGHIDPosition);
    double x = p.x, y = p.y;
    if (normalized && size.width > 1 && size.height > 1) {
        x /= size.width;
        y /= size.height;
    }
    IOHIDEventRef hand = tgHIDDigitizer(kCFAllocatorDefault, now, TGHIDHand, 0, 0, mask, 0,
                                        0, 0, 0, 0, 0, down, down, 0);
    IOHIDEventRef finger = tgHIDFinger(kCFAllocatorDefault, now, 0, 2, mask, 0,
                                       x, y, 0, down ? 1.0 : 0.0, 0, down, down, 0);
    if (hand && finger) tgHIDAppend(hand, finger, 0);
    if (finger) CFRelease(finger);
    return hand;
}

static uint32_t TGWindowContext(UIWindow *w) {
    if (!w) return 0;
    for (NSString *name in @[@"_contextId", @"contextID", @"_windowContextID"]) {
        SEL sel = NSSelectorFromString(name);
        if ([w respondsToSelector:sel])
            return ((uint32_t (*)(id, SEL))objc_msgSend)(w, sel);
    }
    return 0;
}

static BOOL TGSwipePost(IOHIDEventRef e, int via, uint32_t context) {
    if (!e) return NO;
    if (via == 0) {
        static SEL sel;
        static dispatch_once_t once;
        dispatch_once(&once, ^{ sel = NSSelectorFromString(@"_enqueueHIDEvent:"); });
        // 不能缓存 respondsToSelector 的结果：Relay 构造时 sharedApplication 可能还没建好。
        UIApplication *app = UIApplication.sharedApplication;
        if (!app || ![app respondsToSelector:sel]) return NO;
        if (context && tgHIDSetInfo) tgHIDSetInfo(e, context, 0, 0, NULL, 0, 0);
        ((void (*)(id, SEL, IOHIDEventRef))objc_msgSend)(app, sel, e);
        return YES;
    }
    static IOHIDEventSystemClientRef client;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        if (tgHIDClientCreate) client = tgHIDClientCreate(kCFAllocatorDefault);
    });
    if (!client || !tgHIDDispatch) return NO;
    tgHIDDispatch(client, e);
    return YES;
}

static const int TGSwipeSteps = 10;

static void TGSwipeRun(int step, CGPoint from, CGPoint to, BOOL normalized, int via,
                       uint32_t context, void (^done)(void)) {
    CGSize size = UIScreen.mainScreen.bounds.size;
    if (step > TGSwipeSteps) {
        IOHIDEventRef up = TGHIDEvent(to, NO, normalized, size);
        TGSwipePost(up, via, context);
        if (up) CFRelease(up);
        if (done) done();
        return;
    }
    CGFloat t = (CGFloat)step / TGSwipeSteps;
    CGPoint p = CGPointMake(from.x + (to.x - from.x) * t, from.y + (to.y - from.y) * t);
    IOHIDEventRef e = TGHIDEvent(p, YES, normalized, size);
    TGSwipePost(e, via, context);
    if (e) CFRelease(e);
    // 起点按下后多停 60ms，模拟「手指落定再拖」，太快容易被判成轻扫而不是返回手势。
    int64_t gap = (step == 0) ? (60 * NSEC_PER_MSEC) : (14 * NSEC_PER_MSEC);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, gap), dispatch_get_main_queue(), ^{
        TGSwipeRun(step + 1, from, to, normalized, via, context, done);
    });
}

static void TGSwipeTryVariants(NSArray<NSDictionary *> *variants, NSUInteger idx) {
    if (idx >= variants.count) {
        TGSwipeLog(@"所有组合都没让页面动");
        return;
    }
    NSDictionary *v = variants[idx];
    BOOL normalized = [v[@"normalized"] boolValue];
    int via = [v[@"via"] intValue];
    uint32_t context = [v[@"context"] unsignedIntValue];
    UIWindow *win = TGRelayWindows().firstObject;
    if (context) {
        context = TGWindowContext(win);
        if (!context) {
            TGSwipeLog([NSString stringWithFormat:@"组合 %lu 取不到窗口 contextID，跳过",
                        (unsigned long)idx + 1]);
            TGSwipeTryVariants(variants, idx + 1);
            return;
        }
    }
    NSString *before = TGSwipeStamp(win.rootViewController);
    TGSwipeLog([NSString stringWithFormat:@"组合 %lu：%@ %@%@", (unsigned long)idx + 1,
                normalized ? @"归一化" : @"点数",
                via == 0 ? @"enqueue" : @"dispatch",
                context ? @" +context" : @""]);
    CGSize size = UIScreen.mainScreen.bounds.size;
    CGPoint from = CGPointMake(3, size.height * 0.55);
    CGPoint to = CGPointMake(size.width * 0.72, size.height * 0.55);
    TGSwipeRun(0, from, to, normalized, via, context, ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.55 * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{
            NSString *now = TGSwipeStamp(TGRelayWindows().firstObject.rootViewController);
            if (![now isEqualToString:before]) {
                TGSwipeLog([NSString stringWithFormat:@"组合 %lu 生效，页面已变化", (unsigned long)idx + 1]);
                return;
            }
            TGSwipeLog([NSString stringWithFormat:@"组合 %lu 页面未变化", (unsigned long)idx + 1]);
            TGSwipeTryVariants(variants, idx + 1);
        });
    });
}

static void TGSwipeInject(void) {
    static BOOL running;
    if (running) {
        TGSwipeLog(@"上一次注入还没结束，忽略");
        return;
    }
    if (!TGHIDLoad()) {
        TGSwipeLog(@"IOKit 符号取不到，注入不可用");
        return;
    }
    NSString *domain = @"com.johndie.triggr";
    CFPreferencesAppSynchronize((__bridge CFStringRef)domain);
    id wantVariant = CFBridgingRelease(CFPreferencesCopyAppValue(CFSTR("SwipeVariant"), (__bridge CFStringRef)domain));

    NSMutableArray<NSDictionary *> *variants = [NSMutableArray array];
    NSArray *all = @[
        @{@"normalized": @YES, @"via": @0, @"context": @NO},  // 归一化 + enqueue
        @{@"normalized": @NO,  @"via": @0, @"context": @NO},  // 点数 + enqueue
        @{@"normalized": @YES, @"via": @0, @"context": @YES}, // 归一化 + context + enqueue
        @{@"normalized": @NO,  @"via": @0, @"context": @YES}, // 点数 + context + enqueue
        @{@"normalized": @YES, @"via": @1, @"context": @NO},  // 归一化 + dispatch（-6 的老路）
    ];
    int pick = [wantVariant respondsToSelector:@selector(intValue)] ? [wantVariant intValue] : 0;
    if (pick >= 1 && pick <= (int)all.count) [variants addObject:all[pick - 1]];
    else [variants addObjectsFromArray:all];

    running = YES;
    // 一组约 0.2 秒手势 + 0.55 秒观察；留足余量再放开，避免连按叠加成两次滑动。
    double budget = 0.9 * variants.count + 0.5;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(budget * NSEC_PER_SEC)),
                   dispatch_get_main_queue(), ^{ running = NO; });
    TGSwipeLog([NSString stringWithFormat:@"注入开始，共 %lu 组", (unsigned long)variants.count]);
    TGSwipeTryVariants(variants, 0);
}

static void TGInstallSwipeInject(void) {
    static int token = -1;
    notify_register_dispatch(TGRelaySwipeGo, &token, dispatch_get_main_queue(), ^(int t) {
        TGSwipeInject();
    });
}

// 容器级兜底：走 UINavigationController 的公开 pop。
// 只此一条，不再先试私有 _popViewControllerWithTransition:allowPoppingLast:——
// 私有那条只能猜成功（调用完 return YES），签名错位时读垃圾参数、行为随机，
// 而 @try 抓不到「参数个数变了」这种不抛异常的失败；公开 API 有 ABI 承诺，
// 还能拿返回值判断到底弹没弹。兜底必须是可判、无副作用的最后一步。
static BOOL TGPublicPop(UIWindow *win) {
    UIViewController *root = win.rootViewController;
    if (!root) return NO;
    SEL sel = @selector(popViewControllerAnimated:);
    for (UIViewController *vc in TGVisibleChain(root).reverseObjectEnumerator) {
        if (![vc isKindOfClass:[UINavigationController class]]) continue;
        UINavigationController *nav = (UINavigationController *)vc;
        if (nav.viewControllers.count < 2) continue;
        if (nav.transitionCoordinator) continue;
        if (![nav respondsToSelector:sel]) continue;
        @try {
            [nav popViewControllerAnimated:YES];
        } @catch (NSException *e) {
            // 同上：容器抛异常不能带崩宿主
        }
        return YES;
    }
    return NO;
}

static void TGBackStep(UIWindow *win) {
    UIViewController *root = win.rootViewController;
    if (!root) return;

    NSString *stamp = TGPageStamp(root);
    BOOL acted = NO;
    @try {
        acted = TGEscapeIn(root);
    } @catch (NSException *e) {
        acted = NO;
    }
    if (!acted) { // 没人应答，直接交给容器
        TGPublicPop(win);
        return;
    }

    // 应答了也要确认页面真动了：说「处理了」却原地不动的页面不少，
    // 那种时候这次返回就白按了，交给容器兜底。
    __weak UIWindow *weakWin = win;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIWindow *w = weakWin;
        if (!w) return;
        if ([TGPageStamp(w.rootViewController) isEqualToString:stamp]) TGPublicPop(w);
    });
}

// 实验分支：本分支不调用它（返回改由 SpringBoard 注入屏幕级滑动），保留以便回退。
__attribute__((unused))
static void TGRelayDoBack(void) {
    UIWindow *win = TGRelayWindows().firstObject;
    if (!win) return;
    notify_post("cn.triggr.back.ack");
    TGBackStep(win);
}

// ---- 左滑返回（EdgeBack）----
// 实验分支 cn4.17-1：整个 group 停用。它会强制放行系统边缘返回手势，本身也是一条
// 返回路径，留着会和「屏幕级右滑注入」抢同一个手势，实验结果就分不清是谁生效。
// 原实现见 cn4.17（git show 19ecbcf:Relay/Relay.x）。
// %group EdgeBack
// %hook _UINavigationInteractiveTransition
// - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g { ... }
// %end
// %end

static void CNRelayAttachAll(void);
// ---- 多指手势（cn2.75b，严格按 2.0 Relay 反汇编复刻）----
// 12 槽位：0=2指tap 1=3指tap 2..5=2指上/下/左/右 6..9=3指四向 10/11=pinch（scale<0.7 捏合 / >1.4 张开）
// 方向表 DAT_000076c8 实证：Up/Down/Left/Right，三指组复用同表；并发委托返回 YES；tap/swipe 到 Ended 派发
// wanted 位：bit(idx+2)；pinch 特例 bit12/13。上报 notify_post("cn.triggr.inappidxN")

@interface TGInAppTarget : NSObject <UIGestureRecognizerDelegate>
+ (instancetype)shared;
- (void)refresh:(UIWindow *)window wanted:(uint64_t)wanted;
- (UIGestureRecognizer *)recognizerFor:(int)idx;
- (void)recognized:(UIGestureRecognizer *)g;
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g;
@end

static uint64_t CNRelayWanted(void) {
    static int wtoken = -1;
    if (wtoken == -1 && notify_register_check("com.johndie.triggr/relay-wanted", &wtoken) != NOTIFY_STATUS_OK) wtoken = -1;
    if (wtoken != -1) { uint64_t st = 0; notify_get_state(wtoken, &st); return st; }
    return 0;
}

static void CNRelayAttachAll(void) {
    NSMutableArray *ws = [NSMutableArray array];
    if (@available(iOS 13.0, *)) {
        for (__kindof UIScene *sc in UIApplication.sharedApplication.connectedScenes)
            if ([sc isKindOfClass:[UIWindowScene class]]) [ws addObjectsFromArray:[(UIWindowScene *)sc windows]];
    } else {
        #pragma clang diagnostic push
        #pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [ws addObjectsFromArray:UIApplication.sharedApplication.windows];
        #pragma clang diagnostic pop
    }
    for (UIWindow *w in ws) [[TGInAppTarget shared] refresh:w wanted:CNRelayWanted()];
}

@implementation TGInAppTarget

+ (instancetype)shared {
    static id s;
    static dispatch_once_t once;
    dispatch_once(&once, ^{ s = [[self alloc] init]; });
    return s;
}

- (UIGestureRecognizer *)recognizerFor:(int)idx {
    UIGestureRecognizer *g = nil;
    if (idx >= 10) {
        g = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(recognized:)];
    } else if (idx < 2) {
        UITapGestureRecognizer *t = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(recognized:)];
        t.numberOfTouchesRequired = idx == 0 ? 2 : 3;
        t.numberOfTapsRequired = 1;
        g = t;
    } else {
        UISwipeGestureRecognizer *s = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(recognized:)];
        s.numberOfTouchesRequired = idx < 6 ? 2 : 3;
        int k = (idx - 2) % 4;
        s.direction = (k == 0) ? UISwipeGestureRecognizerDirectionUp
                   : (k == 1) ? UISwipeGestureRecognizerDirectionDown
                   : (k == 2) ? UISwipeGestureRecognizerDirectionLeft
                              : UISwipeGestureRecognizerDirectionRight;
        g = s;
    }
    g.delegate = self;
    g.cancelsTouchesInView = NO;
    g.delaysTouchesBegan = NO;
    g.delaysTouchesEnded = NO;
    objc_setAssociatedObject(g, "TGInAppIndex", @(idx), OBJC_ASSOCIATION_RETAIN);
    return g;
}

- (void)refresh:(UIWindow *)window wanted:(uint64_t)wanted {
    if (!window) return;
    for (UIGestureRecognizer *g in [window.gestureRecognizers copy]) {
        NSNumber *idxN = objc_getAssociatedObject(g, "TGInAppIndex");
        if (!idxN) continue;
        int idx = idxN.intValue;
        uint64_t bit = idx == 10 ? (1ULL << 12) : idx == 11 ? (1ULL << 13) : (4ULL << idx);
        if (!(wanted & bit)) [window removeGestureRecognizer:g];
    }
    for (int idx = 0; idx < 12; idx++) {
        uint64_t bit = idx == 10 ? (1ULL << 12) : idx == 11 ? (1ULL << 13) : (4ULL << idx);
        if (!(wanted & bit)) continue;
        BOOL present = NO;
        for (UIGestureRecognizer *g in window.gestureRecognizers) {
            NSNumber *idxN = objc_getAssociatedObject(g, "TGInAppIndex");
            if (idxN && idxN.intValue == idx) { present = YES; break; }
        }
        if (!present) [window addGestureRecognizer:[self recognizerFor:idx]];
    }
}

- (void)recognized:(UIGestureRecognizer *)g {
    NSNumber *idxN = objc_getAssociatedObject(g, "TGInAppIndex");
    int idx = idxN ? idxN.intValue : -1;
    if (idx >= 0 && (idx & 0xfffffffe) == 10) {
        if (g.state != UIGestureRecognizerStateEnded) return;
        CGFloat scale = [(UIPinchGestureRecognizer *)g scale];
        if (scale < 0.7) idx = 10;
        else if (scale > 1.4) idx = 11;
        else return;
    } else {
        if (g.state != UIGestureRecognizerStateEnded) return;
    }
    if (idx >= 0 && idx <= 11) {
        NSString *nm = [NSString stringWithFormat:@"cn.triggr.inappidx%d", idx];
        notify_post(nm.UTF8String);
    }
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g {
    NSNumber *idxN = objc_getAssociatedObject(g, "TGInAppIndex");
    if (!idxN) return NO;
    int idx = idxN.intValue;
    uint64_t bit = idx == 10 ? (1ULL << 12) : idx == 11 ? (1ULL << 13) : (4ULL << idx);
    return (CNRelayWanted() & bit) != 0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)g shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)other {
    return YES; // 2.0 实证：方向识别器共存的关键
}

@end

%group InAppGestures
%hook UIWindow
- (void)didMoveToWindow {
    %orig;
    if (!self) return;
    [[TGInAppTarget shared] refresh:self wanted:CNRelayWanted()];
}
%end
%end

%ctor {
    // Apps and SpringBoard only: not extensions, daemons or other UIKit users.
    NSBundle *bundle = NSBundle.mainBundle;
    if (![bundle.bundlePath hasSuffix:@".app"]) return;
    %init(Shake);
    BOOL springBoard = [bundle.bundleIdentifier isEqualToString:@"com.apple.springboard"];
    if (!springBoard) {
        %init(StatusBar);
        // 实验分支 cn4.17-1：EdgeBack（强制放行系统边缘返回手势）已停用。
        // 它本身就是一条返回路径，留着会和注入的滑动抢同一个手势，实验结果分不清是谁的。
        %init(InAppGestures); // 多指手势（cn2.75b，2.0 逆向复刻）
        CNRelayAttachAll();
        [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:nil queue:nil usingBlock:^(NSNotification *n) {
            CNRelayAttachAll();
        }];
        // 实验分支 cn4.17-1：原有的返回链路（SpringBoard 通知 → escape/pop）已摘除，
        // 只保留下面这个诊断探针，回答「注入的滑动到底有没有让页面动」。
        // static int backToken = -1;
        // notify_register_dispatch(TGRelayBack, &backToken, dispatch_get_main_queue(), ^(int t) {
        //     TGRelayDoBack();
        // });
        TGInstallSwipeProbe();
        TGInstallSwipeInject();
    }
}


