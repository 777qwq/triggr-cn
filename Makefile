# 本机工具链（Ubuntu clang18 + ld64.lld-18 + 自建 ld/lipo 包装）编不出可用的 arm64e 切片：
# 加 -fixup_chains 时 ld 直接报「only supported on x86_64 and arm64」，不加则回落到旧式
# bind 流，装到设备上 dyld 报 "bad bind opcode 0x00"（设置插件直接加载不出来）。
# 这里只出 arm64 单切片：arm64 代码在 arm64e 进程里照常加载，格式是现代的 chained fixups。
# 有完整 cctools 的环境可以改回 "arm64 arm64e"。
export ARCHS = arm64
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

# 关掉 chained fixups 会让 dyld 去读旧式 bind 流，这台机器上的 ld64.lld 写出来的
# bind 段末尾是 0 填充，iOS 报 "bad bind opcode 0x00"（cn4.17-1 首次打包踩到）。
export ADDITIONAL_LDFLAGS += -Wl,-fixup_chains

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
