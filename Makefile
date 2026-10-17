include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TriggrL10n
TriggrL10n_FILES = Tweak.x
TriggrL10n_CFLAGS = -fobjc-arc
ARCHS = arm64 arm64e
TriggrL10n_FRAMEWORKS = UIKit
TriggrL10n_LDFLAGS = -lsqlite3

include $(THEOS_MAKE_PATH)/tweak.mk

internal-after-stage::
	@mkdir -p $(THEOS_STAGING_DIR)/Library/Triggr/Extensions
	@cp $(THEOS_OBJ_DIR)/TriggrL10n.dylib $(THEOS_STAGING_DIR)/Library/Triggr/Extensions/TriggrL10n.dylib 2>/dev/null || true
