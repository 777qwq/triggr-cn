// Where the jailbreak's files are. Rootless Dopamine: under /var/jb. RootHide
// (built with THEOS_PACKAGE_SCHEME=roothide, TG_ROOTHIDE): a random folder that
// only roothide's jbroot() knows, and its own tools (sh, launchctl) see that
// folder as "/", so their PATH has no prefix at all.
#import <Foundation/Foundation.h>
#ifdef TG_ROOTHIDE
#include <roothide.h>
static inline NSString *TGJB(NSString *path) { return jbroot(path); }
#define TG_SHELL_PATH "PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#else
static inline NSString *TGJB(NSString *path) { return [@"/var/jb" stringByAppendingString:path]; }
#define TG_SHELL_PATH "PATH=/var/jb/usr/local/bin:/var/jb/usr/bin:/var/jb/bin:/var/jb/usr/sbin:/var/jb/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
#endif
