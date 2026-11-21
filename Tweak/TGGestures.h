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

// cn5.2.15: play a synthetic swipe that starts on the left screen edge and moves right,
// so iOS routes it as a real finger and the front app's native interactive pop handles it.
// Returns NO if the touchscreen sender ID isn't known yet (touch the screen once first).
// Used by system.back because apps with custom navigation ignore programmatic escape/pop.
BOOL TGPlayBackFromLeftEdge(void);
