#import "TGPaths.h"
#import <dlfcn.h>
// The single catalogue of modes, triggers and actions, shared by Settings and
// the tweak so the two can never disagree about ids.
//
// Each assignment is its own key in the prefs domain:
//   "<mode>/<trigger id>" = "<action id>"   ("" = none)

#define TGDomain @"com.johndie.triggr"
#define TGPrefsChangedNotification "com.johndie.triggr/prefs-changed"
#define TGEnabledKey @"启用" // master switch, default on
#define TGRequireUnlockKey @"RequireUnlock" // Lock Screen: shell commands wait for unlock, default on
#define TGBlockedAppsKey @"BlockedApps"     // bundle ids where triggers are ignored
#define TGShowBannersKey @"ShowBanners"     // banner naming what ran, default off
#define TGMenusKey @"菜单"                 // [{id, name}]; items stored at "menu/<id>"
#define TGProfilesKey @"配置"           // {name: setup}
#define TGActiveProfileKey @"ActiveProfile"
#define TGAllowAPIKey @"AllowAPI"           // other tweaks / the triggr tool may run actions, default off
#define TGLockReplacesKey @"LockReplaces"   // assigned button presses replace iOS's own action (all buttons), default on
#define TGRecentActionsKey @"RecentActions" // the last actions picked, newest first (Settings only)
// Settings' Test button: SpringBoard runs the assignment stored at TGTestKey ("<mode>/<trigger>") now.
#define TGTestKey @"TestAssignment"
#define TGTestNotification "com.johndie.triggr/test"
// API: notify_post(TGAPIPrefix "run/<action>" | "trigger/<trigger>" | "menu/<id>").
#define TGAPIPrefix "com.johndie.triggr/api/"

typedef struct { const char *identifier; const char *title; } TGItem;
typedef struct { const char *title; const TGItem *items; int count; const char *footer; } TGGroup;

#define TG_COUNT(a) ((int)(sizeof(a) / sizeof((a)[0])))

// Where an assignment applies, as in Activator.
static const TGItem TGModes[] = {
    {"anywhere", "任意位置"},
    {"home",     "主屏幕"},
    {"app",      "应用内"},
    {"lock",     "锁屏界面"},
};

static const TGItem TGHomeButton[] = {
    {"home.single", "单击"}, {"home.double", "双击"}, {"home.triple", "三击"},
    {"home.shorthold", "短按"}, {"home.longhold", "长按"},
};
static const TGItem TGTouchID[] = {
    {"touchid.doubletap", "轻点两下"}, {"touchid.rest", "手指停留（锁屏）"}, {"touchid.match", "指纹匹配（锁屏）"},
};
static const TGItem TGLockButton[] = {
    {"lock.single", "单击"}, {"lock.double", "双击"}, {"lock.triple", "三击"}, {"lock.longhold", "长按"},
};
static const TGItem TGVolume[] = {
    {"volume.up", "按音量加"}, {"volume.down", "按音量减"}, {"volume.uphold", "长按音量加"},
    {"volume.downhold", "长按音量减"}, {"volume.updown", "音量加后音量减"}, {"volume.downup", "音量减后音量加"},
    {"volume.both", "同时按两键"}, {"volume.bothhold", "同时长按两键"},
};
static const TGItem TGSideCombos[] = {
    {"combo.sideup", "按音量加"}, {"combo.sidedown", "按音量减"},
    {"combo.sideuphold", "长按音量加"}, {"combo.sidedownhold", "长按音量减"},
};
static const TGItem TGMuteSwitch[] = { {"mute.silent", "切到静音"}, {"mute.ring", "切到响铃"}, {"mute.toggle", "拨片切换"} };
static const TGItem TGStatusBar[] = {
    {"statusbar.tap", "点按"}, {"statusbar.doubletap", "双击"}, {"statusbar.hold", "长按"},
    {"statusbar.left.tap", "左侧点按"}, {"statusbar.left.doubletap", "左侧双击"}, {"statusbar.left.hold", "左侧长按"},
    {"statusbar.right.tap", "右侧点按"}, {"statusbar.right.doubletap", "右侧双击"}, {"statusbar.right.hold", "右侧长按"},
    {"statusbar.swipeleft", "左滑"}, {"statusbar.swiperight", "右滑"},
};
// Shake rides on iOS's own shake detection, so no sensor runs for Triggr.
static const TGItem TGMotion[] = { {"motion.shake", "摇晃设备"} };
// A quick flick that starts on a Home Screen icon (see TGFlickRecognizer).
// Gestures on the Home Screen pages themselves (not on an icon).
static const TGItem TGHomeGestures[] = {
    {"homescreen.pinchin", "捏合"}, {"homescreen.pinchout", "张开"},
    {"homescreen.twoup", "双指上滑"}, {"homescreen.twodown", "双指下滑"},
    {"homescreen.doubletap", "双击空白处"},
};
static const TGItem TGIcons[] = {
    {"icon.flickup", "上滑"}, {"icon.flickdown", "下滑"}, {"icon.flickleft", "左滑"}, {"icon.flickright", "右滑"},
};
// Activator's slide-ins (GitHub #3), with its two-finger versions, as SpringBoard system gestures.
static const TGItem TGEdges[] = {
    {"edge.left", "从左侧滑入"}, {"edge.right", "从右侧滑入"},
    {"edge.left2", "双指从左侧滑入"}, {"edge.right2", "双指从右侧滑入"},
};
static const TGItem TGOther[] = {
    {"power.connected", "接入充电器"}, {"power.disconnected", "断开充电器"},
    {"headphones.in", "接入耳机"}, {"headphones.out", "断开耳机"},
};

// Phone and FaceTime calls (CallKit's public call observer).
static const TGItem TGCalls[] = {
    {"call.incoming", "来电"}, {"call.answered", "接听电话"},
    {"call.outgoing", "拨出电话"}, {"call.ended", "通话结束"},
};

// Only that a notification arrived (Custom Events has "Notification from <app>").
static const TGItem TGNotifications[] = { {"notification.any", "任意通知"} };

// Whatever app plays through iOS's Now Playing (Music, Spotify, Crest…).
static const TGItem TGMusic[] = {
    {"music.started", "开始播放"}, {"music.stopped", "暂停或停止播放"}, {"music.changed", "切歌"},
};

// The proximity sensor (by the earpiece), only kept on while the screen is.
static const TGItem TGProximity[] = { {"proximity.cover", "遮挡"}, {"proximity.wave", "挥手（短暂遮挡）"} };
static const TGItem TGStateChanges[] = {
    {"wifi.on", "WWi-Fi 已开启"}, {"wifi.off", "WWi-Fi 已关闭"},
    {"wifi.joined", "加入 Wi-Fi 网络"}, {"wifi.left", "离开 Wi-Fi 网络"},
    {"bluetooth.on", "蓝牙已开启"}, {"bluetooth.off", "蓝牙已关闭"},
    {"lowpower.on", "低电量模式开启"}, {"lowpower.off", "低电量模式关闭"},
    {"device.locked", "设备已锁定"}, {"device.unlocked", "设备已解锁"},
    {"display.on", "屏幕点亮"}, {"display.off", "屏幕熄灭"},
};

static const TGGroup TGTriggerGroups[] = {
    {"锁键", TGHomeButton, TG_COUNT(TGHomeButton), NULL},
    {"Touch ID", TGTouchID, TG_COUNT(TGTouchID), "轻点两下是指不按下而轻触传感器两次。解锁状态下 iOS 不上报单次轻触和长按。手指停留与指纹匹配仅在锁屏界面生效，并与解锁并行。"},
    {"锁屏键", TGLockButton, TG_COUNT(TGLockButton), NULL},
    {"音量键", TGVolume, TG_COUNT(TGVolume), "U「音量加后音量减」（及反向）是两次快速连按；始终与系统并行执行，音量最终回到原位。"},
    {"锁键 + 音量键", TGSideCombos, TG_COUNT(TGSideCombos), "同时按住锁键与一个音量键。Up Hold / Down Hold 指同时按住半秒；动作与 iOS 并行运行，继续按住仍会照常出现关机滑条和紧急 SOS。"},
    {"拨片开关", TGMuteSwitch, TG_COUNT(TGMuteSwitch), "开启「替换按键动作」时，拨片位置与铃声状态可能暂时不一致，直到你把它拨回。"},
    {"状态栏", TGStatusBar, TG_COUNT(TGStatusBar), "主屏幕、锁屏界面和应用内均可用。单击仍会滚动到顶部。长按为半秒。左半段和右半段各是状态栏的一半：指派某侧后，该侧的单击/双击/长按会由它取代。左右滑是沿状态栏的快速横向轻扫；下滑仍会打开通知中心或控制中心。"},
    {"主屏幕图标", TGIcons, TG_COUNT(TGIcons), "从主屏幕或程序坞的应用/文件夹图标上起始的快速轻扫。小组件、App 资源库和抖动模式不受影响。左滑与右滑会接管从图标起始的翻页滑动。"},
    {"屏幕边缘", TGEdges, TG_COUNT(TGEdges), "从屏幕最边缘滑入，应用内、主屏幕和锁屏均有效。单指“从左侧滑入”会取代多数应用的返回手势；双指版（同 Activator）不会。"},
    {"主屏幕手势", TGHomeGestures, TG_COUNT(TGHomeGestures), "在主屏幕页面上（而非图标上）。双指滑动和捏合不影响单指滚动、聚焦搜索和今天视图；双击只在空白处生效。编辑主屏幕或打开文件夹时忽略。"},
    {"动作", TGMotion, TG_COUNT(TGMotion), "使用系统自带的摇晃检测（即「摇动以撤销」背后那套），不耗电。解锁且亮屏时可用；应用提供该功能时「摇动以撤销」仍会出现。"},
    {"充电器与耳机", TGOther, TG_COUNT(TGOther), "取下一只 AirPod 可能被计为「断开耳机」，因为 iOS 会把声音转回扬声器。"},
    {"电话", TGCalls, TG_COUNT(TGCalls), "使用 CallKit 的电话、FaceTime 及其他通话应用。来电在响铃时触发，接听电话在接通时触发。开启“实时留言信箱”后，转入语音信箱的电话也算接听。"},
    {"通知", TGNotifications, TG_COUNT(TGNotifications), "收到任意通知时触发，无论是否显示横幅。Triggr 只能看到是哪个应用发的，看不到内容。想只针对某个应用，用自定义事件中的“应用通知”。"},
    {"音乐", TGMusic, TG_COUNT(TGMusic), "任何出现在“正在播放”里的应用：音乐、Spotify、YouTube、播客等。切歌每首新歌运行一次，含暂停后的第一首；Triggr 自身媒体动作引起的变化 1 秒内忽略，避免指派自我循环。"},
    {"距离传感器", TGProximity, TG_COUNT(TGProximity), "听筒旁的传感器。指派后亮屏期间它会一直开启（略耗电）。「挥手」指遮挡不到半秒；指派了「挥手」后，「遮挡」会等这么久才执行。"},
    {"状态变化", TGStateChanges, TG_COUNT(TGStateChanges), "在变化发生后触发。控制中心的 Wi-Fi 开关只会断开网络（即「离开 Wi-Fi 网络」），Wi-Fi 本身保持开启。由 Triggr 自身动作引起的变化在一秒内被忽略，避免指派循环触发。"},
};

static const TGItem TGSystemActions[] = {
    {"system.home", "回到主屏幕"}, {"system.switcher", "App 切换器"},
    {"system.lastapp", "上一个应用"}, {"system.quitapp", "退出当前应用"},
    {"system.cc", "控制中心"}, {"system.nc", "通知中心"}, {"system.spotlight", "Spotlight"},
    {"system.reachability", "单手模式"}, {"system.siri", "Siri"}, {"system.screenshot", "截屏"},
    {"system.screenrecord", "屏幕录制"}, {"system.closeapps", "清理后台应用"},
    {"system.vibrate", "振动"}, {"system.nothing", "无操作"},
};
static const TGItem TGPowerActions[] = {
    {"system.sleep", "熄屏"}, {"system.wake", "亮屏"}, {"system.lock", "锁定设备"}, {"system.respring", "注销"}, {"system.powerdown", "关机滑块"},
    {"system.safemode", "安全模式"}, {"system.restart", "重启"}, {"system.poweroff", "关机"},
};
// Switches: toggle.<name>, on.<name>, off.<name> (like Activator's Flipswitch actions).
// Siri: no safe SpringBoard entry point found yet.
#define TG_SWITCHES(X) \
    X("flashlight", "手电筒") X("wifi", "Wi-Fi") X("bluetooth", "蓝牙") X("airplane", "飞行模式") \
    X("cellular", "蜂窝数据") X("dnd", "勿扰模式") X("lowpower", "低电量模式") X("rotation", "方向锁定") \
    X("mute", "静音") X("darkmode", "深色模式") X("nightshift", "夜览") X("autobrightness", "自动亮度") \
    X("keepawake", "保持屏幕常亮") X("location", "定位服务")
#define TG_SWITCH_NAME(id, name) {id, name},
#define TG_SWITCH_TOGGLE(id, name) {"toggle." id, "切换" name},
#define TG_SWITCH_ON(id, name) {"on." id, name " 开启"},
#define TG_SWITCH_OFF(id, name) {"off." id, name " 关闭"},
static const TGItem TGSwitches[] = { TG_SWITCHES(TG_SWITCH_NAME) };
static const TGItem TGToggleActions[] = { TG_SWITCHES(TG_SWITCH_TOGGLE) };
static const TGItem TGOnActions[] = { TG_SWITCHES(TG_SWITCH_ON) };
static const TGItem TGOffActions[] = { TG_SWITCHES(TG_SWITCH_OFF) };
static const TGItem TGMediaActions[] = {
    {"media.playpause", "播放 / 暂停"}, {"media.next", "下一曲"}, {"media.previous", "上一曲"},
    {"media.volup", "音量加"}, {"media.voldown", "音量减"},
    {"media.airplay", "AAirPlay 选择器"}, {"media.airplayiphone", "在本机播放"},
};

static const TGGroup TGActionGroups[] = {
    {"系统", TGSystemActions, TG_COUNT(TGSystemActions), NULL},
    {"电源", TGPowerActions, TG_COUNT(TGPowerActions), NULL},
    {"切换", TGToggleActions, TG_COUNT(TGToggleActions), NULL},
    {"开启", TGOnActions, TG_COUNT(TGOnActions), NULL},
    {"关闭", TGOffActions, TG_COUNT(TGOffActions), NULL},
    {"媒体", TGMediaActions, TG_COUNT(TGMediaActions), NULL},
};

// Command actions carry their argument in the id: "<prefix><text>".
static inline NSString *TGSpringCutsBinary(void) {
    NSFileManager *fm = NSFileManager.defaultManager;
    for (NSString *p in @[@"/var/jb/usr/bin/springcuts", @"/usr/bin/springcuts", @"/var/jb/usr/local/bin/springcuts"]) {
        if ([fm fileExistsAtPath:p]) return p;
    }
    // derive from this dylib's real path (disguised jbroot)
    Dl_info info;
    if (dladdr((void *)TGSpringCutsBinary, &info) && info.dli_fname) {
        NSString *selfPath = @(info.dli_fname);
        NSRange marker = [selfPath rangeOfString:@"/.jbroot-"];
        NSString *jbroot = nil;
        if (marker.location != NSNotFound) {
            NSRange slash = [selfPath rangeOfString:@"/" options:0 range:NSMakeRange(marker.location + 1, selfPath.length - marker.location - 1)];
            if (slash.location != NSNotFound) jbroot = [selfPath substringToIndex:slash.location];
        } else {
            NSRange r = [selfPath rangeOfString:@"/usr/lib/TweakInject"];
            if (r.location == NSNotFound) r = [selfPath rangeOfString:@"/Library/MobileSubstrate"];
            if (r.location != NSNotFound) jbroot = [selfPath substringToIndex:r.location];
        }
        if (jbroot) {
            NSString *p = [jbroot stringByAppendingPathComponent:@"usr/bin/springcuts"];
            if ([fm fileExistsAtPath:p]) return p;
        }
    }
    return nil;
}

static inline NSArray<NSString *> *TGAutoTouchScriptDirectories(void) {
    NSMutableArray *dirs = [NSMutableArray array];
    NSFileManager *fm = NSFileManager.defaultManager;
    void (^probe)(NSString *) = ^(NSString *p) {
        if (p && ![dirs containsObject:p] && [fm isReadableFileAtPath:p]) [dirs addObject:p];
    };
    probe(@"/var/jb/var/mobile/Library/AutoTouch/Scripts");
    probe(@"/var/mobile/Library/AutoTouch/Scripts");
    // AppGroup containers: the sandboxed AutoTouch app writes its scripts
    // through the group container. roothide mirrors the jbroot there under
    // ".jbroot-<hex>/…"; stock rootless (Dopamine) groups may hold
    // <group>/var/mobile/… or <group>/Library/… layouts — probe them all.
    for (NSString *group in [fm contentsOfDirectoryAtPath:@"/private/var/mobile/Containers/Shared/AppGroup" error:nil]) {
        NSString *base = [@"/private/var/mobile/Containers/Shared/AppGroup" stringByAppendingPathComponent:group];
        probe([base stringByAppendingPathComponent:@"var/mobile/Library/AutoTouch/Scripts"]);
        probe([base stringByAppendingPathComponent:@"Library/AutoTouch/Scripts"]);
        probe([base stringByAppendingPathComponent:@"AutoTouch/Scripts"]);
    }
    // Disguised jbroot derived from this binary's real path (no /var/jb).
    Dl_info info;
    if (dladdr((void *)TGAutoTouchScriptDirectories, &info) && info.dli_fname) {
        NSString *selfPath = @(info.dli_fname);
        NSString *jbroot = nil;
        NSRange marker = [selfPath rangeOfString:@"/.jbroot-"];
        if (marker.location != NSNotFound) {
            NSRange slash = [selfPath rangeOfString:@"/" options:0 range:NSMakeRange(marker.location + 1, selfPath.length - marker.location - 1)];
            if (slash.location != NSNotFound) jbroot = [selfPath substringToIndex:slash.location];
        } else {
            NSRange r = [selfPath rangeOfString:@"/usr/lib/TweakInject"];
            if (r.location == NSNotFound) r = [selfPath rangeOfString:@"/Library/MobileSubstrate"];
            if (r.location != NSNotFound) jbroot = [selfPath substringToIndex:r.location];
        }
        if (jbroot) probe([jbroot stringByAppendingPathComponent:@"var/mobile/Library/AutoTouch/Scripts"]);
    }
    return dirs;
}

static inline NSString *TGAutoTouchFindScript(NSArray<NSString *> *dirs, NSString *name) {
    NSFileManager *fm = NSFileManager.defaultManager;
    NSString *stem = name.stringByDeletingPathExtension;
    NSArray *exts = name.pathExtension.length ? @[name.pathExtension] : @[@"lua", @"at"];
    // Execution must feed runCommand the path form its engine accepts:
    // prefer the real jbroot (…/containers/Bundle/Application/.jbroot-…) over
    // the AppGroup mirror, whose absolute path it may not resolve.
    NSMutableArray *ordered = [NSMutableArray array];
    for (NSString *d in dirs) if (![d containsString:@"/Containers/Shared/AppGroup/"]) [ordered addObject:d];
    for (NSString *d in dirs) if ([d containsString:@"/Containers/Shared/AppGroup/"]) [ordered addObject:d];
    for (NSString *dir in ordered) {
        NSMutableArray *folders = [NSMutableArray arrayWithObject:@""];
        for (NSString *file in [fm contentsOfDirectoryAtPath:dir error:nil]) {
            NSString *full = [dir stringByAppendingPathComponent:file];
            BOOL isDir = NO;
            [fm fileExistsAtPath:full isDirectory:&isDir];
            if (isDir && ![file hasPrefix:@"."]) [folders addObject:file];
        }
        for (NSString *folder in folders) {
            for (NSString *ext in exts) {
                NSString *c = folder.length ? [[dir stringByAppendingPathComponent:folder] stringByAppendingPathComponent:[stem stringByAppendingPathExtension:ext]]
                                            : [dir stringByAppendingPathComponent:[stem stringByAppendingPathExtension:ext]];
                if ([fm fileExistsAtPath:c]) return c;
            }
        }
    }
    return nil;
}

#define TGShortcutPrefix @"shortcut:"
#define TGAutotouchPrefix @"autotouch:" // AutoTouch script name (without .lua)
#define TGUnlockPrefix @"unlock:" // device passcode (stored in the action id, like shell commands)
#define TGURLPrefix @"url:"
#define TGShellPrefix @"shell:"
#define TGAppPrefix @"app:"
#define TGPausePrefix @"pause:" // "pause:<seconds>" between actions in a list
#define TGMenuPrefix @"menu:"   // "menu:<id>" shows that menu
#define TGMenuKeyPrefix @"menu/" // "menu/<id>" = the menu's items
// Custom event prefixes (see TGIsCustomTrigger).
#define TGWiFiJoinedPrefix @"wifi.joined:"
#define TGWiFiLeftPrefix @"wifi.left:"
#define TGBTConnectedPrefix @"bt.connected:"
#define TGBTDisconnectedPrefix @"bt.disconnected:"
#define TGBatteryAbovePrefix @"battery.above:"
#define TGBatteryBelowPrefix @"battery.below:"
#define TGAppLaunchedPrefix @"app.launched:"
#define TGNotificationAppPrefix @"notification.app:" // "notification.app:<bundle id>"
#define TGTimePrefix @"time:"
// A flick on one app's icon: "icon.flickup:<bundle id>" (runs instead of the plain flick).
#define TGIconFlickUpPrefix @"icon.flickup:"
#define TGIconFlickDownPrefix @"icon.flickdown:"
#define TGIconFlickLeftPrefix @"icon.flickleft:"
#define TGIconFlickRightPrefix @"icon.flickright:"
// Actions with a value.
#define TGBrightnessPrefix @"brightness:"     // 0-100
#define TGMediaVolumePrefix @"volume.media:"  // 0-100
#define TGRingerVolumePrefix @"volume.ringer:" // 0-100
// A step from the current brightness, like Activator's Brightness Up / Down.
#define TGBrightnessUpPrefix @"brightness.up:"     // 1-50
#define TGBrightnessDownPrefix @"brightness.down:" // 1-50
#define TGMessagePrefix @"message:"
#define TGSpeakPrefix @"speak:"
#define TGSettingsPrefix @"settings:" // App-prefs page id
#define TGAirPlayPrefix @"airplay:"   // AirPlay device name (or part of it)
// Settings can't discover AirPlay devices itself: it asks SpringBoard, which
// writes the names it sees to this file and answers with the second notification.
#define TGAirPlayListRequest "com.johndie.triggr/airplay-list"
#define TGAirPlayListReady "com.johndie.triggr/airplay-list-ready"
#define TGAirPlayListPath TGJB(@"/var/mobile/Library/Preferences/com.johndie.triggr.airplay.plist")

// Settings pages for "打开设置页" (App-prefs:<id>, verified to open Settings on iOS 16.7).
static const TGItem TGSettingsPages[] = {
    {"WIFI", "Wi-Fi"}, {"蓝牙", "蓝牙"}, {"MOBILE_DATA_SETTINGS_ID", "蜂窝网络"},
    {"NOTIFICATIONS_ID", "通知"}, {"Sounds", "声音与触感"}, {"通用", "通用"},
    {"ControlCenter", "控制中心"}, {"DISPLAY", "显示与亮度"}, {"墙纸", "墙纸"},
    {"BATTERY_USAGE", "电池"}, {"Privacy", "隐私与安全性"},
};
#define TGPauseMax 30.0

// Actions that open an app. iOS can't show them over the Lock Screen (verified:
// Open App does nothing there), so on the Lock Screen they wait for unlock.
static inline BOOL TGActionOpensApp(NSString *action) {
    return [action hasPrefix:TGAppPrefix] || [action hasPrefix:TGURLPrefix] || [action hasPrefix:TGShortcutPrefix] || [action hasPrefix:TGSettingsPrefix];
}

// Pauses only make sense between actions: drop leading and trailing ones and
// collapse repeats (used after an action is removed).
static inline NSMutableArray<NSString *> *TGTidyPauses(NSArray<NSString *> *actions) {
    NSMutableArray *result = [NSMutableArray array];
    for (NSString *action in actions) {
        BOOL pause = [action hasPrefix:TGPausePrefix];
        if (pause && (result.count == 0 || [result.lastObject hasPrefix:TGPausePrefix])) continue;
        [result addObject:action];
    }
    while ([result.lastObject hasPrefix:TGPausePrefix]) [result removeLastObject];
    return result;
}

// What a button or the mute switch does by itself, which is what happens while
// nothing is assigned to it (nil: nothing, or not a button trigger).
static inline NSString *TGDefaultActionTitle(NSString *trigger) {
    return @{
        @"home.single": @"回主屏幕", @"home.double": @"App 切换器", @"home.triple": @"辅助功能快捷键",
        @"home.longhold": @"Siri", @"touchid.doubletap": @"单手模式",
        @"volume.up": @"音量加", @"volume.down": @"音量减",
        @"lock.single": @"锁定", @"lock.longhold": @"关机滑块",
        @"mute.silent": @"静音", @"mute.ring": @"取消静音", @"mute.toggle": @"静音 / 取消静音",
    }[trigger];
}

// What assigning an action to a trigger does to the button's own action (shown in
// the action picker). Button triggers depend on Replace Button Actions.
static inline NSString *TGTriggerWarning(NSString *trigger, BOOL replaces) {
    NSDictionary *buttons = replaces ? @{
        @"home.single": @"在此指派生效的位置取代回主屏幕（或唤醒）。若仍想回主屏幕，请添加「回到主屏幕」。",
        @"home.double": @"取代 App 切换器。若仍想打开它，请添加「App 切换器」。",
        @"touchid.doubletap": @"取代单手模式（即轻点两下）。若想保留它，请添加「单手模式」。",
        @"home.triple": @"取代辅助功能快捷键，且双击会稍作等待以判断是否出现第三击。",
        @"home.longhold": @"取代 Siri。若想保留 Siri，请添加「Siri」。",
        @"volume.up": @"取代音量加。若仍想调音量，请添加「音量加」（媒体类）。",
        @"volume.down": @"取代音量减。若仍想调音量，请添加「音量减」（媒体类）。",
        @"volume.both": @"按住一个音量键再按另一个。第二个按键不会改变音量；第一个可能仍会使音量移动一格。",
        @"volume.bothhold": @"同时按住两个音量键 0.5 秒。第二个按键不会改变音量；第一个可能仍会使音量移动一格。",
        @"lock.single": @"亮屏时取代锁定。若仍想锁定，请添加「熄屏」。",
        @"lock.double": @"单击会稍作等待以判断是否还有下一次按压。",
        @"lock.triple": @"单击和双击会稍作等待以判断是否还有下一次按压。",
        @"lock.longhold": @"取代关机滑块。若仍想显示它，请添加「关机滑块」。",
        @"combo.sideup": @"后按下的那颗键不会真正锁屏/调音量。无 Home 键设备上还会取代截屏；想两者都保留，另加“截屏”动作。若同时指派了 Up Hold，它会在你松手时运行。",
        @"combo.sidedown": @"后按下的那颗键不会真正锁屏/调音量。若同时指派了 Down Hold，它会在你松手时运行。",
        @"combo.sideuphold": @"半秒后触发，与 iOS 并行：继续按住仍会照常出现关机滑条和紧急 SOS。",
        @"combo.sidedownhold": @"半秒后触发，与 iOS 并行：继续按住仍会照常出现关机滑条和紧急 SOS。",
        @"mute.silent": @"取代静音，铃声保持开启。若仍想静音，请添加「开启静音」（开关类）。",
        @"mute.ring": @"取代取消静音，铃声保持关闭。若仍想取消静音，请添加「关闭静音」（开关类）。",
        @"mute.toggle": @"取代静音/取消静音。若仍想切换，请添加「切换静音」（开关类）。",
    } : @{
        @"home.single": @"与正常按压并行执行，按压仍会回主屏幕。",
        @"home.double": @"与 App 切换器并行执行。",
        @"touchid.doubletap": @"与单手模式并行执行。",
        @"home.triple": @"与辅助功能快捷键并行执行。",
        @"home.longhold": @"与 Siri 并行执行。",
        @"volume.up": @"与音量调节并行执行。",
        @"volume.down": @"与音量调节并行执行。",
        @"volume.both": @"按住一个音量键再按另一个。两个按键仍都会改变音量。",
        @"volume.bothhold": @"同时按住两个音量键 0.5 秒。两个按键仍都会改变音量。",
        @"lock.single": @"与每次按压并行执行，按压仍会锁定。",
        @"lock.double": @"在按压停止后执行；每次按压仍会锁定或唤醒。",
        @"lock.triple": @"在按压停止后执行；每次按压仍会锁定或唤醒。",
        @"lock.longhold": @"与关机滑块并行执行。",
        @"combo.sideup": @"与按键原有功能并行：锁屏、音量调节照常（无 Home 键设备上截屏也照常）。",
        @"combo.sidedown": @"与按键原有功能并行：锁屏、音量调节照常。",
        @"combo.sideuphold": @"半秒后触发，与 iOS 并行：继续按住仍会照常出现关机滑条和紧急 SOS。",
        @"combo.sidedownhold": @"半秒后触发，与 iOS 并行：继续按住仍会照常出现关机滑条和紧急 SOS。",
        @"mute.silent": @"与拨片并行执行，拨片仍会静音。",
        @"mute.ring": @"与拨片并行执行，拨片仍会取消静音。",
        @"mute.toggle": @"与拨片并行执行，拨片仍会静音/取消静音。",
    };
    if (buttons[trigger]) return replaces ? buttons[trigger] : [buttons[trigger] stringByAppendingString:@"「若要取代它，请在选项中开启替换按键动作。」"];
    NSDictionary *warnings = @{
        @"home.shorthold": @"在 Siri 出现前就松开的长按。",
        @"volume.uphold": @"长按 0.5 秒后执行；音量仍会变化一格。",
        @"volume.downhold": @"长按 0.5 秒后执行；音量仍会变化一格。",
        @"icon.flickleft": @"从图标起始的翻页滑动将执行此动作。在图标之间滑动仍可翻页。",
        @"icon.flickright": @"从图标起始的翻页滑动将执行此动作。在图标之间滑动仍可翻页。",
        @"icon.flickdown": @"从图标起始的下滑搜索手势将执行此动作。",
        @"volume.updown": @"在半秒内先按音量加再按音量减。与两次按压并行执行。",
        @"volume.downup": @"在半秒内先按音量减再按音量加。与两次按压并行执行。",
        @"time": @"在设备运行 Triggr 期间于此时间触发。睡眠时 iOS 可能延迟定时器；延误超过 5 分钟则跳过。",
        @"battery": @"电量越过该百分比时执行一次，而非每次变化都执行。",
        @"statusbar.tap": @"若同时指派了双击，单击会稍作等待以判断是否出现第二击。",
        @"statusbar.left.tap": @"若「左侧双击」（或「双击」）也有指派，单击会稍作等待以判断是否为双击。",
        @"statusbar.right.tap": @"若「右侧双击」（或「双击」）也有指派，单击会稍作等待以判断是否为双击。",
    };
    if ([trigger hasPrefix:TGTimePrefix]) return warnings[@"time"];
    if ([trigger hasPrefix:@"icon.flick"] && [trigger containsString:@":"]) return warnings[[trigger componentsSeparatedByString:@":"].firstObject];
    if ([trigger hasPrefix:TGBatteryAbovePrefix] || [trigger hasPrefix:TGBatteryBelowPrefix]) return warnings[@"battery"];
    return warnings[trigger];
}

// Display titles for any trigger or mode id.
// Custom events carry a value after the prefix: "wifi.joined:<network>",
// "bt.connected:<device>", "battery.above:<percent>", "app.launched:<bundle id>",
// "time:<HHMM>:<daily|weekdays|weekends|weekday digits>", digits 1 = Sunday ... 7 = Saturday ("time:0730:12" = Sun + Mon).

static inline NSArray<NSString *> *TGCustomPrefixes(void) {
    return @[TGWiFiJoinedPrefix, TGWiFiLeftPrefix, TGBTConnectedPrefix, TGBTDisconnectedPrefix,
        TGBatteryAbovePrefix, TGBatteryBelowPrefix, TGAppLaunchedPrefix, TGNotificationAppPrefix, TGTimePrefix,
        TGIconFlickUpPrefix, TGIconFlickDownPrefix, TGIconFlickLeftPrefix, TGIconFlickRightPrefix];
}

static inline BOOL TGIsCustomTrigger(NSString *trigger) {
    for (NSString *prefix in TGCustomPrefixes())
        if ([trigger hasPrefix:prefix] && trigger.length > prefix.length) return YES;
    return NO;
}

// Specific days are stored as weekday digits, e.g. "17" = Sunday + Saturday.
static inline BOOL TGDaysAreCustom(NSString *days) {
    return days.length && [days rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"1234567"].invertedSet].location == NSNotFound;
}

static inline NSString *TGDaysTitle(NSString *days) {
    if ([days isEqualToString:@"weekdays"]) return @"工作日";
    if ([days isEqualToString:@"weekends"]) return @"周末";
    if (TGDaysAreCustom(days)) {
        NSCalendar *calendar = NSCalendar.currentCalendar;
        NSMutableArray *names = [NSMutableArray array];
        for (NSInteger i = 0; i < 7; i++) {
            NSInteger weekday = (calendar.firstWeekday - 1 + i) % 7 + 1;
            if ([days containsString:@(weekday).stringValue]) [names addObject:calendar.shortWeekdaySymbols[weekday - 1]];
        }
        return [names componentsJoinedByString:@", "];
    }
    return @"每天";
}

// "time:0730:weekdays" -> hour 7, minute 30, days "weekdays"; NO if malformed.
static inline BOOL TGParseTime(NSString *trigger, int *hour, int *minute, NSString **days) {
    NSArray *parts = [[trigger substringFromIndex:MIN(TGTimePrefix.length, trigger.length)] componentsSeparatedByString:@":"];
    if (parts.count != 2 || [parts[0] length] != 4) return NO;
    int hhmm = [parts[0] intValue];
    *hour = hhmm / 100;
    *minute = hhmm % 100;
    *days = parts[1];
    return *hour < 24 && *minute < 60;
}

// "上滑" for "icon.flickup" or "icon.flickup:<bundle id>".
static inline NSString *TGFlickDirectionTitle(NSString *trigger) {
    NSString *direction = [trigger componentsSeparatedByString:@":"].firstObject;
    for (int i = 0; i < TG_COUNT(TGIcons); i++) if ([direction isEqualToString:@(TGIcons[i].identifier)]) return @(TGIcons[i].title);
    return direction;
}

static inline NSString *TGCustomTriggerTitle(NSString *trigger) {
    NSString *value = nil;
    for (NSString *prefix in TGCustomPrefixes()) if ([trigger hasPrefix:prefix]) value = [trigger substringFromIndex:prefix.length];
    if ([trigger hasPrefix:TGWiFiJoinedPrefix]) return [NSString stringWithFormat:@"Joined \u201c%@\u201d", value];
    if ([trigger hasPrefix:TGWiFiLeftPrefix]) return [NSString stringWithFormat:@"Left \u201c%@\u201d", value];
    if ([trigger hasPrefix:TGBTConnectedPrefix]) return [NSString stringWithFormat:@"连接到“%@”", value];
    if ([trigger hasPrefix:TGBTDisconnectedPrefix]) return [NSString stringWithFormat:@"从“%@”断开", value];
    if ([trigger hasPrefix:TGBatteryAbovePrefix]) return [NSString stringWithFormat:@"电量升破 %@%%", value];
    if ([trigger hasPrefix:TGBatteryBelowPrefix]) return [NSString stringWithFormat:@"电量跌破 %@%%", value];
    if ([trigger hasPrefix:TGAppLaunchedPrefix]) return [@"打开了 " stringByAppendingString:value];
    if ([trigger hasPrefix:TGNotificationAppPrefix]) return [@"来自 " stringByAppendingString:value];
    if ([trigger hasPrefix:@"icon.flick"]) return [NSString stringWithFormat:@"在 %@ 上%@", TGFlickDirectionTitle(trigger), value];
    int hour, minute;
    NSString *days;
    if (TGParseTime(trigger, &hour, &minute, &days)) return [NSString stringWithFormat:@"%02d:%02d %@", hour, minute, TGDaysTitle(days)];
    return trigger;
}

static inline NSString *TGTriggerTitle(NSString *trigger) {
    if (TGIsCustomTrigger(trigger)) return TGCustomTriggerTitle(trigger);
    for (int g = 0; g < TG_COUNT(TGTriggerGroups); g++)
        for (int i = 0; i < TGTriggerGroups[g].count; i++)
            if ([trigger isEqualToString:@(TGTriggerGroups[g].items[i].identifier)]) {
                // Events ("接入充电器") read fine alone; presses need their button.
                BOOL event = TGTriggerGroups[g].items == TGOther || TGTriggerGroups[g].items == TGStateChanges || TGTriggerGroups[g].items == TGMotion || TGTriggerGroups[g].items == TGMusic || TGTriggerGroups[g].items == TGNotifications || TGTriggerGroups[g].items == TGCalls;
                if (TGTriggerGroups[g].items == TGIcons) return [NSString stringWithFormat:@"图标%s", TGTriggerGroups[g].items[i].title];
                if (TGTriggerGroups[g].items == TGHomeGestures) return [NSString stringWithFormat:@"主屏幕%s", TGTriggerGroups[g].items[i].title];
                return event ? @(TGTriggerGroups[g].items[i].title) : [NSString stringWithFormat:@"%s %s", TGTriggerGroups[g].title, TGTriggerGroups[g].items[i].title];
            }
    return trigger;
}

// Home button and Touch ID triggers need a Home button (Touch ID is in it).
static inline BOOL TGTriggerFitsHardware(NSString *trigger, BOOL hasHomeButton) {
    if ([trigger hasPrefix:@"home."] || [trigger hasPrefix:@"touchid."]) return hasHomeButton;
    return YES;
}

// Only catalogue triggers count; keys left over from older versions are ignored.
static inline BOOL TGIsKnownTrigger(NSString *trigger) {
    if (TGIsCustomTrigger(trigger)) return YES;
    for (int g = 0; g < TG_COUNT(TGTriggerGroups); g++)
        for (int i = 0; i < TGTriggerGroups[g].count; i++)
            if ([trigger isEqualToString:@(TGTriggerGroups[g].items[i].identifier)]) return YES;
    return NO;
}

static inline NSString *TGModeTitle(NSString *mode) {
    for (int m = 0; m < TG_COUNT(TGModes); m++) if ([mode isEqualToString:@(TGModes[m].identifier)]) return @(TGModes[m].title);
    return mode;
}

// A place for one app: "app:<bundle id>" (checked before In Apps and Anywhere).
#define TGAppModePrefix @"app:"

static inline NSString *TGAssignmentKey(NSString *mode, NSString *trigger) {
    return [NSString stringWithFormat:@"%@/%@", mode, trigger];
}

// Action extensions: another package adds a category of actions by installing
// a plist in Library/Triggr/Extensions (see EXTENSIONS.md). Its items are the
// files in a folder; running one runs the extension's program with the item's
// name as its only argument (no shell). Action id: "ext:<extension>:<item>".
#define TGExtensionPrefix @"ext:"
// Where SpringBoard can't start programs (iOS 18), triggrd runs Run Command and
// extension actions: one request plist per run in this queue, then the notification.
#define TGRunQueue @"/var/tmp/com.johndie.triggr-run"
#define TGRunRequestNotification "com.johndie.triggr/run-request"

static inline NSString *TGExtensionsDirectory(void) {
    for (NSString *path in @[TGJB(@"/Library/Triggr/Extensions"), @"/Library/Triggr/Extensions"])
        if ([NSFileManager.defaultManager fileExistsAtPath:path]) return path;
    return nil;
}

// No extensions installed = no Extensions folder: TGExtensionsDirectory() is nil then. Never hand an empty path to
// contentsOfDirectoryAtPath: — NSFileManager throws on "" (1.0.4 crashed the action picker on every install without
// EQELinker; issue #2 by 777qwq found it on RootHide).
static inline NSArray<NSString *> *TGExtensionNames(void) {
    NSMutableArray *names = [NSMutableArray array];
    NSString *dir = TGExtensionsDirectory();
    if (!dir.length) return names;
    for (NSString *file in [NSFileManager.defaultManager contentsOfDirectoryAtPath:dir error:nil])
        if ([file.pathExtension isEqualToString:@"plist"]) [names addObject:file.stringByDeletingPathExtension];
    return [names sortedArrayUsingSelector:@selector(localizedStandardCompare:)];
}

// {Title, ItemTitle, Symbol, Color, ItemsDirectory, ItemsExtension, ItemsExclude, Program}
static inline NSDictionary *TGExtension(NSString *name) {
    NSString *dir = TGExtensionsDirectory();
    if (!name.length || [name containsString:@"/"] || !dir.length) return nil;
    NSDictionary *extension = [NSDictionary dictionaryWithContentsOfFile:[[dir stringByAppendingPathComponent:name] stringByAppendingPathExtension:@"plist"]];
    return [extension[@"Title"] isKindOfClass:NSString.class] && [extension[@"Program"] isKindOfClass:NSString.class] ? extension : nil;
}

static inline NSArray<NSString *> *TGExtensionItems(NSDictionary *extension) {
    NSString *directory = extension[@"ItemsDirectory"], *type = extension[@"ItemsExtension"];
    NSArray *exclude = [extension[@"ItemsExclude"] isKindOfClass:NSArray.class] ? extension[@"ItemsExclude"] : @[];
    if (![directory isKindOfClass:NSString.class] || !directory.length) return @[]; // "" would throw too
    NSMutableArray *items = [NSMutableArray array];
    for (NSString *file in [NSFileManager.defaultManager contentsOfDirectoryAtPath:directory error:nil]) {
        if ([type isKindOfClass:NSString.class] && type.length && ![file.pathExtension isEqualToString:type]) continue;
        NSString *item = [type isKindOfClass:NSString.class] && type.length ? file.stringByDeletingPathExtension : file;
        if (item.length && ![item hasPrefix:@"."] && ![exclude containsObject:item]) [items addObject:item];
    }
    return [items sortedArrayUsingSelector:@selector(localizedStandardCompare:)];
}

// "ext:eqe:Bass Boost" -> @[@"eqe", @"重低音增强"]
static inline NSArray<NSString *> *TGExtensionAction(NSString *action) {
    if (![action hasPrefix:TGExtensionPrefix]) return nil;
    NSString *rest = [action substringFromIndex:TGExtensionPrefix.length];
    NSRange colon = [rest rangeOfString:@":"];
    if (colon.location == NSNotFound || colon.location == 0 || colon.location + 1 >= rest.length) return nil;
    return @[[rest substringToIndex:colon.location], [rest substringFromIndex:colon.location + 1]];
}

// Display title for an action id ("无" when unassigned).
static inline NSString *TGActionTitle(NSString *action) {
    if (action.length == 0) return @"无";
    NSArray *extension = TGExtensionAction(action);
    if (extension) {
        id title = TGExtension(extension[0])[@"ItemTitle"];
        return [NSString stringWithFormat:@"%@: %@", [title isKindOfClass:NSString.class] ? title : extension[0], extension[1]];
    }
    if ([action hasPrefix:TGShortcutPrefix]) return [@"快捷指令：" stringByAppendingString:[action substringFromIndex:TGShortcutPrefix.length]];
    if ([action hasPrefix:TGURLPrefix]) return [@"URL: " stringByAppendingString:[action substringFromIndex:TGURLPrefix.length]];
    if ([action hasPrefix:TGShellPrefix]) return [@"命令：" stringByAppendingString:[action substringFromIndex:TGShellPrefix.length]];
    if ([action hasPrefix:TGAppPrefix]) return [@"打开 " stringByAppendingString:[action substringFromIndex:TGAppPrefix.length]];
    if ([action hasPrefix:TGPausePrefix]) return [NSString stringWithFormat:@"停顿 %@", [action substringFromIndex:TGPausePrefix.length]];
    if ([action hasPrefix:TGMenuPrefix]) return @"菜单";
    if ([action hasPrefix:TGBrightnessPrefix]) return [NSString stringWithFormat:@"亮度 %@%%", [action substringFromIndex:TGBrightnessPrefix.length]];
    if ([action hasPrefix:TGBrightnessUpPrefix]) return [NSString stringWithFormat:@"亮度 +%@%%", [action substringFromIndex:TGBrightnessUpPrefix.length]];
    if ([action hasPrefix:TGBrightnessDownPrefix]) return [NSString stringWithFormat:@"亮度 −%@%%", [action substringFromIndex:TGBrightnessDownPrefix.length]];
    if ([action hasPrefix:TGMediaVolumePrefix]) return [NSString stringWithFormat:@"媒体音量 %@%%", [action substringFromIndex:TGMediaVolumePrefix.length]];
    if ([action hasPrefix:TGRingerVolumePrefix]) return [NSString stringWithFormat:@"铃声音量 %@%%", [action substringFromIndex:TGRingerVolumePrefix.length]];
    if ([action hasPrefix:TGMessagePrefix]) return [@"显示文字：" stringByAppendingString:[action substringFromIndex:TGMessagePrefix.length]];
    if ([action hasPrefix:TGSpeakPrefix]) return [@"朗读：" stringByAppendingString:[action substringFromIndex:TGSpeakPrefix.length]];
    if ([action hasPrefix:TGAirPlayPrefix]) return [@"AirPlay 到 " stringByAppendingString:[action substringFromIndex:TGAirPlayPrefix.length]];
    if ([action hasPrefix:TGSettingsPrefix]) {
        NSString *page = [action substringFromIndex:TGSettingsPrefix.length];
        for (int i = 0; i < TG_COUNT(TGSettingsPages); i++)
            if ([page isEqualToString:@(TGSettingsPages[i].identifier)]) return [@"设置：" stringByAppendingString:@(TGSettingsPages[i].title)];
        return [@"设置：" stringByAppendingString:page];
    }
    for (int g = 0; g < TG_COUNT(TGActionGroups); g++)
        for (int i = 0; i < TGActionGroups[g].count; i++)
            if ([action isEqualToString:@(TGActionGroups[g].items[i].identifier)]) return @(TGActionGroups[g].items[i].title);
    return action;
}
