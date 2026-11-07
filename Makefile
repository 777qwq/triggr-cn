# 工具链（2026-11-07 起，与原作者 README 的 Building 一节对齐）：
#   作者：Theos + iOS 16.5 SDK + rootless；Makefile 默认 arm64，release 加 arm64e，
#   arm64e 需要 Xcode 的 clang 或上游 LLVM 20+。
#   本机没有 Xcode，所以：
#     clang   → clang-20（上游 LLVM 20，arm64e 目标文件带 0x80000002 / ptrauth ABI）
#     ld      → 自建 cctools-port ld64-956.6（支持 arm64e + chained fixups）
#     .tbd    → /opt/tgstub 下的 arm64e 占位库（ld64 未编入 libtapi，读不了 .tbd）
#   产出的 arm64e 切片与 cn4.17 同构：subtype 0x80000002，pointer_format 12。
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

# -fixup_chains 由工具链的 ld 包装统一追加，这里不要再加链接参数。

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
