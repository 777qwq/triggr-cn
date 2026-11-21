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
// cn5.2.16：「返回上级」回到 Relay 进程内执行 pop。微信的 MMUINavigationController 是
// UINavigationController 子类、原生左滑 100% 有效，证明它的 pop 路径是通的；5.2.14 时
// 微信不返回，真凶是那道「命令 1.5s 内生成」的新鲜度窗——微信主队列繁忙时通知 block
// 排到执行常超过 1.5s，命令被当旧的丢弃。改为「消费型命令文件」，不看时间：SpringBoard
// 触发时主屏幕不发（判空，保住 A 方案），App 内写 token 到命令文件再 post 广播；前台
// active 的 Relay 读到文件后立刻删文件再执行返回。后台 App 收通知时非 active 直接 return、
// 不删，等它积压的 block 回前台才跑时文件已被删 → 读到 nil → 忽略，不会误退无关 App。
// token 递增只作额外去重（同一 App 重复 block）。全程不依赖 bundle id / pid / 时间窗。
#define TGRelayBack "com.johndie.triggr/back"
#define TGBackCommandPath @"/var/tmp/com.johndie.triggr-back-command.plist"
#define TGBackCommandToken @"token"   // NSNumber(unsignedLongLong)，mach_absolute_time() 单调递增
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
