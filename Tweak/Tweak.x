// TriggrCN — 独立汉化层：不改 Triggr 任何字节，仅在 Preferences/TriggrApp 的
// UI 咽喉点把英文字符串实时替换为中文（查表）。作用域安全：映射表只含 Triggr 文案。

#import <UIKit/UIKit.h>

#import "TGCNMap.h"

static NSDictionary *TGCNDict;

static inline NSString *TGCN(NSString *s) {
    if (!s.length) return s;
    NSString *hit = TGCNDict[s];
    if (hit) return hit;
    return s;
}

// 带前缀的动态拼接标题（TGActionTitle / TGCustomTriggerTitle 等）
static const struct { __unsafe_unretained NSString *en; __unsafe_unretained NSString *zh; } TGCPPrefixes[] = {
    {@"Open ",            @"打开 "},
    {@"Shortcut: ",       @"快捷指令："},
    {@"Menu: ",           @"菜单："},
    {@"Brightness ",      @"亮度 "},
    {@"Media Volume ",    @"媒体音量 "},
    {@"Ringer Volume ",   @"铃声音量 "},
    {@"Message: ",        @"显示文字："},
    {@"Say: ",            @"朗读："},
    {@"AirPlay to ",      @"AirPlay 到 "},
    {@"Settings: ",       @"设置："},
    {@"Opened ",          @"打开了 "},
    {@"Connected to ",    @"连接到 “"},
    {@"Disconnected from ",@"从 “断开"},
    {@"Joined ",          @"加入 “"},
    {@"Left ",            @"离开 “"},
    {@"Battery Rises Above ", @"电量高于 "},
    {@"Battery Drops Below ", @"电量低于 "},
    {@"Runs at ",         @"定时 "},
    {@"Flick on ",        @"在 “"},
};

static inline NSString *TGCNFull(NSString *s) {
    if (!s.length) return s;
    NSString *hit = TGCNDict[s];
    if (hit) return hit;
    for (size_t i = 0; i < sizeof(TGCPPrefixes) / sizeof(TGCPPrefixes[0]); i++) {
        NSString *en = TGCPPrefixes[i].en;
        if ([s hasPrefix:en]) {
            NSString *rest = [s substringFromIndex:en.length];
            // “Open Music”这类命中整串的走字典；剩余部分若仍全英文则保持原样拼接
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

// ---- 咽喉点 1：PSSpecifier（所有设置行/分组标题）----
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

// ---- 咽喉点 2：页面标题 ----
%hook UIViewController
- (void)setTitle:(NSString *)title {
    %orig(TGCNFull(title));
}
%end

// ---- 咽喉点 3：弹窗 ----
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

// ---- 咽喉点 4：搜索框 ----
%hook UISearchBar
- (void)setPlaceholder:(NSString *)placeholder {
    %orig(TGCNFull(placeholder));
}
%end

%ctor {
    TGCNInit();
    %init;
}
