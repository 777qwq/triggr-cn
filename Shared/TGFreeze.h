// 手势期间把画面钉住（SpringBoard 与各 App 共用）。
//
// 按 Triggr 2.1 的 TGFreeze 重做：2.1 的 Triggr.dylib 里就是这几个符号——
// 0x318ac TGFreezeBegin、0x32434 TGFreezeWindows、0x3271c TGFreezeCollect、0x32988 TGFreezeEnd，
// 外加 tgFreezeOffsets / tgFreezeScrollDisabled / tgFreezeRecognizers / tgFreezeOn 几个全局。
// 反汇编出来的操作序列与本文件一致：存 contentOffset → setScrollEnabled:NO →
// gestureRecognizers 逐个 setEnabled:NO，结束时把 offset 摆回原位再恢复开关。
// cn5.2.9 把"存 offset"从冻结瞬间提前到落指那一刻（见下），不动 2.1 的分工骨架。
//
// 为什么不靠 cancelsTouchesInView：多指识别器挂在 SpringBoard 的进程里，那个属性只取消
// 同进程、同窗口视图树的触摸投递；前台 App 是独立进程，它收不到这个取消。2.1 的答案不是
// 取消触摸，而是各进程冻结自己的界面——SpringBoard 冻自己的窗口，App 由 Relay 冻自己的。
//
// 比 2.1 多存一样 zoomScale：照片缩小改的是 UIScrollView.zoomScale，而 2.1 只还原
// contentOffset。落指就快照 offset 与 zoom，解冻还原到落指值，把冻结/缩放前那几十
// 毫秒里已经滚掉、缩掉的量一并撤销——这就是 cn5.2.9 起多指与边缘共用的统一快照。
//
// 2 秒兜底：漏掉一次恢复，App 会永久滚不动，这个代价远大于多冻两秒。

static NSMutableArray *tgFreezeViews;            // UIScrollView
static NSMutableArray *tgFreezeScrollDisabled;   // 原本 scrollEnabled 的
static NSMutableArray *tgFreezeRecognizers;      // 原本 enabled 的识别器
static BOOL tgFreezeOn;
static NSInteger tgFreezeGeneration;

// cn5.2.9 统一快照：落指那一刻快照所有 scrollView 的 contentOffset + zoomScale，
// 解冻一律还原到这里（多指与边缘竖滑共用同一套）。weak key 让释放的 view 自动出表；
// generation 防止冻结期间新一轮快照把位置覆盖后、又拿旧快照还原串了触摸。
static NSMapTable *tgBeganOffsets;               // UIScrollView -> NSValue(CGPoint)
static NSMapTable *tgBeganZooms;                 // UIScrollView -> NSNumber(zoomScale)
static NSInteger tgBeganGeneration;
static NSInteger tgFreezeSnapGen;                // 本轮冻结对应的快照 generation（解冻时校验）

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
static void TGFreezeBegin(void);

// 落指时快照所有 scrollView 的 contentOffset + zoomScale（SpringBoard 与 App 各自一份）。
// 只记位置、不改任何状态，便宜且无视觉影响；generation++ 让后续冻结能认出"是不是这一轮触摸"。
static void TGFreezeSnapshotBegan(void) {
    if (!NSThread.isMainThread) {
        dispatch_async(dispatch_get_main_queue(), ^{ TGFreezeSnapshotBegan(); });
        return;
    }
    if (!tgBeganOffsets) {
        tgBeganOffsets = [NSMapTable weakToStrongObjectsMapTable];
        tgBeganZooms = [NSMapTable weakToStrongObjectsMapTable];
    }
    [tgBeganOffsets removeAllObjects];
    [tgBeganZooms removeAllObjects];
    @try {
        for (UIWindow *window in TGFreezeWindows()) {
            NSMutableArray *found = [NSMutableArray array];
            TGFreezeCollect(window, found);
            for (UIScrollView *view in found) {
                [tgBeganOffsets setObject:[NSValue valueWithCGPoint:view.contentOffset] forKey:view];
                [tgBeganZooms setObject:@(view.zoomScale) forKey:view];
            }
        }
    } @catch (__unused NSException *e) { }
    tgBeganGeneration++;
}

static void TGFreezeBegin(void) {
    if (tgFreezeOn) return;
    if (!NSThread.isMainThread) {
        dispatch_async(dispatch_get_main_queue(), ^{ TGFreezeBegin(); });
        return;
    }
    tgFreezeOn = YES;
    NSInteger generation = ++tgFreezeGeneration;
    tgFreezeSnapGen = tgBeganGeneration; // 统一：记下这一轮对应的落指快照
    if (!tgFreezeViews) {
        tgFreezeViews = [NSMutableArray array];
        tgFreezeScrollDisabled = [NSMutableArray array];
        tgFreezeRecognizers = [NSMutableArray array];
    }
    [tgFreezeViews removeAllObjects];
    [tgFreezeScrollDisabled removeAllObjects];
    [tgFreezeRecognizers removeAllObjects];
    @try {
        for (UIWindow *window in TGFreezeWindows()) {
            NSMutableArray *found = [NSMutableArray array];
            TGFreezeCollect(window, found);
            for (UIScrollView *view in found) {
                [tgFreezeViews addObject:view];
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
        // 统一：还原到落指快照。generation 不匹配说明冻结期间又落了新手指、快照已换轮，
        // 这时不还原位置（免得拿新快照的旧位置串场），但仍照常恢复开关与识别器。
        BOOL snapValid = (tgFreezeSnapGen == tgBeganGeneration);
        for (UIScrollView *view in tgFreezeViews) {
            if (snapValid) {
                // 顺序要紧：setZoomScale 会按缩放比例重算 contentOffset，先还原缩放再摆位置。
                NSNumber *z = [tgBeganZooms objectForKey:view];
                if (z) {
                    CGFloat zoom = z.doubleValue;
                    if (zoom > 0 && fabs(view.zoomScale - zoom) > 0.01)
                        [view setZoomScale:zoom animated:NO];
                }
                NSValue *began = [tgBeganOffsets objectForKey:view];
                if (began) {
                    CGPoint to = began.CGPointValue;
                    if (fabs(view.contentOffset.x - to.x) + fabs(view.contentOffset.y - to.y) > 0.5)
                        [view setContentOffset:to animated:NO];
                }
            }
        }
        for (UIScrollView *view in tgFreezeScrollDisabled) view.scrollEnabled = YES;
        for (UIGestureRecognizer *recognizer in tgFreezeRecognizers) recognizer.enabled = YES;
    } @catch (__unused NSException *e) { }
    [tgFreezeViews removeAllObjects];
    [tgFreezeScrollDisabled removeAllObjects];
    [tgFreezeRecognizers removeAllObjects];
}
