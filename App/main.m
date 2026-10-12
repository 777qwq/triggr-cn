// Triggr's Home Screen app: the same pages as Settings → Triggr, loaded from the
// settings bundle, so both always show and change the same assignments.
#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>
#import <dlfcn.h>
#import <objc/runtime.h>

@interface TGAppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow *window;
@end

// On RootHide, repacked apps can't create an EAGL (GPU) context: CoreImage's
// +[CUIShapeEffectStack sharedCIContext] (used for symbol styling, e.g. the
// keyboard candidate bar's arrow) dies calling a NULL EAGL entry point. Apple's
// own processes are fine. Swap in a software-rendered CIContext once at start:
// CPU raster handles these small images without touching the broken GPU path.
static CIContext *tgSoftwareContext;

static void TGPatchCoreImageGL(void) {
    // CoreImage's GL context ctor calls an OpenGLES symbol through a weak
    // binding that is NULL when the framework was never loaded. Settings has
    // it loaded; repacked apps don't. Load it explicitly.
    dlopen("/System/Library/Frameworks/OpenGLES.framework/OpenGLES", RTLD_LAZY);
    // CoreUI is lazy-loaded; force it in or the class lookup below misses.
    if (!dlopen("/System/Library/PrivateFrameworks/CoreUI.framework/CoreUI", RTLD_LAZY)) return;
    Class cls = NSClassFromString(@"CUIShapeEffectStack");
    if (!cls) return;
    Method m = class_getClassMethod(cls, NSSelectorFromString(@"sharedCIContext"));
    if (!m) return;
    method_setImplementation(m, imp_implementationWithBlock(^id(id self) {
        static dispatch_once_t once;
        dispatch_once(&once, ^{
            tgSoftwareContext = [[CIContext alloc] initWithOptions:@{kCIContextUseSoftwareRenderer: @YES}];
        });
        return tgSoftwareContext;
    }));
}

static NSString *TGBundlePath(void) {
    NSMutableArray<NSString *> *paths = [NSMutableArray array];
    [paths addObject:@"/var/jb/Library/PreferenceBundles/Triggr.bundle"];
    [paths addObject:@"/Library/PreferenceBundles/Triggr.bundle"];
    // roothide: derive the jbroot from this app's own real path (always exists)
    NSString *appDir = [NSBundle mainBundle].bundlePath.stringByDeletingLastPathComponent;      // <jbroot>/Applications
    NSString *jbroot = appDir.stringByDeletingLastPathComponent;                                // <jbroot>
    if ([jbroot.lastPathComponent hasPrefix:@".jbroot"])
        [paths addObject:[jbroot stringByAppendingPathComponent:@"Library/PreferenceBundles/Triggr.bundle"]];
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

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options {
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
    TGPatchCoreImageGL();
    return YES;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass(TGAppDelegate.class));
    }
}
