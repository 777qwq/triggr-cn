// Triggr's in-app half. Apps handle their own status bar taps and shakes, so
// this tiny library tells SpringBoard about them. It links nothing but UIKit,
// runs no actions and reads no settings; when no status bar or shake trigger is
// assigned it doesn't even send the message.

#import <UIKit/UIKit.h>
#import <Foundation/NSDistributedNotificationCenter.h>
#import <notify.h>
#import <objc/message.h>
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


// ---- CN diagnostic (test builds only) ----

static UINavigationController *TGPoppableNav(UIViewController *vc, int depth);
// ---- 返回上级：系统原生返回（辅助功能逃逸）+ 递归 pop 兜底 ----
static IMP TGVCBaseEscapeImp(void) {
    static IMP imp;
    static dispatch_once_t once;
    dispatch_once(&once, ^{ imp = class_getMethodImplementation([UIViewController class], @selector(accessibilityPerformEscape)); });
    return imp;
}

// 深度优先找第一个“真实现了”逃逸的元素（跳过 UIViewController 基类默认实现）
static BOOL TGEscapeSearch(UIViewController *vc, int depth) {
    if (!vc || depth > 12) return NO;
    if (vc.presentedViewController && TGEscapeSearch(vc.presentedViewController, depth+1)) return YES;
    SEL sel = @selector(accessibilityPerformEscape);
    if ([vc respondsToSelector:sel] && class_getMethodImplementation([vc class], sel) != TGVCBaseEscapeImp()) {
        BOOL r = ((BOOL (*)(id, SEL))objc_msgSend)(vc, sel);
        if (r) return YES;
    }
    for (UIViewController *child in vc.childViewControllers)
        if (TGEscapeSearch(child, depth+1)) return YES;
    return NO;
}

static BOOL TGBackSearch(UIViewController *vc, int depth) {
    if (!vc || depth > 12) return NO;
    if (vc.presentedViewController && TGBackSearch(vc.presentedViewController, depth+1)) return YES;
    for (UIViewController *child in vc.childViewControllers)
        if (TGBackSearch(child, depth+1)) return YES;
    UINavigationController *nav = [vc isKindOfClass:[UINavigationController class]] ? (UINavigationController *)vc : vc.navigationController;
    if (nav && nav.viewControllers.count > 1 && nav.topViewController == vc) {
        [nav popViewControllerAnimated:YES]; // 标准滑动动画（假 pan 驱动过渡被系统无视，cn1.48 实证）
        return YES;
    }
    if (vc.presentingViewController && vc == vc.presentedViewController) {
        [vc dismissViewControllerAnimated:YES completion:nil];
        return YES;
    }
    return NO;
}

// 全树扫描：任意可见且可弹的导航栈（严格遍历失败后的宽容路径）
static UINavigationController *TGPoppableNav(UIViewController *vc, int depth) {
    if (!vc || depth > 12) return nil;
    if (vc.presentedViewController) {
        UINavigationController *n = TGPoppableNav(vc.presentedViewController, depth+1);
        if (n) return n;
    }
    for (UIViewController *child in vc.childViewControllers) {
        UINavigationController *n = TGPoppableNav(child, depth+1);
        if (n) return n;
    }
    UINavigationController *nav = [vc isKindOfClass:[UINavigationController class]] ? (UINavigationController *)vc : vc.navigationController;
    if (nav && nav.viewControllers.count > 1 && nav.topViewController.viewIfLoaded.window && nav.topViewController == vc)
        return nav;
    if (nav && nav.viewControllers.count > 1 && nav.topViewController.viewIfLoaded.window)
        return nav;
    return nil;
}

static void TGRelayDoBack(void) {
    // 第一优先：系统原生返回（逃逸元素搜索）
    BOOL done = NO;
    for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
        if (![scene isKindOfClass:[UIWindowScene class]]) continue;
        UIWindowScene *ws = (UIWindowScene *)scene;
        if (ws.activationState != UISceneActivationStateForegroundActive) continue;
        for (UIWindow *w in ws.windows) {
            if (!w.isKeyWindow || !w.rootViewController) continue;
            if (TGEscapeSearch(w.rootViewController, 0)) { done = YES; break; }
        }
        if (done) break;
    }
    if (done) return;
    // 兜底：递归 pop 标准导航栈
    for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
        if (![scene isKindOfClass:[UIWindowScene class]]) continue;
        UIWindowScene *ws = (UIWindowScene *)scene;
        if (ws.activationState != UISceneActivationStateForegroundActive) continue;
        for (UIWindow *w in ws.windows) {
            if (!w.isKeyWindow || !w.rootViewController) continue;
            if (TGBackSearch(w.rootViewController, 0)) { done = YES; break; }
        }
        if (done) break;
    }
    // 兜底二：全树扫描宽容路径
    if (!done) {
        for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
            if (![scene isKindOfClass:[UIWindowScene class]]) continue;
            UIWindowScene *ws = (UIWindowScene *)scene;
            if (ws.activationState != UISceneActivationStateForegroundActive) continue;
            for (UIWindow *w in ws.windows) {
                if (!w.rootViewController) continue;
                UINavigationController *nav = TGPoppableNav(w.rootViewController, 0);
                if (nav) {
                    [nav popViewControllerAnimated:YES];
                    done = YES;
                    break;
                }
            }
            if (done) break;
        }
    }
    if (done) notify_post("cn.triggr.back.ack"); // 主流水线已处理，告知 Tweak 免 Lua 兜底
}

// ---- 左滑返回（leftPan 核心方案）：hook 系统交互过渡类，让淘宝类禁用边缘返回的 App 复活原生边缘手势（全系统动画） ----
%group EdgeBack
%hook _UINavigationInteractiveTransition
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g {
    BOOL r = %orig;
    static int logged;
    if (logged < 8) {
        logged++;
    }
    if (!r && [g isKindOfClass:NSClassFromString(@"UIScreenEdgePanGestureRecognizer")]) {
        g.enabled = YES;
        return YES; // 淘宝等禁用边缘返回的 App：强制放行，系统动画照常
    }
    return r;
}
%end
%end

@interface TGInAppTarget : NSObject <UIGestureRecognizerDelegate>
+ (instancetype)shared;
- (void)refresh:(UIWindow *)window wanted:(uint64_t)wanted;
- (UIGestureRecognizer *)recognizerFor:(int)idx;
- (void)recognized:(UIGestureRecognizer *)g;
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g;
@end


static void CNRelayAttachAll(void) {
    uint64_t wanted = 0;
    static int wtoken = -1;
    if (wtoken == -1 && notify_register_check("com.johndie.triggr/relay-wanted", &wtoken) != NOTIFY_STATUS_OK) wtoken = -1;
    if (wtoken != -1) { uint64_t st = 0; notify_get_state(wtoken, &st); wanted = st; }
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
    for (UIWindow *w in ws) [[TGInAppTarget shared] refresh:w wanted:wanted];
    notify_post("cn.triggr.inappattach");
}
%group InAppGestures

%hook UIWindow
- (void)didMoveToWindow {
    %orig;
    if (!self) return;
    uint64_t wanted = 0;
    static int wtoken = -1;
    if (wtoken == -1 && notify_register_check("com.johndie.triggr/relay-wanted", &wtoken) != NOTIFY_STATUS_OK) wtoken = -1;
    if (wtoken != -1) { uint64_t st = 0; notify_get_state(wtoken, &st); wanted = st; }
    [[TGInAppTarget shared] refresh:self wanted:wanted];
    notify_post("cn.triggr.inappattach");
}
%end

%ctor {
    // Apps and SpringBoard only: not extensions, daemons or other UIKit users.
    NSBundle *bundle = NSBundle.mainBundle;
    if (![bundle.bundlePath hasSuffix:@".app"]) return;
    %init(Shake);
    BOOL springBoard = [bundle.bundleIdentifier isEqualToString:@"com.apple.springboard"];
    if (!springBoard) {
        %init(StatusBar);
        %init(EdgeBack); // 左滑返回（leftPan 同款，全 App 生效）
        %init(InAppGestures); // 多指手势（cn2.74）
        notify_post("cn.triggr.relayalive");
        [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:nil queue:nil usingBlock:^(NSNotification *n) {
            CNRelayAttachAll();
        }];
        CNRelayAttachAll();
        // 返回上级：SpringBoard 发一条 Darwin 通知，本 App 内模拟返回（pop 导航 / 收起弹层）
        static int backToken = -1;
        notify_register_dispatch(TGRelayBack, &backToken, dispatch_get_main_queue(), ^(int t) {
 TGRelayDoBack();
        });
    }
}


// ---- 多指手势（cn2.74，按 2.0 TGInAppTarget 逆向档案逐行复刻）----
// 12 槽位：0=2指tap 1=3指tap 2..5=2指上/下/左/右 6..9=3指四向 10=pinchin 11=pinchout
// wanted 位：bit(idx+2)；pinch 特例 bits12/13。未指派不挂载（动态开关）。
// 上报：NSDistributedNotificationCenter "com.johndie.triggr/inapp-*"，SB 侧映射 inapp.* 动作执行。


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
        int k = idx % 4;
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
    notify_post("cn.triggr.inappfired");
    if (g.state != UIGestureRecognizerStateEnded) return;
    NSNumber *idxN = objc_getAssociatedObject(g, "TGInAppIndex");
    if (!idxN) return;
    int idx = idxN.intValue;
    static NSString *names[] = {
        @"com.johndie.triggr/inapp-twotap", @"com.johndie.triggr/inapp-threetap",
        @"com.johndie.triggr/inapp-twoup", @"com.johndie.triggr/inapp-twodown",
        @"com.johndie.triggr/inapp-twoleft", @"com.johndie.triggr/inapp-tworight",
        @"com.johndie.triggr/inapp-threeup", @"com.johndie.triggr/inapp-threedown",
        @"com.johndie.triggr/inapp-threeleft", @"com.johndie.triggr/inapp-threeright",
        @"com.johndie.triggr/inapp-pinchin", @"com.johndie.triggr/inapp-pinchout",
    };
    if (idx >= 0 && idx <= 11)
        [[NSDistributedNotificationCenter defaultCenter] postNotificationName:names[idx] object:nil userInfo:nil deliverImmediately:YES];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g {
    NSNumber *idxN = objc_getAssociatedObject(g, "TGInAppIndex");
    if (!idxN) return NO;
    if ([g isKindOfClass:[UIPinchGestureRecognizer class]]) return YES; // 诊断直通
    int idx = idxN.intValue;
    uint64_t bit = idx == 10 ? (1ULL << 12) : idx == 11 ? (1ULL << 13) : (4ULL << idx);
    uint64_t wanted = 0;
    static int wtoken = -1;
    if (wtoken == -1 && notify_register_check("com.johndie.triggr/relay-wanted", &wtoken) != NOTIFY_STATUS_OK) wtoken = -1;
    if (wtoken != -1) { uint64_t st = 0; notify_get_state(wtoken, &st); wanted = st; }
    return (wanted & bit) != 0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)g shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)other {
    return NO;
}

@end

%end
