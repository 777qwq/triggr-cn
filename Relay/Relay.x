// Triggr's in-app half. Apps handle their own status bar taps and shakes, so
// this tiny library tells SpringBoard about them. It links nothing but UIKit,
// runs no actions and reads no settings; when no status bar or shake trigger is
// assigned it doesn't even send the message.

#import <UIKit/UIKit.h>
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
static void TGRelayDiag(NSString *msg) {
    NSString *path = @"/var/mobile/Documents/triggr_diag.log";
    NSString *line = [NSString stringWithFormat:@"[%@][Relay %@] %@\n", [NSDate date], NSBundle.mainBundle.bundleIdentifier ?: @"?", msg];
    NSFileHandle *h = [NSFileHandle fileHandleForWritingAtPath:path];
    if (!h) { [line writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil]; return; }
    [h seekToEndOfFile]; [h writeData:[line dataUsingEncoding:NSUTF8StringEncoding]]; [h closeFile];
}

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
        TGRelayDiag([NSString stringWithFormat:@"escape on %@ -> %d", vc, r]);
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
        TGRelayDiag([NSString stringWithFormat:@"pop nav at %@ (depth %d, %lu levels)", vc, depth, (unsigned long)nav.viewControllers.count]);
        [nav popViewControllerAnimated:YES]; // 标准滑动动画（假 pan 驱动过渡被系统无视，cn1.48 实证）
        return YES;
    }
    if (vc.presentingViewController && vc == vc.presentedViewController) {
        TGRelayDiag(@"dismiss presented sheet");
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
    TGRelayDiag(@"back received");
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
                    TGRelayDiag([NSString stringWithFormat:@"scan pop: %lu levels of %@", (unsigned long)nav.viewControllers.count, nav.topViewController]);
                    [nav popViewControllerAnimated:YES];
                    done = YES;
                    break;
                }
            }
            if (done) break;
        }
    }
    if (done) notify_post("cn.triggr.back.ack"); // 主流水线已处理，告知 Tweak 免 Lua 兜底
    if (!done) TGRelayDiag(@"no back route found");
}

// ---- 左滑返回（leftPan 核心方案）：hook 系统交互过渡类，让淘宝类禁用边缘返回的 App 复活原生边缘手势（全系统动画） ----
%group EdgeBack
%hook _UINavigationInteractiveTransition
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g {
    BOOL r = %orig;
    static int logged;
    if (logged < 8) {
        logged++;
        TGRelayDiag([NSString stringWithFormat:@"shouldBegin: orig=%d g=%@ enabled=%d", r, NSStringFromClass(g.class), g.enabled]);
    }
    if (!r && [g isKindOfClass:NSClassFromString(@"UIScreenEdgePanGestureRecognizer")]) {
        g.enabled = YES;
        TGRelayDiag(@"shouldBegin: forced YES");
        return YES; // 淘宝等禁用边缘返回的 App：强制放行，系统动画照常
    }
    return r;
}
- (void)handleNavigationTransition:(UIPanGestureRecognizer *)g {
    TGRelayDiag([NSString stringWithFormat:@"handleNavTrans: state=%ld g=%@", (long)g.state, NSStringFromClass(g.class)]);
    %orig;
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
        %init(EdgeBack); // 左滑返回（leftPan 同款，全 App 生效）
        // 返回上级：SpringBoard 发一条 Darwin 通知，本 App 内模拟返回（pop 导航 / 收起弹层）
        static int backToken = -1;
        notify_register_dispatch(TGRelayBack, &backToken, dispatch_get_main_queue(), ^(int t) {
 TGRelayDoBack();
        });
    }
}
