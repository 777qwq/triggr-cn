// 底部手势期间把画面钉住（应用内 + SpringBoard 共用）。
//
// 只按住系统手势不够：手指从底边往上走的那几十点仍然会送到前台 App，
// 列表、网页、图标页都跟着往上滚，表现就是「动作执行了，屏幕也上滑了」。
// 参数与做法取自 RemoteCompanion 4.4（Tweak.x:17446 RC_FreezeGestureScrolling）：
// 找到所有 UIScrollView，停滚、关掉它们自己的手势识别器，抬手时把 contentOffset 还原。
//
// 这里不关窗口的 userInteractionEnabled——RC 关它是为了防「抬手点到按钮」，
// 代价是正在进行的触摸被 UIKit 变成 Cancelled，手势状态跟着丢。屏幕固定只需要停滚。
//
// 2 秒兜底：触摸结束时漏掉一次恢复，App 会永久滚不动，这个代价远大于多留两秒。

static NSMutableArray *tgFreezeViews;
static NSMutableArray *tgFreezeScrollDisabled;
static NSMutableArray *tgFreezeRecognizers;
static NSMutableArray *tgFreezeOffsets;
static BOOL tgFreezeOn;
static NSInteger tgFreezeGeneration;

static void TGFreezeCollect(UIView *view, NSMutableArray *out) {
    if ([view isKindOfClass:UIScrollView.class]) [out addObject:view];
    for (UIView *sub in view.subviews) TGFreezeCollect(sub, out);
}

static NSArray<UIWindow *> *TGFreezeWindows(void) {
    NSMutableArray *windows = [NSMutableArray array];
    if (@available(iOS 13.0, *)) {
        for (UIScene *scene in UIApplication.sharedApplication.connectedScenes)
            if ([scene isKindOfClass:UIWindowScene.class])
                [windows addObjectsFromArray:((UIWindowScene *)scene).windows];
    }
    if (!windows.count) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [windows addObjectsFromArray:UIApplication.sharedApplication.windows];
#pragma clang diagnostic pop
    }
    return windows;
}

static void TGFreezeEnd(void);

static void TGFreezeBegin(void) {
    if (tgFreezeOn) return;
    if (!NSThread.isMainThread) {
        dispatch_async(dispatch_get_main_queue(), ^{ TGFreezeBegin(); });
        return;
    }
    tgFreezeOn = YES;
    NSInteger generation = ++tgFreezeGeneration;
    if (!tgFreezeViews) {
        tgFreezeViews = [NSMutableArray array];
        tgFreezeScrollDisabled = [NSMutableArray array];
        tgFreezeRecognizers = [NSMutableArray array];
        tgFreezeOffsets = [NSMutableArray array];
    }
    [tgFreezeViews removeAllObjects];
    [tgFreezeScrollDisabled removeAllObjects];
    [tgFreezeRecognizers removeAllObjects];
    [tgFreezeOffsets removeAllObjects];
    @try {
        for (UIWindow *window in TGFreezeWindows()) {
            NSMutableArray *found = [NSMutableArray array];
            TGFreezeCollect(window, found);
            for (UIScrollView *view in found) {
                [tgFreezeViews addObject:view];
                [tgFreezeOffsets addObject:[NSValue valueWithCGPoint:view.contentOffset]];
                if (view.scrollEnabled) {
                    [tgFreezeScrollDisabled addObject:view];
                    view.scrollEnabled = NO;
                }
                // 列表的拖拽、行内滑动操作都挂在它自己的识别器上，光关 scrollEnabled 停不住。
                for (UIGestureRecognizer *recognizer in view.gestureRecognizers) {
                    if (!recognizer.enabled) continue;
                    [tgFreezeRecognizers addObject:recognizer];
                    recognizer.enabled = NO;
                }
            }
        }
    } @catch (__unused NSException *e) { }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (tgFreezeOn && generation == tgFreezeGeneration) TGFreezeEnd();
    });
}

static void TGFreezeEnd(void) {
    if (!tgFreezeOn) return;
    if (!NSThread.isMainThread) {
        dispatch_async(dispatch_get_main_queue(), ^{ TGFreezeEnd(); });
        return;
    }
    tgFreezeOn = NO;
    tgFreezeGeneration++;
    @try {
        NSUInteger count = MIN(tgFreezeViews.count, tgFreezeOffsets.count);
        for (NSUInteger i = 0; i < count; i++) {
            UIScrollView *view = tgFreezeViews[i];
            CGPoint to = [tgFreezeOffsets[i] CGPointValue];
            if (fabs(view.contentOffset.x - to.x) + fabs(view.contentOffset.y - to.y) > 0.5)
                [view setContentOffset:to animated:NO];
        }
        for (UIScrollView *view in tgFreezeScrollDisabled) view.scrollEnabled = YES;
        for (UIGestureRecognizer *recognizer in tgFreezeRecognizers) recognizer.enabled = YES;
    } @catch (__unused NSException *e) { }
    [tgFreezeViews removeAllObjects];
    [tgFreezeScrollDisabled removeAllObjects];
    [tgFreezeRecognizers removeAllObjects];
    [tgFreezeOffsets removeAllObjects];
}
