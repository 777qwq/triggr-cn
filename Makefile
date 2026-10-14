export ARCHS = arm64 arm64e
export TARGET = iphone:clang:16.5:15.0

# 汉化版：禁止自动注销

INSTALL_TARGET_PROCESSES = Preferences SpringBoard

# RootHide builds (THEOS_PACKAGE_SCHEME=roothide, with roothide/theos): paths
# go through jbroot() (Shared/TGPaths.h).
ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
export ADDITIONAL_CFLAGS += -DTG_ROOTHIDE
endif

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak
SUBPROJECTS += Relay
SUBPROJECTS += Prefs
SUBPROJECTS += CLI
SUBPROJECTS += App
SUBPROJECTS += Daemon

include $(THEOS_MAKE_PATH)/aggregate.mk

# RootHide's launchd reads daemon paths relative to the jailbreak folder.
ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
internal-stage::
	$(ECHO_NOTHING)find "$(THEOS_STAGING_DIR)" -name com.johndie.triggrd.plist -exec sed -i 's#/var/jb##' {} \;$(ECHO_END)
endif
