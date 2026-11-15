# 待办

按顺序做，做完一条删一条，并在 `CHANGELOG.md` 记一段。

## cn4.32：快捷指令改为从列表选择

「运行快捷指令」原来弹输入框，要求名字与快捷指令 App 里一字不差；打错就是静默失败。
现在 push 一个选择页，从手机自己的列表里点。值仍然是名字，执行侧没动。

取数：`VCVoiceShortcutClient.standardClient` → `accessibilityWorkflowsWithError:` → `name`。
2.1 的设置页里就有这段代码（还带 10 秒缓存），这条路在 Settings 进程里是通的。

### 1. 列表能不能出来

设置 → 任意触发器 → 添加动作 → 打开 → 运行快捷指令…，预期几百毫秒后出列表。

取数不在设置进程里做：Settings 的沙盒不放行 VoiceShortcutClient 的 XPC（实测报
4097「Couldn't communicate with a helper application.」），改由 SpringBoard 取好写进
`/var/mobile/Library/Preferences/com.johndie.triggr.shortcuts.plist`，通知设置页来读。

- 出列表 → 继续第 2 条。
- 一直「正在读取…」然后「SpringBoard 没有回应」→ 通知没到。先确认 tweak 装在
  SpringBoard 里（其他触发器能用就说明装了），再看 `notify_post` 是否被拦。
- 「SpringBoard 取数失败：…」→ 括号里就是原因（类没找到 / standardClient 空 /
  方法不可用 / 返回空）。这时才回去查 iOS 版本的接口变化。

### 2. 选完能不能跑

选一个 → 返回上级，行尾应显示「快捷指令：名字」→ 触发一次。
预期：后台静默执行，不跳快捷指令 App，也不出现进度条。

### 3. 条数与 App 内一致

打开快捷指令 App 数一遍，与列表比。少了说明 `accessibilityWorkflowsWithError:`
只返回「辅助功能可用」的那部分，那就得改用 `WFDatabase` 取全量。

### 已知取舍

不提供手动输入。取不到列表时这个动作就配不了，页面会写明原因（而不是留一个输入框）。

## cn4.31：AutoTouch 脚本动作的真机验证

代码从 `cn4.9` 分支移植，本地编译已过，包内符号也核过。剩下三件只有真机能定。

### 1. 脚本能不能被列出来

设置 → 任意触发器 → 添加动作 → 看有没有「AutoTouch」分类，展开后是否列出脚本。

- 列出脚本 → 目录探测命中，继续第 2 条。
- 分类整个不出现 → `TGAutoTouchScripts()` 返回空。用 Filza 看脚本真实路径，对照
  `Shared/TGCatalog.h` 里 `TGAutoTouchScriptDirectories()` 探的那几处，缺哪条补哪条。

### 2. 按下去脚本会不会跑

把某个脚本配到音量加，回主屏幕长按。预期：脚本开始执行。

- 动作显示「不可用」→ `PlayingManager` 类没进 SpringBoard。说明这一版 AutoTouch 的
  dylib 没注入 SpringBoard，这条路不成立，整组撤掉。
- 动作可用但按了没反应 → `makePlayingFor:` 或 `start` 的方法名变了（私有 API）。
  用 `cycript`/`frida` 在 SpringBoard 里 `Object.keys(PlayingManager.prototype)` 看一眼
  真实方法名，改 `TGRunAutoTouch`。

### 3. 没装 AutoTouch 时不能误导

停用 AutoTouch（或换一台没装的设备）后，该动作应显示「不可用」，分类应消失。

### 已知上限

只能播放脚本，不能录制、停止、调速——AutoTouch 没有这些对外入口。

---

## 暂缓

- **M1（解锁 block 残留）**：未上机验证，先确认是否存在，不预先打补丁。
- **M6（快捷指令记账全清）**：因果链未验证。
- **H3（triggrd 队列信任模型）**：换 socket + peer 校验是独立工程。
- **L1（补齐 arity 校验）**：需逐条确认真实参数个数，写错会把可用动作挡成不可用。
