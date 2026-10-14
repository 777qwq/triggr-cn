export ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TriggrApp
TriggrApp_FILES = main.m
TriggrApp_FRAMEWORKS = UIKit
TriggrApp_CFLAGS = -fobjc-arc
TriggrApp_CODESIGN_FLAGS = -Sentitlements.plist
TriggrApp_LDFLAGS += -rpath /var/jb/Library/Frameworks -rpath /var/jb/usr/lib
TriggrApp_INSTALL_PATH = /Applications
# rootless 布局显式钉死：theos rolling master 的 /Applications 自动映射曾滚动丢失（cn0.3 事故）
ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TriggrApp_INSTALL_PATH = /var/jb/Applications
endif

include $(THEOS_MAKE_PATH)/application.mk
