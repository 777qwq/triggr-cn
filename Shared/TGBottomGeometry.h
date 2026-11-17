// 底部横条手势的阈值与分区，Triggr（SpringBoard）与 Relay（App 内）共用一份。
//
// 两边只共享数字和分区规则，不共享坐标换算：SpringBoard 的窗口不跟界面旋转，
// 要用设备固定坐标再按方向换算；App 的窗口跟着界面转，底边永远是 y 最大的那条边。
// 把这两种坐标系揉进一个函数，是这一块最容易埋 bug 的地方。
//
// 参数原样取自 RemoteCompanion 4.4（Tweak.x:17704 / 17718 / 17768 / 18270 / 18300 / 18315）。

#define TGBottomZoneHeight 50.0   // 起手必须落在底边这条带子里
#define TGBottomUpFire 45.0       // 上滑执行
#define TGBottomUpLift 35.0       // 抬手兜底：差一点没滑到 45 也算
#define TGBottomBarFire 60.0      // 横条左右滑执行
#define TGBottomZoneSplit 0.33    // 左/中分界，右侧对称
#define TGBottomSideRatio 1.8     // 横向压过纵向多少倍才算横滑
#define TGBottomSideMin 12.0      // 横滑至少要动的距离，避免轻抖就抢
#define TGBottomUpRatio 1.5       // 上滑：纵向压过横向多少倍
#define TGBottomUpMin 15.0        // 上滑认定意图的最小位移
#define TGBottomFreezeIntent 6.0  // 位移超过这个、并且确实朝上，才冻屏
#define TGBottomEdgeGuard 24.0    // 离左右屏幕边缘这么近起手，一律让给系统

// 起手点是不是贴着屏幕左右边缘。贴边的那一下属于系统手势（切换应用、返回），
// 底边手势不该从这儿开始——从底角横滑被当成底边上滑，就是这么来的。
static inline BOOL TGBottomNearSideEdge(CGPoint p, UIInterfaceOrientation o, CGFloat S, CGFloat L) {
    if (o == UIInterfaceOrientationLandscapeLeft || o == UIInterfaceOrientationLandscapeRight)
        return p.y < TGBottomEdgeGuard || p.y > L - TGBottomEdgeGuard;
    return p.x < TGBottomEdgeGuard || p.x > S - TGBottomEdgeGuard;
}

// 0 左 / 1 中 / 2 右
static inline int TGBottomZoneIndex(CGFloat progress) {
    if (progress < TGBottomZoneSplit) return 0;
    if (progress > 1.0 - TGBottomZoneSplit) return 2;
    return 1;
}
