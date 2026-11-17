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
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL

// 底部横条手势：App 里那一半只负责认出方向和钉住画面，动作仍在 SpringBoard 执行。
// 五个名字与 Shared/TGCatalog.h 的 TGBottom 一一对应。
#define TGRelayBottomUpLeft "com.johndie.triggr/bottom-up-left"
#define TGRelayBottomUpCenter "com.johndie.triggr/bottom-up-center"
#define TGRelayBottomUpRight "com.johndie.triggr/bottom-up-right"
#define TGRelayBottomBarLeft "com.johndie.triggr/bottom-bar-left"
#define TGRelayBottomBarRight "com.johndie.triggr/bottom-bar-right"
// bit 2..15 已被应用内多指手势占用（idx+2），所以底边从 16 起。
#define TGRelayWantsBottomUpLeft (1ULL << 16)
#define TGRelayWantsBottomUpCenter (1ULL << 17)
#define TGRelayWantsBottomUpRight (1ULL << 18)
#define TGRelayWantsBottomBarLeft (1ULL << 19)
#define TGRelayWantsBottomBarRight (1ULL << 20)
