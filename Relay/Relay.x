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
    BOOL r = ((BOOL (*)(id, SEL))objc_msgSend)(vc, @selector(accessibilityPerformEscape));
    TGBackDiag(@"escape 尝试 %@ -> %d", NSStringFromClass(vc.class), r);
    return r;
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
    if (!root) { TGBackDiag(@"PublicPop: window 无 root"); return NO; }
    NSArray<UIViewController *> *chain = TGVisibleChain(root);
    NSMutableString *desc = [NSMutableString string];
    for (UIViewController *c in chain) [desc appendFormat:@"%@ -> ", NSStringFromClass(c.class)];
    TGBackDiag(@"PublicPop: 可见链(%lu): %@", (unsigned long)chain.count, desc);
    SEL sel = @selector(popViewControllerAnimated:);
    for (UIViewController *vc in chain.reverseObjectEnumerator) {
        if (![vc isKindOfClass:[UINavigationController class]]) continue;
        UINavigationController *nav = (UINavigationController *)vc;
        TGBackDiag(@"PublicPop: 找到 nav=%@ 栈深=%lu transition=%d", NSStringFromClass(nav.class), (unsigned long)nav.viewControllers.count, nav.transitionCoordinator != nil);
        if (nav.viewControllers.count < 2) { TGBackDiag(@"PublicPop: 栈深<2 跳过"); continue; }
        if (nav.transitionCoordinator) { TGBackDiag(@"PublicPop: 转场中 跳过"); continue; }
        if (![nav respondsToSelector:sel]) { TGBackDiag(@"PublicPop: 不响应 pop 跳过"); continue; }
        @try {
            [nav popViewControllerAnimated:YES];
            TGBackDiag(@"PublicPop: 已调用 popViewControllerAnimated");
        } @catch (NSException *e) {
            TGBackDiag(@"PublicPop: pop 抛异常 %@", e.reason);
        }
        return YES;
    }
    TGBackDiag(@"PublicPop: 链上无可弹 nav，尝试 dismiss modal");
    // 纯 modal 页面（没有可弹的 nav）：dismiss 最上面那层，这就是系统意义上的「返回」。
    // 原来只找 nav，以 modal 为主的 App 上「返回上级」完全没有反应。
    UIViewController *top = root;
    while (top.presentedViewController) top = top.presentedViewController;
    if (top != root && !top.isBeingDismissed && !top.transitionCoordinator) {
        [top dismissViewControllerAnimated:YES completion:nil];
        TGBackDiag(@"PublicPop: 已 dismiss %@", NSStringFromClass(top.class));
        return YES;
    }
    TGBackDiag(@"PublicPop: 无 modal 可 dismiss，返回 NO");
    return NO;
}

static void TGBackStep(UIWindow *win) {
    UIViewController *root = win.rootViewController;
    if (!root) { TGBackDiag(@"BackStep: 无 root，结束"); return; }
    TGBackDiag(@"BackStep: root=%@", NSStringFromClass(root.class));

    NSString *stamp = TGPageStamp(root);
    BOOL acted = NO;
    @try {
        acted = TGEscapeIn(root);
    } @catch (NSException *e) {
        TGBackDiag(@"BackStep: escape 抛异常 %@", e.reason);
        acted = NO;
    }
    TGBackDiag(@"BackStep: escape 应答=%d", acted);
    if (!acted) { // 没人应答，直接交给容器
        TGBackDiag(@"BackStep: 无人应答 escape，直接 PublicPop");
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
        if (!root || root.isBeingDismissed || root.isBeingPresented || root.transitionCoordinator) {
            TGBackDiag(@"BackStep: 0.35s 后转场中/无 root，不复核");
            return;
        }
        NSString *after = TGPageStamp(root);
        TGBackDiag(@"BackStep: 0.35s 后戳比对 相同=%d", [after isEqualToString:stamp]);
        if ([after isEqualToString:stamp]) { TGBackDiag(@"BackStep: 页面没动，补 PublicPop"); TGPublicPop(w); }
    });
}

static void TGRelayDoBack(void) {
    NSArray<UIWindow *> *wins = TGRelayWindows();
    TGBackDiag(@"DoBack: 可见 window 数=%lu", (unsigned long)wins.count);
    UIWindow *win = wins.firstObject;
    if (!win) { TGBackDiag(@"DoBack: 无 window，结束"); return; }
    TGBackDiag(@"DoBack: keyWindow=%@", NSStringFromClass(win.class));
    notify_post("cn.triggr.back.ack");
    TGBackStep(win);
}

// cn5.2.16：返回通知是广播，所有注入 Relay 的 App 都收到。5.2.14 曾加过「命令 1.5s 内
// 生成」的新鲜度窗防后台积压误退，但微信主队列繁忙时通知 block 排到执行常超 1.5s，被
// 当旧命令丢弃——这是微信一直不返回的真凶。改为「消费型命令文件」，不看时间：
//   ① 收到时自己是前台 active（主屏幕触发 SpringBoard 根本没 post）；
//   ② 命令文件里有未消费的 token（前台 App 领走后会删除文件）。
// 关键在删除：SpringBoard 每次触发写一份命令文件，前台 active 的 App 读到后立刻删文件
// 再执行返回。后台 App 收到通知时非 active 直接 return、不删；等它积压的 block 回前台
// 才跑时，文件已被前台 App 删掉 → 读到 nil → 忽略，不会误退无关 App。忙 App 的 block
// 晚到也能正常执行（文件一直在，直到真正的前台 App 消费）。token 递增是额外去重保险，
// 防同一 App 的重复 block。全程不依赖 bundle id / pid / 定向名 / 时间窗。
static unsigned long long tgLastBackToken = 0;
static void TGRelayBackNotification(void) {
    UIApplicationState st = UIApplication.sharedApplication.applicationState;
    TGBackDiag(@"收到 back 通知，applicationState=%ld (0=Active,1=Inactive,2=Background)", (long)st);
    if (st != UIApplicationStateActive) { TGBackDiag(@"非前台 active，忽略"); return; } // ①
    NSDictionary *cmd = [NSDictionary dictionaryWithContentsOfFile:TGBackCommandPath];
    if (![cmd isKindOfClass:NSDictionary.class]) { TGBackDiag(@"命令文件不存在/已被消费，忽略"); return; }
    NSNumber *tok = cmd[TGBackCommandToken];
    if (![tok isKindOfClass:NSNumber.class]) { TGBackDiag(@"命令无 token，忽略"); return; }
    unsigned long long token = tok.unsignedLongLongValue;
    TGBackDiag(@"读到 token=%llu，上次处理=%llu", token, tgLastBackToken);
    // 消费：读到了就删文件，后台积压的 block 之后就读不到了。删在前台 App 的同步流程里，
    // 与「谁是当前前台」一致——能读到并删掉的必然是当时 active 的那个 App。
    NSError *delErr = nil;
    [[NSFileManager defaultManager] removeItemAtPath:TGBackCommandPath error:&delErr];
    TGBackDiag(@"删命令文件=%d err=%@", delErr == nil, delErr.localizedDescription);
    if (token <= tgLastBackToken) { TGBackDiag(@"token 已处理过，忽略"); return; }
    tgLastBackToken = token;
    TGBackDiag(@"通过两关，进入 TGRelayDoBack");
    TGRelayDoBack();
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
        // cn5.2.16：返回上级回到本进程执行 pop（微信等 App 原生左滑有效、nav 是 UIKit 子类，
        // 进程内 pop 这条路通）。SpringBoard 广播 + 单调 token，这里判前台 active + token
        // 递增才执行，不用时间窗（那会误杀微信繁忙主队列）。EdgeBack 保留，放行被禁边缘手势。
        static int backToken = -1;
        notify_register_dispatch(TGRelayBack, &backToken, dispatch_get_main_queue(), ^(int t) {
            TGRelayBackNotification();
        });
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


