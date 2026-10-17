// cnshortcuts: copies the Shortcuts DB to a path SpringBoard can read.
// SB gets EPERM on /var/mobile/Library/Shortcuts (iOS 16 access restriction);
// this helper runs with platform-application + no-sandbox entitlements.
#import <Foundation/Foundation.h>
#import <sys/stat.h>

int main(int argc, char **argv) {
    @autoreleasepool {
        NSFileManager *fm = NSFileManager.defaultManager;
        NSString *srcDir = @"/var/mobile/Library/Shortcuts";
        NSString *dst = @"/var/mobile/Library/Triggr/sc.db";
        BOOL ok = NO;
        for (NSString *ext in @[@"", @"-wal", @"-shm"]) {
            NSString *s = [srcDir stringByAppendingPathComponent:[@"Shortcuts.sqlite" stringByAppendingString:ext]];
            NSString *d = [dst stringByAppendingString:ext];
            [fm removeItemAtPath:d error:nil];
            if ([fm fileExistsAtPath:s]) {
                NSError *e = nil;
                if ([fm copyItemAtPath:s toPath:d error:&e]) ok = YES; else printf("copy err %s\n", e.localizedDescription.UTF8String);
            } else printf("missing %s\n", s.UTF8String);
        }
        [fm createDirectoryAtPath:[dst stringByDeletingLastPathComponent] withIntermediateDirectories:YES attributes:nil error:nil];
        chmod(dst.fileSystemRepresentation, 0644);
        NSString *walf = [dst stringByAppendingString:@"-wal"];
        if ([fm fileExistsAtPath:walf]) chmod(walf.fileSystemRepresentation, 0644);
        return ok ? 0 : 1;
    }
}
