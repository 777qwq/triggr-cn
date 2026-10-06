export ARCHS = arm64 arm64e
export TARGET = iphone:clang:16.5:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TriggrCN
TriggrCN_FILES = Tweak/Tweak.x
TriggrCN_CFLAGS = -fobjc-arc
TriggrCN_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
