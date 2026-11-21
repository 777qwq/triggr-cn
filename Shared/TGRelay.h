// What the small in-app library (Relay) and SpringBoard say to each other.
// Apps can't run Triggr's actions; they only tell SpringBoard that something
// happened, and only while SpringBoard says a trigger is waiting for it.

#include <stdio.h>
#include <mach/mach_time.h>

#define TGRelayStatusBarTap "com.johndie.triggr/statusbar-tap"
// The same tap, when the app knows which half of the status bar it was on.
#define TGRelayStatusBarTapLeft "com.johndie.triggr/statusbar-tap-left"
#define TGRelayStatusBarTapRight "com.johndie.triggr/statusbar-tap-right"
#define TGRelayShake "com.johndie.triggr/shake"
// A Darwin notification state set by SpringBoard: which events are assigned.
#define TGRelayWanted "com.johndie.triggr/relay-wanted"
// cn5.2.14：返回通知仍是广播，但不再在 SpringBoard 侧猜「发给谁」——bundle id 在微信等
// App 上两侧不一致、pid 又从 _accessibilityFrontMostApplication 取不到，两次翻车。改成
// 「广播 + 时间戳新鲜度」：SpringBoard 触发时若主屏幕无前台 App 就不 post（谁都不动，
// 保住 A 方案）；否则把一个单调时间戳写进命令文件再 post。所有注入 Relay 的 App 都收到，
// 但 Relay 只认两条——收到时自己是前台 active、命令是 1.5s 内生成的。后台 App 积压的
// block 回前台才跑时时间戳已旧，忽略，不会误退无关 App。Darwin notify 一次 post 对每个
// 注册者只产生一次 block，不存在「同一条命令的多个 block」，故无需 token 去重。
#define TGRelayBack "com.johndie.triggr/back"
#define TGBackCommandPath @"/var/tmp/com.johndie.triggr-back-command.plist"
#define TGBackCommandToken @"token"   // NSNumber(unsignedLongLong)，mach_absolute_time()
// 把单调时钟换算成纳秒，消除 timebase 差异（arm64 通常 1:1，但显式换算最稳）。
// SpringBoard 写、Relay 判新鲜度共用这一个函数，保证两侧同一把尺子。
static inline unsigned long long TGRelayStamp(void) {
    static mach_timebase_info_data_t info;
    if (info.denom == 0) mach_timebase_info(&info);
    unsigned long long t = mach_absolute_time();
    return t * info.numer / info.denom;
}
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
