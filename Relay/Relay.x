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

// Edge slide-ins: a fast straight slide starting on a screen edge. A real
// recognizer on every window (added as windows become visible) competes in the
// standard gesture arena; cancelsTouchesInView lets it swallow the touch on
// recognition, so apps see a clean cancel instead of half a scroll.
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

@interface TGEdgeSwipeRecognizer : UIGestureRecognizer
@property (nonatomic, assign) BOOL tracking;
@property (nonatomic, assign) CGPoint start;
@property (nonatomic, assign) CFAbsoluteTime startTime;
@end

@implementation TGEdgeSwipeRecognizer
- (instancetype)initWithTarget:(id)target action:(SEL)action {
    self = [super initWithTarget:self action:@selector(nop)];
    if (self) {
        self.cancelsTouchesInView = YES;
        // Withhold edge-started touches until we've decided, so fast system
        // gestures (back swipe) never see them when we win. Non-edge touches
        // fail us on the first event and pass through untouched.
        self.delaysTouchesBegan = YES;
        self.delaysTouchesEnded = YES;
    }
    return self;
}
- (void)nop {}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    if (self.numberOfTouches != 1 || self.tracking) return;
    CGPoint p = [touches.anyObject locationInView:self.view];
    CGSize size = self.view.bounds.size;
    if (p.x < tgMargin || p.x > size.width - tgMargin || p.y < tgMargin || p.y > size.height - tgMargin) {
        self.tracking = YES;
        self.start = p;
        self.startTime = CACurrentMediaTime();
    }
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    if (!self.tracking || self.numberOfTouches != 1) return;
    CGPoint p = [touches.anyObject locationInView:self.view];
    CGSize size = self.view.bounds.size;
    CGFloat dx = p.x - self.start.x, dy = p.y - self.start.y;
    NSTimeInterval dt = CACurrentMediaTime() - self.startTime;
    const char *name = NULL;
    if (self.start.x < tgMargin) {
        if (dx > tgMin && fabs(dy) < tgPerp && dt <= tgMaxDuration) name = TGRelaySlideLeft;
        else if (dx < -tgMin * 0.5) { self.state = UIGestureRecognizerStateFailed; self.tracking = NO; return; }
    } else if (self.start.x > size.width - tgMargin) {
        if (dx < -tgMin && fabs(dy) < tgPerp && dt <= tgMaxDuration) name = TGRelaySlideRight;
        else if (dx > tgMin * 0.5) { self.state = UIGestureRecognizerStateFailed; self.tracking = NO; return; }
    } else if (self.start.y < tgMargin) {
        if (dy > tgMin && fabs(dx) < tgPerp && dt <= tgMaxDuration) name = TGRelaySlideTop;
        else if (dy < -tgMin * 0.5) { self.state = UIGestureRecognizerStateFailed; self.tracking = NO; return; }
    } else {
        if (dy < -tgMin && fabs(dx) < tgPerp && dt <= tgMaxDuration) name = TGRelaySlideBottom;
        else if (dy > tgMin * 0.5) { self.state = UIGestureRecognizerStateFailed; self.tracking = NO; return; }
    }
    if (name) {
        self.state = UIGestureRecognizerStateBegan; // cancels touches in view
        self.state = UIGestureRecognizerStateEnded;
        self.tracking = NO;
        TGRelay(name, TGRelayWantsSlides);
    }
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    self.tracking = NO;
    if (self.state == UIGestureRecognizerStatePossible) self.state = UIGestureRecognizerStateFailed;
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    self.tracking = NO;
    if (self.state != UIGestureRecognizerStateEnded) self.state = UIGestureRecognizerStateFailed;
}
- (void)reset {
    [super reset];
    self.tracking = NO;
}
@end

static void TGAttachEdgeRecognizer(UIWindow *window) {
    for (UIGestureRecognizer *g in window.gestureRecognizers)
        if ([g isKindOfClass:TGEdgeSwipeRecognizer.class]) return;
    [window addGestureRecognizer:[[TGEdgeSwipeRecognizer alloc] init]];
}

%group Slides
%hook UIApplication
- (void)sendEvent:(UIEvent *)event {
    %orig;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        TGReadSlidePrefs();
        int token;
        notify_register_dispatch(TGPrefsChangedNotification, &token, dispatch_get_main_queue(), ^(int t) { TGReadSlidePrefs(); });
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        for (UIWindow *window in UIApplication.sharedApplication.windows) TGAttachEdgeRecognizer(window);
#pragma clang diagnostic pop
        [[NSNotificationCenter defaultCenter] addObserverForName:UIWindowDidBecomeVisibleNotification object:nil queue:nil usingBlock:^(NSNotification *n) {
            TGAttachEdgeRecognizer(n.object);
        }];
    });
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
