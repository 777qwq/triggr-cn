// What the small in-app library (Relay) and SpringBoard say to each other.
// Apps can't run Triggr's actions; they only tell SpringBoard that something
// happened, and only while SpringBoard says a trigger is waiting for it.

#include <stdio.h>

#define TGRelayStatusBarTap "com.johndie.triggr/statusbar-tap"
// The same tap, when the app knows which half of the status bar it was on.
#define TGRelayStatusBarTapLeft "com.johndie.triggr/statusbar-tap-left"
#define TGRelayStatusBarTapRight "com.johndie.triggr/statusbar-tap-right"
#define TGRelayShake "com.johndie.triggr/shake"
// A Darwin notification state set by SpringBoard: which events are assigned.
#define TGRelayWanted "com.johndie.triggr/relay-wanted"
// cn5.2.15：「返回上级」不走跨进程通知了。SpringBoard 直接在系统触摸层回放一次「从左边
// 缘起滑」的手势，由前台 App 自己的原生交互式返回接管——微信等自绘导航 App 也能响应。
// 因此不再需要 back 通知与命令文件；Relay 侧只保留 EdgeBack（放行被 App 禁用的边缘手势）。
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
