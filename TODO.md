# 待办

按顺序做，做完一条删一条，并在 `CHANGELOG.md` 记一段。

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
