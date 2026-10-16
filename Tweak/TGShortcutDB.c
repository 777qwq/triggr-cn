// Pure C (no ObjC translation unit -> no ARC semantics at all): WFDatabase
// bootstrap for the SB process. The .m variant fought the compiler's
// ownership assumptions around msgSend casts of init methods (cn2.13/2.14
// double-release crashed SB twice). Every object is +1 from alloc/init and
// explicitly released. NSSQLiteStoreType == @"SQLite" (CF toll-free).
//
// DB source: a read-only COPY under /var/mobile/Library/Triggr, refreshed by
// triggrd (SB's sandbox EPERMs /var/mobile/Library/Shortcuts — POSIX Code=1,
// cn2.15). Re-injection happens whenever the copy's mtime changes, so newly
// added shortcuts become visible without any user action.
#import <CoreFoundation/CoreFoundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import <dlfcn.h>
#import <sys/stat.h>
#import <notify.h>

static id S0(id self, const char *sel) { return ((id(*)(id,SEL))objc_msgSend)(self, sel_registerName(sel)); }
static id S1(id self, const char *sel, id a) { return ((id(*)(id,SEL,id))objc_msgSend)(self, sel_registerName(sel), a); }
static id S4(id self, const char *sel, id a, BOOL b, BOOL c, void *d) { return ((id(*)(id,SEL,id,BOOL,BOOL,void*))objc_msgSend)(self, sel_registerName(sel), a, b, c, d); }
static void V1(id self, const char *sel, id a) { ((void(*)(id,SEL,id))objc_msgSend)(self, sel_registerName(sel), a); }
static id Str(const char *utf8) { return S1((id)objc_getClass("NSString"), "stringWithUTF8String:", (id)utf8); }


// Minimal diagnostics (kept from cn2.15 — silent channels are untestable).
static void TGDbLog(const char *msg) {
    static const char *dir = "/var/mobile/Library/Triggr";
    mkdir(dir, 0755);
    FILE *fp = fopen("/var/mobile/Library/Triggr/diag.log", "a");
    if (fp) { fputs(msg, fp); fputs("\n", fp); fclose(fp); }
}

static time_t s_lastCopyMtime = 0;

void TGInjectShortcutDB(void) {
    struct stat st;
    if (stat("/var/mobile/Library/Triggr/Shortcuts.sqlite", &st) != 0) {
        // Copy gone (or never made): poke triggrd to rebuild it, then let the
        // caller retry. A previously injected connection now points at an
        // unlinked file and must not be trusted.
        TGDbLog("sb: copy missing, poke daemon");
        notify_post("com.johndie.triggr/shortcut-db-refresh");
        s_lastCopyMtime = 0;
        return;
    }
    if (st.st_mtime == s_lastCopyMtime) return; // already injected, up to date
    TGDbLog("sb: (re)injecting from copy");
    BOOL hadPrevious = (s_lastCopyMtime != 0);
    s_lastCopyMtime = st.st_mtime;

    dlopen("/System/Library/PrivateFrameworks/VoiceShortcutClient.framework/VoiceShortcutClient", RTLD_LAZY);
    dlopen("/System/Library/PrivateFrameworks/WorkflowKit.framework/WorkflowKit", RTLD_LAZY);
    id dbCls = (id)objc_getClass("WFDatabase");
    if (!dbCls) return;

    id url  = S1((id)objc_getClass("NSURL"), "fileURLWithPath:", Str("/var/mobile/Library/Triggr/Shortcuts.sqlite"));
    id desc = S1(S0((id)objc_getClass("NSPersistentStoreDescription"), "alloc"), "initWithURL:", url);
    if (desc) {
        // NSReadOnlyPersistentStoreOption = YES
        ((void(*)(id,SEL,id,id))objc_msgSend)(desc, sel_registerName("setOption:forKey:"), (id)kCFBooleanTrue, (id)CFSTR("NSReadOnlyPersistentStoreOption"));
        V1(desc, "setType:", (id)CFSTR("SQLite"));
    }
    S0(url, "release");
    if (!desc) return;

    id err = nil;
    id db = S4(S0(dbCls, "alloc"), "initWithStoreDescription:runMigrationsIfNecessary:useLockFile:error:",
               desc, YES, YES, &err);
    S0(desc, "release");
    if (db) {
        V1(dbCls, "setDefaultDatabase:", db);
        S0(db, "release"); // setter retained its own
        TGDbLog("sb: injected");
        if (hadPrevious) notify_post("com.johndie.triggr/shortcut-map-updated");
    } else {
        TGDbLog("sb: init failed");
    }
}

// name -> workflow identifier via the injected copy DB. Returns nil when the
// database is not injected yet or the name is unknown.
id TGShortcutIdentifierForName(void *name) {
    if (s_lastCopyMtime == 0) return nil; // no trusted copy injected
    id db = S0((id)objc_getClass("WFDatabase"), "defaultDatabase");
    if (!db) return nil;
    id ref = S1(db, "uniqueVisibleReferenceForWorkflowName:", (id)name);
    if (!ref) return nil;
    return S0(ref, "identifier");
}
