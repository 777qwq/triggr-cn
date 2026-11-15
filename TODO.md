# 待办

按顺序做，做完一条删一条，并在 `CHANGELOG.md` 记一段。

## cn4.32：快捷指令改为从列表选择

「运行快捷指令」原来弹输入框，要求名字与快捷指令 App 里一字不差；打错就是静默失败。
现在 push 一个选择页，从手机自己的列表里点。值仍然是名字，执行侧没动。

取数：`VCVoiceShortcutClient.standardClient` → `accessibilityWorkflowsWithError:` → `name`。
2.1 的设置页里就有这段代码（还带 10 秒缓存），这条路在 Settings 进程里是通的。

### 1. 列表能不能出来

设置 → 任意触发器 → 添加动作 → 打开 → 运行快捷指令…，预期直接进入列表页。

- 正常出列表 → 继续第 2 条。
- 停在「无法读取快捷指令」→ 看 Console 里 `[Triggr] shortcut list:` 那一行：
  `class=0` 是类没找到（框架路径或类名变了）；`class=1` 但 `list=0` 是方法改名；
  前两项都是 1、`count=0`，则是真的取到了空表。
- 一直停在「正在读取…」→ 后台那次跨进程调用没回来。改成主线程同步取（2.1 就是这么做的）再试。

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
