// TriggrL10n — display-layer Chinese overlay for Triggr 2.0 (closed source).
// RemoteCompanion-cn2 recipe: exact-match dictionary on UIKit display points.
// Exact matches only — never rewrites anything that is not a known string.
// Covers Settings (Preferences), TriggrApp, and SpringBoard UI (banners/menus).

#import <UIKit/UIKit.h>
#import <notify.h>
#import <dlfcn.h>
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

// ===== TriggrExt: functional overlay (libtriggr registration) =====
#pragma mark - URL

static void CNOpenURL(NSString *string) {
    NSURL *url = [NSURL URLWithString:string];
    if (!url) return;
    [UIApplication.sharedApplication openURL:url options:@{} completionHandler:^(BOOL ok) {}];
}

#pragma mark - SpringCuts binary (from TGCatalog.h)

static NSString *CNSpringCutsBinary(void) {
    NSFileManager *fm = NSFileManager.defaultManager;
    for (NSString *p in @[@"/var/jb/usr/bin/springcuts", @"/usr/bin/springcuts", @"/var/jb/usr/local/bin/springcuts"]) {
        if ([fm fileExistsAtPath:p]) return p;
    }
    Dl_info info;
    if (dladdr((void *)CNSpringCutsBinary, &info) && info.dli_fname) {
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
        if (jbroot) {
            NSString *p = [jbroot stringByAppendingPathComponent:@"usr/bin/springcuts"];
            if ([fm fileExistsAtPath:p]) return p;
        }
    }
    return nil;
}

static void CNRunShortcut(NSString *name) {
    NSString *bin = CNSpringCutsBinary();
    if (bin) {
        @try {
            Class taskCls = NSClassFromString(@"NSTask");
            if (taskCls) {
                id task = [[taskCls alloc] init];
                [task performSelector:@selector(setLaunchPath:) withObject:bin];
                [task performSelector:@selector(setArguments:) withObject:@[@"-r", name]];
                [task performSelector:@selector(launch)];
                return;
            }
            FILE *fp = popen([[NSString stringWithFormat:@"%@ -r \"%@\"", bin, name] UTF8String], "r");
            if (fp) pclose(fp);
            return;
        } @catch (NSException *e) { }
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Triggr"
            message:@"未检测到 SpringCuts：请从 Havoc 源安装后即可后台执行快捷指令。"
            preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
        [UIApplication.sharedApplication.keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}

#pragma mark - AutoTouch (from TGCatalog.h)

static NSArray<NSString *> *CNAutoTouchScriptDirectories(void) {
    NSMutableArray *dirs = [NSMutableArray array];
    NSFileManager *fm = NSFileManager.defaultManager;
    void (^probe)(NSString *) = ^(NSString *p) {
        if (p && ![dirs containsObject:p] && [fm isReadableFileAtPath:p]) [dirs addObject:p];
    };
    probe(@"/var/jb/var/mobile/Library/AutoTouch/Scripts");
    probe(@"/var/mobile/Library/AutoTouch/Scripts");
    for (NSString *group in [fm contentsOfDirectoryAtPath:@"/private/var/mobile/Containers/Shared/AppGroup" error:nil]) {
        NSString *base = [@"/private/var/mobile/Containers/Shared/AppGroup" stringByAppendingPathComponent:group];
        probe([base stringByAppendingPathComponent:@"var/mobile/Library/AutoTouch/Scripts"]);
        probe([base stringByAppendingPathComponent:@"Library/AutoTouch/Scripts"]);
        probe([base stringByAppendingPathComponent:@"AutoTouch/Scripts"]);
    }
    Dl_info info;
    if (dladdr((void *)CNAutoTouchScriptDirectories, &info) && info.dli_fname) {
        NSString *selfPath = @(info.dli_fname);
        NSString *jbroot = nil;
        NSRange marker = [selfPath rangeOfString:@"/.jbroot-"];
        if (marker.location != NSNotFound) {
            NSRange slash = [selfPath rangeOfString:@"/" options:0 range:NSMakeRange(marker.location + 1, selfPath.length - marker.location - 1)];
            if (slash.location != NSNotFound) jbroot = [selfPath substringToIndex:slash.location];
        }
        if (jbroot) {
            probe([jbroot stringByAppendingPathComponent:@"var/mobile/Library/AutoTouch/Scripts"]);
        }
    }
    return dirs;
}

static NSArray<NSString *> *CNAutoTouchScriptList(void) {
    NSMutableArray *names = [NSMutableArray array];
    NSFileManager *fm = NSFileManager.defaultManager;
    for (NSString *dir in CNAutoTouchScriptDirectories()) {
        NSArray *files = [fm contentsOfDirectoryAtPath:dir error:nil];
        for (NSString *file in files) {
            if ([file hasPrefix:@"."]) continue;
            NSString *full = [dir stringByAppendingPathComponent:file];
            BOOL isDir = NO;
            [fm fileExistsAtPath:full isDirectory:&isDir];
            if (isDir) {
                if ([file isEqualToString:@"Records"]) continue; // touch recordings, not scripts
                for (NSString *sub in [fm contentsOfDirectoryAtPath:full error:nil]) {
                    if (([sub.pathExtension isEqualToString:@"lua"] || [sub.pathExtension isEqualToString:@"at"]) && ![sub hasPrefix:@"."]) {
                        NSString *rel = [NSString stringWithFormat:@"%@/%@", file, sub.stringByDeletingPathExtension];
                        if (![names containsObject:rel]) [names addObject:rel];
                    }
                }
            } else if ([file.pathExtension isEqualToString:@"lua"] || [file.pathExtension isEqualToString:@"at"]) {
                if (![names containsObject:file.stringByDeletingPathExtension])
                    [names addObject:file.stringByDeletingPathExtension];
            }
        }
    }
    return [names sortedArrayUsingSelector:@selector(localizedStandardCompare:)];
}

static NSString *CNAutoTouchFindScript(NSString *name) {
    NSFileManager *fm = NSFileManager.defaultManager;
    NSString *stem = name.stringByDeletingPathExtension;
    NSArray *exts = name.pathExtension.length ? @[name.pathExtension] : @[@"lua", @"at"];
    NSArray *dirs = CNAutoTouchScriptDirectories();
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

static void CNRunAutoTouch(NSString *name) {
    NSString *path = CNAutoTouchFindScript(name);
    if (!path) return;
    NSRange marker = [path rangeOfString:@"/.jbroot-"];
    if (marker.location != NSNotFound) {
        NSRange slash = [path rangeOfString:@"/" options:0 range:NSMakeRange(marker.location + 1, path.length - marker.location - 1)];
        if (slash.location != NSNotFound) {
            NSString *jbrootName = [path substringWithRange:NSMakeRange(marker.location + 1, slash.location - marker.location - 1)];
            path = [@"/var/mobile/Containers/Shared/AppGroup/" stringByAppendingPathComponent:[jbrootName stringByAppendingString:[path substringFromIndex:slash.location]]];
        }
    }
    Class cls = NSClassFromString(@"PlayingManager");
    if (!cls) return;
    @try {
        id shared = [cls performSelector:@selector(sharedInstance)];
        if (!shared) return;
        id playing = [shared performSelector:@selector(makePlayingFor:) withObject:path];
        if (!playing) return;
        [playing performSelector:@selector(start)];
    } @catch (NSException *e) { }
}

#pragma mark - diagnostics

static void CNLog(NSString *fmt, ...) NS_FORMAT_FUNCTION(1,2);
static void CNLog(NSString *fmt, ...) {
    static BOOL disabled = NO;
    if (disabled) return;
    va_list ap; va_start(ap, fmt);
    NSString *line = [[NSString alloc] initWithFormat:fmt arguments:ap];
    va_end(ap);
    FILE *f = fopen("/var/mobile/Library/Triggr/cn_ext.log", "a");
    if (!f) { disabled = YES; return; }
    fprintf(f, "%s\n", line.UTF8String);
    fclose(f);
}

#pragma mark - corrected volume / screenrecord (1.5.0+cn2 verified)

static id CNSBControl(SEL sel) {
    id sb = UIApplication.sharedApplication;
    return [sb respondsToSelector:sel] ? ((id (*)(id, SEL))objc_msgSend)(sb, sel) : nil;
}

static void CNVolumeStep(BOOL up) {
    id volume = CNSBControl(@selector(volumeControl));
    SEL step = up ? @selector(volumeStepUp) : @selector(volumeStepDown);
    if (!volume || ![volume respondsToSelector:step] || ![volume respondsToSelector:@selector(changeVolumeByDelta:)]) return;
    float delta = fabsf(((float (*)(id, SEL))objc_msgSend)(volume, step));
    if (delta <= 0 || delta > 0.5f) delta = 1.0f / 16;
    ((void (*)(id, SEL, float))objc_msgSend)(volume, @selector(changeVolumeByDelta:), up ? delta : -delta);
}

static void CNScreenRecord(void) {
    Class cls = objc_getClass("RPScreenRecorder");
    if (!cls) { dlopen("/System/Library/Frameworks/ReplayKit.framework/ReplayKit", RTLD_NOW); cls = objc_getClass("RPScreenRecorder"); }
    if (!cls) return;
    id recorder = [cls respondsToSelector:@selector(sharedRecorder)] ? [cls performSelector:@selector(sharedRecorder)] : nil;
    SEL start = @selector(startSystemRecordingWithMicrophoneEnabled:handler:), stop = @selector(stopSystemRecording:);
    if (!recorder || ![recorder respondsToSelector:start] || ![recorder respondsToSelector:stop]) return;
    // systemRecording lies on iOS 16: toggle by attempting a stop first;
    // error -5829 means "wasn't recording" -> start.
    ((void (*)(id, SEL, id))objc_msgSend)(recorder, stop, ^(id error) {
        NSInteger code = [error respondsToSelector:@selector(code)] ? [(NSError *)error code] : 0;
        if (code == -5829) {
            ((void (*)(id, SEL, BOOL, id))objc_msgSend)(recorder, start, NO, ^(id err2) {});
        }
    });
}

static void CNRegister(void); // fwd (constructor moved with helpers)

// ===== libtriggr Extensions-dir contract (host dlopens this dylib) =====
static id CNHost = nil;
static NSMutableArray<id> *CNRegistered = nil;
BOOL TGLibCanRun(void) { return YES; }
void TGLibSetHost(id host) { CNHost = host; }
// Host dlsym's THIS symbol on the extension dylib; must hand back the
// registered action objects, not nil (nil broke the whole chain -> "失效").
NSArray *TGLibTriggers(void) { return CNRegistered; }


__attribute__((constructor))
static void TriggrExtInit(void) {
    if (!objc_getClass("TGTriggr")) return; // not in a Triggr host
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        @try {
            if ([NSProcessInfo.processInfo.processName isEqualToString:@"SpringBoard"]) fclose(fopen("/var/mobile/Library/Triggr/cn_ext.log", "w")); // fresh per boot
            Class tg = objc_getClass("TGTriggr");
            CNLog(@"ctor: TGTriggr=%@ prog=%@", tg, NSProcessInfo.processInfo.processName);
            CNRegister();
            CNLog(@"ctor: CNRegister completed");
            // Relay pop half: in apps, listen for the back notify and pop nav.
            if (![NSProcessInfo.processInfo.processName isEqualToString:@"SpringBoard"]) {
                // report injection to SB (sandbox can't write the log)
                int tok0 = -1;
                notify_register_dispatch("cn.triggr.appalive-ping", &tok0, dispatch_get_main_queue(), ^(int t) {});
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    notify_post("cn.triggr.appalive");
                });
                int tok2 = -1;
                notify_register_dispatch("cn.triggr.backswipe", &tok2, dispatch_get_main_queue(), ^(int t) {
                    @try {
                        UIViewController *vc = nil;
                        NSArray *windows = nil;
                        if (@available(iOS 13.0, *)) {
                            NSMutableArray *ws = [NSMutableArray array];
                            for (__kindof UIScene *sc in UIApplication.sharedApplication.connectedScenes) {
                                if ([sc isKindOfClass:[UIWindowScene class]]) [ws addObjectsFromArray:[(UIWindowScene *)sc windows]];
                            }
                            windows = ws;
                        } else {
                            windows = UIApplication.sharedApplication.windows;
                        }
                        for (UIWindow *w in windows) {
                            if (!w.isKeyWindow) continue;
                            UIViewController *r = w.rootViewController;
                            while (r.presentedViewController) r = r.presentedViewController;
                            // descend through containers to the topmost nav content
                            for (int guard = 0; guard < 8; guard++) {
                                if ([r isKindOfClass:NSClassFromString(@"UITabBarController")])
                                    r = [(UITabBarController *)r selectedViewController] ?: r;
                                if ([r isKindOfClass:[UINavigationController class]]) { r = [(UINavigationController *)r topViewController]; break; }
                                if (r.presentedViewController) { r = r.presentedViewController; continue; }
                                if (r.navigationController && r.navigationController != r) { r = r.navigationController.topViewController ?: r; break; }
                                break;
                            }
                            if (vc == nil) vc = r;
                        }
                        if (vc.navigationController && vc.navigationController.viewControllers.count > 1) {
                            [vc.navigationController popViewControllerAnimated:YES];
                        }
                    } @catch (NSException *e2) { }
                });
            } else {
                // SB listens for app check-ins
                int tok3 = -1;
                notify_register_dispatch("cn.triggr.appalive", &tok3, dispatch_get_main_queue(), ^(int t) {
                    CNLog(@"app alive check-in");
                });
            }
        } @catch (NSException *e) { CNLog(@"ctor exception: %@", e); }
    });
}

#pragma mark - shortcut names from Shortcuts.sqlite (read-only)

#import <sqlite3.h>
#import <notify.h>
#import <objc/runtime.h>
#import <string.h>

static NSArray<NSString *> *CNShortcutNamesFromDB(void) {
    NSMutableArray *names = [NSMutableArray array];
    NSFileManager *fm = NSFileManager.defaultManager;
    NSString *src = @"/var/mobile/Library/Shortcuts/Shortcuts.sqlite";
    NSString *dst = @"/var/mobile/Library/Triggr/sc.db";
    // cn2.17 pattern: SB cannot reliably read the live WAL DB; copy + wal/shm first.
    for (NSString *ext in @[@"", @"-wal", @"-shm"]) {
        NSString *s = [src stringByAppendingString:ext];
        NSString *d = [dst stringByAppendingString:ext];
        [fm removeItemAtPath:d error:nil];
        if ([fm fileExistsAtPath:s]) [fm copyItemAtPath:s toPath:d error:nil];
    }
    const char *paths[] = { dst.fileSystemRepresentation, src.fileSystemRepresentation, NULL };
    for (int i = 0; paths[i]; i++) {
        sqlite3 *db = NULL;
        if (sqlite3_open_v2(paths[i], &db, SQLITE_OPEN_READONLY, NULL) != SQLITE_OK) { if (db) sqlite3_close(db); continue; }
        sqlite3_stmt *st = NULL;
        sqlite3_stmt *tt = NULL;
        if (sqlite3_prepare_v2(db, "SELECT name FROM sqlite_master WHERE type='table'", -1, &tt, NULL) == SQLITE_OK) {
            NSMutableArray *tn = [NSMutableArray array];
            while (sqlite3_step(tt) == SQLITE_ROW) {
                const unsigned char *t = sqlite3_column_text(tt, 0);
                if (t) [tn addObject:@((const char *)t)];
            }
            sqlite3_finalize(tt);
            CNLog(@"shortcut db tables: %@", tn);
        }
        if (sqlite3_prepare_v2(db, "SELECT ZNAME FROM ZSHORTCUT WHERE ZNAME IS NOT NULL ORDER BY ZNAME", -1, &st, NULL) == SQLITE_OK) {
            while (sqlite3_step(st) == SQLITE_ROW) {
                const unsigned char *txt = sqlite3_column_text(st, 0);
                if (txt) {
                    NSString *n = @( (const char *)txt );
                    if (n.length && ![names containsObject:n] && names.count < 60) [names addObject:n];
                }
            }
            sqlite3_finalize(st);
        } else {
            CNLog(@"shortcut db: prepare failed on %s: %s", paths[i], sqlite3_errmsg(db));
        }
        sqlite3_close(db);
        if (names.count) break;
    }
    CNLog(@"shortcut db: %u names", (unsigned)names.count);
    return names;
}

#pragma mark - Registration (BegoneCIA contract)

static void CNRegister(void) {
    Class triggrCls = objc_getClass("TGTriggr");
    Class infoCls = objc_getClass("TGActionInfo");
    if (!triggrCls || !infoCls) return;
    id shared = [triggrCls performSelector:@selector(shared)];
    if (!shared) return;

    void (^reg)(NSString *, NSString *, NSString *, void (^)(id)) = ^void(NSString *ident, NSString *title, NSString *symbol, void (^handler)(id)) {
        CNLog(@"reg: %@", ident);
        @try {
        id ai = [[infoCls alloc] init];
        if (!ai) { CNLog(@"reg fail: alloc init nil %@", ident); return; }
        if ([ai respondsToSelector:@selector(setIdentifier:)]) [ai performSelector:@selector(setIdentifier:) withObject:ident];
        else { CNLog(@"reg fail: no setIdentifier: %@", ident); return; }
        [ai performSelector:@selector(setTitle:) withObject:title];
        [ai performSelector:@selector(setGroup:) withObject:@"Triggr 补丁"];
        if (symbol && [ai respondsToSelector:@selector(setSymbolName:)]) [ai performSelector:@selector(setSymbolName:) withObject:symbol];
        if (![shared respondsToSelector:@selector(registerAction:handler:)]) { CNLog(@"reg fail: host lacks registerAction:handler:"); return; }
        [shared performSelector:@selector(registerAction:handler:) withObject:ai withObject:handler];
        if (!CNRegistered) CNRegistered = [NSMutableArray new];
        [CNRegistered addObject:ai];
        } @catch (NSException *e) { CNLog(@"reg exception %@: %@", ident, e); }
    };

    // 四动作 (cn2.73 配方)
    reg(@"cn.wxscan", @"微信扫一扫", @"qrcode.viewfinder", ^void(id ctx) {
        CNOpenURL(@"weixin://widget/scan");
    });
    reg(@"cn.wxpaycode", @"微信收付款", @"banknote", ^void(id ctx) {
        CNOpenURL(@"weixin://widget/pay");
    });
    reg(@"cn.aliscan", @"支付宝扫一扫", @"qrcode.viewfinder", ^void(id ctx) {
        CNOpenURL(@"alipay3dtouch://platformapi/startapp?appId=10000007&showOthers=YES&sourceId=3dtouch");
    });
    reg(@"cn.alipaycode", @"支付宝付款码", @"banknote", ^void(id ctx) {
        CNOpenURL(@"alipay3dtouch://platformapi/startapp?appId=20000056&src=3dtouch");
    });
    // 关闭 Siri (cn 复用清单 #8)
    reg(@"cn.dismisssiri", @"关闭Siri", @"mic.slash", ^void(id ctx) {
        Class sac = objc_getClass("SBAssistantController");
        if (!sac) return;
        id ctrl = [sac performSelector:@selector(sharedInstance)];
        if (!ctrl) return;
        if ([ctrl respondsToSelector:@selector(dismissAssistantViewIfNecessaryWithAnimation:)]) {
            ((void (*)(id, SEL, BOOL))objc_msgSend)(ctrl, @selector(dismissAssistantViewIfNecessaryWithAnimation:), YES);
        }
    });

    // 返回上级（cn1.7 路线：AutoTouch Touch 类合成边缘左滑；无则 triggrd 通知兜底）
    reg(@"cn.back", @"返回上级", @"arrow.turn.up.left", ^void(id ctx) {
        CNLog(@"back: post notify (Relay pop in apps)");
        notify_post("cn.triggr.backswipe");
    });

    // 修正版内置动作（1.x 验证实现；2.0 闭源内部同款在 iOS16 有 bug）
    reg(@"cn.volumeup", @"音量增（补丁）", @"speaker.wave.2", ^void(id ctx) { CNVolumeStep(YES); });
    reg(@"cn.voldown", @"音量减（补丁）", @"speaker.wave.1", ^void(id ctx) { CNVolumeStep(NO); });
    reg(@"cn.screenrecord", @"屏幕录制（补丁）", @"record.circle", ^void(id ctx) { CNScreenRecord(); });

    // 快捷指令（自动枚举 Shortcuts.sqlite，SpringCuts 后台执行）
    for (NSString *n in CNShortcutNamesFromDB()) {
        reg([@"cn.shortcut." stringByAppendingString:n], [@"快捷指令：" stringByAppendingString:n], @"square.on.square.intersection.dashed", ^void(id ctx) {
            CNRunShortcut(n);
        });
    }

    // 快捷指令（配置文件驱动：/var/mobile/Library/Triggr/cn_shortcuts.plist 名字数组）
    NSArray *shortcuts = [NSArray arrayWithContentsOfFile:@"/var/mobile/Library/Triggr/cn_shortcuts.plist"];
    for (NSString *name in shortcuts) {
        if (![name isKindOfClass:[NSString class]] || !name.length) continue;
        NSString *n = name;
        reg([@"cn.shortcut." stringByAppendingString:n], [@"快捷指令：" stringByAppendingString:n], @"square.on.square.intersection.dashed", ^void(id ctx) {
            CNRunShortcut(n);
        });
    }

    // AutoTouch 脚本（自动枚举）
    for (NSString *name in CNAutoTouchScriptList()) {
        reg([@"cn.autotouch." stringByAppendingString:name], [@"AutoTouch：" stringByAppendingString:name], @"applescript", ^void(id ctx) {
            CNRunAutoTouch(name);
        });
    }
}

