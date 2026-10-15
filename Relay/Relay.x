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
// ---- 左滑返回（leftPan 同款）：App 内边缘手势驱动导航返回 ----
@interface TGEdgeBackDelegate : NSObject <UIGestureRecognizerDelegate>
- (void)tgEdgePan:(UIPanGestureRecognizer *)g;
@end
@implementation TGEdgeBackDelegate
- (void)tgEdgePan:(UIPanGestureRecognizer *)g {
    if (g.state != UIGestureRecognizerStateEnded) return;
    CGPoint t = [g translationInView:g.view];
    CGPoint v = [g velocityInView:g.view];
    if (t.x < 44 && v.x < 400) return; // 距离/速度阈值，轻触不算
    UINavigationController *nav = nil;
    UIResponder *r = g.view;
    while (r) { // leftPan 式局部查找：从手势视图沿响应链找导航
        if ([r isKindOfClass:UIViewController.class]) {
            UIViewController *vc = (UIViewController *)r;
            if (vc.navigationController && vc.navigationController.viewControllers.count > 1) { nav = vc.navigationController; break; }
        }
        r = r.nextResponder;
    }
    if (!nav) nav = TGPoppableNav(g.view.window.rootViewController, 0);
    if (!nav || nav.viewControllers.count <= 1) return;
    if (NSClassFromString(@"UIImpactFeedbackGenerator")) {
        id h = [[NSClassFromString(@"UIImpactFeedbackGenerator") alloc] initWithStyle:(NSInteger)1];
        [h performSelector:@selector(impactOccurred)];
    }
    [nav popViewControllerAnimated:YES];
}
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)g {
    return [g velocityInView:g.view].x > 60; // 只认右滑
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)g shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)o {
    return NO; // 独占（leftPan 同款）
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)g shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)o {
    return YES; // 内容手势须等边缘手势失败——边缘优先（leftPan 同款 hook 语义）
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)g shouldReceiveTouch:(UITouch *)t {
    return YES;
}
@end
static TGEdgeBackDelegate *TGEdgeDel;

%group EdgeBack
%hook UIWindow
- (void)didMoveToWindow {
    %orig;
    if (!self || !self.window) return;
    static char kTGEdgeKey;
    if (objc_getAssociatedObject(self, &kTGEdgeKey)) return;
    if (!TGEdgeDel) TGEdgeDel = [TGEdgeBackDelegate new];
    UIScreenEdgePanGestureRecognizer *g = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:TGEdgeDel action:@selector(tgEdgePan:)];
    g.edges = UIRectEdgeLeft;
    g.delegate = TGEdgeDel;
    objc_setAssociatedObject(self, &kTGEdgeKey, g, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addGestureRecognizer:g];
}
%end
%end

// ---- 返回上级：系统原生返回（辅助功能逃逸）+ 递归 pop 兜底 ----
static IMP TGVCBaseEscapeImp(void) {
    static IMP imp;
    static dispatch_once_t once;
    dispatch_once(&once, ^{ imp = class_getMethodImplementation([UIViewController class], @selector(accessibilityPerformEscape)); });
    return imp;
}

// ---- 合成左滑：驱动系统交互过渡（PanCake 机制 + 速度伪造） ----
@interface _UINavigationInteractiveTransitionBase : NSObject
-(void)handleNavigationTransition:(UIPanGestureRecognizer*)arg1;
@end

@interface TGFakeSwipePan : UIPanGestureRecognizer
@property (nonatomic, assign) CGFloat progress;
@end
@implementation TGFakeSwipePan
- (CGPoint)translationInView:(UIView *)view {
    CGFloat w = view.bounds.size.width ?: 390;
    return CGPointMake(self.progress * w * 0.62, 0);
}
- (CGPoint)locationInView:(UIView *)view {
    CGFloat h = view.bounds.size.height ?: 800;
    return CGPointMake(self.progress * 60 + 2, h / 2);
}
- (CGPoint)velocityInView:(UIView *)view {
    return CGPointMake(3000, 0);
}
@end

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
        id controller = [nav valueForKey:@"_cachedInteractionController"];
        if (controller && [controller respondsToSelector:@selector(handleNavigationTransition:)]) {
            UIViewController *fromVC = nav.topViewController;
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
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        if (nav.topViewController == fromVC && nav.viewControllers.count > 1) {
                            TGRelayDiag(@"bounced -> standard pop");
                            [nav popViewControllerAnimated:YES];
                        }
                    });
                }
            });
            dispatch_resume(timer);
            return YES;
        }
        [nav popViewControllerAnimated:YES];
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
