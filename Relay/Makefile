include $(THEOS)/makefiles/common.mk

# Loaded into every app, so it stays tiny: UIKit only, no settings, no actions.
TWEAK_NAME = TriggrRelay
TriggrRelay_LDFLAGS += -rpath /var/jb/Library/Frameworks -rpath /var/jb/usr/lib -rpath @loader_path/.jbroot/Library/Frameworks -rpath @loader_path/.jbroot/usr/lib
TriggrRelay_FILES = Relay.x
TriggrRelay_CFLAGS = -fobjc-arc
TriggrRelay_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
