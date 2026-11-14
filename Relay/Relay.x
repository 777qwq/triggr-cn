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

// 页面身份：可见链上每一层的实例指针，nav 栈深、tab 选中项、容器子控制器类名再各记一位。
// 只用来判断「动作发出后页面有没有变」，不展示、不记录。
//
// 不能只看根控制器的直接子控制器：微信的「根容器 → 内层导航 → 会话 → 文章」里，
// 文章退回会话时根控制器的子控制器和子视图数都没变，戳就相同，0.35 秒后的复核会
// 误判成「没动」，于是再补一次 pop——用户看到的就是一次按键退两层。
//
// 主键用实例指针，不用类名 + 子视图数：同类页面换实例（A 会话 → B 会话）时类名和
// 子视图数可以完全一样，指针不会；而 subviews.count 会随骨架屏 / 广告位 / cell 复用
// 抖动，页面其实没动却判成动了（于是不补 pop，按键无反应）——这是修好「退两层」之后
// 才会暴露的反向失败。指针是「是不是同一屏」这件事的唯一稳定答案。
static NSString *TGPageStamp(UIViewController *root) {
    if (!root) return @"";
    NSMutableString *s = [NSMutableString string];
    for (UIViewController *vc in TGVisibleChain(root)) {
        [s appendFormat:@"%p|", vc];
        if ([vc isKindOfClass:[UINavigationController class]])
            [s appendFormat:@"nav%lu|", (unsigned long)((UINavigationController *)vc).viewControllers.count];
        if ([vc isKindOfClass:[UITabBarController class]])
            [s appendFormat:@"tab%lu|", (unsigned long)((UITabBarController *)vc).selectedIndex];
        // 容器指纹：有的自绘容器把真正的内容页放在 childViewControllers 中间，链走的是
        // lastObject，换页时链上看不出来。这里把这一层所有子控制器的类名拼进去（不递归），
        // 成本可忽略，能兜住这种盲区。
        for (UIViewController *child in vc.childViewControllers) [s appendFormat:@"%@,", NSStringFromClass(child.class)];
        [s appendString:@"|"];
    }
    return s;
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
    // 纯 modal 页面（没有可弹的 nav）：dismiss 最上面那层，这就是系统意义上的「返回」。
    // 原来只找 nav，以 modal 为主的 App 上「返回上级」完全没有反应。
    UIViewController *top = root;
    while (top.presentedViewController) top = top.presentedViewController;
    if (top != root && !top.isBeingDismissed && !top.transitionCoordinator) {
        [top dismissViewControllerAnimated:YES completion:nil];
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
        UIViewController *root = w.rootViewController;
        // 转场还在跑就先别判：presentedViewController 要到动画结束才清空，这时的戳只是
        // 「半路状态」，比对必然误判（0.35 秒和转场动画同量级）。宁可这次不补——下一按
        // 用户的意图本来也还没走完；补错一次是「退两层」，代价大得多。
        if (!root || root.isBeingDismissed || root.isBeingPresented || root.transitionCoordinator) return;
        if ([TGPageStamp(root) isEqualToString:stamp]) TGPublicPop(w);
    });
}

static void TGRelayDoBack(void) {
    UIWindow *win = TGRelayWindows().firstObject;
    if (!win) return;
    notify_post("cn.triggr.back.ack");
    TGBackStep(win);
}

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

// 关联对象的 key 必须是稳定且唯一的指针。用字符串字面量当 key 只是「碰巧能用」：
// 同一 TU 里 clang 会合并相同字面量，一旦不合并（编译选项、代码搬走、手抄成两份），
// get 全返回 nil，表现是「应用内多指手势全都不触发」，不崩也不报错。
static const void *TGInAppIndexKey = &TGInAppIndexKey;

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
    objc_setAssociatedObject(g, TGInAppIndexKey, @(idx), OBJC_ASSOCIATION_RETAIN);
    return g;
}

- (void)refresh:(UIWindow *)window wanted:(uint64_t)wanted {
    if (!window) return;
    for (UIGestureRecognizer *g in [window.gestureRecognizers copy]) {
        NSNumber *idxN = objc_getAssociatedObject(g, TGInAppIndexKey);
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
            NSNumber *idxN = objc_getAssociatedObject(g, TGInAppIndexKey);
            if (idxN && idxN.intValue == idx) { present = YES; break; }
        }
        if (!present) [window addGestureRecognizer:[self recognizerFor:idx]];
    }
}

- (void)recognized:(UIGestureRecognizer *)g {
    NSNumber *idxN = objc_getAssociatedObject(g, TGInAppIndexKey);
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
    NSNumber *idxN = objc_getAssociatedObject(g, TGInAppIndexKey);
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
        %init(EdgeBack); // 左滑返回（leftPan 同款，全 App 生效）
        %init(InAppGestures); // 多指手势（cn2.75b，2.0 逆向复刻）
        CNRelayAttachAll();
        [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:nil queue:nil usingBlock:^(NSNotification *n) {
            CNRelayAttachAll();
        }];
        // 返回上级：SpringBoard 发一条 Darwin 通知，本 App 内模拟返回（pop 导航 / 收起弹层）
        static int backToken = -1;
        notify_register_dispatch(TGRelayBack, &backToken, dispatch_get_main_queue(), ^(int t) {
 TGRelayDoBack();
        });
    }
}


