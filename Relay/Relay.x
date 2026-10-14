// Triggr's in-app half. Apps handle their own status bar taps and shakes, so
// this tiny library tells SpringBoard about them. It links nothing but UIKit,
// runs no actions and reads no settings; when no status bar or shake trigger is
// assigned it doesn't even send the message.

#import <UIKit/UIKit.h>
#import <notify.h>
#import <objc/message.h>
#import "../Shared/TGRelay.h"

static void TGRelayDiag(NSString *msg) {
    NSString *path = @"/var/mobile/Documents/triggr_diag.log";
    NSString *line = [NSString stringWithFormat:@"[%@][Relay %@] %@\n", [NSDate date], NSBundle.mainBundle.bundleIdentifier ?: @"?", msg];
    NSFileHandle *h = [NSFileHandle fileHandleForWritingAtPath:path];
    if (!h) { [line writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil]; return; }
    [h seekToEndOfFile]; [h writeData:[line dataUsingEncoding:NSUTF8StringEncoding]]; [h closeFile];
}

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


// ---- 返回上级：合成左滑驱动系统交互过渡（PanCake 同款机制，无真实触摸） ----
@interface _UINavigationInteractiveTransitionBase : NSObject
-(void)handleNavigationTransition:(UIPanGestureRecognizer*)arg1;
@end

@interface TGFakeSwipePan : UIPanGestureRecognizer
@property (nonatomic, assign) CGFloat progress;   // 0..1
@end
@implementation TGFakeSwipePan
- (CGPoint)translationInView:(UIView *)view {
    CGFloat w = view.bounds.size.width ?: 390;
    return CGPointMake(self.progress * w * 0.62, 0); // 左缘向右滑（终点须过 50% 完成阈值）
}
- (CGPoint)locationInView:(UIView *)view {
    CGFloat h = view.bounds.size.height ?: 800;
    return CGPointMake(self.progress * 60 + 2, h / 2);
}
@end

static BOOL TGBackSearch(UIViewController *vc, int depth);
static BOOL TGBackSearch(UIViewController *vc, int depth) {
    if (!vc || depth > 12) return NO;
    if (vc.presentedViewController && TGBackSearch(vc.presentedViewController, depth+1)) return YES;
    for (UIViewController *child in vc.childViewControllers)
        if (TGBackSearch(child, depth+1)) return YES;
    UINavigationController *nav = [vc isKindOfClass:[UINavigationController class]] ? (UINavigationController *)vc : vc.navigationController;
    if (nav && nav.viewControllers.count > 1 && nav.topViewController == vc) {
        TGRelayDiag([NSString stringWithFormat:@"synth swipe on nav at %@ (depth %d, %lu levels)", vc, depth, (unsigned long)nav.viewControllers.count]);
        id controller = [nav valueForKey:@"_cachedInteractionController"];
        if (!controller || ![controller respondsToSelector:@selector(handleNavigationTransition:)]) {
            TGRelayDiag(@"no interaction controller, direct pop");
            [nav popViewControllerAnimated:YES];
            return YES;
        }
        TGFakeSwipePan *pan = [[TGFakeSwipePan alloc] init];
        [pan setValue:@(UIGestureRecognizerStateBegan) forKey:@"state"];
        ((void (*)(id, SEL, id))objc_msgSend)(controller, @selector(handleNavigationTransition:), pan);
        __block CGFloat p = 0;
        dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 16 * NSEC_PER_MSEC, 0);
        dispatch_source_set_event_handler(timer, ^{
            p += 0.07;
            pan.progress = MIN(p, 1.0);
            if (p < 1.0) {
                [pan setValue:@(UIGestureRecognizerStateChanged) forKey:@"state"];
                ((void (*)(id, SEL, id))objc_msgSend)(controller, @selector(handleNavigationTransition:), pan);
            } else {
                [pan setValue:@(UIGestureRecognizerStateEnded) forKey:@"state"];
                ((void (*)(id, SEL, id))objc_msgSend)(controller, @selector(handleNavigationTransition:), pan);
                dispatch_source_cancel(timer);
            }
        });
        dispatch_resume(timer);
        return YES;
    }
    if (vc.presentingViewController && vc == vc.presentedViewController) {
        TGRelayDiag(@"dismiss presented sheet");
        [vc dismissViewControllerAnimated:YES completion:nil];
        return YES;
    }
    return NO;
}

static void TGRelayDoBack(void) {
    TGRelayDiag(@"back received");
    BOOL done = NO;
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
    if (!done) TGRelayDiag(@"no poppable navigation found");
}

%ctor {
    // Apps and SpringBoard only: not extensions, daemons or other UIKit users.
    NSBundle *bundle = NSBundle.mainBundle;
    if (![bundle.bundlePath hasSuffix:@".app"]) return;
    %init(Shake);
    BOOL springBoard = [bundle.bundleIdentifier isEqualToString:@"com.apple.springboard"];
    if (!springBoard) {
        %init(StatusBar);
        TGRelayDiag(@"relay ctor");
        // 返回上级：SpringBoard 发一条 Darwin 通知，本 App 内模拟返回（pop 导航 / 收起弹层）
        static int backToken = -1;
        notify_register_dispatch(TGRelayBack, &backToken, dispatch_get_main_queue(), ^(int t) {
            TGRelayDiag(@"back notify dispatch"); TGRelayDoBack();
        });
    }
}
