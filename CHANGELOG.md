# 变更日志

本仓库是 [`Jond-ie/triggr-beta`](https://github.com/Jond-ie/triggr-beta) 1.5.0 的汉化修改版。
版本号形如 `1.5.0+cn4.19`：前半是上游基线，`cnN` 是本仓库的第 N 次发布。

## 1.5.0+cn4.19

一次按代码评审逐条落地的修复版，重点是**执行器的一处状态机漏洞**和**几处静默失败**。

### 修复

- **`@秒` 条件在等待期间失效会吞掉整条剩余列表**（`Tweak.x` `TGRunSteps`）
  `if:xxx@N` 等完 N 秒、条件不再成立时，原来直接 `return`，配对的 `else`、`endif` 之后的动作全部不执行。现在是「把本块标成未选中再继续」，`else` 正常接上。表现从「偶尔按了没反应，后面配的动作一起消失」变为符合直觉。
- **电量读的是中文键**（`TGBatteryPercent`）
  IOKit 的字典键是常量字符串 `Current Capacity` / `Max Capacity`，写成中文后恒取不到，`percent` 永远是 -1，等于把 IOKit 通道整个跳过、只剩注释里说「不可靠」的 `UIDevice` 兜底。电量阈值触发器因此不准，刚唤醒时尤其明显。
- **Face ID 机型的残留 iOS 反应块**（`TGLockFaceIDPress`）
  新一轮按键接管时，旧一轮早退没有清 `tgLockFaceIDSystem[]`，残留块会被下一次按错误的 count 取出来执行（多跑一次 iOS 的动作）。现在每个块带轮次标记，早退只丢自己的。
- **`lock.triple` = 睡眠的判断绕过条件**（`Tweak.x` `singlePress:`）
  用 `TGActionFor(...).firstObject` 判断首个动作是不是 `system.sleep`，列表以 `if:` / `pause` 开头时判不中，三击「先熄屏、确认后睡眠」的优化静默失效。改用 `TGPlanActions` 取这次真正会跑的第一个动作。
- **通知类触发器被 3 秒防抖合并**（`TGFireMatching`）
  同一 App 3 秒内两条通知只触发一次。防抖现在只留给蓝牙连接（那里系统确实会连发多条）。
- **设置页迁移会丢条件**（`Prefs/TGSettings.m`）
  旧配置的 `only:` 行被无条件删除，但只在「新条件键为空」时才写回。两边并存时（升级到一半、手动改过 plist）条件静默消失，触发器从此无条件执行。现在合并去重后写回。
- **roothide 隐根装完守护进程起不来**（`layout/DEBIAN/postinst` / `prerm`）
  路径写死 `/var/jb`，隐根下不存在，`launchctl` 失败还被 `2>/dev/null` 吞掉——用户只看到「Run Command 没反应」。改为先问 `jbroot`，并换用 `bootstrap` / `kickstart`，失败时写到 stderr。
- **`triggrd` 白名单没读到就静默丢弃请求**（`Daemon/main.m`）
  原来只等 0.5 s 重试一次，读不到就丢掉且无日志。现在退避重试约 1.5 s，仍失败才 `NSLog` 一行；队列目录建不起来时也会留下痕迹。

### 改进

- **私有 API 调用前核对参数个数**（`TGPrivateArity`）
  `respondsToSelector` 只证明方法名在，不证明参数个数与类型；签名一变，`objc_msgSend` 强转读的是寄存器里的垃圾，`@try` 抓不住。现在多处高危调用（背光动画、终止应用、解锁、解锁回调）先核对，不匹配就不调，交回上层兜底。
- **「返回上级」的页面戳改用实例指针**（`Relay/Relay.x`）
  每次构造 `UIWindow` 换成复用同一个；`subviews.count` 抖动导致的「页面没动却判成动了、于是不补 pop」不会再发生；复核前加转场守卫（转场中不判）；没有 nav 可弹时改为 dismiss 最上层 modal。
- **横幅窗口复用**（`TGShowBanner`）
  连按触发器不再每次新建/销毁一个 `UIWindow`，只换文本。
- **设置页提示「当前系统不可用」的动作**
  SpringBoard 把「已配置但跑不起来」的动作写到诊断键，设置页在页脚说明一句。私有 API 改名后，用户不再只看到「配的东西没了」却没有任何解释。
- **`tgSpawnRefused` 跨线程访问改为原子操作**（`TGSpawnShell`）
- **音乐条件写明语义**：只看「是否在播放」，不区分输出设备（AirPlay 也算）。
- **补 `README.md`**（原为 0 字节）、**本变更日志**、`control` 补 `Icon:` 字段。
- **CI 增加条件语义任务** `python3 scripts/check_conditions.py`（此前不在 CI 里跑，语义漂移时永远「全部通过」），并把 `cn*` 分支纳入构建触发。

### 删除

- `Tweak/TGCNMap.h`（906 行 / 57 KB）：汉化时一次性替换脚本的对照表，替换完成后已无任何引用，也不参与构建。改文案请改源码。

## 1.5.0+cn4.18

- 修复「返回上级」一次退两层：页面戳从「根类名 + 直接子控制器」改为可见链全链签名，补 nav 栈深与 tab 选中项。
- CI：arm64e 切片校验、产物改名。

## 1.5.0+cn4.17

- 返回上级只保留公开 `popViewControllerAnimated:`，删除私有 `_popViewControllerWithTransition:`（签名错位时读垃圾参数、行为随机）。
- 侧键窗口统一 0.4 s。

## 1.5.0+cn4.16

- 修复息屏状态下侧键双击 / 三击永远进不来（第二下被 iOS 当成另一次单击）。

## 1.5.0+cn4.15 / cn4.14

- 「仅当」条件改为独立键 `if:<mode>/<trigger>`，不再混在动作数组开头。
- 修复条件在取动作时被丢弃、导致条件不成立仍然执行。

## 1.5.0+cn4.13 / cn4.12

- 「仅当」改为触发器级独立区块；条件行统一显示；条件不成立的动作不进横幅。

## 1.5.0+cn11

- 首个汉化版（rootless，arm64 + arm64e）。
