// Triggr's Home Screen app: the same pages as Settings → Triggr, loaded from the
// settings bundle, so both always show and change the same assignments.
#import <UIKit/UIKit.h>
#import <dlfcn.h>

@interface TGAppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow *window;
@end

static NSString *TGBundlePath(void) {
    for (NSString *path in @[@"/var/jb/Library/PreferenceBundles/Triggr.bundle", @"/Library/PreferenceBundles/Triggr.bundle"])
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
    if (!root) root = TGMessage(@"Triggr's settings couldn't be loaded. Reinstall Triggr from your package manager.");
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
