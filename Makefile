include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TriggrL10n
TriggrL10n_FILES = Tweak.x
TriggrL10n_CFLAGS = -fobjc-arc
ARCHS = arm64 arm64e
TriggrL10n_FRAMEWORKS = UIKit

TriggrExt_FILES = TriggrExt.x
TriggrExt_CFLAGS = -fobjc-arc
TriggrExt_FRAMEWORKS = UIKit
TriggrExt_LDFLAGS = -Wl,-undefined,dynamic_lookup

include $(THEOS_MAKE_PATH)/tweak.mk
