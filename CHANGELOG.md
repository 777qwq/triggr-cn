# 变更日志

本仓库是 [`Jond-ie/triggr-beta`](https://github.com/Jond-ie/triggr-beta) 1.5.0 的汉化修改版。
版本号形如 `1.5.0+cn4.19`：前半是上游基线，`cnN` 是本仓库的第 N 次发布。

## 1.5.0+cn4.21

把上游 1.5.0 里被 cn4.15 分叉时漏掉的**动作扩展机制**补回来，顺手改三处文案和一个依赖。

### 恢复：第三方动作扩展

别的包往 `Library/Triggr/Extensions/` 放一个 plist，动作选择器里就多出一类动作：

```
ext:<扩展名>:<条目名>   →   /var/jb/bin/sh <Program> <条目名>
```

- 条目是 `ItemsDirectory` 里符合 `ItemsExtension` 的文件，条目名只作为**独立参数**传进去，永不进 `sh -c`。文件名带 `;`、反引号也只是文件名。
- iOS 18 上 SpringBoard 起不了进程，这条会整条交给 `triggrd`。安全边界不变：`triggrd` 只跑用户自己配过的动作，白名单就是偏好里所有指派的值，`ext:` 天然在里面。
- 设置页：每个装了 plist 的扩展一个分类，图标和颜色由 plist 声明，搜索里也在。
- `EXTENSIONS.md` 一并补回，说明字段、执行方式、边界。

**边界说明写清楚了**：扩展是进程级的，只能接有命令行入口的工具。图形界面、没有对外执行入口的 App（例如只有 Activator 动作的自动化工具）接不了——Activator 在 iOS 15 之后没有可用版本，它的动作大多也只是「唤出界面」。

### 文案

按上游 2.1 的「Clearer button notes」重写两处，方向从「怎么关掉」改成「怎么保留」：

- 动作页空状态：`未选择动作，保持默认行为（音量加）。选一个动作就会替代它；只想在某些时候替代，加「仅当」。`
- 「仅当」页脚：先说「可选」并举三个例子，再说「任一不成立就跳过这次」，最后补一句「按键类触发器这时仍按系统原本的方式响应」——这句话对应 cn4.20 修的按键回流。

### 修正

- **触控 ID**：触发器组名从 `Touch ID` 改成 `触控 ID`，与中文系统的叫法一致（图标映射键同步）。
- **AirPlay 选择器**：`AAirPlay 选择器` 多打了一个字母。

### 打包

- `Depends` 补回 `preferenceloader`、`com.opa334.altlist`。`Prefs/Makefile` 仍然链接 `AltList`、设置页仍然 `#import <AltList/…>`、入口仍然是 PreferenceLoader 的 plist——不声明依赖时，没装这两个包的设备上 Sileo 不会补装，结果是「装完设置页打不开」。

## 1.5.0+cn4.20

把上游 2.1 里 Only If 真正该有的行为补齐。上游从 2.0 起闭源，这一版全部按行为重写，没有取用它的代码。

### 新增条件

- **手电筒开 / 关**（`flashlight` / `!flashlight`）。上游 2.0 就有，我们之前只在动作里有、条件里没有。读的是控制中心的 `SBUIFlashlightController` 的 `level`，和动作侧同一个通道。
- **完全没有网络**（`!wifi`，裸形式）。以前「未连 Wi-Fi」和「完全没有网络」都写 `!wifi:`，文案说断网、实际只判了 Wi-Fi：关掉 Wi-Fi 但插着蜂窝时会被误判成断网。现在两者分开：`!wifi:` 只看 Wi-Fi，`!wifi` 要求 Wi-Fi 与蜂窝都没有（蜂窝按 `CTTelephonyNetworkInfo` 有没有注册网络判断）。

### 新增编辑入口

- **持续确认**（上游的 Still True After）。动作里的「如果」可以加「要求持续 N 秒」：条件要连续成立这么多秒才执行，中途不成立就跳过这一段。编码是条件末尾的 `@N`，cn2.77/2.78 的老数据一直能读，只是之前没有界面可以新建。
  「仅当」刻意不给这个入口：它是触发器级前置门，先决定「这次按键归不归 Triggr」，要等 N 秒就变成先接管再反悔，和「不成立就交还系统」直接冲突。

### 修复：Only If 不成立时按键变砖

「接管决定」原来发生在 Only If 判定之前，条件不成立时系统动作已经被吞掉，又没有动作接上：

- **锁键只有单击配置时**（`Tweak.x` `singlePress:`）：`TGFire` 返回 NO 后直接 `return`，没有 `%orig`，按锁键毫无反应。现在交还 iOS。
- **Face ID 机型锁键**（`TGLockFaceIDPress`）：仅当不成立时仍按「替换」走，保存的 iOS 反应块是空的，最后无处可补。现在三个 lock 触发器的条件都不过时，整条交还 iOS。
- **Home 三击**（`initialButtonDown:`）：无条件 `tgHomeSwallowSingle = tgReplaces`，三击的条件不成立时三击不跑、单击也被吞，一按全无反应。现在只在三击真会执行时才吞单击。
- **音量键**（`TGVolumeBegan` / `TGVolumeEnded`）：按下时按「有没有配」吞掉系统步进，松手才发现仅当不成立，那一次音量就白按了。现在按下时用 `TGWillFire` 连条件一起判；已经吞掉但没有任何动作接上时，补播一次步进。

新增 `TGWillFire(trigger)`：和 `TGFire` 同一套前置判断，但不执行，供按键在按下瞬间决定接管与否。

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
