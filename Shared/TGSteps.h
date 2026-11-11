// TGSteps.h —— 条件逻辑（2.0 移植，1.5 的 Shared/ 目录）
//
// 用法：Tweak.x 与 Prefs/TGSettings.m 各 #import 一次。
//
// 一、这套东西解决什么
//
//   1.5 的分配是一个纯动作列表，从头跑到尾，没有分支。2.0 在同一个数组里加了
//   三条指令，用普通字符串编码，所以 1.5 存的数据不用改格式：
//
//     "if:wifi:Home"   开一个块，条件成立才跑块里的动作
//     "else"           否则跑这半边的
//     "endif"         块结束
//
//   块可以嵌套。没有指令的分配（也就是 1.5 的全部数据）就是一条永远不会分支的
//   列表，行为完全不变。
//
// 二、条件词表
//
//     wifi:Home      已连 Wi-Fi「Home」；wifi: / wifi 表示任何网络
//     bt:AirPods     已连蓝牙「AirPods」；bt: / bt 表示任何设备
//     charging       充电中
//     locked         已锁定
//     music          音乐播放中
//     headphones     连接了耳机
//     lowpower       低电量模式已开启
//     battery<20     电量低于 20%
//     battery>20     电量高于 20%
//     time:2200-0600 22:00 到 06:00 之间（支持跨夜）
//
//   前面加 ! 就是取反：!charging、!wifi:、!battery<20 等。
//
//   cn4.11 兼容：结尾的 @秒 仍然认（cn2.77/2.78 存的「持续 N 秒才执行」数据），
//   由执行器负责等待后再判一次；time: 同时接受 2200-0600 与 9:00-18:00 两种写法
//   （cn2.78 的界面存的是后者）。
//
// 三、条件不成立时，块里的动作一行都不跑
//
//   这是整套东西的核心。条件不成立 => 块内所有动作跳过；有 else 就跑 else 那边；
//   endif 之后恢复外层状态。条件词写错了（解析不了）也按「不成立」处理，
//   绝不能放行块里的动作——否则会变成「没充电也回主屏」那种无条件触发。

#import <Foundation/Foundation.h>
#include <string.h>
#import "TGCatalog.h"

#define TGIfPrefix @"if:"
#define TGElseDirective @"else"
#define TGEndIfDirective @"endif"
#define TGNotPrefix @"!"

typedef NS_ENUM(NSInteger, TGConditionKind) {
    TGConditionKindUnknown = 0,
    TGConditionKindWiFi,        // wifi:<ssid>, or wifi: for any network
    TGConditionKindBluetooth,   // bt:<device name>, or bt: for any device
    TGConditionKindCharging,
    TGConditionKindLocked,
    TGConditionKindMusic,
    TGConditionKindHeadphones,
    TGConditionKindLowPower,
    TGConditionKindBatteryBelow,
    TGConditionKindBatteryAbove,
    TGConditionKindTime,        // time:HHMM-HHMM, overnight allowed
    TGConditionKindFlashlight,  // flashlight / !flashlight（2.0/2.1 有，cn4.20 补）
    TGConditionKindNetwork,     // 裸 wifi / !wifi：有没有网（Wi-Fi 或蜂窝），与 wifi: 不是一回事
};

#define TGArgumentMax 128

// 解析后的条件。特意用纯 C：tweak 和 Settings 都会 include 这个头文件，
// 而一个纯标量结构体穿过 block 或 dispatch 队列时不会有任何所有权问题。
typedef struct {
    TGConditionKind kind;
    BOOL negated;
    int value;      // battery threshold, whole percent
    int start, end; // time condition, HHMM as written
    double wait;    // 条件需持续这么多秒（0 = 立刻判定）
    char argument[TGArgumentMax]; // Wi-Fi network or Bluetooth device name
} TGCondition;

static inline NSString *TGArgumentString(const TGCondition *condition) {
    return condition->argument[0] ? [NSString stringWithUTF8String:condition->argument] ?: @"" : @"";
}

static inline void TGConditionZero(TGCondition *condition) {
    memset(condition, 0, sizeof(*condition));
}

// "2200" 或 "22:00" -> 2200；不是时间返回 -1。cn2.78 的界面存的是冒号写法，
// 2.0 存的是四位，两种都要认，否则老数据会被判成「解析失败」而静默不执行。
static inline int TGClockToken(NSString *token) {
    if (![token isKindOfClass:NSString.class] || !token.length) return -1;
    NSArray<NSString *> *parts = [token componentsSeparatedByString:@":"];
    int hour, minute;
    if (parts.count == 2) {
        hour = parts[0].intValue;
        minute = parts[1].intValue;
    } else if (token.length == 3 || token.length == 4) {
        int packed = token.intValue;
        hour = packed / 100;
        minute = packed % 100;
    } else {
        return -1;
    }
    if (hour < 0 || hour > 23 || minute < 0 || minute > 59) return -1;
    return hour * 100 + minute;
}

// "wifi:Home" -> { WiFi, NO, "Home" }。解析不了返回 NO。
//
// 注意每个分支的收尾：吃参数的两个（wifi:/bt:）把名字留在 body 里；
// 其余七个必须把 body 清空，末尾那句检查才会放过它们。
// 曾经漏了 charging/locked/music/headphones/lowpower 这五个的 `body = @"";`，
// 结果这五个条件从来没解析成功过，判定永远读成「不成立」——而旧代码遇到
// 解析失败是 continue（不关块），动作照跑，于是变成无条件触发。
static inline BOOL TGConditionParse(NSString *encoded, TGCondition *out) {
    if (![encoded isKindOfClass:NSString.class] || !encoded.length) return NO;
    TGConditionZero(out);

    NSString *body = encoded;
    if ([body hasPrefix:TGNotPrefix]) {
        out->negated = YES;
        body = [body substringFromIndex:TGNotPrefix.length];
    }

    // 结尾 @秒（cn2.77/2.78 老数据）。条件只在等待结束后再判一次，不是「保持」。
    NSRange at = [body rangeOfString:@"@" options:NSBackwardsSearch];
    if (at.location != NSNotFound && at.location > 0) {
        out->wait = MAX([[body substringFromIndex:at.location + 1] doubleValue], 0);
        body = [body substringToIndex:at.location];
    }
    if (!body.length) return NO;

    // 只有 Wi-Fi 和蓝牙吃参数，其余条件后面不许有剩余文本。
    // 裸 "wifi"（不带冒号）是 2.0 的 "No network at all"：Wi-Fi 和蜂窝都没有，
    // 和「已连任意 Wi-Fi」（wifi: 名字为空）是两回事，不能再归一成同一个。
    // 裸 "bt" 仍然等于「任意蓝牙设备」。
    if ([body isEqualToString:@"bt"]) body = @"bt:";

    BOOL takesArgument = NO;
    if ([body isEqualToString:@"wifi"]) {
        out->kind = TGConditionKindNetwork;
        body = @"";
    } else if ([body hasPrefix:@"wifi:"]) {
        out->kind = TGConditionKindWiFi;
        body = [body substringFromIndex:5];
        takesArgument = YES;
    } else if ([body hasPrefix:@"bt:"]) {
        out->kind = TGConditionKindBluetooth;
        body = [body substringFromIndex:3];
        takesArgument = YES;
    } else if ([body hasPrefix:@"battery<"] || [body hasPrefix:@"battery>"]) {
        // "battery" 是 7 个字符，操作符在 7、数值从 8 开始（原片段写的 8/9 差一位，
        // 会把 battery<20 读成 battery>0）。
        out->kind = [body characterAtIndex:7] == '<' ? TGConditionKindBatteryBelow : TGConditionKindBatteryAbove;
        out->value = MIN(MAX([[body substringFromIndex:8] intValue], 0), 100);
        body = @"";
    } else if ([body hasPrefix:@"time:"]) {
        NSArray<NSString *> *ends = [[body substringFromIndex:5] componentsSeparatedByString:@"-"];
        if (ends.count != 2) return NO;
        int start = TGClockToken(ends[0]), end = TGClockToken(ends[1]);
        if (start < 0 || end < 0) return NO;
        out->kind = TGConditionKindTime;
        out->start = start;
        out->end = end;
        body = @"";
    } else if ([body isEqualToString:@"charging"]) {
        out->kind = TGConditionKindCharging;
        body = @"";
    } else if ([body isEqualToString:@"locked"]) {
        out->kind = TGConditionKindLocked;
        body = @"";
    } else if ([body isEqualToString:@"music"]) {
        out->kind = TGConditionKindMusic;
        body = @"";
    } else if ([body isEqualToString:@"headphones"]) {
        out->kind = TGConditionKindHeadphones;
        body = @"";
    } else if ([body isEqualToString:@"lowpower"]) {
        out->kind = TGConditionKindLowPower;
        body = @"";
    } else if ([body isEqualToString:@"flashlight"]) {
        out->kind = TGConditionKindFlashlight;
        body = @"";
    } else {
        return NO;
    }

    // 吃参数的两个：剩下的就是名字；其余的后面不许再有东西。
    if (!takesArgument && body.length) return NO;
    strlcpy(out->argument, body.UTF8String ?: "", TGArgumentMax);
    return YES;
}

// <kind><argument>，顺序固定。给 Settings 显示和保存用。
static inline NSString *TGConditionEncode(const TGCondition *condition) {
    NSString *name = TGArgumentString(condition);
    NSString *body;
    switch (condition->kind) {
        case TGConditionKindWiFi: body = [@"wifi:" stringByAppendingString:name]; break;
        case TGConditionKindBluetooth: body = [@"bt:" stringByAppendingString:name]; break;
        case TGConditionKindBatteryBelow: body = [NSString stringWithFormat:@"battery<%d", condition->value]; break;
        case TGConditionKindBatteryAbove: body = [NSString stringWithFormat:@"battery>%d", condition->value]; break;
        case TGConditionKindTime: body = [NSString stringWithFormat:@"time:%04d-%04d", condition->start, condition->end]; break;
        case TGConditionKindCharging: body = @"charging"; break;
        case TGConditionKindLocked: body = @"locked"; break;
        case TGConditionKindMusic: body = @"music"; break;
        case TGConditionKindHeadphones: body = @"headphones"; break;
        case TGConditionKindLowPower: body = @"lowpower"; break;
        case TGConditionKindFlashlight: body = @"flashlight"; break;
        // 裸形式，不带冒号：见 TGConditionParse 里为什么不能归一。
        case TGConditionKindNetwork: body = @"wifi"; break;
        default: return nil;
    }
    if (condition->wait > 0) body = [body stringByAppendingFormat:@"@%g", condition->wait];
    if (condition->negated) body = [TGNotPrefix stringByAppendingString:body];
    return body;
}

// "22:00" for 2200.
static inline NSString *TGClockString(int hhmm) {
    return [NSString stringWithFormat:@"%02d:%02d", hhmm / 100, hhmm % 100];
}

// 行标题：在 Wi-Fi「家」上 / 未在充电 / 22:00 到 06:00 之间。
static inline NSString *TGConditionTitle(const TGCondition *condition) {
    NSString *name = TGArgumentString(condition);
    switch (condition->kind) {
        case TGConditionKindWiFi:
            if (condition->negated) return name.length ? [NSString stringWithFormat:@"未在 Wi-Fi「%@」上", name] : @"未连接 Wi-Fi";
            return name.length ? [NSString stringWithFormat:@"在 Wi-Fi「%@」上", name] : @"已连接 Wi-Fi";
        case TGConditionKindBluetooth:
            if (condition->negated) return name.length ? [NSString stringWithFormat:@"未连接「%@」", name] : @"未连接蓝牙设备";
            return name.length ? [NSString stringWithFormat:@"已连接「%@」", name] : @"已连接蓝牙设备";
        case TGConditionKindCharging: return condition->negated ? @"未在充电" : @"充电中";
        case TGConditionKindLocked: return condition->negated ? @"已解锁" : @"已锁定";
        case TGConditionKindMusic: return condition->negated ? @"音乐未在播放" : @"音乐播放中";
        case TGConditionKindHeadphones: return condition->negated ? @"未连接耳机" : @"已连接耳机";
        case TGConditionKindLowPower: return condition->negated ? @"低电量模式已关闭" : @"低电量模式已开启";
        case TGConditionKindFlashlight: return condition->negated ? @"手电筒已关闭" : @"手电筒已开启";
        case TGConditionKindNetwork: return condition->negated ? @"完全没有网络" : @"有网络（Wi-Fi 或蜂窝）";
        case TGConditionKindBatteryBelow: return [NSString stringWithFormat:@"电量低于 %d%%", condition->value];
        case TGConditionKindBatteryAbove: return [NSString stringWithFormat:@"电量高于 %d%%", condition->value];
        case TGConditionKindTime:
            return [NSString stringWithFormat:@"%@ 到 %@ 之间", TGClockString(condition->start), TGClockString(condition->end)];
        default: return @"条件";
    }
}

#pragma mark - Steps

static inline BOOL TGStepIsIf(NSString *step) { return [step hasPrefix:TGIfPrefix]; }
static inline BOOL TGStepIsElse(NSString *step) { return [step isEqualToString:TGElseDirective]; }
static inline BOOL TGStepIsEndIf(NSString *step) { return [step isEqualToString:TGEndIfDirective]; }

// 「仅当」：触发器级前置条件，全部 AND，存在 if:<mode>/<trigger> 键里。
// 它不属于执行流——不参与 if/else/endif 的配对，也不出现在顺序页里。
// 单独的 only: 前缀只用于迁移旧配置（cn4.15 之前条件写在动作数组最前面）。
static inline BOOL TGStepIsOnly(NSString *step) {
    return [step hasPrefix:TGOnlyPrefix];
}

// 条件键的值：一个条件（字符串）或几个（数组）。空值等于没有条件。
// 和 TGActionList 同构——CFPreferences 会把单元素数组降级成字符串。
static inline NSArray<NSString *> *TGOnlyList(id value) {
    NSMutableArray<NSString *> *conditions = [NSMutableArray array];
    for (id item in [value isKindOfClass:NSArray.class] ? value : (value ? @[value] : @[]))
        if ([item isKindOfClass:NSString.class] && [item length]) [conditions addObject:item];
    return conditions;
}

// 在编辑器里显示、但自己不执行任何事的行。
// only: 只在迁移前的旧数组里出现：TGPerformable 要放行它，否则旧配置的
// 动作列表会被执行器当成「没有这一行」，迁移时就地少了一段参照。
static inline BOOL TGStepIsDirective(NSString *step) {
    return TGStepIsIf(step) || TGStepIsElse(step) || TGStepIsEndIf(step) || TGStepIsOnly(step);
}

// ifIndex 那一行 if 对应的 else 或 endif 的下标，同一层；hasElse 说明是哪一个。
// 列表不平衡时返回 -1。
static inline NSInteger TGStepMatch(NSArray<NSString *> *steps, NSInteger ifIndex, BOOL *hasElse) {
    NSInteger depth = 0;
    if (hasElse) *hasElse = NO;
    for (NSInteger i = ifIndex + 1; i < (NSInteger)steps.count; i++) {
        NSString *step = steps[i];
        if (TGStepIsIf(step)) {
            depth++;
        } else if (TGStepIsEndIf(step)) {
            if (depth == 0) return i;
            depth--;
        } else if (TGStepIsElse(step) && depth == 0) {
            if (hasElse) *hasElse = YES;
            return i;
        }
    }
    return -1;
}

// ifIndex 那一行 if 对应的 endif 的下标，越过 else；列表不平衡时返回 -1。
static inline NSInteger TGStepEndIf(NSArray<NSString *> *steps, NSInteger ifIndex) {
    NSInteger depth = 0;
    for (NSInteger i = ifIndex + 1; i < (NSInteger)steps.count; i++) {
        if (TGStepIsIf(steps[i])) depth++;
        else if (TGStepIsEndIf(steps[i])) {
            if (depth == 0) return i;
            depth--;
        }
    }
    return -1;
}

// cn4.15 之前：条件写在动作数组开头（"only:charging"）。只给一次性迁移用，
// 新代码一律走 TGOnlyList(条件键的值)。
static inline NSArray<NSString *> *TGLegacyOnlyConditions(NSArray<NSString *> *steps) {
    NSMutableArray<NSString *> *conditions = [NSMutableArray array];
    for (NSString *step in steps) {
        if (![step isKindOfClass:NSString.class] || !TGStepIsOnly(step)) break;
        [conditions addObject:[step substringFromIndex:TGOnlyPrefix.length]];
    }
    return conditions;
}

// 去掉旧数组开头的 only: 行，迁移时用。
static inline NSArray<NSString *> *TGStepsWithoutOnly(NSArray<NSString *> *steps) {
    NSUInteger skip = TGLegacyOnlyConditions(steps).count;
    if (!skip) return steps;
    return [steps subarrayWithRange:NSMakeRange(skip, steps.count - skip)];
}

// 这一行嵌在几层块里，编辑器用来缩进。
static inline NSInteger TGStepDepth(NSArray<NSString *> *steps, NSInteger index) {
    NSInteger depth = 0;
    for (NSInteger i = 0; i < index && i < (NSInteger)steps.count; i++) {
        NSString *step = steps[i];
        if (TGStepIsIf(step)) depth++;
        else if (TGStepIsEndIf(step)) depth = MAX(depth - 1, 0);
    }
    return depth;
}

// if 那一行存的东西。
static inline NSString *TGStepIfDirective(NSString *condition) {
    return [TGIfPrefix stringByAppendingString:condition];
}

// 把该闭合的闭合、把没主儿的丢掉，让执行器不用猜。Settings 保存前调用。
static inline NSArray<NSString *> *TGTidySteps(NSArray<NSString *> *steps) {
    NSMutableArray<NSMutableArray<NSString *> *> *blocks = [NSMutableArray arrayWithObject:[NSMutableArray array]];
    NSMutableArray<NSNumber *> *open = [NSMutableArray array]; // 1 = 这个块已经有 else 了
    for (NSString *step in steps) {
        if (![step isKindOfClass:NSString.class] || !step.length) continue;
        if (TGStepIsIf(step)) {
            [blocks.lastObject addObject:step];
            [blocks addObject:[NSMutableArray array]];
            [open addObject:@(NO)];
        } else if (TGStepIsElse(step)) {
            if (!open.count || open.lastObject.boolValue) continue; // 没有 if 的 else，或第二个 else
            open[open.count - 1] = @(YES);
            [blocks.lastObject addObject:step];
        } else if (TGStepIsEndIf(step)) {
            if (!open.count) continue; // 没有 if 的 endif
            [open removeLastObject];
            [blocks.lastObject addObject:step];
            NSMutableArray *finished = blocks.lastObject;
            [blocks removeLastObject];
            [blocks.lastObject addObjectsFromArray:finished];
        } else {
            [blocks.lastObject addObject:step];
        }
    }
    while (open.count) { // 把还开着的补上 endif，最内层先来
        [open removeLastObject];
        NSMutableArray *finished = blocks.lastObject;
        [blocks removeLastObject];
        [finished addObject:TGEndIfDirective];
        [blocks.lastObject addObjectsFromArray:finished];
    }
    return blocks.firstObject;
}

// 指令在列表里怎么显示：如果 在 Wi-Fi「家」上 / 否则 / 结束条件。
// 普通动作和停顿交给调用方自己的标题查找。
static inline NSString *TGStepTitle(NSString *step) {
    if (TGStepIsElse(step)) return @"否则";
    if (TGStepIsEndIf(step)) return @"结束条件";
    if (TGStepIsIf(step)) {
        // "if:" 后面是编码后的条件。只显示一个光秃秃的「如果」，说明这一行的
        // 条件读不回来——这个兜底让那种 bug 藏不住：直接把原文显示出来。
        NSString *encoded = [step substringFromIndex:TGIfPrefix.length];
        TGCondition condition;
        if (TGConditionParse(encoded, &condition)) {
            NSString *title = [@"如果 " stringByAppendingString:TGConditionTitle(&condition)];
            if (condition.wait > 0) title = [title stringByAppendingFormat:@"（%@ 秒后仍成立）", [NSString stringWithFormat:@"%g", condition.wait]];
            return title;
        }
        return [@"如果 " stringByAppendingString:encoded];
    }
    return step;
}


