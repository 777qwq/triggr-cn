// TriggrExt — functional overlay for Triggr 2.0 via libtriggr extension API.
// Registers the cn2.x action set as third-party actions (BegoneCIA contract):
//   四动作 URL / 关闭Siri / 快捷指令(SpringCuts 后台) / AutoTouch 脚本.
// Runs in SpringBoard only; libtriggr classes come from Triggr.dylib's link.
// Helpers ported from 1.5.0+cn2 (TGCatalog.h, verified implementations).

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import <dlfcn.h>

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

#pragma mark - Registration (BegoneCIA contract)

static void CNRegister(void) {
    Class triggrCls = objc_getClass("TGTriggr");
    Class infoCls = objc_getClass("TGActionInfo");
    if (!triggrCls || !infoCls) return;
    id shared = [triggrCls performSelector:@selector(shared)];
    if (!shared) return;

    void (^reg)(NSString *, NSString *, NSString *, void (^)(id)) = ^(NSString *ident, NSString *title, NSString *symbol, void (^handler)(id)) {
        id ai = [[infoCls alloc] performSelector:@selector(initWithIdentifier:) withObject:ident];
        if (!ai) return;
        [ai performSelector:@selector(setTitle:) withObject:title];
        [ai performSelector:@selector(setGroup:) withObject:@"Triggr 补丁"];
        if (symbol) [ai performSelector:@selector(setSymbolName:) withObject:symbol];
        [shared performSelector:@selector(registerAction:handler:) withObject:ai withObject:handler];
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

__attribute__((constructor))
static void TriggrExtInit(void) {
    if (!objc_getClass("TGTriggr")) return; // not in a Triggr host
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        @try { CNRegister(); } @catch (NSException *e) { }
    });
}
