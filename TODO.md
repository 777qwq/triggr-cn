# 待办

按顺序做，做完一条删一条，并在 `CHANGELOG.md` 记一段。

## cn4.35：快捷指令改成弹出层，取不到列表退输入框

### 1. 弹出层

设置 → 任意触发器 → 添加动作 → 打开 → 运行快捷指令…

预期：卡片从底部升起，导航栏写「运行快捷指令」、左侧「取消」，一行一个快捷指令，搜索框常驻。
不是 push 进来的整页 —— 底下能看见动作列表。

### 2. 选择与取消

- 点一项 → 卡片落下，行尾显示「快捷指令：名字」；触发一次仍是后台静默、不跳 App。
- 再点同一项 → 整个动作从列表消失（等同原来的「移除」）。
- 点「取消」→ 什么都不改。

### 3. 取不到列表

预期 1 秒内出结果：有缓存直接出列表；没有缓存最多等 1 秒，超时就收起卡片弹输入框。

造这个场景：用 Filza 把 `/var/mobile/Library/Preferences/com.johndie.triggr.shortcuts.plist`
里的 `names` 清空、`failed` 改成 true，再进页面。应立即收起卡片并弹输入框，message 带原因。
输一个名字保存，值仍是 `shortcut:<名字>`。

### 4. 条数

与快捷指令 App 里数一遍对比。少了说明 `accessibilityWorkflowsWithError:` 只返回
「辅助功能可用」的那部分，那就得改用 `WFDatabase` 取全量。

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
