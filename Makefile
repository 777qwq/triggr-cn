export ARCHS = arm64 arm64e
export TARGET = iphone:clang:16.5:15.0

# 无根包丢了 arm64e 切片 = 装上去什么都不会发生（cn4.11 出包时踩到）：
# Dopamine 只支持 A12 及以上，全是 arm64e 设备，SpringBoard 是 arm64e 进程；
# 只有 arm64 切片的 dylib 注入不进去，ElleKit 静默跳过，既不报错也不留日志，
# 表现就是「触发器全部失效、动作横幅不显示」。这里只警告不中断——
# A11 的 palera1n rootless 确实只需要 arm64。
ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
ifneq ($(filter arm64e,$(ARCHS)),arm64e)
$(warning 警告：rootless 包只编了 $(ARCHS)，缺 arm64e 切片，A12+ 机型注入不了。)
endif
endif

# 汉化版：禁止自动注销

INSTALL_TARGET_PROCESSES = Preferences SpringBoard

# RootHide builds (THEOS_PACKAGE_SCHEME=roothide, with roothide/theos): paths
# go through jbroot() (Shared/TGPaths.h).
ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
export ADDITIONAL_CFLAGS += -DTG_ROOTHIDE
endif

include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Tweak
SUBPROJECTS += Relay
SUBPROJECTS += Prefs
SUBPROJECTS += CLI
SUBPROJECTS += App
SUBPROJECTS += Daemon

include $(THEOS_MAKE_PATH)/aggregate.mk

# RootHide's launchd reads daemon paths relative to the jailbreak folder.
ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
internal-stage::
	$(ECHO_NOTHING)find "$(THEOS_STAGING_DIR)" -name com.johndie.triggrd.plist -exec sed -i 's#/var/jb##' {} \;$(ECHO_END)
endif

# 版本号只在 control 里维护，stage 完再写进两个 Info.plist。
# 少了这一步，设置页底部（读 control）和系统里看到的 bundle 版本会对不上，
# 崩溃日志报的也是旧版本号——cn4.28 那次就是这样多绕了一圈。
# macOS 用 PlistBuddy，Linux 沙箱没有它，退回 python3（plistlib 两边都认）。
TG_VERSION := $(shell sed -n 's/^Version: //p' $(THEOS_PROJECT_DIR)/control)

internal-stage::
	$(ECHO_NOTHING)set -e; \
	for p in "$(THEOS_STAGING_DIR)/Library/PreferenceBundles/Triggr.bundle/Info.plist" \
	         "$(THEOS_STAGING_DIR)/Applications/TriggrApp.app/Info.plist"; do \
	  [ -f "$$p" ] || continue; \
	  if [ -x /usr/libexec/PlistBuddy ]; then \
	    /usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $(TG_VERSION)" "$$p" 2>/dev/null \
	      || /usr/libexec/PlistBuddy -c "Add :CFBundleShortVersionString string $(TG_VERSION)" "$$p"; \
	    /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $(TG_VERSION)" "$$p" 2>/dev/null \
	      || /usr/libexec/PlistBuddy -c "Add :CFBundleVersion string $(TG_VERSION)" "$$p"; \
	  else \
	    python3 -c "import plistlib,sys; p=sys.argv[1]; d=plistlib.load(open(p,'rb')); d['CFBundleShortVersionString']=sys.argv[2]; d['CFBundleVersion']=sys.argv[2]; plistlib.dump(d,open(p,'wb'))" "$$p" "$(TG_VERSION)"; \
	  fi; \
	done$(ECHO_END)
