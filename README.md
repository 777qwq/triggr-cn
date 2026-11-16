# Triggr 2.1 反汇编存档

2.1 版 deb 里 7 个 Mach-O 的**全量 arm64 反汇编**，带函数边界和字符串引用注释。
目的很直接：以后要查某个行为是怎么实现的，先 grep 这里，不必再翻二进制。

- 来源包：`triggr_2.1.deb`，sha256 见 `manifest.json`
- 反汇编范围：5 个动态库/可执行 + App + 设置页 bundle，合计 7.3 万行汇编、1,011 个函数、1,164 条字符串引用
- 不含 arm64e 切片（同一份源码编出的另一切片，指令层面几乎一致）

## 怎么用

**知道界面上的字，找它附近的代码**

```bash
grep -n 'Run Shortcut' index/Triggr.bundle.strings-xref.tsv
# Run Shortcut by Name…	0xe684
grep -n '0xe684' asm/Triggr.bundle.annotated.s
```

汇编行尾的 `; "..."` 就是这一行用到的字符串，比翻交叉引用表快。

**只知道大概功能，按提示语找函数**

```bash
grep -i 'shortcut' index/Triggr.bundle.functions.tsv
```

每行是一个函数（起止地址 + 大小），最后一列是这个函数里出现的所有字符串——看名字就知道该不该进去。

**已经知道地址**

```bash
grep -n 'sub_f080' asm/Triggr.bundle.annotated.s
```

## 目录

```
asm/<组件>.annotated.s        全量反汇编，函数之间有空行 + `; ===== sub_xxxx =====`
index/<组件>.functions.tsv    函数边界 + 该函数提到的字符串
index/<组件>.strings-xref.tsv 字符串 → 引用它的指令地址
index/<组件>.strings.tsv      按段导出的原始字符串（含 __objc_methname，查 selector 用这个）
manifest.json                 每个二进制的 sha256、函数数、字符串数
PatchNotes.md                 包内 PatchNotes.plist 的原样导出
tools/                        重新生成用的脚本
```

| 组件 | 函数 | 有字符串引用 | 行数 |
|---|---|---|---|
| Triggr.bundle（设置页） | 411 | 664 | 38,107 |
| Triggr.dylib（SpringBoard） | 503 | 406 | 29,495 |
| TriggrRelay.dylib | 50 | 24 | 2,766 |
| libtriggr.dylib | 18 | 25 | 1,193 |
| triggrd | 14 | 12 | 931 |
| triggr（CLI） | 13 | 28 | 548 |
| TriggrApp | 2 | 5 | 414 |

## 重新生成

```bash
dpkg-deb -x triggr_2.1.deb extracted
tools/build.sh extracted out
```

`tools/extract.py` 拆段与字符串，`tools/annotate2.py` 补函数边界和字符串引用。

## 方法说明（也是局限）

- **函数边界是算出来的，不是符号表**：二进制已 strip，没有局部符号。做法是把所有
  `bl`/`b` 落在 `__text` 内的目标当作函数起点。ObjC 方法几乎都会被调用，所以切得基本准；
  只被末尾 `br` 跳进来的冷函数可能被并进上一个函数。
- **字符串引用靠 CFString 常量表反推**：`__DATA_CONST,__cfstring` 每条 32 字节，
  `+16` 是 char*（chained fixup 编码，低 36 位是目标地址，可执行文件里是相对 `__TEXT` 的偏移），
  `+24` 是长度。解码后按 `adrp`/`add`/`ldr` 算出的有效地址匹配。
  llvm-objdump 自带的注释只解出 2 条，所以这一步是必要的。
- **常量池共享后缀**：字符串按长度精确截取，指针指到共享区中间时也是原文，不会截短。
- **没注释的串**：直接传给 C 函数、不经 CFString 的格式串（如 `%s`），以及 `__objc_methname`
  里的 selector，都不在 asm 注释里；查 selector 用 `index/*.strings.tsv`。

## 与 iOS 27 有关的线索

包内 `PatchNotes.md` 里作者自己写的：

> **Getting ready for iOS 27**（2.0 Beta 9）— The Action Button, edge gestures, App Switcher
> and Reachability now find their new iOS 27 names. Not tested on iOS 27 yet.
>
> **iOS 27**（2.0）— Fixes for the App Switcher, Control Center, the Lock Screen, Last App and the
> Camera and Voice Memos actions. Tested in an iOS 27 virtual iPhone.
>
> Status bar double taps work in apps on iOS 26 and 27.
> The triggr command works on iOS 27 (it couldn't see the Allow API setting before).

也就是说：2.0 Beta 9 先把「按名字找类/方法」的探测改成多候选，2.0 才在 iOS 27 虚拟机上过了一遍。
这套适配**不在** 1.5.0 基线里，本仓库的汉化版没有这部分。

要核对具体做法，从这几个入口查：

```bash
grep -iE 'switcher|reachability|controlcenter|homeaffordance' index/Triggr.dylib.strings.tsv
grep -iE 'switcher|reachability' index/Triggr.dylib.strings-xref.tsv
```

`strings.tsv` 里有全部 `__objc_methname`，iOS 27 的新旧名字都能在里面看到；`strings-xref.tsv`
给出用到这些串的指令地址，再进 `.annotated.s` 看是 `NSClassFromString` 还是 `respondsToSelector:`。
