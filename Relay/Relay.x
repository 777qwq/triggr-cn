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
    }
}


