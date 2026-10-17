export ARCHS = arm64 arm64e


include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak
SUBPROJECTS += ShortcutsHelper

include $(THEOS_MAKE_PATH)/aggregate.mk
