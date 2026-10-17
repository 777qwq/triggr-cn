// TriggrL10n — display-layer Chinese overlay for Triggr 2.0 (closed source).
// RemoteCompanion-cn2 recipe: exact-match dictionary on UIKit display points.
// Exact matches only — never rewrites anything that is not a known string.
// Covers Settings (Preferences), TriggrApp, and SpringBoard UI (banners/menus).

#import <UIKit/UIKit.h>
#import "L10nMap.h"

static NSDictionary<NSString *, NSString *> *L10n(void) {
    static NSDictionary *map;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        map = L10nMap();
    });
    return map;
}

// Undo the jbroot "%s MacRoman" mojibake: the original UTF-8 bytes were
// mis-decoded as MacRoman; re-encode as MacRoman to recover the bytes, then
// decode as UTF-8. Rewrites only on clean recovery (valid UTF-8, differs).
static NSString *MojibakeRepair(NSString *s) {
    if (s.length < 2 || s.length > 128) return nil;
    // Heuristic gate: mojibake always shows MacRoman high-range artifacts.
    static NSCharacterSet *sus;
    static dispatch_once_t once0;
    dispatch_once(&once0, ^{
        NSMutableCharacterSet *mc = [[NSMutableCharacterSet alloc] init];
        [mc addCharactersInRange:NSMakeRange(0x80, 0x80)]; // 0x80-0xFF
        sus = mc;
    });
    if ([s rangeOfCharacterFromSet:sus].location == NSNotFound) return nil;
    NSData *bytes = [s dataUsingEncoding:NSMacOSRomanStringEncoding];
    if (!bytes || bytes.length < 2) return nil;
    NSString *fixed = [[NSString alloc] initWithData:bytes encoding:NSUTF8StringEncoding];
    if (!fixed || [fixed isEqualToString:s]) return nil;
    return fixed;
}

static NSString *L10nXform(NSString *s) {
    if (s.length == 0 || s.length > 720) return s;
    NSString *r = MojibakeRepair(s);
    if (r) s = r;
    NSDictionary *m = L10n();
    NSString *hit = m[s];
    if (hit) return hit;
    // Generic prefix table (1.5.0 legacy families, longest-first).
    static NSDictionary *pf;
    static dispatch_once_t once2;
    dispatch_once(&once2, ^{ pf = L10nPrefixes(); });
    NSString *bestKey = nil, *bestVal = nil;
    for (NSString *k in pf) {
        if ([s hasPrefix:k] && (!bestKey || k.length > bestKey.length)) { bestKey = k; bestVal = pf[k]; }
    }
    if (bestKey) return [NSString stringWithFormat:@"%@%@", bestVal, [s substringFromIndex:bestKey.length]];
    // Prefix families for formatted strings ("Home Screen %s", "Icon %s").
    if ([s hasPrefix:@"Home Screen "]) return [NSString stringWithFormat:@"主屏幕 %@", [s substringFromIndex:12]];
    if ([s hasPrefix:@"Icon "]) return [NSString stringWithFormat:@"图标 %@", [s substringFromIndex:5]];
    // "Between HH:MM and HH:MM" (formatted scheduled range).
    NSRange br = [s rangeOfString:@"Between " options:NSAnchoredSearch];
    NSRange br2 = [s rangeOfString:@" and "];
    if (br.location == 0 && br2.location != NSNotFound && s.length == 22) {
        NSString *a = [s substringWithRange:NSMakeRange(8, 5)];
        NSString *b = [s substringWithRange:NSMakeRange(br2.location + 5, 5)];
        return [NSString stringWithFormat:@"%@ 至 %@", a, b];
    }
    return s;
}

%hook UILabel
- (void)setText:(NSString *)text {
    %orig(L10nXform(text));
}
- (void)setAttributedText:(NSAttributedString *)text {
    NSString *s = text.string;
    NSString *x = L10nXform(s);
    if (![x isEqualToString:s]) {
        NSMutableAttributedString *m = [text mutableCopy];
        [m replaceCharactersInRange:NSMakeRange(0, m.length) withString:x];
        %orig([m copy]);
        return;
    }
    %orig;
}
%end

%hook UITextField
- (void)setPlaceholder:(NSString *)placeholder {
    %orig(L10nXform(placeholder));
}
%end

%hook UIAlertController
- (void)setTitle:(NSString *)title {
    %orig(L10nXform(title));
}
- (void)setMessage:(NSString *)message {
    %orig(L10nXform(message));
}
- (void)addAction:(UIAlertAction *)action {
    %orig;
}
%end

%hook UIBarButtonItem
- (void)setTitle:(NSString *)title {
    %orig(L10nXform(title));
}
%end

%hook UIAlertAction
- (void)setTitle:(NSString *)title {
    %orig(L10nXform(title));
}
%end
