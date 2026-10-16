
// Triggr settings, laid out like Activator but with less scrolling:
// Triggr settings, laid out like Activator but with less scrolling:
//   Root (places) -> Place (what's assigned, one row per kind of trigger)
//   Root (places) -> Place (what's assigned, one row per kind of trigger)
//     -> Trigger group (each trigger shows its action) -> Action picker (folded categories).
//     -> Trigger group (each trigger shows its action) -> Action picker (folded categories).


#import <Preferences/PSListController.h>
#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>
#import <Preferences/PSSpecifier.h>
#import <Preferences/PSTableCell.h>
#import <Preferences/PSTableCell.h>
#import <AltList/ATLApplicationListSelectionController.h>
#import <AltList/ATLApplicationListSelectionController.h>
#import <AltList/ATLApplicationListMultiSelectionController.h>
#import <AltList/ATLApplicationListMultiSelectionController.h>
#import <LocalAuthentication/LocalAuthentication.h>
#import <LocalAuthentication/LocalAuthentication.h>
#import <dlfcn.h>
#import <dlfcn.h>
#import <CoreData/CoreData.h>
#import <CoreData/CoreData.h>
#import <notify.h>
#import <notify.h>
#import <UniformTypeIdentifiers/UniformTypeIdentifiers.h>
#import <UniformTypeIdentifiers/UniformTypeIdentifiers.h>
#import <objc/runtime.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import <objc/message.h>
#import "../Shared/TGCatalog.h"
#import "../Shared/TGCatalog.h"
#import "../Shared/TGHardware.h"
#import "../Shared/TGHardware.h"


// Private (MobileCoreServices), used only for the app's display name; AltList
// Private (MobileCoreServices), used only for the app's display name; AltList
// itself relies on it.
// itself relies on it.
@interface LSApplicationProxy : NSObject
@interface LSApplicationProxy : NSObject
+ (instancetype)applicationProxyForIdentifier:(NSString *)identifier;
+ (instancetype)applicationProxyForIdentifier:(NSString *)identifier;
- (NSString *)localizedName;
- (NSString *)localizedName;
@end
@end


// [{id, name}] as stored under TGMenusKey.
// [{id, name}] as stored under TGMenusKey.
static NSArray<NSDictionary *> *TGReadMenus(void) {
static NSArray<NSDictionary *> *TGReadMenus(void) {
    CFPreferencesAppSynchronize((__bridge CFStringRef)TGDomain);
    CFPreferencesAppSynchronize((__bridge CFStringRef)TGDomain);
    id menus = CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)TGMenusKey, (__bridge CFStringRef)TGDomain));
    id menus = CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)TGMenusKey, (__bridge CFStringRef)TGDomain));
    NSMutableArray *result = [NSMutableArray array];
    NSMutableArray *result = [NSMutableArray array];
    for (id menu in [menus isKindOfClass:NSArray.class] ? menus : @[])
    for (id menu in [menus isKindOfClass:NSArray.class] ? menus : @[])
        if ([menu isKindOfClass:NSDictionary.class] && [menu[@"id"] isKindOfClass:NSString.class]) [result addObject:menu];
        if ([menu isKindOfClass:NSDictionary.class] && [menu[@"id"] isKindOfClass:NSString.class]) [result addObject:menu];
    return result;
    return result;
}
}


static NSString *TGDisplayTitle(NSString *action) {
static NSString *TGDisplayTitle(NSString *action) {
    if ([action hasPrefix:TGMenuPrefix]) {
    if ([action hasPrefix:TGMenuPrefix]) {
        NSString *menuID = [action substringFromIndex:TGMenuPrefix.length];
        NSString *menuID = [action substringFromIndex:TGMenuPrefix.length];
        for (NSDictionary *menu in TGReadMenus()) if ([menu[@"id"] isEqualToString:menuID]) return [@"菜单：" stringByAppendingString:[menu[@"name"] description]];
        for (NSDictionary *menu in TGReadMenus()) if ([menu[@"id"] isEqualToString:menuID]) return [@"菜单：" stringByAppendingString:[menu[@"name"] description]];
        return @"菜单（已删除）";
        return @"菜单（已删除）";
    }
    }
    if ([action hasPrefix:TGAppPrefix]) {
    if ([action hasPrefix:TGAppPrefix]) {
        NSString *identifier = [action substringFromIndex:TGAppPrefix.length];
        NSString *identifier = [action substringFromIndex:TGAppPrefix.length];
        // Looked up at runtime: nothing to link against, and a missing class just shows the id.
        // Looked up at runtime: nothing to link against, and a missing class just shows the id.
        Class proxyClass = NSClassFromString(@"LSApplicationProxy");
        Class proxyClass = NSClassFromString(@"LSApplicationProxy");
        LSApplicationProxy *proxy = [proxyClass respondsToSelector:@selector(applicationProxyForIdentifier:)] ? [proxyClass applicationProxyForIdentifier:identifier] : nil;
        LSApplicationProxy *proxy = [proxyClass respondsToSelector:@selector(applicationProxyForIdentifier:)] ? [proxyClass applicationProxyForIdentifier:identifier] : nil;
        NSString *name = [proxy respondsToSelector:@selector(localizedName)] ? [proxy localizedName] : nil;
        NSString *name = [proxy respondsToSelector:@selector(localizedName)] ? [proxy localizedName] : nil;
        return [@"打开 " stringByAppendingString:name.length ? name : identifier];
        return [@"打开 " stringByAppendingString:name.length ? name : identifier];
    }
    }
    return TGActionTitle(action);
    return TGActionTitle(action);
}
}


#pragma mark - Hardware
#pragma mark - Hardware


// Without a Home button (Face ID) there are no Home button or Touch ID triggers.
// Without a Home button (Face ID) there are no Home button or Touch ID triggers.
static BOOL TGShowsTriggerGroup(const TGGroup *group) {
static BOOL TGShowsTriggerGroup(const TGGroup *group) {
    if (group->items == TGHomeButton || group->items == TGTouchID) return TGHasHomeButton();
    if (group->items == TGHomeButton || group->items == TGTouchID) return TGHasHomeButton();
    return YES;
    return YES;
}
}


// Lock button texts in Apple's words where there's no Home button: it's the side
// Lock button texts in Apple's words where there's no Home button: it's the side
// (or top) button, and holding it opens Siri instead of the power-off slider.
// (or top) button, and holding it opens Siri instead of the power-off slider.
static NSString *TGButtonText(NSString *text) {
static NSString *TGButtonText(NSString *text) {
    if (!text || TGHasHomeButton()) return text;
    if (!text || TGHasHomeButton()) return text;
    NSString *name = TGLockButtonName();
    NSString *name = TGLockButtonName();
    text = [text stringByReplacingOccurrencesOfString:@"锁键" withString:name];
    text = [text stringByReplacingOccurrencesOfString:@"锁键" withString:name];
    text = [text stringByReplacingOccurrencesOfString:@"显示关机滑条" withString:@"唤出 Siri"];
    text = [text stringByReplacingOccurrencesOfString:@"显示关机滑条" withString:@"唤出 Siri"];
    return [text stringByReplacingOccurrencesOfString:@"关机滑条" withString:@"Siri"];
    return [text stringByReplacingOccurrencesOfString:@"关机滑条" withString:@"Siri"];
}
}


#pragma mark - Storage
#pragma mark - Storage


// Each assignment is its own key ("<mode>/<trigger>" = action id, "" = none),
// Each assignment is its own key ("<mode>/<trigger>" = action id, "" = none),
// saved through PSListController's own preference API (setPreferenceValue: with
// saved through PSListController's own preference API (setPreferenceValue: with
// the specifier's defaults/key/PostNotification), which is what persists
// the specifier's defaults/key/PostNotification), which is what persists
// reliably from Settings. A raw CFPreferencesSetAppValue from Settings did not.
// reliably from Settings. A raw CFPreferencesSetAppValue from Settings did not.
static void TGConfigureStorage(PSSpecifier *spec, NSString *mode, NSString *trigger) {
static void TGConfigureStorage(PSSpecifier *spec, NSString *mode, NSString *trigger) {
    [spec setProperty:TGDomain forKey:@"defaults"];
    [spec setProperty:TGDomain forKey:@"defaults"];
    [spec setProperty:TGAssignmentKey(mode, trigger) forKey:@"key"];
    [spec setProperty:TGAssignmentKey(mode, trigger) forKey:@"key"];
    [spec setProperty:@TGPrefsChangedNotification forKey:@"PostNotification"];
    [spec setProperty:@TGPrefsChangedNotification forKey:@"PostNotification"];
}
}


// A stored assignment is one action (string) or several run in order (array).
// A stored assignment is one action (string) or several run in order (array).
static NSArray<NSString *> *TGActionList(id value) {
static NSArray<NSString *> *TGActionList(id value) {
    NSMutableArray *actions = [NSMutableArray array];
    NSMutableArray *actions = [NSMutableArray array];
    for (id item in [value isKindOfClass:NSArray.class] ? value : (value ? @[value] : @[]))
    for (id item in [value isKindOfClass:NSArray.class] ? value : (value ? @[value] : @[]))
        if ([item isKindOfClass:NSString.class] && [item length]) [actions addObject:item];
        if ([item isKindOfClass:NSString.class] && [item length]) [actions addObject:item];
    return actions;
    return actions;
}
}


static id TGStoredValue(NSArray<NSString *> *actions) {
static id TGStoredValue(NSArray<NSString *> *actions) {
    if (actions.count == 0) return @"";
    if (actions.count == 0) return @"";
    return actions.count == 1 ? actions.firstObject : actions.copy;
    return actions.count == 1 ? actions.firstObject : actions.copy;
}
}


static NSString *TGListTitle(NSArray<NSString *> *actions) {
static NSString *TGListTitle(NSArray<NSString *> *actions) {
    if (actions.count == 0) return TGDisplayTitle(nil);
    if (actions.count == 0) return TGDisplayTitle(nil);
    NSMutableArray *titles = [NSMutableArray array];
    NSMutableArray *titles = [NSMutableArray array];
    for (NSString *action in actions) [titles addObject:TGDisplayTitle(action)];
    for (NSString *action in actions) [titles addObject:TGDisplayTitle(action)];
    return [titles componentsJoinedByString:@" + "];
    return [titles componentsJoinedByString:@" + "];
}
}


static NSArray<NSString *> *TGReadAssignment(PSListController *list, NSString *mode, NSString *trigger) {
static NSArray<NSString *> *TGReadAssignment(PSListController *list, NSString *mode, NSString *trigger) {
    PSSpecifier *spec = [PSSpecifier emptyGroupSpecifier];
    PSSpecifier *spec = [PSSpecifier emptyGroupSpecifier];
    TGConfigureStorage(spec, mode, trigger);
    TGConfigureStorage(spec, mode, trigger);
    return TGActionList([list readPreferenceValue:spec]);
    return TGActionList([list readPreferenceValue:spec]);
}
}


// A trigger row that opens the action picker for one mode/trigger.
// A trigger row that opens the action picker for one mode/trigger.
static PSSpecifier *TGTriggerRow(NSString *name, id target, SEL getter, NSString *mode, NSString *trigger);
static PSSpecifier *TGTriggerRow(NSString *name, id target, SEL getter, NSString *mode, NSString *trigger);
static PSSpecifier *TGSubtitled(PSSpecifier *spec);
static PSSpecifier *TGSubtitled(PSSpecifier *spec);


// An app's name, looked up from its bundle id ("Open Music" -> "音乐").
// An app's name, looked up from its bundle id ("Open Music" -> "音乐").
static NSString *TGAppName(NSString *identifier) {
static NSString *TGAppName(NSString *identifier) {
    return [TGDisplayTitle([TGAppPrefix stringByAppendingString:identifier]) substringFromIndex:@"打开 ".length];
    return [TGDisplayTitle([TGAppPrefix stringByAppendingString:identifier]) substringFromIndex:@"打开 ".length];
}
}


static NSString *TGSettingsTriggerTitle(NSString *trigger) {
static NSString *TGSettingsTriggerTitle(NSString *trigger) {
    if ([trigger hasPrefix:TGAppLaunchedPrefix]) return [@"打开了 " stringByAppendingString:TGAppName([trigger substringFromIndex:TGAppLaunchedPrefix.length])];
    if ([trigger hasPrefix:TGAppLaunchedPrefix]) return [@"打开了 " stringByAppendingString:TGAppName([trigger substringFromIndex:TGAppLaunchedPrefix.length])];
    if ([trigger hasPrefix:TGNotificationAppPrefix]) return [@"来自 " stringByAppendingString:TGAppName([trigger substringFromIndex:TGNotificationAppPrefix.length])];
    if ([trigger hasPrefix:TGNotificationAppPrefix]) return [@"来自 " stringByAppendingString:TGAppName([trigger substringFromIndex:TGNotificationAppPrefix.length])];
    if ([trigger hasPrefix:@"icon.flick"] && TGIsCustomTrigger(trigger)) {
    if ([trigger hasPrefix:@"icon.flick"] && TGIsCustomTrigger(trigger)) {
        NSRange colon = [trigger rangeOfString:@":"];
        NSRange colon = [trigger rangeOfString:@":"];
        return [NSString stringWithFormat:@"在 %@ 上%@", TGFlickDirectionTitle(trigger), TGAppName([trigger substringFromIndex:colon.location + 1])];
        return [NSString stringWithFormat:@"在 %@ 上%@", TGFlickDirectionTitle(trigger), TGAppName([trigger substringFromIndex:colon.location + 1])];
    }
    }
    return TGButtonText(TGTriggerTitle(trigger));
    return TGButtonText(TGTriggerTitle(trigger));
}
}


#pragma mark - Shared by every page
#pragma mark - Shared by every page


static NSArray<NSString *> *TGModeIdentifiers(void) {
static NSArray<NSString *> *TGModeIdentifiers(void) {
    NSMutableArray *modes = [NSMutableArray array];
    NSMutableArray *modes = [NSMutableArray array];
    for (int m = 0; m < TG_COUNT(TGModes); m++) [modes addObject:@(TGModes[m].identifier)];
    for (int m = 0; m < TG_COUNT(TGModes); m++) [modes addObject:@(TGModes[m].identifier)];
    return modes;
    return modes;
}
}


// Every assignment that runs something on this device: "<mode>/<trigger>" -> actions.
// Every assignment that runs something on this device: "<mode>/<trigger>" -> actions.
static NSDictionary<NSString *, NSArray<NSString *> *> *TGAllAssignments(void) {
static NSDictionary<NSString *, NSArray<NSString *> *> *TGAllAssignments(void) {
    CFStringRef domain = (__bridge CFStringRef)TGDomain;
    CFStringRef domain = (__bridge CFStringRef)TGDomain;
    CFPreferencesAppSynchronize(domain);
    CFPreferencesAppSynchronize(domain);
    NSArray *keys = CFBridgingRelease(CFPreferencesCopyKeyList(domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost));
    NSArray *keys = CFBridgingRelease(CFPreferencesCopyKeyList(domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost));
    NSDictionary *values = keys.count ? CFBridgingRelease(CFPreferencesCopyMultiple((__bridge CFArrayRef)keys, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) : @{};
    NSDictionary *values = keys.count ? CFBridgingRelease(CFPreferencesCopyMultiple((__bridge CFArrayRef)keys, domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost)) : @{};
    NSArray *modes = TGModeIdentifiers();
    NSArray *modes = TGModeIdentifiers();
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    [values enumerateKeysAndObjectsUsingBlock:^(NSString *key, id value, BOOL *stop) {
    [values enumerateKeysAndObjectsUsingBlock:^(NSString *key, id value, BOOL *stop) {
        NSRange slash = [key rangeOfString:@"/"];
        NSRange slash = [key rangeOfString:@"/"];
        if (slash.location == NSNotFound) return;
        if (slash.location == NSNotFound) return;
        NSString *mode = [key substringToIndex:slash.location];
        NSString *mode = [key substringToIndex:slash.location];
        if (![modes containsObject:mode] && !([mode hasPrefix:TGAppModePrefix] && mode.length > TGAppModePrefix.length)) return;
        if (![modes containsObject:mode] && !([mode hasPrefix:TGAppModePrefix] && mode.length > TGAppModePrefix.length)) return;
        NSString *trigger = [key substringFromIndex:slash.location + 1];
        NSString *trigger = [key substringFromIndex:slash.location + 1];
        if (!TGIsKnownTrigger(trigger) || !TGTriggerFitsHardware(trigger, TGHasHomeButton())) return;
        if (!TGIsKnownTrigger(trigger) || !TGTriggerFitsHardware(trigger, TGHasHomeButton())) return;
        NSArray *actions = TGActionList(value);
        NSArray *actions = TGActionList(value);
        if (actions.count) result[key] = actions;
        if (actions.count) result[key] = actions;
    }];
    }];
    return result;
    return result;
}
}


// "…only work at the Home Screen", "…replace it inside apps".
// "…only work at the Home Screen", "…replace it inside apps".
static NSString *TGAppName(NSString *identifier);
static NSString *TGAppName(NSString *identifier);


// A place's name: "任意位置", …, or the app's name for In Specific Apps.
// A place's name: "任意位置", …, or the app's name for In Specific Apps.
static NSString *TGPlaceTitle(NSString *mode) {
static NSString *TGPlaceTitle(NSString *mode) {
    if ([mode hasPrefix:TGAppModePrefix]) return TGAppName([mode substringFromIndex:TGAppModePrefix.length]);
    if ([mode hasPrefix:TGAppModePrefix]) return TGAppName([mode substringFromIndex:TGAppModePrefix.length]);
    return TGModeTitle(mode);
    return TGModeTitle(mode);
}
}


static NSString *TGModePhrase(NSString *mode) {
static NSString *TGModePhrase(NSString *mode) {
    if ([mode hasPrefix:TGAppModePrefix]) return [NSString stringWithFormat:@"应用内“%@”", TGPlaceTitle(mode)];
    if ([mode hasPrefix:TGAppModePrefix]) return [NSString stringWithFormat:@"应用内“%@”", TGPlaceTitle(mode)];
    return @{ @"anywhere": @"所有位置", @"home": @"主屏幕", @"app": @"应用内", @"lock": @"锁屏界面" }[mode] ?: @"该位置";
    return @{ @"anywhere": @"所有位置", @"home": @"主屏幕", @"app": @"应用内", @"lock": @"锁屏界面" }[mode] ?: @"该位置";
}
}


static NSString *TGCountTitle(NSUInteger count) {
static NSString *TGCountTitle(NSUInteger count) {
    return count ? [NSString stringWithFormat:@"%lu", (unsigned long)count] : @"";
    return count ? [NSString stringWithFormat:@"%lu", (unsigned long)count] : @"";
}
}


// A Settings-style icon: a white SF Symbol on a rounded colour square.
// A Settings-style icon: a white SF Symbol on a rounded colour square.
static void TGSetIcon(PSSpecifier *spec, NSString *symbol, UIColor *color) {
static void TGSetIcon(PSSpecifier *spec, NSString *symbol, UIColor *color) {
    UIImage *glyph = [UIImage systemImageNamed:symbol withConfiguration:[UIImageSymbolConfiguration configurationWithPointSize:15 weight:UIImageSymbolWeightMedium]];
    UIImage *glyph = [UIImage systemImageNamed:symbol withConfiguration:[UIImageSymbolConfiguration configurationWithPointSize:15 weight:UIImageSymbolWeightMedium]];
    if (!glyph) return;
    if (!glyph) return;
    glyph = [glyph imageWithTintColor:UIColor.whiteColor renderingMode:UIImageRenderingModeAlwaysOriginal];
    glyph = [glyph imageWithTintColor:UIColor.whiteColor renderingMode:UIImageRenderingModeAlwaysOriginal];
    CGSize size = CGSizeMake(29, 29);
    CGSize size = CGSizeMake(29, 29);
    UIImage *icon = [[[UIGraphicsImageRenderer alloc] initWithSize:size] imageWithActions:^(UIGraphicsImageRendererContext *context) {
    UIImage *icon = [[[UIGraphicsImageRenderer alloc] initWithSize:size] imageWithActions:^(UIGraphicsImageRendererContext *context) {
        [color setFill];
        [color setFill];
        [[UIBezierPath bezierPathWithRoundedRect:(CGRect){CGPointZero, size} cornerRadius:6.5] fill];
        [[UIBezierPath bezierPathWithRoundedRect:(CGRect){CGPointZero, size} cornerRadius:6.5] fill];
        CGFloat scale = MIN(1, MIN(21 / glyph.size.width, 21 / glyph.size.height));
        CGFloat scale = MIN(1, MIN(21 / glyph.size.width, 21 / glyph.size.height));
        CGSize fitted = CGSizeMake(glyph.size.width * scale, glyph.size.height * scale);
        CGSize fitted = CGSizeMake(glyph.size.width * scale, glyph.size.height * scale);
        [glyph drawInRect:CGRectMake((size.width - fitted.width) / 2, (size.height - fitted.height) / 2, fitted.width, fitted.height)];
        [glyph drawInRect:CGRectMake((size.width - fitted.width) / 2, (size.height - fitted.height) / 2, fitted.width, fitted.height)];
    }];
    }];
    [spec setProperty:icon forKey:@"iconImage"];
    [spec setProperty:icon forKey:@"iconImage"];
}
}


static PSSpecifier *TGSwitchRow(NSString *name, NSString *key, BOOL defaultValue, id target) {
static PSSpecifier *TGSwitchRow(NSString *name, NSString *key, BOOL defaultValue, id target) {
    PSSpecifier *spec = [PSSpecifier preferenceSpecifierNamed:name target:target set:@selector(setPreferenceValue:specifier:)
    PSSpecifier *spec = [PSSpecifier preferenceSpecifierNamed:name target:target set:@selector(setPreferenceValue:specifier:)
        get:@selector(readPreferenceValue:) detail:nil cell:PSSwitchCell edit:nil];
        get:@selector(readPreferenceValue:) detail:nil cell:PSSwitchCell edit:nil];
    [spec setProperty:TGDomain forKey:@"defaults"];
    [spec setProperty:TGDomain forKey:@"defaults"];
    [spec setProperty:key forKey:@"key"];
    [spec setProperty:key forKey:@"key"];
    [spec setProperty:@(defaultValue) forKey:@"default"];
    [spec setProperty:@(defaultValue) forKey:@"default"];
    [spec setProperty:@TGPrefsChangedNotification forKey:@"PostNotification"];
    [spec setProperty:@TGPrefsChangedNotification forKey:@"PostNotification"];
    return spec;
    return spec;
}
}


// Every Triggr page: reloads when you come back to it (so rows show what was
// Every Triggr page: reloads when you come back to it (so rows show what was
// picked deeper down) and lets subclasses offer a swipe action on a row.
// picked deeper down) and lets subclasses offer a swipe action on a row.
@interface TGListController : PSListController
@interface TGListController : PSListController
- (NSString *)swipeTitleForSpecifier:(PSSpecifier *)spec; // nil: this row can't be swiped
- (NSString *)swipeTitleForSpecifier:(PSSpecifier *)spec; // nil: this row can't be swiped
- (BOOL)swipedSpecifier:(PSSpecifier *)spec;              // do it; YES when the row goes away
- (BOOL)swipedSpecifier:(PSSpecifier *)spec;              // do it; YES when the row goes away
- (BOOL)replacesButtons;
- (BOOL)replacesButtons;
- (BOOL)statusBarTapsOn;
- (BOOL)statusBarTapsOn;
@end
@end


@implementation TGListController
@implementation TGListController


- (NSString *)swipeTitleForSpecifier:(PSSpecifier *)spec {
- (NSString *)swipeTitleForSpecifier:(PSSpecifier *)spec {
    return nil;
    return nil;
}
}


- (BOOL)swipedSpecifier:(PSSpecifier *)spec {
- (BOOL)swipedSpecifier:(PSSpecifier *)spec {
    return NO;
    return NO;
}
}


- (BOOL)statusBarTapsOn {
- (BOOL)statusBarTapsOn {
    PSSpecifier *setting = [PSSpecifier emptyGroupSpecifier];
    PSSpecifier *setting = [PSSpecifier emptyGroupSpecifier];
    [setting setProperty:TGDomain forKey:@"defaults"];
    [setting setProperty:TGDomain forKey:@"defaults"];
    [setting setProperty:TGStatusBarTapKey forKey:@"key"];
    [setting setProperty:TGStatusBarTapKey forKey:@"key"];
    return TGStatusBarTapsOn([self readPreferenceValue:setting]);
    return TGStatusBarTapsOn([self readPreferenceValue:setting]);
}
}


- (BOOL)replacesButtons {
- (BOOL)replacesButtons {
    PSSpecifier *setting = [PSSpecifier emptyGroupSpecifier];
    PSSpecifier *setting = [PSSpecifier emptyGroupSpecifier];
    [setting setProperty:TGDomain forKey:@"defaults"];
    [setting setProperty:TGDomain forKey:@"defaults"];
    [setting setProperty:TGLockReplacesKey forKey:@"key"];
    [setting setProperty:TGLockReplacesKey forKey:@"key"];
    id value = [self readPreferenceValue:setting];
    id value = [self readPreferenceValue:setting];
    return ![value respondsToSelector:@selector(boolValue)] || [value boolValue]; // on unless turned off
    return ![value respondsToSelector:@selector(boolValue)] || [value boolValue]; // on unless turned off
}
}


- (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    [self reloadSpecifiers];
    [self reloadSpecifiers];
    // Actra-style app-side config: Settings has no sandbox, so opening this
    // Actra-style app-side config: Settings has no sandbox, so opening this
    // panel is the moment to read the live shortcuts DB and write a
    // panel is the moment to read the live shortcuts DB and write a
    // name->UUID map. SpringBoard reads the map and builds descriptors by
    // name->UUID map. SpringBoard reads the map and builds descriptors by
    // hand — no copy DB, no daemon, no passthrough.
    // hand — no copy DB, no daemon, no passthrough.
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{
    @try {
    @try {
        FILE *dfp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
        FILE *dfp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
        #define PSDiag(fmt, ...) do { if (dfp) { fprintf(dfp, "[ps %f] " fmt "\n", [NSDate timeIntervalSinceReferenceDate], ##__VA_ARGS__); fflush(dfp); } } while(0)
        #define PSDiag(fmt, ...) do { if (dfp) { fprintf(dfp, "[ps %f] " fmt "\n", [NSDate timeIntervalSinceReferenceDate], ##__VA_ARGS__); fflush(dfp); } } while(0)
        PSDiag("panel sync start");
        PSDiag("panel sync start");
        dlopen("/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient", RTLD_LAZY);
        dlopen("/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient", RTLD_LAZY);
        dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", RTLD_LAZY);
        dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", RTLD_LAZY);
        Class dbCls = NSClassFromString(@"WFDatabase");
        Class dbCls = NSClassFromString(@"WFDatabase");
        if (!dbCls) { PSDiag("panel: no dbCls"); if(dfp) fclose(dfp); return; }
        if (!dbCls) { PSDiag("panel: no dbCls"); if(dfp) fclose(dfp); return; }
        id url = ((id(*)(id,SEL,id))objc_msgSend)(objc_getClass("NSURL"), sel_registerName("fileURLWithPath:"), @"/var/mobile/Library/Shortcuts/Shortcuts.sqlite");
        id url = ((id(*)(id,SEL,id))objc_msgSend)(objc_getClass("NSURL"), sel_registerName("fileURLWithPath:"), @"/var/mobile/Library/Shortcuts/Shortcuts.sqlite");
        id store = ((id(*)(id,SEL))objc_msgSend)(objc_getClass("NSPersistentStoreDescription"), sel_registerName("alloc"));
        id store = ((id(*)(id,SEL))objc_msgSend)(objc_getClass("NSPersistentStoreDescription"), sel_registerName("alloc"));
        store = ((id(*)(id,SEL,id))objc_msgSend)(store, sel_registerName("initWithURL:"), url);
        store = ((id(*)(id,SEL,id))objc_msgSend)(store, sel_registerName("initWithURL:"), url);
        if (!store) { PSDiag("panel: store nil"); if(dfp) fclose(dfp); return; }
        if (!store) { PSDiag("panel: store nil"); if(dfp) fclose(dfp); return; }
        ((void(*)(id,SEL,id))objc_msgSend)(store, sel_registerName("setType:"), @"SQLite");
        ((void(*)(id,SEL,id))objc_msgSend)(store, sel_registerName("setType:"), @"SQLite");
        ((void(*)(id,SEL,id,id))objc_msgSend)(store, sel_registerName("setOption:forKey:"), (id)kCFBooleanTrue, @"NSReadOnlyPersistentStoreOption");
        ((void(*)(id,SEL,id,id))objc_msgSend)(store, sel_registerName("setOption:forKey:"), (id)kCFBooleanTrue, @"NSReadOnlyPersistentStoreOption");
        void *errp = NULL;
        void *errp = NULL;
        id db = ((id(*)(id,SEL,id,BOOL,BOOL,void**))objc_msgSend)(((id(*)(id,SEL))objc_msgSend)(dbCls, sel_registerName("alloc")), sel_registerName("initWithStoreDescription:runMigrationsIfNecessary:useLockFile:error:"), store, YES, YES, &errp);
        id db = ((id(*)(id,SEL,id,BOOL,BOOL,void**))objc_msgSend)(((id(*)(id,SEL))objc_msgSend)(dbCls, sel_registerName("alloc")), sel_registerName("initWithStoreDescription:runMigrationsIfNecessary:useLockFile:error:"), store, YES, YES, &errp);
        if (!db) { PSDiag("panel: db nil"); if(dfp) fclose(dfp); return; }
        if (!db) { PSDiag("panel: db nil"); if(dfp) fclose(dfp); return; }
        id refs = ((id(*)(id,SEL))objc_msgSend)(db, sel_registerName("sortedVisibleWorkflowsByName"));
        id refs = ((id(*)(id,SEL))objc_msgSend)(db, sel_registerName("sortedVisibleWorkflowsByName"));
        PSDiag("panel: refs count=%lu", (unsigned long)[refs count]);
        PSDiag("panel: refs count=%lu", (unsigned long)[refs count]);
        NSMutableDictionary *map = [NSMutableDictionary dictionary];
        NSMutableDictionary *map = [NSMutableDictionary dictionary];
        for (id ref in refs) {
        for (id ref in refs) {
            NSString *name = ((id(*)(id,SEL))objc_msgSend)(ref, sel_registerName("name"));
            NSString *name = ((id(*)(id,SEL))objc_msgSend)(ref, sel_registerName("name"));
            id ident = ((id(*)(id,SEL))objc_msgSend)(ref, sel_registerName("identifier"));
            id ident = ((id(*)(id,SEL))objc_msgSend)(ref, sel_registerName("identifier"));
            if (![name isKindOfClass:NSString.class] || !ident) continue;
            if (![name isKindOfClass:NSString.class] || !ident) continue;
            id uuid = [ident isKindOfClass:NSUUID.class] ? ((id(*)(id,SEL))objc_msgSend)(ident, sel_registerName("UUIDString")) : ident;
            id uuid = [ident isKindOfClass:NSUUID.class] ? ((id(*)(id,SEL))objc_msgSend)(ident, sel_registerName("UUIDString")) : ident;
            if ([uuid isKindOfClass:NSString.class]) map[name] = uuid;
            if ([uuid isKindOfClass:NSString.class]) map[name] = uuid;
        }
        }
        BOOL ok = [map writeToFile:@"/var/mobile/Library/Preferences/com.johndie.triggr.shortcutmap.plist" atomically:YES];
        BOOL ok = [map writeToFile:@"/var/mobile/Library/Preferences/com.johndie.triggr.shortcutmap.plist" atomically:YES];
        PSDiag("panel: map=%lu write=%d", (unsigned long)map.count, ok);
        PSDiag("panel: map=%lu write=%d", (unsigned long)map.count, ok);
        if (dfp) fclose(dfp);
        if (dfp) fclose(dfp);
    } @catch (NSException *e) {
    } @catch (NSException *e) {
        FILE *fp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
        FILE *fp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
        if (fp) { NSString *l = [NSString stringWithFormat:@"[ps] panel exc %@\n", e]; fwrite(l.UTF8String,1,l.length,fp); fclose(fp); }
        if (fp) { NSString *l = [NSString stringWithFormat:@"[ps] panel exc %@\n", e]; fwrite(l.UTF8String,1,l.length,fp); fclose(fp); }
    }
    }
    });
