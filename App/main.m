// Triggr's Home Screen app: the same pages as Settings → Triggr, loaded from the
// settings bundle, so both always show and change the same assignments.
#import <UIKit/UIKit.h>
#import <dlfcn.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import "../Shared/TGPaths.h"

@interface TGAppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow *window;
@end

static NSString *TGBundlePath(void) {
    NSMutableArray<NSString *> *paths = [NSMutableArray array];
    [paths addObject:TGJB(@"/Library/PreferenceBundles/Triggr.bundle")];
    [paths addObject:@"/var/jb/Library/PreferenceBundles/Triggr.bundle"];
    [paths addObject:@"/Library/PreferenceBundles/Triggr.bundle"];
    // roothide 隐根：从本 App 自身真实路径反推 jbroot（App 一定在 <jbroot>/Applications 下）
    NSString *appDir = [NSBundle mainBundle].bundlePath.stringByDeletingLastPathComponent;
    NSString *jbroot = appDir.stringByDeletingLastPathComponent;
    if ([jbroot hasPrefix:@"/"]) [paths insertObject:[jbroot stringByAppendingPathComponent:@"Library/PreferenceBundles/Triggr.bundle"] atIndex:0];
    for (NSString *path in paths)
        if ([NSFileManager.defaultManager fileExistsAtPath:path]) return path;
    return nil;
}

static UIViewController *TGMessage(NSString *text) {
    UIViewController *controller = [UIViewController new];
    controller.view.backgroundColor = UIColor.systemGroupedBackgroundColor;
    UILabel *label = [UILabel new];
    label.text = text;
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = UIColor.secondaryLabelColor;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [controller.view addSubview:label];
    [NSLayoutConstraint activateConstraints:@[
        [label.centerYAnchor constraintEqualToAnchor:controller.view.centerYAnchor],
        [label.leadingAnchor constraintEqualToAnchor:controller.view.layoutMarginsGuide.leadingAnchor],
        [label.trailingAnchor constraintEqualToAnchor:controller.view.layoutMarginsGuide.trailingAnchor],
    ]];
    return controller;
}

@implementation TGAppDelegate


// App-side shortcut map: the app (no-sandbox) reads the real Shortcuts DB
// directly and writes name->UUID into a standalone plist both the app and
// SpringBoard can see. Replaces the daemon copy/sync channel entirely.
// Pure-C msgSend style (TGShortcutDB.c lessons: no ARC cast traps).
static void TGAppDiag(NSString *line) {
    FILE *fp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
    if (!fp) return;
    NSString *l = [NSString stringWithFormat:@"[app %f] %@\n", [NSDate timeIntervalSinceReferenceDate], line];
    fwrite(l.UTF8String, 1, l.length, fp);
    fclose(fp);
}

static void TGSyncShortcutMap(void) {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{
            dlopen("/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient", RTLD_LAZY);
            dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", RTLD_LAZY);
            // Legitimate route first: INVoiceShortcutCenter works inside an App sandbox.
            Class vscCls = objc_getClass("INVoiceShortcutCenter");
            Class vcsCls = objc_getClass("INVoiceShortcutCenter");
            id center = [vscCls == nil ? (vcsCls ?: vscCls) : vscCls valueForKeyPath:@"center"];
            (void)center;
            Class centerClass = objc_getClass("INVoiceShortcutCenter");
            if (centerClass) {
                id shared = ((id(*)(id,SEL))objc_msgSend)(centerClass, sel_registerName("sharedCenter"));
                if (!shared) shared = ((id(*)(id,SEL))objc_msgSend)(centerClass, sel_registerName("sharedInstance"));
                TGAppDiag([NSString stringWithFormat:@"vsc: shared=%@", shared ?: @"nil"]);
                if (shared) {
                    void (^block)(NSArray *, NSError *) = ^(NSArray *shortcuts, NSError *lerr) {
                        TGAppDiag([NSString stringWithFormat:@"vsc: count=%lu err=%@", (unsigned long)shortcuts.count, lerr]);
                        if (lerr || !shortcuts.count) return;
                        NSMutableDictionary *map = [NSMutableDictionary dictionary];
                        for (id vs in shortcuts) {
                            id uid = ((id(*)(id,SEL))objc_msgSend)(vs, sel_registerName("identifier"));
                            id sh = ((id(*)(id,SEL))objc_msgSend)(vs, sel_registerName("shortcut"));
                            // INShortcut: workflow name surfaces via the intent's title or invocation URL; dump one for structure
                            NSString *name = nil;
                            id intent = sh ? ((id(*)(id,SEL))objc_msgSend)(sh, sel_registerName("intent")) : nil;
                            if (intent) name = ((id(*)(id,SEL))objc_msgSend)(intent, sel_registerName("title"));
                            if (![name isKindOfClass:NSString.class]) name = nil;
                            if (name && uid) map[name] = [uid isKindOfClass:NSUUID.class] ? [(NSUUID *)uid UUIDString] : uid;
                        }
                        if (!map.count && shortcuts.firstObject) {
                            TGAppDiag([NSString stringWithFormat:@"vsc: first=%@", [shortcuts.firstObject description]]);
                        }
                        BOOL ok = [map writeToFile:@"/var/mobile/Library/Preferences/com.johndie.triggr.shortcutmap.plist" atomically:YES];
                        TGAppDiag([NSString stringWithFormat:@"vsc: map=%lu write=%d", (unsigned long)map.count, ok]);
                    };
                    ((void(*)(id,SEL,void(^)(NSArray*,NSError*)))objc_msgSend)(shared, sel_registerName("getAllVoiceShortcutsWithCompletion:"), block);
                    return;
                }
            }
            Class dbCls = objc_getClass("WFDatabase");
            TGAppDiag(dbCls ? @"sync: dbCls ok" : @"sync: dbCls nil");
            if (!dbCls) return;
            SEL sel0 = sel_registerName("alloc");
            SEL initDB = sel_registerName("initWithStoreDescription:runMigrationsIfNecessary:useLockFile:error:");
            id url = ((id(*)(id,SEL,id))objc_msgSend)(objc_getClass("NSURL"), sel_registerName("fileURLWithPath:"), @"/var/mobile/Library/Shortcuts/Shortcuts.sqlite");
            id store = ((id(*)(id,SEL))objc_msgSend)(objc_getClass("NSPersistentStoreDescription"), sel_registerName("alloc"));
            store = ((id(*)(id,SEL,id))objc_msgSend)(store, sel_registerName("initWithURL:"), url);
            if (!store) { TGAppDiag(@"sync: store nil"); return; }
            TGAppDiag(@"sync: store ok");
            ((void(*)(id,SEL,id))objc_msgSend)(store, sel_registerName("setType:"), @"SQLite");
            ((void(*)(id,SEL,id,id))objc_msgSend)(store, sel_registerName("setOption:forKey:"), (id)kCFBooleanTrue, @"NSReadOnlyPersistentStoreOption");
            void *errp = NULL;
            id db = ((id(*)(id,SEL,id,BOOL,BOOL,void**))objc_msgSend)(((id(*)(id,SEL))objc_msgSend)(dbCls, sel0), initDB, store, YES, YES, &errp);
            NSString *errStr = errp ? ((__bridge NSError *)errp).description : @"(null)";
            TGAppDiag([NSString stringWithFormat:@"sync: db=%@ err=%@", db ?: @"nil", errStr]);
            if (!db) return;
            id refs = ((id(*)(id,SEL))objc_msgSend)(db, sel_registerName("sortedVisibleWorkflowsByName"));
            TGAppDiag([NSString stringWithFormat:@"sync: refs=%@ count=%lu", [refs class], (unsigned long)[refs count]]);
            NSMutableDictionary *map = [NSMutableDictionary dictionary];
            for (id ref in refs) {
                NSString *name = ((id(*)(id,SEL))objc_msgSend)(ref, sel_registerName("name"));
                id ident = ((id(*)(id,SEL))objc_msgSend)(ref, sel_registerName("identifier"));
                if (![name isKindOfClass:NSString.class] || !ident) continue;
                id uuid = ident;
                if ([ident isKindOfClass:NSUUID.class]) uuid = [(NSUUID *)ident UUIDString];
                if ([uuid isKindOfClass:NSString.class]) map[name] = uuid;
            }
            BOOL ok = [map writeToFile:@"/var/mobile/Library/Preferences/com.johndie.triggr.shortcutmap.plist" atomically:YES];
            TGAppDiag([NSString stringWithFormat:@"sync: map=%lu write=%d", (unsigned long)map.count, ok]);
        });
    });
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options {
    TGSyncShortcutMap();
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController *root = nil;
    NSBundle *bundle = [NSBundle bundleWithPath:TGBundlePath()];
    if ([bundle load]) {
        Class rootClass = NSClassFromString(@"TGRootListController");
        root = [rootClass new];
    }
    if (!root) root = TGMessage(@"无法加载 Triggr 的设置。请从包管理器重新安装 Triggr。");
    root.title = @"Triggr";
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:root];
    navigation.navigationBar.prefersLargeTitles = YES;
    root.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
    self.window.rootViewController = navigation;
    [self.window makeKeyAndVisible];
    return YES;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass(TGAppDelegate.class));
    }
}
