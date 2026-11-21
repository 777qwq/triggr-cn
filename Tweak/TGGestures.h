// Gestures: touches recorded on the device, played back as a system-wide HID touch stream.
// The implementation lives in TGGestures.m; the tweak only forwards digitizer events to
// TGGestureHIDEvent and calls TGGestureCommand from the action table.

#import <Foundation/Foundation.h>

// Every digitizer event, from the HID listener's background thread.
void TGGestureHIDEvent(const void *event);

// "gesture ..." command with the leading word included, e.g. gesture play "Name" 2x.
// Returns a short human-readable result line.
NSString *TGGestureCommand(NSString *cmd);

// @{ name, duration, strokes } for the library page and the action picker.
NSArray<NSDictionary *> *TGGestureList(void);

// Read-only settings, kept next to the library in the same plist.
BOOL TGGestureRecording(void);   // a recording is in progress (countdown or recording)
BOOL TGGesturePlaying(void);     // a playback is in progress (used to gate touch triggers)

// Start the background HID listener. Idempotent; call once after SpringBoard starts.
void TGGestureStartListener(void);

// cn5.2.18: synthesize a system left-edge swipe (AssistiveTouch-style) so any app's
// native interactive pop runs — no in-app tweak needed. Returns NO if no touch sender
// is known yet (screen untouched since respring). Runs asynchronously on the play queue.
BOOL TGPlayBackFromLeftEdge(void);

