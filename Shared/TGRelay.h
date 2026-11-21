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
// cn5.2.16：「返回上级」在 Relay 进程内执行 pop。SpringBoard 触发时主屏幕不发（判空，
// 保住 A 方案），App 内写 token 到命令文件再 post 广播；前台 active 的 Relay 读文件后
// 删文件（消费型）再执行返回。后台积压 block 回前台时文件已被删 → 忽略，不误退。
#define TGRelayBack "com.johndie.triggr/back"
#define TGBackCommandPath @"/var/tmp/com.johndie.triggr-back-command.plist"
#define TGBackCommandToken @"token"   // NSNumber(unsignedLongLong)，mach_absolute_time() 单调递增

// cn5.2.17 诊断：把返回链每一步追加到日志，两端共用（Tweak=SpringBoard，Relay=各 App）。
// 仅诊断用，正式修好后移除。SpringBoard 每次触发先把日志截断，只看最后一次触发。
#define TGBackLogPath "/var/tmp/triggr-back-debug.log"
static inline void TGBackDiagClear(void) { fclose(fopen(TGBackLogPath, "w")); }
static inline void TGBackDiag(NSString *fmt, ...) {
    va_list ap; va_start(ap, fmt);
    NSString *body = [[NSString alloc] initWithFormat:fmt arguments:ap];
    va_end(ap);
    NSString *tag = [NSBundle.mainBundle.bundleIdentifier isEqualToString:@"com.apple.springboard"] ? @"SB" : (NSBundle.mainBundle.bundleIdentifier ?: @"?");
    NSString *line = [NSString stringWithFormat:@"[%@] %@\n", tag, body];
    FILE *f = fopen(TGBackLogPath, "a");
    if (f) { fputs(line.UTF8String, f); fclose(f); }
}
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
