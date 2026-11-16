#!/bin/sh
# 用法：build.sh <已解包的 deb 根目录> <输出目录>
# 例：dpkg-deb -x triggr_2.1.deb /tmp/x && tools/build.sh /tmp/x /tmp/out
set -e
SRC=${1:?需要 deb 解包目录}
OUT=${2:?需要输出目录}
HERE=$(cd "$(dirname "$0")" && pwd)
mkdir -p "$OUT"

# role:相对路径
LIST="Triggr.bundle:Library/PreferenceBundles/Triggr.bundle/Triggr
Triggr.dylib:Library/MobileSubstrate/DynamicLibraries/Triggr.dylib
TriggrRelay.dylib:Library/MobileSubstrate/DynamicLibraries/TriggrRelay.dylib
libtriggr.dylib:usr/lib/libtriggr.dylib
triggrd:usr/libexec/triggrd
triggr:usr/bin/triggr
TriggrApp:Applications/TriggrApp.app/TriggrApp"

echo "$LIST" | while IFS=: read -r role rel; do
  [ -n "$role" ] || continue
  bin="$SRC/var/jb/$rel"
  [ -f "$bin" ] || bin="$SRC/$rel"
  python3 "$HERE/extract.py" "$bin" "$OUT/$role" >/dev/null
  # 统一命名：<role>.arm64.s / <role>.strings.tsv（extract 用的是二进制原名）
  for f in "$OUT/$role"/*.arm64.s; do t="$OUT/$role/$role.arm64.s"; [ "$f" = "$t" ] || mv "$f" "$t"; done
  for f in "$OUT/$role"/*.strings.tsv; do t="$OUT/$role/$role.strings.tsv"; [ "$f" = "$t" ] || mv "$f" "$t"; done
  python3 "$HERE/annotate2.py" "$bin" "$OUT/$role/$role.arm64.s" "$OUT/$role" "$role"
done
