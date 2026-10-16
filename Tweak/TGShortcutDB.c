// Pure C (no ObjC translation unit -> no ARC semantics at all): WFDatabase
// bootstrap for the SB process. The .m variant fought the compiler's
// ownership assumptions around msgSend casts of init methods (cn2.13/2.14
// double-release crashed SB twice). Every object is +1 from alloc/init and
// explicitly released. NSSQLiteStoreType == @"SQLite" (CF toll-free).
#import <CoreFoundation/CoreFoundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import <dlfcn.h>

extern void TGDiagLog(const void *msg); // NSString* by bridge (linked from Tweak.x)

static id S1(id self, const char *sel, id a) { return ((id(*)(id,SEL,id))objc_msgSend)(self, sel_registerName(sel), a); }
static id S0(id self, const char *sel) { return ((id(*)(id,SEL))objc_msgSend)(self, sel_registerName(sel)); }
static id S4(id self, const char *sel, id a, BOOL b, BOOL c, void *d) { return ((id(*)(id,SEL,id,BOOL,BOOL,void*))objc_msgSend)(self, sel_registerName(sel), a, b, c, d); }
static void V1(id self, const char *sel, id a) { ((void(*)(id,SEL,id))objc_msgSend)(self, sel_registerName(sel), a); }
static id Str(const char *utf8) { return S1((id)objc_getClass("NSString"), "stringWithUTF8String:", (id)utf8); }

void TGInjectShortcutDB(void) {
    static BOOL done = NO;
    if (done) return;
    done = YES;
    dlopen("/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient", RTLD_LAZY);
    dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", RTLD_LAZY);
    id dbCls = (id)objc_getClass("WFDatabase");
    if (!dbCls) { TGDiagLog((const void *)CFSTR("sb: no WFDatabase")); return; }
    if (S0(dbCls, "defaultDatabase")) { TGDiagLog((const void *)CFSTR("sb: db already present")); return; }

    id url  = S1((id)objc_getClass("NSURL"), "fileURLWithPath:", Str("/var/mobile/Library/Shortcuts/Shortcuts.sqlite"));
    id desc = S1(S0((id)objc_getClass("NSPersistentStoreDescription"), "alloc"), "initWithURL:", url);
    S0(url, "release");
    if (!desc) { TGDiagLog((const void *)CFSTR("sb: desc nil")); return; }
    V1(desc, "setType:", (id)CFSTR("SQLite"));

    id err = nil;
    id db = S4(S0(dbCls, "alloc"), "initWithStoreDescription:runMigrationsIfNecessary:useLockFile:error:",
               desc, YES, YES, &err);
    S0(desc, "release");
    if (db) {
        V1(dbCls, "setDefaultDatabase:", db);
        S0(db, "release"); // setter retained its own
        TGDiagLog((const void *)CFSTR("sb: WFDatabase injected"));
    } else {
        TGDiagLog(S0(err, "description") ? S0(err, "description") : (id)CFSTR("sb: db init nil (no error)"));
    }
}
