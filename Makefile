include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TriggrL10n
TriggrL10n_FILES = Tweak.x
TriggrL10n_CFLAGS = -fobjc-arc
ARCHS = arm64 arm64e
TriggrL10n_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
