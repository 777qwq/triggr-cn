// What the small in-app library (Relay) and SpringBoard say to each other.
// Apps can't run Triggr's actions; they only tell SpringBoard that something
// happened, and only while SpringBoard says a trigger is waiting for it.

#define TGRelayStatusBarTap "com.johndie.triggr/statusbar-tap"
// The same tap, when the app knows which half of the status bar it was on.
#define TGRelayStatusBarTapLeft "com.johndie.triggr/statusbar-tap-left"
#define TGRelayStatusBarTapRight "com.johndie.triggr/statusbar-tap-right"
#define TGRelayShake "com.johndie.triggr/shake"
// A Darwin notification state set by SpringBoard: which events are assigned.
#define TGRelayWanted "com.johndie.triggr/relay-wanted"
#define TGRelayBack "com.johndie.triggr/back"
// 多指手势触发时钉住画面：SpringBoard 冻自己的窗口，App 收到这两条冻自己的。
// 跨进程做不到「取消对方的触摸」，只能各冻各的（Triggr 2.1 的 TGFreeze 就是这么分工）。
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
// 边缘竖滑：落指先快照 offset（App 侧同步快照），早冻时要求解冻还原到落指位置。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBeganBegin "com.johndie.triggr/freeze-began-begin"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
