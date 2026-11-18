// 手势期间把画面钉住（SpringBoard 与各 App 共用）。
//
// 按 Triggr 2.1 的 TGFreeze 重做：2.1 的 Triggr.dylib 里就是这几个符号——
// 0x318ac TGFreezeBegin、0x32434 TGFreezeWindows、0x3271c TGFreezeCollect、0x32988 TGFreezeEnd，
// 外加 tgFreezeOffsets / tgFreezeScrollDisabled / tgFreezeRecognizers / tgFreezeOn 几个全局。
// 反汇编出来的操作序列与本文件一致：存 contentOffset → setScrollEnabled:NO →
// gestureRecognizers 逐个 setEnabled:NO，结束时把 offset 摆回原位再恢复开关。
//
// 为什么不靠 cancelsTouchesInView：多指识别器挂在 SpringBoard 的进程里，那个属性只取消
// 同进程、同窗口视图树的触摸投递；前台 App 是独立进程，它收不到这个取消。2.1 的答案不是
// 取消触摸，而是各进程冻结自己的界面——SpringBoard 冻自己的窗口，App 由 Relay 冻自己的。
//
// 比 2.1 多存一样 zoomScale：照片缩小改的是 UIScrollView.zoomScale，而 2.1 只还原
// contentOffset。多指手势要等手指移动才认得出，冻结必然晚于缩放的头几十毫秒，不还原
// zoomScale 就会留下「已经小了一圈」的画面。
//
// 2 秒兜底：漏掉一次恢复，App 会永久滚不动，这个代价远大于多冻两秒。

static NSMutableArray *tgFreezeViews;            // UIScrollView
static NSMutableArray *tgFreezeScrollDisabled;   // 原本 scrollEnabled 的
static NSMutableArray *tgFreezeRecognizers;      // 原本 enabled 的识别器
static NSMutableArray *tgFreezeOffsets;          // NSValue(CGPoint)
static NSMutableArray *tgFreezeZooms;            // NSNumber(zoomScale)
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
        tgFreezeZooms = [NSMutableArray array];
    }
    [tgFreezeViews removeAllObjects];
    [tgFreezeScrollDisabled removeAllObjects];
    [tgFreezeRecognizers removeAllObjects];
    [tgFreezeOffsets removeAllObjects];
    [tgFreezeZooms removeAllObjects];
    @try {
        for (UIWindow *window in TGFreezeWindows()) {
            NSMutableArray *found = [NSMutableArray array];
            TGFreezeCollect(window, found);
            for (UIScrollView *view in found) {
                [tgFreezeViews addObject:view];
                [tgFreezeOffsets addObject:[NSValue valueWithCGPoint:view.contentOffset]];
                [tgFreezeZooms addObject:@(view.zoomScale)];
                if (view.scrollEnabled) {
                    [tgFreezeScrollDisabled addObject:view];
                    view.scrollEnabled = NO;
                }
                // 缩放、拖拽、行内滑动都挂在 scrollView 自己的识别器上，光关 scrollEnabled
                // 停不住。照片的捏合缩放尤其如此——这条才是「照片不再缩小」的关键。
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
            // 顺序要紧：setZoomScale 会按缩放比例重算 contentOffset，先还原缩放再摆位置。
            if (i < tgFreezeZooms.count) {
                CGFloat zoom = [tgFreezeZooms[i] doubleValue];
                if (zoom > 0 && fabs(view.zoomScale - zoom) > 0.01)
                    [view setZoomScale:zoom animated:NO];
            }
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
    [tgFreezeZooms removeAllObjects];
}
