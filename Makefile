export ARCHS = arm64 arm64e
export TARGET = iphone:clang:16.5:15.0

# 汉化版：禁止自动注销

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak
SUBPROJECTS += Relay
SUBPROJECTS += Prefs
SUBPROJECTS += CLI
SUBPROJECTS += App
SUBPROJECTS += Daemon

include $(THEOS_MAKE_PATH)/aggregate.mk
