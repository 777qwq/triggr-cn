// TriggrL10n — display-layer Chinese overlay for Triggr 2.0 (closed source).
// RemoteCompanion-cn2 recipe: exact-match dictionary on UIKit display points.
// Exact matches only — never rewrites anything that is not a known string.
// Covers Settings (Preferences), TriggrApp, and SpringBoard UI (banners/menus).

#import <UIKit/UIKit.h>

static NSDictionary<NSString *, NSString *> *L10n(void) {
    static NSDictionary *map;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        map = L10nMap();
    });
    return map;
}

static NSString *L10nXform(NSString *s) {
    if (s.length == 0 || s.length > 96) return s;
    NSDictionary *m = L10n();
    NSString *hit = m[s];
    if (hit) return hit;
    // Prefix families for formatted strings ("Home Screen %s", "Icon %s").
    if ([s hasPrefix:@"Home Screen "]) return [NSString stringWithFormat:@"主屏幕 %@", [s substringFromIndex:12]];
    if ([s hasPrefix:@"Icon "]) return [NSString stringWithFormat:@"图标 %@", [s substringFromIndex:5]];
    // "Between HH:MM and HH:MM" (formatted scheduled range).
    NSRange r = [s rangeOfString:@"Between " options:NSAnchoredSearch];
    NSRange r2 = [s rangeOfString:@" and "];
    if (r.location == 0 && r2.location != NSNotFound && s.length == 22) {
        NSString *a = [s substringWithRange:NSMakeRange(8, 5)];
        NSString *b = [s substringWithRange:NSMakeRange(r2.location + 5, 5)];
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

%hook UIAlertAction
- (void)setTitle:(NSString *)title {
    %orig(L10nXform(title));
}
%end
