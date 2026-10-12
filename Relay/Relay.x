// Triggr's in-app half. Apps handle their own status bar taps and shakes, so
// this tiny library tells SpringBoard about them. It links nothing but UIKit,
// runs no actions and reads no settings; when no status bar or shake trigger is
// assigned it doesn't even send the message.

#import <UIKit/UIKit.h>
#import <notify.h>
#import <objc/message.h>
#import "../Shared/TGRelay.h"
#import "../Shared/TGCatalog.h"

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

// Edge slide-ins: a fast straight slide starting on a screen edge. Tracked
// here in every app (sendEvent), fired through the relay; SpringBoard runs the
// action. Parallel by design: touches are never consumed.
%group Slides
static CGFloat tgMargin = 24, tgMin = 60, tgPerp = 40;
static NSTimeInterval tgMaxDuration = 0.6;

static CGFloat TGSlidePref(NSString *key, CGFloat def) {
    id v = CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)key, (__bridge CFStringRef)TGDomain));
    return [v respondsToSelector:@selector(floatValue)] && [v floatValue] > 0 ? [v floatValue] : def;
}

static void TGReadSlidePrefs(void) {
    tgMargin = TGSlidePref(TGSlideMarginKey, 24);
    tgMin = TGSlidePref(TGSlideDistanceKey, 60);
    tgPerp = TGSlidePref(TGSlidePerpKey, 40);
    id v = CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)TGSlideDurationKey, (__bridge CFStringRef)TGDomain));
    if ([v respondsToSelector:@selector(doubleValue)] && [v doubleValue] > 0) tgMaxDuration = [v doubleValue];
}

%hook UIApplication
- (void)sendEvent:(UIEvent *)event {
    %orig;
    if (event.type != UIEventTypeTouches) return;
    static NSMutableDictionary<NSValue *, NSValue *> *starts;
    static NSMutableDictionary<NSValue *, NSDate *> *times;
    static CFAbsoluteTime lastFire;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        starts = [NSMutableDictionary new]; times = [NSMutableDictionary new];
        TGReadSlidePrefs();
        int token;
        notify_register_dispatch(TGPrefsChangedNotification, &token, dispatch_get_main_queue(), ^(int t) { TGReadSlidePrefs(); });
    });
    CGSize size = UIScreen.mainScreen.bounds.size;
    for (UITouch *touch in event.allTouches) {
        NSValue *key = [NSValue valueWithNonretainedObject:touch];
        CGPoint p = [touch locationInView:nil];
        switch (touch.phase) {
            case UITouchPhaseBegan:
                starts[key] = [NSValue valueWithCGPoint:p];
                times[key] = [NSDate date];
                break;
            case UITouchPhaseEnded: {
                NSValue *startValue = starts[key];
                NSDate *startTime = times[key];
                [starts removeObjectForKey:key];
                [times removeObjectForKey:key];
                if (!startValue || !startTime) break;
                CGPoint s = startValue.CGPointValue;
                NSTimeInterval dt = -startTime.timeIntervalSinceNow;
                if (dt <= 0 || dt > tgMaxDuration) break;
                CGFloat dx = p.x - s.x, dy = p.y - s.y;
                const char *name = NULL;
                if (s.x < tgMargin && dx > tgMin && fabs(dy) < tgPerp) name = TGRelaySlideLeft;
                else if (s.x > size.width - tgMargin && dx < -tgMin && fabs(dy) < tgPerp) name = TGRelaySlideRight;
                else if (s.y < tgMargin && dy > tgMin && fabs(dx) < tgPerp) name = TGRelaySlideTop;
                else if (s.y > size.height - tgMargin && dy < -tgMin && fabs(dx) < tgPerp) name = TGRelaySlideBottom;
                if (!name) break;
                CFAbsoluteTime now = CFAbsoluteTimeGetCurrent();
                if (now - lastFire < 0.3) break; // multi-touch can end twice at once
                lastFire = now;
                TGRelay(name, TGRelayWantsSlides);
                break;
            }
            case UITouchPhaseCancelled:
                [starts removeObjectForKey:key];
                [times removeObjectForKey:key];
                break;
            default:
                break;
        }
    }
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

%ctor {
    // Apps and SpringBoard only: not extensions, daemons or other UIKit users.
    NSBundle *bundle = NSBundle.mainBundle;
    if (![bundle.bundlePath hasSuffix:@".app"]) return;
    %init(Shake);
    BOOL springBoard = [bundle.bundleIdentifier isEqualToString:@"com.apple.springboard"];
    if (!springBoard) %init(StatusBar);
    %init(Slides); // edges work in apps and on the Home Screen alike
}
