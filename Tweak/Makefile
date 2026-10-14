include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Triggr
Triggr_LDFLAGS += -rpath /var/jb/Library/Frameworks -rpath /var/jb/usr/lib -rpath @loader_path/.jbroot/Library/Frameworks -rpath @loader_path/.jbroot/usr/lib
Triggr_FILES = Tweak.x
Triggr_CFLAGS = -fobjc-arc
Triggr_FRAMEWORKS = UIKit AVFoundation QuartzCore LocalAuthentication IOKit AudioToolbox CallKit

include $(THEOS_MAKE_PATH)/tweak.mk
