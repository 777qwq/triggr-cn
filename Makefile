export ARCHS = arm64 arm64e
export TARGET = iphone:clang:16.5:15.0

# no auto-respring

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak
SUBPROJECTS += Relay
SUBPROJECTS += Prefs
SUBPROJECTS += CLI
SUBPROJECTS += App
SUBPROJECTS += Daemon

include $(THEOS_MAKE_PATH)/aggregate.mk
