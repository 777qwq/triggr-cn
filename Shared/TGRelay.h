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
// cn5.2.10：返回上级是跨进程广播，Darwin 通知不带载荷、所有注入 Relay 的 App 都会收到。
// 后台 App 的通知 block 积压到回前台才执行，若收到就 pop，会把一堆无关 App 各退一级。
// 改成「写文件定目标 + 通知只做唤醒」：SpringBoard 把目标 bundle id 与本次 token 写进下面
// 这个文件再 notify_post；Relay 收到后读文件，目标不是自己、或 token 已处理过就直接忽略。
// token 取 mach_absolute_time()（设备启动以来单调），relay 只接受比上次更大的 token，
// 保证同一条命令被多个积压 block 读到也只执行一次，且 respring 后不会误判成已处理。
#define TGBackCommandPath @"/var/tmp/com.johndie.triggr-back-command.plist"
#define TGBackCommandTarget @"target"   // 目标 bundle id；空串 = 主屏幕触发，谁都不作用
#define TGBackCommandToken @"token"     // NSNumber(unsignedLongLong)，mach_absolute_time()
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
