export ARCHS = arm64 arm64e
export TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak
SUBPROJECTS += ShortcutsHelper

include $(THEOS_MAKE_PATH)/aggregate.mk
