# 动作扩展

别的包可以给 Triggr 加一整类动作，Triggr 这边不用改一行代码。

## 放一个 plist

```
/var/jb/Library/Triggr/Extensions/<名字>.plist
```

roothide 隐根下直接写 `/Library/Triggr/Extensions/` 就行，Triggr 会先用 `jbroot` 拼一次，找不到再退回真实路径。

| 键 | 类型 | 含义 |
|---|---|---|
| `Title` | string | 动作选择器里的分类名（必填） |
| `ItemTitle` | string | 标题前缀：「`ItemTitle`: 条目名」，默认用 plist 文件名 |
| `Symbol` | string | 分类图标的 SF Symbol，默认 `puzzlepiece.extension.fill` |
| `Color` | string | 图标底色：blue / green / indigo / orange / pink / purple / red / teal / yellow / gray |
| `ItemsDirectory` | string | 条目所在目录 |
| `ItemsExtension` | string | 只要这个扩展名的文件，条目名会去掉扩展名 |
| `ItemsExclude` | array | 要隐藏的条目名 |
| `Program` | string | 跑条目时执行的程序（必填） |

## 怎么执行

```
/var/jb/bin/sh <Program> <条目名>
```

以 mobile 身份运行，条目名是**独立的一个参数**，永远不进 `sh -c`。所以文件名里带 `;`、反引号、`$()` 也只是文件名。

SpringBoard 起不了进程时（iOS 18 起是这样），整条命令会交给 `triggrd` 执行。安全边界不变：`triggrd` 只跑**用户自己配过的动作**，白名单就是偏好里所有指派的值，`ext:<扩展>:<条目>` 天然在里面。

## 指派里长什么样

```
anywhere/home.triple = "ext:eqe:Bass Boost"
```

外面看起来就是一个普通动作，能放进动作列表、能排顺序、能加停顿、能被「如果 / 否则」包住。

## 例：把某个目录里的脚本列出来

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Title</key>          <string>自动化脚本</string>
    <key>ItemTitle</key>      <string>脚本</string>
    <key>Symbol</key>         <string>play.circle.fill</string>
    <key>Color</key>          <string>green</string>
    <key>ItemsDirectory</key> <string>/var/mobile/Library/MyScripts</string>
    <key>ItemsExtension</key> <string>sh</string>
    <key>Program</key>        <string>/var/jb/usr/local/bin/run-script.sh</string>
</dict>
</plist>
```

`Program` 收到脚本名作为 `$1`，自己决定怎么跑：

```sh
#!/bin/sh
exec /var/jb/bin/sh "/var/mobile/Library/MyScripts/$1.sh"
```

## 边界：`ext:` 只负责「跑一个程序」

这一节讲的是 `ext:` 这一类扩展，不是 Triggr 的全部能力。`ext:` 是**进程级**的：它把条目名作为一个参数交给某个程序，除此之外碰不到目标应用内部。

- **能接**：有命令行入口的工具、脚本、自家写的可执行文件。
- **接不了**：只有图形界面、没有命令行入口的 App。

注意这是 `ext:` 的限制，不是 Triggr 的限制。想更深地接一个 App，得在 tweak 里写针对性的进程内调用——那是改 Triggr 本体，不是放一个 plist 能办到的。

| 对方是什么 | 走哪条路 | 谁来做 |
|---|---|---|
| 有命令行入口 | `ext:` | 任何包，放个 plist |
| 只有图形界面，但 dylib 注入在 SpringBoard 里 | 进程内调用（如 `unlock:`、`gesture:`） | 改 Triggr 本体 |
| 只有图形界面，也没有可复用的进程内入口 | 接不了 | — |


## 注意

- `Program` 必须**可读**（不是可执行）。iOS 18 的 SpringBoard 会把脚本报成不可执行，所以 Triggr 判的是可读性。
- 装了扩展但没配任何动作时，扩展分类不会出现在选择器里（条目为空）。
- 删掉 plist 后，已经配好的 `ext:` 动作会变成「当前系统上不可用」，触发器退回系统行为，不会出现按键黑洞。
