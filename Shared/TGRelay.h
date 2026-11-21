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
// cn5.2.13：返回上级改用「按目标进程定向」的通知名 —— "com.johndie.triggr/back/<pid>"。
// SpringBoard 取触发瞬间前台 App 的 pid 拼进通知名 post；每个 App 用 getpid() 拼自己的
// 名字注册，只有目标进程的 Relay 会收到。相比旧的「广播 + 写文件 + bundle id/PID 比对」：
//   ① 不会错配——pid 是内核分配、SpringBoard 与 App 两侧一致，微信用 bundle id 那套对不上；
//   ② 不会误退后台 App——后台进程根本收不到发给别人的通知，block 不排队；
//   ③ 主屏幕触发 pid=0 → post 到 back/0，没有进程注册 → 谁都不动（保住 A 方案）。
// 不再需要命令文件与 token 去重：通知本身就是定向的。
#define TGRelayBack "com.johndie.triggr/back"
// 把 pid 拼成定向通知名；调用方负责提供至少 48 字节的缓冲区。
static inline const char *TGRelayBackName(int pid, char *buf, size_t cap) {
    snprintf(buf, cap, "%s/%d", TGRelayBack, pid);
    return buf;
}
// 落指快照 + 冻结/解冻：多指与边缘竖滑共用同一套。SpringBoard 落指时发 Snapshot，
// 冻结/解冻分别发 Begin/End；App 侧照此快照自己的 offset 并冻/解自己的界面。
#define TGRelayFreezeSnapshot "com.johndie.triggr/freeze-snapshot"
#define TGRelayFreezeBegin "com.johndie.triggr/freeze-begin"
#define TGRelayFreezeEnd "com.johndie.triggr/freeze-end"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
