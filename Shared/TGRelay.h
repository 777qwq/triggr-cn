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
// 实验（cn4.17-1）：屏幕级右滑的页面戳探针。SpringBoard 注入前问一句，
// Relay 在 0.35 秒后比对页面身份，真变了才回 swipe-moved。
#define TGRelaySwipeProbe "com.johndie.triggr/swipe-probe"
#define TGRelaySwipeMoved "com.johndie.triggr/swipe-moved"
// 实验（cn4.17-7）：注入改在 App 进程里做。SpringBoard 发这条通知，App 收到后
// 用 UIApplication 的 _enqueueHIDEvent: 把合成的触摸直接塞进自己的事件队列。
#define TGRelaySwipeGo "com.johndie.triggr/swipe-go"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
