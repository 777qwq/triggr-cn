export ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TriggrApp
TriggrApp_FILES = main.m
TriggrApp_FRAMEWORKS = UIKit
TriggrApp_CFLAGS = -fobjc-arc
TriggrApp_CODESIGN_FLAGS = -Sentitlements.plist
TriggrApp_LDFLAGS += -rpath /var/jb/Library/Frameworks -rpath /var/jb/usr/lib
TriggrApp_INSTALL_PATH = /Applications
# rootless 的 /var/jb 前缀由 theos 的 rootless 模块（THEOS_PACKAGE_INSTALL_PREFIX）统一加，
# staging 目录里是无前缀的 /Applications，打包时才套上去。这里再写一次 /var/jb/Applications
# 会变成 /var/jb/var/jb/Applications（cn4.11 出包时踩到）。
# 为防 cn0.3 那种「自动映射丢失」，打包前校验前缀变量与 App 落位，异常就让 make 失败。

include $(THEOS_MAKE_PATH)/application.mk

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
internal-stage::
	@test "$(THEOS_PACKAGE_INSTALL_PREFIX)" = "/var/jb" || { \
		echo "error: rootless 前缀丢失（THEOS_PACKAGE_INSTALL_PREFIX='$(THEOS_PACKAGE_INSTALL_PREFIX)'）"; exit 1; }
	@test -d "$(THEOS_STAGING_DIR)/Applications/TriggrApp.app" || { \
		echo "error: TriggrApp.app 未进入 staging"; exit 1; }
endif
