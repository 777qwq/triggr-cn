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

static void TGRelayDoBack(void) {
    UIViewController *vc = nil;
    TGRelayDiag(@"back received");
    for (UIScene *scene in UIApplication.sharedApplication.connectedScenes) {
        if (![scene isKindOfClass:[UIWindowScene class]]) continue;
        for (UIWindow *w in ((UIWindowScene *)scene).windows) if (w.isKeyWindow) vc = w.rootViewController;
    }
    TGRelayDiag(vc ? [NSString stringWithFormat:@"keywindow root: %@", vc] : @"keywindow root: nil");
    while (vc.presentedViewController) vc = vc.presentedViewController;
    if (vc.navigationController && vc.navigationController.topViewController != vc.navigationController.viewControllers.firstObject) {
        TGRelayDiag(@"pop nav");
        [vc.navigationController popViewControllerAnimated:YES];
        return;
    }
    if (vc.presentingViewController) { TGRelayDiag(@"dismiss presented"); [vc dismissViewControllerAnimated:YES completion:nil]; }
    TGRelayDiag(@"nothing to pop/dismiss");
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
