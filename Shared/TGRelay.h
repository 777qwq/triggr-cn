// What the small in-app library (Relay) and SpringBoard say to each other.
// Apps can't run Triggr's actions; they only tell SpringBoard that something
// happened, and only while SpringBoard says a trigger is waiting for it.

#define TGRelayStatusBarTap "com.johndie.triggr/statusbar-tap"
// The same tap, when the app knows which half of the status bar it was on.
#define TGRelayStatusBarTapLeft "com.johndie.triggr/statusbar-tap-left"
#define TGRelayStatusBarTapRight "com.johndie.triggr/statusbar-tap-right"
#define TGRelayShake "com.johndie.triggr/shake"
#define TGRelaySlideLeft "com.johndie.triggr/slide-left"
#define TGRelaySlideRight "com.johndie.triggr/slide-right"
#define TGRelaySlideTop "com.johndie.triggr/slide-top"
#define TGRelaySlideBottom "com.johndie.triggr/slide-bottom"
// A Darwin notification state set by SpringBoard: which events are assigned.
#define TGRelayWanted "com.johndie.triggr/relay-wanted"
#define TGRelayWantsStatusBar 1ULL
#define TGRelayWantsShake 2ULL
#define TGRelayWantsSlides 4ULL
#define TGRelayWantsSlideBottom 8ULL
