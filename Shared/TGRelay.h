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
// cn5.2.18：「返回上级」不再走 Relay——微信等 App 不加载它，收不到通知。改由 SpringBoard
// 合成一次左边缘滑动，走前台 App 自己的原生交互式返回。back 通知/命令文件/诊断日志全删。
// EdgeBack（放行被禁用的边缘返回手势）保留，是合成左滑被系统接受的前提。
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
