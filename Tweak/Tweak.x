// TriggrCN \u2014 \u72ec\u7acb\u6c49\u5316\u5c42\uff1a\u4e0d\u6539 Triggr \u4efb\u4f55\u5b57\u8282\uff0c\u4ec5\u5728 Preferences/TriggrApp \u7684
// UI \u54bd\u5589\u70b9\u628a\u82f1\u6587\u5b57\u7b26\u4e32\u5b9e\u65f6\u66ff\u6362\u4e3a\u4e2d\u6587\uff08\u67e5\u8868\uff09\u3002\u4f5c\u7528\u57df\u5b89\u5168\uff1a\u6620\u5c04\u8868\u53ea\u542b Triggr \u6587\u6848\u3002

#import <UIKit/UIKit.h>

#import "TGCNMap.h"

static NSDictionary *TGCNDict;

static inline NSString *TGCN(NSString *s) {
    if (!s.length) return s;
    NSString *hit = TGCNDict[s];
    if (hit) return hit;
    return s;
}

// \u5e26\u524d\u7f00\u7684\u52a8\u6001\u62fc\u63a5\u6807\u9898\uff08TGActionTitle / TGCustomTriggerTitle \u7b49\uff09
static const struct { __unsafe_unretained NSString *en; __unsafe_unretained NSString *zh; } TGCPPrefixes[] = {
    {@"Open ",            @"\u6253\u5f00 "},
    {@"Shortcut: ",       @"\u5feb\u6377\u6307\u4ee4\uff1a"},
    {@"Menu: ",           @"\u83dc\u5355\uff1a"},
    {@"Brightness ",      @"\u4eae\u5ea6 "},
    {@"Media Volume ",    @"\u5a92\u4f53\u97f3\u91cf "},
    {@"Ringer Volume ",   @"\u94c3\u58f0\u97f3\u91cf "},
    {@"Message: ",        @"\u663e\u793a\u6587\u5b57\uff1a"},
    {@"Say: ",            @"\u6717\u8bfb\uff1a"},
    {@"AirPlay to ",      @"AirPlay \u5230 "},
    {@"Settings: ",       @"\u8bbe\u7f6e\uff1a"},
    {@"Opened ",          @"\u6253\u5f00\u4e86 "},
    {@"Connected to ",    @"\u8fde\u63a5\u5230 \u201c"},
    {@"Disconnected from ",@"\u4ece \u201c\u65ad\u5f00"},
    {@"Joined ",          @"\u52a0\u5165 \u201c"},
    {@"Left ",            @"\u79bb\u5f00 \u201c"},
    {@"Battery Rises Above ", @"\u7535\u91cf\u9ad8\u4e8e "},
    {@"Battery Drops Below ", @"\u7535\u91cf\u4f4e\u4e8e "},
    {@"Runs at ",         @"\u5b9a\u65f6 "},
    {@"Flick on ",        @"\u5728 \u201c"},
};

static inline NSString *TGCNFull(NSString *s) {
    if (!s.length) return s;
    NSString *hit = TGCNDict[s];
    if (hit) return hit;
    for (size_t i = 0; i < sizeof(TGCPPrefixes) / sizeof(TGCPPrefixes[0]); i++) {
        NSString *en = TGCPPrefixes[i].en;
        if ([s hasPrefix:en]) {
            NSString *rest = [s substringFromIndex:en.length];
            // \u201cOpen Music\u201d\u8fd9\u7c7b\u547d\u4e2d\u6574\u4e32\u7684\u8d70\u5b57\u5178\uff1b\u5269\u4f59\u90e8\u5206\u82e5\u4ecd\u5168\u82f1\u6587\u5219\u4fdd\u6301\u539f\u6837\u62fc\u63a5
            return [TGCPPrefixes[i].zh stringByAppendingString:TGCN(rest)];
        }
    }
    return s;
}

static void TGCNInit(void) {
    if (TGCNDict) return;
    NSMutableDictionary *m = [NSMutableDictionary dictionaryWithCapacity:TGCN_MAP_COUNT];
    for (int i = 0; i < TGCN_MAP_COUNT; i++) {
        NSString *en = TGCNMap_EN[i], *zh = TGCNMap_ZH[i];
        if (en.length && zh.length && ![en isEqualToString:zh]) m[en] = zh;
    }
    TGCNDict = [m copy];
}

// ---- \u54bd\u5589\u70b9 1\uff1aPSSpecifier\uff08\u6240\u6709\u8bbe\u7f6e\u884c/\u5206\u7ec4\u6807\u9898\uff09----
%hook PSSpecifier
+ (instancetype)preferenceSpecifierNamed:(NSString *)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(NSInteger)cell edit:(SEL)edit {
    return %orig(TGCNFull(name), target, set, get, detail, cell, edit);
}
+ (instancetype)groupSpecifierWithName:(NSString *)name {
    return %orig(TGCNFull(name));
}
+ (instancetype)emptyGroupSpecifier {
    PSSpecifier *spec = %orig;
    return spec;
}
- (void)setName:(NSString *)name {
    %orig(TGCNFull(name));
}
- (void)setProperty:(id)value forKey:(NSString *)key {
    if ([value isKindOfClass:NSString.class] &&
        ([key isEqualToString:@"footerText"] || [key isEqualToString:@"label"] || [key isEqualToString:@"subtitle"]))
        value = TGCNFull(value);
    %orig(value, key);
}
%end

// ---- \u54bd\u5589\u70b9 2\uff1a\u9875\u9762\u6807\u9898 ----
%hook UIViewController
- (void)setTitle:(NSString *)title {
    %orig(TGCNFull(title));
}
%end

// ---- \u54bd\u5589\u70b9 3\uff1a\u5f39\u7a97 ----
%hook UIAlertController
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(NSInteger)style {
    return %orig(TGCNFull(title), TGCNFull(message), style);
}
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(NSInteger)style popoverPresentationController:(id)ppc {
    return %orig(TGCNFull(title), TGCNFull(message), style, ppc);
}
%end

%hook UIAlertAction
+ (instancetype)actionWithTitle:(NSString *)title style:(NSInteger)style handler:(void (^)(UIAlertAction *))handler {
    return %orig(TGCNFull(title), style, handler);
}
%end

// ---- \u54bd\u5589\u70b9 4\uff1a\u641c\u7d22\u6846 ----
%hook UISearchBar
- (void)setPlaceholder:(NSString *)placeholder {
    %orig(TGCNFull(placeholder));
}
%end

%ctor {
    TGCNInit();
    %init;
}
