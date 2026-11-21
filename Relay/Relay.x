// Triggr's in-app half. Apps handle their own status bar taps and shakes, so
// this tiny library tells SpringBoard about them, and performs the one action
// that must run in-process: the accessibility "back / dismiss" escape.

#import <UIKit/UIKit.h>
#import <notify.h>
#import <objc/message.h>
#import <objc/runtime.h>
#import "../Shared/TGRelay.h"
#import "../Shared/TGFreeze.h"


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


// ---- 左滑返回（leftPan 核心方案）：hook 系统交互过渡类，让淘宝类禁用边缘返回的 App 复活原生边缘手势（全系统动画） ----
%group EdgeBack
%hook _UINavigationInteractiveTransition
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)g {
    BOOL r = %orig;
    if (!r && [g isKindOfClass:NSClassFromString(@"UIScreenEdgePanGestureRecognizer")]) {
        // cn4.9 守卫：只在"有级可返且没有转场进行中"才强制放行（淘宝类禁用返回的 App 照常复活）。
        // 根页/转场中尊重原生 NO——此前的无条件放行会把交互式过渡打进半开状态，致原生左滑失效。
        UINavigationController *nav = nil;
        if ([(id)self respondsToSelector:@selector(navigationController)])
            nav = ((UINavigationController *(*)(id, SEL))objc_msgSend)(self, @selector(navigationController));
        if (nav && nav.viewControllers.count > 1 && !nav.transitionCoordinator) {
            g.enabled = YES;
            return YES;
        }
    }
    return r;
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
        %init(EdgeBack); // 左滑返回（leftPan 同款，全 App 生效）：放行 App 禁用的原生边缘手势
        // cn4.68：多指手势已迁到 SpringBoard 系统手势层，Relay 不再注入识别器。
        // cn5.2.15：返回上级改由 SpringBoard 回放「从左边缘起滑」的系统触摸，走 App 自己的
        // 交互式返回；Relay 不再收返回通知，故移除 back 注册。EdgeBack 保留——它保证被 App
        // 禁用的边缘返回手势仍被放行，回放触摸才能被系统返回识别器接受。
        // cn5.2.9：统一冻结——落指快照 + 冻结/解冻，多指与边缘竖滑共用这三条。
        static int freezeSnapshotToken = -1;
        notify_register_dispatch(TGRelayFreezeSnapshot, &freezeSnapshotToken, dispatch_get_main_queue(), ^(int t) {
            TGFreezeSnapshotBegan();
        });
        static int freezeBeginToken = -1;
        notify_register_dispatch(TGRelayFreezeBegin, &freezeBeginToken, dispatch_get_main_queue(), ^(int t) {
            TGFreezeBegin();
        });
        static int freezeEndToken = -1;
        notify_register_dispatch(TGRelayFreezeEnd, &freezeEndToken, dispatch_get_main_queue(), ^(int t) {
            TGFreezeEnd();
        });
    }
}


