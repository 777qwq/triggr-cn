include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TriggrApp
# arm64e slice in a repacked jbroot app: PAC faults in CoreImage GL (candidate
# bar) on arm64e devices. RC ships arm64-only for the same reason.
ARCHS = arm64
TriggrApp_FILES = main.m
TriggrApp_FRAMEWORKS = UIKit CoreImage
TriggrApp_CFLAGS = -fobjc-arc
TriggrApp_CODESIGN_FLAGS = -Sentitlements.plist
TriggrApp_INSTALL_PATH = /Applications

include $(THEOS_MAKE_PATH)/application.mk
