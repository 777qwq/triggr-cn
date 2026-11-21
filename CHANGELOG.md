# 变更日志

本仓库是 [`Jond-ie/triggr-beta`](https://github.com/Jond-ie/triggr-beta) 1.5.0 的汉化修改版。
版本号形如 `1.5.0+cn4.19`：前半是上游基线，`cnN` 是本仓库的第 N 次发布。

## 1.5.0+cn5.2.15

- **修微信内「返回上级」无效：执行层改走系统原生返回手势**。cn5.2.14 修好了跨进程投递（系统 App 的返回已恢复），但微信始终不动——问题不在"通知有没有送达"，而在送达之后的执行：Relay 的 `TGBackStep` 靠 `accessibilityPerformEscape` + `popViewControllerAnimated:` 硬弹，微信既不自报 escape、自绘导航容器也不在标准 UINavigationController 栈里，两条都落空，于是"通知收到、闸也过了、页面不动"。前三版全改投递层，方向就错了。cn5.2.15 改成让 SpringBoard 直接回放一次「从屏幕左边缘起滑、向右滑出、抬起」的系统触摸（复用手势库那套 `IOHIDEvent` 注入设施：`tg_gesture_play`、真实触摸屏 sender ID、`edge=8` 左边缘位、play 串行队列、`g_playing` 递归闸——Triggr 自己的识别器会自动忽略注入触摸，不会触发用户绑的边缘动作）。iOS 像路由真手指一样把这段触摸交给前台 App，由 App 自己的原生交互式返回接管——这正是用户已验证在微信有效的那条路径，也是 AssistiveTouch 同类做法，不依赖任何 App 内部结构。主屏幕触发（无前台 App）不回放，左滑在主屏幕是负一屏而非返回，保住 A 方案。Relay 侧的 escape/pop 执行链、back 通知注册、命令文件与时间戳整套删除（净减代码）；EdgeBack 保留——它放行被 App 禁用的边缘返回手势，是回放触摸能被系统返回识别器接受的前提。dry-run 不发触摸，冻结/多指判据与投递无关的逻辑一律不动。

## 1.5.0+cn5.2.14

- **修「返回上级」全部失效：放弃在 SpringBoard 侧猜目标，改为广播 + 时间戳新鲜度**。cn5.2.13 用「按目标进程定向的通知名」——SpringBoard 从 `_accessibilityFrontMostApplication` 取前台 pid 拼进通知名——但该对象并不保证提供 KVC 兼容的 `pid`，取不到时 pid 降级为 0，通知发到 `back/0`，而所有 App 注册的都是自己的真实 pid（>0），无人订阅 → 返回全部失效（含系统 App）。cn5.2.14 不再在 SpringBoard 侧猜「发给谁」（bundle id 曾在微信上错配、pid 又取不到，两次翻车），回到**固定广播 + 时间戳**：SpringBoard 触发时先看有没有前台 App，主屏幕（无人前台）直接不发——谁都不动，保住 A 方案；在 App 内则写一个纳秒单调时间戳（`TGRelayStamp()`，mach 时钟显式换算 timebase，两侧同一把尺子）到命令文件再发广播。所有注入 Relay 的 App 都收到，但每条只认两关：① 收到时自己是前台 active；② 命令是 1.5s 内生成的。两关都过才执行返回。后台 App 积压的 block 回前台才跑时时间戳已过期，直接忽略，不会误退无关 App。bundle id、pid、命令文件目标比对、token 去重整套删除——比定向名版更简单，且不再依赖任何取不到的属性。App 内的 Escape+pop 两步、EdgeBack 左滑复活、冻结与多指判据一律不动。

## 1.5.0+cn5.2.13

- **重做「返回上级」的跨进程投递，改用按目标进程定向的通知名**（cn5.2.14 已弃用，原因见上）。通知名带目标 pid（`com.johndie.triggr/back/<pid>`），SpringBoard 取前台 App pid 拼进名字 post，每个 App 用 `getpid()` 拼自己的名字注册。问题：`_accessibilityFrontMostApplication` 不保证提供 KVC 兼容的 `pid`，取不到时降级 0 → 全部失效。
- **单应用图标轻扫的显示名称改为「抖音 · 图标下滑」格式**。原「在 图标下滑 上抖音」语序别扭（方向标题与 App 名套进「在 X 上 Y」模板时参数语义错位）。设置页与共享目录两处拼接统一为「App 名 · 方向」，添加入口与 action sheet 不变。

## 1.5.0+cn5.2.12

- **触发器归类整理：应用通知/应用图标轻扫归位，删除通用图标轻扫**。两项带参数的动态事件此前固定显示在"自定义事件"组——`notification.app:<bundle id>`（来自应用的通知）和 `icon.flick<方向>:<bundle id>`（在某应用图标上轻扫）。cn5.2.12 把它们归入对应静态分组：前者归"通知"组、后者归"主屏幕手势"组，添加入口也一并从自定义事件页搬到对应分组页就近放置。实现上复用现有机制：`TGGroupOfTrigger` 按前缀判定归属，`customEventRows` 按 `_group` 过滤，分组页与自定义事件页共用同一方法，总览计数、删除、移动等功能自动跟着走，未新建平行逻辑。同时删除主屏组四项通用图标轻扫（对所有 App 生效的图标上/下/左/右滑）；针对单个 App 的图标轻扫保留。分组 footer 文案同步更新。触发器标识符、判定逻辑、Relay/Tweak 侧不变——纯设置页归类整理，不影响通知与手势的实际行为。

## 1.5.0+cn5.2.11

- **修三指四向滑被双指识别器误冻（"三指滑不动"）**。三指几乎不会严格同时落屏，前两指先落的几十毫秒里，双指识别器（`numberOfTouchesRequired=2`）处于 Possible、记了 origins、`event.allTouches.count` 仍是 2，三指起手的前两指位移一旦过 16pt、偏差小、方向匹配就已 `TGMultiFreezeBegin()` 冻住画面。第三指落下 `count=3>2` 时双指识别器才 Failed，但它触发的冻结没有撤销——Failed 不再收 `touchesEnded`/不走 `recognized:`，于是画面被钉住到抬手或 2s 兜底，表现为三指右滑"滑不动"。cn5.2.11 在四向滑 `touchesBegan` 的手数超限分支加一条对称性守卫：出局前若本识别器已冻就先 `TGMultiFreezeEnd()` 撤销（解冻幂等，多识别器同时撤销安全），把画面交还三指识别器按自己的判据冻结。方向判据、阈值、落指快照统一那套一律不动，只补"谁冻的出局谁解"。动作触发链本就正常（多指识别器挂在 SpringBoard，冻结只禁 App 内 scrollView 识别器），未改。
- **同步边缘手势与多指手势的分组说明文案**，去掉过时的"内容可能跟着动/列表仍会跟着动/手指到齐就冻结"，改写为当前的冻结行为。

## 1.5.0+cn5.2.10

- **修「返回上级」跨进程误退：给广播加目标核验 + token 去重**。`system.back` 原本只发一条 Darwin 通知，广播给所有注入 Relay 的 App，谁收到谁就 pop。后台 App 的通知 block 积压在主队列，回前台时集中执行，`TGRelayWindows()` 那一刻大家都成了前台，于是把微信、短信等无关 App 各退一级——主屏幕右滑触发多次就会退到主页。cn5.2.10 改成「文件定目标 + 通知只做唤醒」：SpringBoard 触发时把目标 bundle id 与 `mach_absolute_time()` token 写进 `/var/tmp` 文件再 `notify_post`；Relay 收到后核验——目标空串（主屏幕触发，A 方案：谁都不作用）直接忽略、目标不是本 App 直接忽略、token ≤ 上次处理的（积压的重复 block）直接忽略，三项都过才执行返回。token 用单调时钟、respring 不归零，避免序号重置导致误判已处理。Escape + pop 两步、EdgeBack 左滑复活、冻结与多指判据一律不动。代价：从主屏幕触发的「返回上级」不再有任何效果。

## 1.5.0+cn5.2.9

- **冻结统一为一套：删掉"冻结瞬间快照"分支，多指与边缘竖滑共用落指快照**。cn5.2.8 里两套快照并存——多指还原到冻结瞬间 offset（多存 `tgFreezeOffsets`/`tgFreezeZooms`），边缘还原到落指快照（`tgBeganOffsets` + `useBegan` 分支 + `TGFreezeBeginFromBegan` 专用入口 + `TGRelayFreezeBeganBegin` 专用通知），体验分裂、代码层层加分支。cn5.2.9 把这套收敛：**删掉**冻结瞬间的 offset/zoom 数组、`useBegan`/`tgFreezeBeganGen` 分支、`TGFreezeBeginFromBegan` 入口和 `TGRelayFreezeBeganBegin` 通知；落指那一刻统一快照所有 scrollView 的 `contentOffset + zoomScale`（weak key + generation 保护，无状态幂等，多指识别器与边缘各在自己的 `touchesBegan` 调同一句），冻结只记 `tgFreezeSnapGen`，解冻一律还原到落指位置。多指与边缘从此走同一个 `TGFreezeBegin/End` 和同一组 Snapshot/Begin/End 通知。generation 不符（冻结期间换了轮）时不还原位置、只恢复开关，避免串场。判据（cn5.2.7 四向滑起手收紧、cn5.2.6 捏合方向闸门、cn5.2.5 正交分解、cn5.2.2 点按误触）与触发阈值一律不动。

## 1.5.0+cn5.2.8

- **沿边上下滑接上冻结，参照 RC 的落指快照 + 早冻机制；触发距离与时长减半**。此前四条沿边竖滑没有任何冻结，手指滑动时列表会跟着滚。cn5.2.8 借 RC 的做法：手指落下瞬间在 SpringBoard 与 App 两侧快照所有 scrollView 的 `contentOffset`（`NSMapTable` weak key + generation 保护，无视觉影响），纵向一走稳（>10pt、方向够直、该方向有指派）就先 `TGFreezeBeginFromBegan()` 钉住画面，解冻时还原到**落指位置**，把冻结前已滚掉的那几 pt 一并撤销——这是"早冻"能成立的关键。抬手、多指介入、2s 兜底均解冻；多指那套仍还原到冻结瞬间 offset，完全不受影响。触发判据按用户要求只改两项：`TGVertDistance` 125→62.5pt、`TGVertMaxDuration` 0.9→0.45s；速度 500pt/s、横向漂移 0.4 比例不变。早冻阈值沿用 RC 原值 10pt。

## 1.5.0+cn5.2.7

- **四向滑起手误冻收紧，捏合/张开与 5.2.6 保持一致**。cn5.2.6 虽按指派方向加了闸门，但四向滑冻结仍用质心位移 > 5pt 起判——方向还没长稳时，按压回弹、斜向落指、两指先后落下的单帧抖动就能让质心越过阈值、主导轴短暂指向某个指派方向，造成"不该冻的方向被冻住"（该冻的反而一直正常）。cn5.2.7 改两处（均为真机可调常量）：起手阈值 `TGSwipePanLimit` 由 5pt 提到 16pt，等方向走稳再冻；新增方向纯度闸门 `TGSwipeAxisDominance=0.82`，主导轴分量须占位移 82% 以上（偏离主轴 <35°）才算方向，近 45° 的模糊斜向位移先不认。冻得稍晚的那几十毫秒里列表若先滚了几 pt，解冻时 `setContentOffset` 会还原弹回。捏合/张开的 scale 冻结判据、正交分解、点按、解冻路径与通知逻辑均不变。

## 1.5.0+cn5.2.6

- **冻结收紧为"按实际指派的方向/动作"，消除同类别内的白冻**。cn5.2.5 的正交判据只隔开了"平移轴 vs 缩放轴"（滑动↔捏合不串扰），但冻结判据本身不看方向与指派：只指派双指上滑时，下/左/右滑照样冻住画面却不触发动作；只指派捏合时，张开也照样冻。cn5.2.6 给两类冻结判据各加一道方向闸门：**四向滑**要求质心位移的主导轴方向与 `self.direction` 一致（垂直看 y 符号、水平看 x 符号），**捏合/张开**要求 `scale` 的变化方向与 `desiredDirection` 一致（捏合只在缩小 <0.95 时冻、张开只在放大 >1.05 时冻）。位移矢量正交判据（防捏合误冻）、解冻路径、点按与通知逻辑均不变。

## 1.5.0+cn5.2.5

- **滑动冻结判据改成位移矢量的正交分解，根治"只指派上滑、做捏合仍误冻、照片缩不动"**。cn5.2.4 用「质心位移 > 5pt 且半径变化 ≤ 5%」，但半径是位置量：捏合起手前几帧半径还没拉开差距，一指固定时质心却已漂移越线（食指沿圆弧斜移，半径几乎不变），照旧误冻；一旦误冻，App 原生捏合识别器被禁用、`zoomScale` 被记录待还原，表现就是照片缩不动。cn5.2.5 改看每指**位移矢量** `dᵢ`（当前位置 − 起点），拆到两个正交子空间：**平移分量** `c = mean(dᵢ)` 与**偏差分量** `eᵢ = dᵢ − c`；冻结条件是「`|c| > 5pt` 且 `max|eᵢ| ≤ 5pt`」。一指固定捏合时偏差恒等于质心位移（`|e| = |c|`），质心越线则偏差必然同时越线，两条件数学上无法同时成立，从原理上冻不了；对称捏合质心不动也不冻；纯滑动偏差≈0 仍正常冻。用绝对 pt 阈值，不再受落指间距与半径基数影响，起手即可判。捏合识别器自身的冻结判据、解冻路径、点按与通知逻辑均不变。

## 1.5.0+cn5.2.4

- **冻结判据正交化，捏合/张开不再误触发滑动冻结**。cn5.2.3 用「质心位移 > 5pt」当四向滑的冻结判据，但质心位移不是平移手势的专属量：捏合/张开不对称时（一指固定、一指移动）质心同样大幅漂移，于是「只指派双指上滑、实际做捏合」时滑动识别器也会误冻。cn5.2.4 把每指位移拆成两个正交自由度——**平移轴**（所有手指质心的位移）与**缩放轴**（各指到质心的平均半径变化），两个识别器共用同一个半径量，各看各的轴、并要求另一轴静止：
  - **四向滑**：质心位移 > 5pt **且**半径变化 ≤ 5%（间距稳定＝没在缩放）才冻；一旦半径在变（正在捏合/张开），本识别器就不冻，交给捏合识别器。
  - **捏合/张开**：仍看半径变化偏离 5% 才冻；纯平移时半径不变，天然不误冻。
  - 平移判据不再是唯一条件，缩放手势的质心漂移被缩放闸门拦下，两个判据互不串扰。解冻路径不变（手指全抬 / 识别后 0.35s / 2s 兜底），cn5.2.2 的点按误触修复与通知、文案改动均不受影响。

## 1.5.0+cn5.2.3

- **冻结改由手势专属信号触发，未指派的手势不再误冻**。此前捏合/滑动识别器在 `touchesBegan` 只要手指数到齐就冻，导致"只指派了双指上滑、做双指捏合"时，上滑识别器被同一批手指误触发冻结。cn5.2.3 把冻结挪到 `touchesMoved` 并按手势类型判定：捏合识别器看 `scale` 偏离 1 超过约 5% 才冻，四向滑识别器看**质心**位移超过 5pt 才冻（捏合时两指反向、质心几乎不动，因此不会误冻）。冻结仍赶在 0.7/1.4 的识别阈值之前，只比原先晚一个手移动作；未指派的槽位本就不挂载识别器，全程不冻。解冻路径不变（手指全抬 / 识别后 0.35s / 2s 兜底）。

## 1.5.0+cn5.2.2

- **多指点按误触改用自定义识别器根治**。cn5.2.1 的失败依赖只挡得住"捏合/张开识别成功时带出点按"，挡不住"没指派捏合、只指派点按时把捏合/张开的抬手误认成点按"——因为那时候捏合识别器根本没挂载，依赖建立不起来。cn5.2.2 换用 `TGTapRecognizer`：`touchesBegan` 记每指起点，`touchesMoved` 一旦某指偏离超过 10pt 就自己 fail，纯点按位移小才认成功。按每指位移而非质心判定（捏合时质心几乎不动），不依赖任何其他识别器，只指派点按也能挡住误触，且没有"等别的识别器判失败"的抬手顿挫。撤去失败依赖 delegate。

## 1.5.0+cn5.2.1

- **修复多指点按误触**。14 个多指识别器（点按/四向滑/捏合/张开 × 两指三指）全部共存，而点按判定最宽松，原本小幅滑动或没跨阈值的捏合会兜底落到点按上，连带触发点按动作。现通过 delegate 的动态失败依赖（`shouldRequireFailureOfGestureRecognizer:`）让点按识别器要求「同手指数的滑动/捏合」先判：它们认了就不再认点按，只有它们明确失败才轮到点按。只处理自己的点按与同手指数非点按槽位，不干预系统识别器，也不影响四个方向识别器之间的共存。

## 1.5.0+cn5.2

- **回到纯系统级识别器，移除全部拒绝层**。cn5.3～cn5.4 在左右边缘叠加的拒绝层（`_shouldReceiveTouch:` / `touchesBegan:` / `touchesMoved:` 三层 hook）会释放系统识别器对触摸的占有，反而让系统手势更容易被触发，已整体删除。边缘手势只靠识别器自身能力，不再 hook 任何系统识别器。
- **保留 8 路边缘手势**：左右滑入、沿边上下滑、左右双指滑入。顶/底四角与顶底双指不提供。
- **「从左侧滑入」保持普通 pan**：不取代系统原生左滑返回，代价是滑入时应用内容可能跟着动。其余滑入是系统级 `UIScreenEdgePanGestureRecognizer`，能从源头取消应用触摸；沿边上下滑走 `sendEvent:` 旁路，列表仍会跟着动。
- **版本清理**：旧的 5.2 及 5.2 以上的实现与记录全部作废，以本版作为新的 cn5.2。
- **通知内容匹配改由条件系统承担**：保留「通知」分组（`notification.any`）与自定义事件的「来自应用的通知」（仍直接选应用），不再把关键词塞进触发器键、也不加独立配置页。新增「仅当 / 如果 → 通知文本包含… / 不含…」条件（`notiftext:`）：读取通知标题与正文拼成的文本做字面包含、不区分大小写（非正则），只在通知到达瞬间判定；填了关键词就必须命中才放行。通知内容用 `respondsToSelector` 兜底读取（照 WXRelay 手法），并保留 `NCNotificationDispatcher` + `BBServer` 双入口去重。开启系统「隐藏通知内容」时正文被打码，匹配可能失效。

## 1.5.0+cn5.1

- **边缘手势按 2.1 的真实实现重做**。cn5.0 用一条普通 `UIPanGestureRecognizer` 同时管滑入和上下滑，既做不到「不点到内容」（普通识别器挂在 SpringBoard 里取消不了 App 进程的触摸），沿边竖滑也会和列表滚动互相干扰。
  - **横向滑入**（`edge.left` / `right` / `left2` / `right2`）用系统级 `UIScreenEdgePanGestureRecognizer`，并给 `edges` 赋值。iOS 认它是真正的系统边缘手势，识别到就从事件路由层把触摸从 App 撤走。
  - **沿边上下滑**（`edge.leftup` / `leftdown` / `rightup` / `rightdown`）改由 `-[SpringBoard sendEvent:]` 接管。SpringBoard 是系统 shell，backboardd 会把前台触摸的一份拷贝投给它，所以 App 内同样有效。用 `locationInView:nil` 的原始坐标按 `UITouchPhase` 自算位移，不看识别器的 `state`，也不调 `translationInView:`。
  - 判定参数照抄 2.1 dylib 的常量：贴边带为屏宽 4%、纵向位移 ≥125pt、横向漂移 ≤纵向×0.4、速度 ≥500pt/s（按 min(时长, 0.03s) 折算）、时长 ≥0.9s 否决。
- **行为说明**：竖向判定只读事件，最后照常把触摸交给 App，所以沿边竖滑时列表会跟着动。这是 2.1 本身的取舍（它的 PatchNotes 也提示挑误触也无所谓的动作），不是回归；真正拦得住 App 触摸的是横向滑入那条系统级 edge pan。
- **版本清理**：5.0.1–5.2.1 的实现与记录全部作废，以 cn5.0 为基线直接出 5.1。

## 1.5.0+cn5.0

- **修复配置导出闪退**：导出原来走分享面板，TriggrApp 里给「隔空投送」取应用图标时，IconServices 建 CIContext 在 GLContext 上空指针崩（iOS 16.3 实测）。改为系统文件选择器导出，与手势导出同一条路；临时文件在保存完成或取消后删除。
- **动作列表的「复制一份」改为「复制」**：右滑出来的按钮文字更短，行为不变——仍是在该动作下方插入相同的一条；「如果 / 否则 / 结束条件」与停顿不参与复制。
- **插件详情改写**：`control` 的 Description 改为「基于 Triggr 1.5.0 汉化修改：给按键、手势和系统事件指派动作。」，不再在包描述里罗列功能清单。
- 版本号升到 1.5.0+cn5.0。

## 1.5.0+cn4.75

- **移除 AutoTouch 动作整组**：动作选择器里不再有这一分类，连同它背后的实现一起删掉——脚本目录探测（`TGAutoTouchScriptDirectories` / `TGAutoTouchFindScript` / `TGAutoTouchScripts`）、播放引擎调用（`TGRunAutoTouch`，走 `PlayingManager` 私有接口）、可用性判断（查 `PlayingManager` 在不在）、执行分支、动作标题。
  - 这套东西依赖 AutoTouch 的私有播放引擎，版本一换就可能失效，且只读脚本、不能录不能停。初始版不带这层不确定的实现。
  - 老配置里若还留着 `autotouch:<脚本名>` 动作，读到就被丢掉（`TGRetiredAction`）：它已经不在选择器里，留着只会在列表里显示成一行看不懂的标识符，而且删不掉。丢掉后该触发器若没有别的动作，就恢复系统行为。
  - 文档同步：README 的动作清单、EXTENSIONS.md 里拿 `autotouch:` 举例的两处改成现有前缀，TODO 里 cn4.31 那段待验整段删除。
- **清掉一处死目录项**：`{"if:custom", "自定义条件…"}` 与 `TGIfCustomAction` 宏。它既没有解析（`TGConditionParse` 不认 custom），也没有执行分支，而且「条件」组不进选择器，选不到也对不上——纯残留。
- **全仓体检结果**（这一版没有改动，只确认）：
  - 静态函数/全局变量：428 个定义，无一个是仅定义未被引用。
  - 宏：102 个 `TG*` 宏，除上面那个 `TGIfCustomAction` 外全部有用。
  - 头文件：本地 `#import` 全部能找到目标文件，没有无人引用的头文件。
  - 目录：32 个数组全部被引用或直接被代码使用，165 个条目没有一个 id 重复出现在两个分组里。
  - 动作覆盖：目录里列出的动作，除 `else` / `endif` / `gesture.*`（走序列引擎和宏）外，全部有对应处理分支；执行表里另有 9 个不在目录里的动作（`system.back`、三种震动强度、扫码/付款码），是有意的别名。
  - 偏好键：没有只写不读或只读不写的键；`配置/ActiveProfile/RecentActions` 三个只在设置页用，是有意的。
  - 空分类、死图标映射、`TODO/FIXME` 标记：均无。

## 1.5.0+cn4.74

- **手势库的删除改成从右往左滑**：点按弹出的菜单现在只有「试播」和「重命名…」，删除挪到行上从右往左滑出来的按钮里。
  - 这一屏关掉了「滑到底即执行」：滑到底只会把按钮露出来，必须再点一下才真删。录一条手势要几十秒，删掉找不回来，误滑一次就没了不划算。触发器行不受影响，仍是滑到底即删——那些指派删了还能重设。
  - 删除后先不立刻减行，等 SpringBoard 改写库文件、0.8 秒后重读一次，列表才少一行；否则会出现「行没了但库里还在」的一瞬。
  - 列表底部说明同步改写成实际手势路径。
  - 版本号跳过 cn4.73（那一版作废、未发布，代码与记录都已撤掉）。

## 1.5.0+cn4.72

- **清掉残留的老配置**：初始版不该带着已删除触发器的配置。`TGReadAssignments` 读到 `homebar.*` / `edge.bottom*` 的键（动作键与 `if:` 条件键都算）时跳过解析，并从偏好里 `CFPreferencesSetAppValue(key, NULL)` 删除、`CFPreferencesAppSynchronize` 落盘。清一次就够，之后读到的就是干净的配置。
- **三个触发器分组改名**：「状态栏」→「状态栏手势」，「主屏幕图标」→「主屏幕手势」，「屏幕边缘」→「边缘手势」。主屏幕手势里四条轻扫条目补上「图标」二字（图标上滑 / 图标下滑 / 图标左滑 / 图标右滑），与「双击空白处」区分开。
  - 设置页的组图标映射按新名字同步（否则图标会退回默认）；README 组名同步；TODO 里 cn4.68 那条按新名字重写。配置键不变，改名不影响已有指派。

## 1.5.0+cn4.71

- **删掉底部手势一整组，无残留**：五项触发器（`homebar.single` / `homebar.doubletap` / `homebar.longpress` / `edge.bottomleft` / `edge.bottomright`）连同实现全部移除。
  - 删除的代码：`TGBottomEdgeRecognizer`（私有初始化器 `-initWithTarget:action:type:options:` + `_setEdgeRegionSize:`）、`TGBottomTarget`、`TGBottomTapRecognizer`、`TGBottomPressRecognizer`、`TGBottomHomeBarTarget`、`TGRegisterBottomGestures`、几何判定三件（`TGBottomRegion` / `TGBottomPortrait` / `TGBottomPointInBar` / `TGBottomPointInTapBar` / `TGBottomSafeInset` / `TGBottomTapRegion`）、`TGFireHomeBar` 与两个去重入口。
  - 同时移除两处配套 hook：`SBHomeAffordanceInteractionManager` 的 `_bounceDoubleTapRecognized:`（拦 Reachability）、`SBHomeGesturePanGestureRecognizer` 的 `touchesBegan:withEvent:`（拦底角回主屏）。
  - 触发器目录 `Shared/TGCatalog.h` 删掉「底部手势」分组；设置页的组图标映射、README 的组数（20 → 19）、`control` 的 Description 同步更新；TODO 里两条相关待验整段删除。
  - 排查日志从 `TGBottomLog` 改为 `TGPluginLog`，落盘 `plugin.log`（原先只有插件通知在用，与底部无关）。
- 边缘手势、多指手势、主屏双击、图标轻扫均未改动，边缘八项触发器照旧。

## 1.5.0+cn4.70

- **钉住画面改用 Triggr 2.1 的 TGFreeze，撤掉 cn4.69 那条走不通的路**：cn4.69 把多指识别器的 `cancelsTouchesInView` 设成 YES，实机照片照样缩小。原因在进程边界——识别器挂在 SpringBoard，`cancelsTouchesInView` 只取消同进程、同窗口视图树的触摸投递，独立进程的照片 App 根本收不到这个取消。
  - 2.1 的做法（`Triggr.dylib` 的 `TGFreezeBegin` 0x318ac / `TGFreezeEnd` 0x32988）：不取消触摸，而是**各进程冻自己的界面**——把所有 `UIScrollView` 的 `contentOffset` 存下来、`scrollEnabled` 关掉、`gestureRecognizers` 逐个 `enabled = NO`，抬手还原。反汇编确认 2.1 四处 `setCancelsTouchesInView:` 全是 0，它从不指望这个属性。
  - 本版新增 `Shared/TGFreeze.h`（2.1 同名函数与变量），SpringBoard 冻自己的窗口，App 经 Relay 收到 `freeze-begin` 通知后冻自己的。比 2.1 多存一样 `zoomScale`：照片缩小改的是它，而 2.1 只还原 `contentOffset`。
  - 冻结时机：手指数一到齐就冻（两指的槽位在第二根落下时），赶在缩放发生之前。解冻：识别成功 0.35 秒后、或所有手指抬起、或 2 秒兜底，三者先到先算。
  - 多指轻扫换成 `TGSwipeRecognizer` 子类，同样在触摸开始冻结，列表不再跟着滚。
  - 未指派的手势不挂识别器、不冻结，穿透照旧。

## 1.5.0+cn4.69

- **多指手势触发时钉住画面**：多指识别器（挂 `SBSystemGestureManager`）的 `cancelsTouchesInView` / `delaysTouchesBegan` / `delaysTouchesEnded` 从 NO 改为 YES——判定期间暂缓下传、识别成功就吞掉触摸，不再同时作用于 App。这样三指捏合指派截图时，照片不会被同时缩放，截图是原画面。
  - 范围精确：识别器本就只在手势已指派时才挂载（`TGUpdateMultiTouchGestures` 的 `want` 判断），未指派的手势没有识别器、触摸照旧穿透给 App。其它识别器（边缘、底部、小白条、主屏幕双击、图标轻扫）属性未动。
  - 代价：被指派的多指手势会独占触摸，对应的 App 原生手势（如照片/浏览器的捏合缩放）在这一手势上失效——这是"钉住"的必然结果。捏合/滑动判定需要手指移动一段，判定期间的触摸被暂缓，失败会补发给 App，可能有极短延迟。

## 1.5.0+cn4.68

- **手势分组重构：主屏幕组删除、多指手势升级为全局**：
  - 「双击空白处」（`homescreen.doubletap`）归类到「主屏幕图标」分组，标识符与识别器不变（仍挂 `SBRootFolderView`、只在空白处生效）。
  - 删除整个「主屏幕手势」分组及其捏合/张开/双指上下滑四项——这些手势的对应项已包含在多指手势组。
  - 「应用内手势」改名「多指手势」，识别器从 Relay（各 App 的 UIWindow）迁到 SpringBoard 的 `SBSystemGestureManager` 系统手势层（type `+9..+22`，沿用 Triggr 已有放行 hook）。因此主屏幕、锁屏、所有 App 之上都能触发，识别后直接 `TGFire`，不再经 `cn.triggr.inappidxN` notify 中转。Relay 只保留状态栏点击、摇动、左滑返回与返回上级。
  - 系统手势层无"贴边起步"那种独占区域，多指手势可能与 iOS 自带多指手势（主屏幕双指捏合进今天视图、App 内缩放等）同时发生——这是选择全局生效的代价。

## 1.5.0+cn4.67

- **修复手势库页行灰字、点不动**：cn4.65 为加箭头把手势行/标记大小行改回 `PSLinkListCell` + `detail:nil`，被 Preferences 框架当作无效链接而灰掉、禁用点击。换成 `PSListItemCell` + 自定义 `TGDetailCell`（照触发器 `TGSubtitleCell` 模式，value1 样式手动画右侧灰字摘要 + 箭头、标题黑字、可选），`detail` 保持 nil 不 push，点击仍进 `didSelect` 弹操作面板。外观与触发器行/主页手势库入口一致，交互仍是弹出而非进下一页。

## 1.5.0+cn4.66

- **手势行去除左滑删除**：`TGGesturesController` 的 `swipeTitleForSpecifier:` 改为始终返回 nil，已保存手势行不再有左滑删除；删除仍可从点按弹出的菜单操作。分组说明文案同步去掉「从右往左滑可删除」，只保留「点按可试播、重命名或删除」。

## 1.5.0+cn4.65

- **手势库页 UI 按反馈调整**：
  - 已保存手势行与「录制标记大小」行恢复右侧摘要 + 箭头：cell 改回 `PSLinkListCell` 并显示 `gestureSummary:`（次数·时长）/ `readTabSize:`（大小）；`readTabSize:` 去掉手拼的 `›`，避免与 cell 箭头重复。cn4.64 的崩溃根因（popover source 用 `self.tableView`）已修，`didSelect` 仍拦截这两类行弹菜单，箭头与点击可正常共存。
  - 分组标题「回放选项」改为「设置」。
- **主页导航调整**：「菜单」从「指派」分组末尾移到「动作库」分组首行（手势库之前）。

## 1.5.0+cn4.64

- **恢复动作「播放最近录制的手势」**：`gesture.latest`（含 `@倍速`）。这一版起把执行链路补完整——动作表、显示标题、`TGGestureCommandForAction`、`TGGestureActionAvailable` 及 `TGCanPerform`/`TGPerform` 两个入口都接上，底层 `play-latest` 命令一直在。
- **修复手势库页两处真机问题**：
  - 点「录制标记大小」闪退：根因是这两处 action sheet 用了 `self.tableView` 作 popover source，在 TriggrApp 独立 App 里该私有属性不存在，触发 `doesNotRecognizeSelector`。改用 `self.view`，与其它页面一致。
  - 「已保存的手势」行有点按无反应、行末却带箭头：cell 误用 `PSLinkListCell` + `detail:nil`，改回 `PSListItemCell`——不显示箭头、保留右侧摘要、点击能正常进 didSelect 弹操作面板。

## 1.5.0+cn4.63

首版手势功能的真机反馈修复。

- **删两个无效动作**：移除「播放最近录制的手势」（`gesture.latest`，连同宏/display/命令映射一起删净）和动作选择器里的「管理手势库…」入口；手势库仍从主页「动作库」进入。
- **录制标记回到 RC 原版**：贴屏幕左/右边缘、可沿边缘拖拽（撤销 cn4.62 误改的顶部居中），设置页文案同步改为「边缘」。
- **录制标记大小可选**：修复设置页点击分发 bug——「录制标记大小」行原先被当作无动作行交给基类，点不出选择面板；现在用专用标记分流，小/中/大可选。
- **全中文弹窗**：预设名 `Gesture N`→`手势 N`，保存弹窗 Save Gesture/Discard/Save→保存手势/放弃/保存，详情 `N touches`→`N 次触摸`，倒计时 Starting in N/Cancel→`N 秒后开始`/取消。
- **手势行可点可滑**：修复已保存手势点按无反应（分发逻辑重写）；补上左滑删除（`swipeTitleForSpecifier:`/`swipedSpecifier:`）；点按仍可试播/重命名/删除。
- **导出不再闪退**：弃用把裸 `NSData` 丢给 `UIActivityViewController` 的做法（缺 UTI/文件名会崩），改为写临时 JSON 文件后用 `UIDocumentPicker` 让用户选保存位置，回调里清理临时文件。

## 1.5.0+cn4.62

移植 RemoteCompanion 4.4.0 的手势录制/回放，P1–P3 一次到位。

- **录制**：从任意触发器或手势库页开始，HID 层逐帧记录多指触摸（含贴边标志），屏幕顶部红色标记展开后停止、按名字保存。同名覆盖。
- **回放**：`gesture:<名字>` 把录制的手势按原时序派发成系统级触摸，跨应用、能回主屏、能触发系统手势；支持 `@2x` 倍速。
- **动作**：`gesture.record`（录制／停止）、`gesture.stop`（停止播放）、`gesture.latest`（播最新）、`gesture:<名字>`（按名字播放）。缩进序列照常可用。
- **手势库页**：主页「动作库」下新增入口；录制、试播、改名、删除、导入导出、停止于触摸、显示触点、录制标记大小都在这里。
- **防自触发**：回放期间，注入的触摸不再被 Triggr 自己的底边/小白条/状态栏/主屏幕手势识别器认成真实点击，避免「回放上滑又触发上滑动作」的递归。
- **手势库文件**：`/var/mobile/Library/Preferences/com.johndie.triggr.gestures.plist`，走真实路径（不加 jbroot 前缀），换根/重装不丢；schema 与 RemoteCompanion 一致，可互相导入。

许可证：RemoteCompanion 为 GPLv3，与本仓库兼容；手势模块按其源码移植，保留实现结构。

## 1.5.0+cn4.61

小白条不好点到：判定带的纵向从 24pt 放宽到「安全区 + 8」，横向不动。

### 为什么是纵向

横条画在离底边 8–14pt 处，而手指压在横条上时，触点重心普遍比横条高 10–15pt。
24pt 只够压住条的下半截，指腹稍偏就出界。横向（中间 1/3）没问题——横条两端本来
就不会被按到。

### 具体值

| 机型 | 底部安全区 | 判定带 |
|---|---|---|
| Face ID 全系（含 14 Pro Max） | 34 | **42pt** |
| iPad | 20 | 28pt |
| 无安全区 | 0 | 24pt（回落） |

规则是 `max(24, 安全区 + 8)`，换机型不用再调。42pt 在 14 Pro Max 上约 7mm 高，
但判的是触点重心，手感比数字宽松；仍低于 tab bar 图标（约 h-58）。

### 只动了点击

- 点击 / 双击 / 长按：纵向 42、横向中间 1/3
- `_bounceDoubleTapRecognized:` 的判据同步放宽，否则双击被我们接下、Reachability 还会拉下半屏
- **底角上滑不变**：仍 24pt、左右各 1/3，`_setEdgeRegionSize: 24` 未改
- `bottom.log` 的注册行会打印 `tap region=42`，便于核对机型上的实际值

---

## 1.5.0+cn4.60

修 CopyLog 唤不出来。分组和动作都出现了（说明插件探测是好的），点了没反应——原因不在名字，
在**投递通道**。

### 2.1 里两个插件走的不是同一条路

反汇编两个调用点，一个是 `CFNotificationCenterPostNotification`（分布式中心），一个是
`notify_post`（Darwin 通知）。这两个中心互不相通：往分布式中心喊，监听 Darwin 的进程听不见。

| 插件 | 2.1 的投递方式 | 地址 |
|---|---|---|
| Snapper 3 | `CFNotificationCenterPostNotification` | `0xd23c` |
| CopyLog | `notify_post` | `0xd36c` |

cn4.59 一律按分布式发，名字对、通道错，所以 Snapper 那种写法没问题，CopyLog 一声不响。

### 改法

`TGPostToPlugin` 按名字分流：`me.tomt000.copylog.*` 走 `notify_post`，其余走分布式中心。
名字仍然是 2.1 拼出来的 `me.tomt000.copylog.showView` / `...showFavoritesView`。

### 日志

`bottom.log` 现在会记一行 `post darwin <名字> status=<n>` 或 `post distributed <名字>`：

- 有 `status=0` → 通知确实喊出去了，问题在 CopyLog 那一侧（比如它只在键盘可见时监听）
- 有 `plugin copylog missing` → 探测没找到 dylib，检查安装路径
- 一行都没有 → 动作没执行到发通知这一步

---

## 1.5.0+cn4.59

接上 2.1 的 Tweak Actions：不再自己实现功能，而是喊一声，让装着的插件去做。
（这个包同时包含 cn4.58 的单击延时与底边文案改动。）

### 机制

都是发**分布式通知**（`CFNotificationCenterGetDistributedCenter`），不是 Darwin 通知中心——
2.1 反汇编里 `dlsym` 的正是前者，发错中心插件收不到。Triggr 只负责把名字喊出去：

| 分组 | 键 | 通知名 |
|---|---|---|
| Snapper 3 | `snapper3.force.open` | `com.jontelang.snapper3.force.open` |
| | `snapper3.forceinstant.open` | `com.jontelang.snapper3.forceinstant.open` |
| | `snapper3.forcefreeze.open` | `com.jontelang.snapper3.forcefreeze.open` |
| | `snapper3.openlast` | `com.jontelang.snapper3.openlast` |
| | `snapper3.history` | `com.jontelang.snapper3.history` |
| | `snapper3.closecrop` | `com.jontelang.snapper3.closecrop` |
| | `snapper3.close.all` | `com.jontelang.snapper3.close.all` |
| CopyLog | `copylog.showView` | `me.tomt000.copylog.showView` |
| | `copylog.showFavoritesView` | `me.tomt000.copylog.showFavoritesView` |

名字照 2.1 的字符串表：New Snap / Instant Snap / Freeze Screen & Snap / Reopen Last Snap /
Snap History / Cancel Cropping / Close All Snaps、Show CopyLog / Show CopyLog Favorites。

### 没装插件时

SpringBoard 启动时按 2.1 的做法在 dylib 目录里按文件名找（rootless 的 `/var/jb`、rootful 的
老路径、TweakInject 都查），把结果写进共享清单 `com.johndie.triggr.plugins.plist`。
设置页在沙盒里读不到那些目录，只能读这份清单——所以是「这边探、那边读」。

找不到就**不显示这个分类**，搜索里也搜不到，而不是显示了点下去没反应。执行时会再扫一次目录，
返回 NO 让动作标成不可用。

### 备注

这两组是「动作」，不是触发器：出现在动作选择器的分类里，可以单独用，也能放进序列。

---

## 1.5.0+cn4.58

只做两件事：把单击的等待砍掉一半，把底边这一组的名义理顺。

### 单击慢在哪

上一版单击要等两段：识别器的 `requireGestureRecognizerToFail:`（UIKit 的双击间隔，约 0.3s），
成立之后代码里又 `dispatch_after` 了 0.35s。第二段是给「系统回调那条来源会立刻报第一下」准备的
缓冲，可识别器这条路本来就已经等过了双击间隔——同一件事等了两遍，实测约 0.65s。

这一版删掉第二段。配了双击时单击约 0.3s（那 0.3s 是分辨单双击的物理下限，删不掉）；
没配双击时单击即时。

### 三条触发只留一个来源

- 单击 / 双击 / 长按：全部由我们自己注册的识别器触发
- `SBHomeAffordanceInteractionManager` 只保留 `_bounceDoubleTapRecognized:` 一处，职责只有
  「双击已被识别器接下时，别让 Reachability 把半屏拉下来」，不再参与触发
- `_bounceTapRecognized:` 那条钩子删掉。系统对单击横条没有任何可见行为，这个回调会不会真被
  调用没有保证，拿它当触发源等于赌；实测也没必要
- 去重窗口 250ms → 120ms：只剩一条来源，宽窗口反而会吞掉没配双击时的连续两次点击

### 文案

- 分组「底部横条」→ **底部手势**
- 分组描述收成一句：「底边上滑指派了动作，系统那套「左右两侧滑动切换应用」会被底边的屏幕边缘
  识别器挡住而失效。」
- 触发器名不动，仍是「单击横条 / 双击横条 / 长按横条」

---

## 1.5.0+cn4.57

把 cn4.52~cn4.56 那一串底边实验全部撤掉，回到「还没加底部手势」的地基，按 2.1 重做。

### 上一版错在哪

cn4.56 把 `UIPanGestureRecognizer` 直接挂到 SpringBoard 的窗口上。窗口是挂上了，但那个窗口收不到 App 区域的手指——真机上 `bottom.log` 里连 `pan began` 都没有，于是底部上滑、双击全部哑火，而这一整套还顺手把上一版能用的东西一起带走了。

结论：**只有进系统手势表（`addGestureRecognizer:withType:`）的识别器，才在 App 之上收得到触摸**。绕开它没有第二条路。

### 这一版怎么做的

- 底角上滑：`TGBottomEdgeRecognizer : UIScreenEdgePanGestureRecognizer`，用 2.1 那个私有初始化器 `-initWithTarget:action:type:options:` 建（`type:2`、`options:0`），`edges = UIRectEdgeBottom`，`-setEdgeRegionSize: 24`，按 `0x7467004 / 0x7467005` 两个 type 注册
- 起手判据只有三条（2.1 的底角判据）：竖屏、`y >= h - 24`、`x` 在左 1/3 或右 1/3；不满足当场 Failed
- 触发判据：向上 60pt 以上、且 `|dx| <= -dy`（以竖直为主）
- **中间 1/3 不挂 pan**，回主屏幕的上滑完整留给系统
- 小白条单击 / 双击 / 长按：`UITapGestureRecognizer`（1 下、2 下，单击 `requireGestureRecognizerToFail:` 双击）与 `UILongPressGestureRecognizer`（0.5s），同样注册进系统手势表，只认底边中间 1/3
- 长按认过之后 1 秒内不认单击——手指抬起时点击识别器会再认一次
- 双击保留 2.1 那条 `SBHomeAffordanceInteractionManager` 回调作为第二条来源；两条路径命中同一下时按 250ms 去重，不会双触发

### 明确的代价

配了「底部上滑」的动作，左右两侧滑动切换应用会失效。这是 `UIScreenEdgePanGestureRecognizer` 按族互斥的必然结果，2.1 与 RemoteCompanion 一样；不配底边上滑就照旧能切。小白条的三下不走这条路，配了不影响任何系统手势。

### 底角动作执行时屏幕不许跟着上去

`SBHomeGesturePanGestureRecognizer` 的 `touchesBegan:`：起手在底边 24pt、自己那 1/3、且该角当前模式里有动作时，把它置 Failed。这一层 cn4.55 验过有效（iOS 15+ 驱动回主屏的是它，不是 screen-edge 那一族），只是上次和「直挂窗口」的坏实现一起被删了，这次按原样接回来。

### 清理

删掉 `TGBottomPanRecognizer`、宿主窗口挑选、2 秒重挂、cn4.54 的 `UIScreenEdgePanGestureRecognizer` `_shouldReceiveTouch:` 层，以及 `edge.bottom2`（双指底部上滑，这一版不含）。`bottom.log` 保留，只记注册与触发。

---

## 1.5.0+cn4.56

底边识别器不再进系统手势表。这是换实现，不是调判据。

### 前面为什么怎么调都不行

`UIScreenEdgePanGestureRecognizer` 在 UIKit 里**按族互斥**：同一个窗口上只要有一条，别的 screen-edge 识别器就得等它先失败。SpringBoard 切应用那条（`SBFluidSwitcherScreenEdgePanGestureRecognizer`）也是这个族的。

我们注册的三条 `edges = Bottom` 覆盖整条底边，从屏幕左右两侧起手时它们收不到手指、但也不是立刻失败，于是切应用一直等——等到它失败，手已经滑出去几十 pt 了。

实测结论：**只要注册这三条，两侧就切不了应用**，跟判到多大、配的是哪个角无关。2.1 与 RemoteCompanion 用的都是 `addGestureRecognizer:withType:`，同样有这个代价。

### 现在怎么做的

- `TGBottomPanRecognizer : UIPanGestureRecognizer`，**直接挂到 SpringBoard 的窗口上**，不经过 `SBSystemGestureManager`
- 宿主窗口优先选「系统自己的 home 手势所挂的那个」——那里底边触摸一定到得了，不用猜
- 起手点在底边 24pt 带 + 自己那 1/3 才认；否则当场 Failed
- 触发前再判方向：`dy < -8` 且 `|dy| > |dx| * 1.2` 才算上滑，横滑一律放行
- 窗口重建（切 App、锁屏）会把识别器摘掉，每 2 秒检查一次挂回去

### 系统那边只剩一处介入

`SBHomeGesturePanGestureRecognizer` 的 `touchesBegan:`，判据与动作区完全重合。这一层 cn4.55 已验证有效（上滑不回主屏、横条横滑不受影响）。

顺带删掉 cn4.54 加的 `UIScreenEdgePanGestureRecognizer` `_shouldReceiveTouch:` hook：实测对底边上滑无用，却覆盖了切应用那条识别器，是纯干扰项。

### 风险

`UIPanGestureRecognizer` 挂在 SpringBoard 窗口上，优先级低于系统手势，**可能收不到触摸**。若如此，动作不会触发——这是这一版最大的不确定。

诊断日志（只在底边 60pt 内的起手写一行）：

```
/var/mobile/Library/Preferences/com.johndie.triggr/bottom.log
```

- 有 `pan began (edge.bottomleft) at (40, 831) locked=0 action=1` → 触摸收到了，看 `action` 和坐标查判据
- 一条都没有 → 收不到触摸，这条路到头

## 1.5.0+cn4.55

cn4.54 的拒绝层实测无效。原因找到了：**挂错了类**。

### 为什么无效

2.1 的拒绝层挂在 `UIScreenEdgePanGestureRecognizer` 的 `_shouldReceiveTouch:withEvent:` 上（`0x66ec`）。但在 iOS 15 之后，真正驱动「底边上滑回主屏」的是 `SBHomeGesturePanGestureRecognizer`——它继承 `UIPanGestureRecognizer`，跟 `UIScreenEdgePanGestureRecognizer` 是两条不同的继承链。那条 hook 压根碰不到它，所以动作照执行、屏幕照回主屏。

RC 也踩在同一个坑里：它 hook 了 `UIScreenEdgePanGestureRecognizer` / `_UIScreenEdgePanGestureRecognizer` / `SBScreenEdgePanGestureRecognizer` 三个类，一个都不沾 home gesture。它能"看起来"没事，是因为另一套冻结滚动把画面钉住了，手势本身该发生还是发生。

### 加了什么

`SBHomeGesturePanGestureRecognizer` 的 `touchesBegan:withEvent:`，判据复用 `TGBottomCornerKey`：

```
竖屏 + y >= h-24 + x 在左右各 1/3 + 该角配了动作 + 未锁屏 + 当前模式有动作
→ self.state = Failed，不调 %orig
```

`touchesBegan:` 是最早的回调，此时它还在 Possible，置 Failed 之后不会 Began，回主屏也就不会发生。范围与动作触发区完全重合，中间 1/3 与屏幕左右两侧仍是零接触。

### screen-edge 那条也补了两点

- **按 `edges` 过滤**：只处理 `edges & Bottom` 或 `edges == 0` 的，屏幕左右两侧那条（`SBFluidSwitcher…`）一概 `%orig`。这是 RC 里已有的判断，上一版漏了。
- 命中时写一行日志到 `/var/mobile/Library/Preferences/com.johndie.triggr/bottom.log`，记录类名与坐标。只在命中时写，平时不产生 IO。

这份日志是给下一次排查用的：如果还是无效，看文件里有没有 `home gesture refused`。有 → 拦住了，问题在别处；没有 → 这条识别器根本没走，需要换类名。

## 1.5.0+cn4.54

补上 2.1 底边手势的另一半：**拒绝系统识别器**。cn4.53 只做了自注册，动作能收到，但系统回主屏幕也在同一块起手，于是「动作执行 + 画面跟着上去」。

### 加的是什么

`0xa928` → `0x167dc`。2.1 在 `UIScreenEdgePanGestureRecognizer` 的 `_shouldReceiveTouch:withEvent:` 里，对底边两个角上的触摸直接返回 NO，系统那条识别器收不到手指。

判据照抄，只有三条：

- 竖屏（`activeInterfaceOrientation` 为 portrait）
- `y >= h - 24`（底边 24pt 带内，与识别器热区同宽）
- `x < w/3` → `edge.bottomleft`；`x > 2w/3` → `edge.bottomright`；中间 1/3 不管

范围严格限定在这两块 24pt 高的小方块。**中间 1/3 与屏幕左右两侧一个字节都不碰**，所以左右切应用不受影响——那是前十几版翻车的地方。

### 两条防「两头空」的判据

拒绝系统手势的前提，是我们自己的识别器真的会执行动作。所以再加两条：

- `TGConditionLocked()` 时放行（锁屏上滑是解锁）
- `TGActionFor(key)` 为空时放行（当前模式没动作，我们的识别器会当场 Failed，再拒系统就是既不回主屏也没动作）

这两条与 `TGBottomEdgeRecognizer` 的 `touchesBegan:` 判据一一对应，两边不会打架。

### 排除自己

`isKindOfClass:[TGBottomEdgeRecognizer class]` 的三条不拦，否则动作根本收不到手。

## 1.5.0+cn4.53

cn4.52 把底部删得只剩双击，砍过头了。这一版按 Triggr 2.1 把手势补回来，仍然是**不碰任何系统识别器**的注册式实现。

### 补回的三项（2.1 的 `edge.bottomleft` / `edge.bottomright` / `edge.bottom2`）

| 触发器 | 起手位置 | 手指数 |
|---|---|---|
| `edge.bottomleft` | 底边 24pt 内、屏幕左 1/3 | 单指 |
| `edge.bottomright` | 底边 24pt 内、屏幕右 1/3 | 单指 |
| `edge.bottom2` | 底边 24pt 内、全区 | 双指 |

实现是一套 `TGBottomEdgeRecognizer : UIScreenEdgePanGestureRecognizer`，`edges = Bottom`、`setEdgeRegionSize:24`，注册进系统手势表（type `0x7467004`–`0x7467006`）。选 edge pan 子类而不是 `UIPanGestureRecognizer`，是因为系统把它当「屏幕边缘手势」：一 Began，iOS 自己的底部上滑就让位，用不着我们去按系统识别器——前面十几版把左右切应用按死的就是那一步。

### 中间 1/3 与左右两侧始终不碰

- 底边中间 1/3 有单独判据：起手落在那里的识别器直接 Failed，回主屏幕上滑照常。
- 屏幕左右两侧（`edge.left` / `edge.right` 那一组）继续用原来的 `UIPanGestureRecognizer`，与底部这三条互不相干。
- 没配动作时不注册任何识别器。

## 1.5.0+cn4.52

回退「底部横条手势」，按 Triggr 2.1 的做法重做底部：**只保留双击底边横条**。

前十几版一直在修同一件事：底边上滑配了动作后，从屏幕左右边缘往内滑就切不了应用。根因不在判据，在于这条路本身——单指底边就是系统「回主屏」的起手区，想接管它只能去抑制系统识别器，而抑制一旦按几何展开，就必然连带按住同一带的左右切应用。RC 也有同样的毛病，说明不是抄错。

看了 2.1 的反汇编，它对这个问题的答案是**不做**：15 个自注册手势槽里，底部只有 `edge.bottomleft`、`edge.bottomright` 和双指 `edge.bottom2`，单指底边专门空着。它只挂 Home Bar 自己的双击回调。

### 删掉

- `bottom.bar.left` / `bottom.bar.right` / `bottom.up.left` / `bottom.up.center` / `bottom.up.right` 五个触发器。
- `Tweak.x` 里整套底边判定：`TGBottomTakeTouch`、`TGBottomShouldSuppress*`、`TGBottomIsBottomTarget`、三份识别器 `touchesBegan/Moved` 钩子、`SBGrabberTongue` / `SBControlCenterController` / `SBHomeGesturePanGestureRecognizer` 钩子、`SBFluidSwitcher*` 的 `setState:` 钩子、`UIApplication sendEvent:` 记账（共 499 行）。
- `Shared/TGBottomGeometry.h`、`Shared/TGBottomFreeze.h`。
- `Relay.x` 的 `BottomStrip` 分组（App 内认底边、钉住画面、notify 上报）、`Shared/TGRelay.h` 的五个通知名与 bit 16–20。

### 新增

- `homebar.doubletap`：hook `SBHomeAffordanceInteractionManager` 的 `_bounceDoubleTapRecognized:`。配了动作才吞掉系统回调（不再触发 Reachability），单击、上滑、左右滑动一概不经过这里。只在应用内生效，主屏与锁屏留给 iOS。

### 为什么这次不会再把左右切应用弄坏

这条路径上没有任何「判断要不要抑制系统手势」的代码。没配动作时 Triggr 连一个识别器都不注册；配了也只是占住 Home Bar 的双击回调。左右边缘切应用、底边上滑回主屏、单击滚到顶部，全都走 iOS 原来的实现。

## 1.5.0+cn4.51

修的是**从屏幕左右边缘往内滑切应用**，在底部上滑配了动作时被吃掉。

RC 也有同样的毛病——这不是抄错了，是它那套判据的固有局限，所以在 RC 上复现得一模一样。这一版比它多走两步。

### 原因

真正动手的不是「方向判据」，是两件更早发生的事：

1. **落地就冻屏。** 只要起手点在底边 50pt 带里、这一区又配了上滑动作，`TGBottomTouchBegan` 立刻 `TGFreezeBegin()`，把主屏所有 `UIScrollView` 的识别器 `enabled = NO`。系统边缘手势依赖这些识别器先失败，链一断，切应用就起不来。
2. **落地就拒收。** 同一时刻，`TGBottomShouldSuppressTouch` 就对回主屏那条识别器返回 YES，相关识别器在落地那一帧就被判掉。

从左右边缘偏下的位置起手（拇指的自然位置），落点正好在底边带内，于是这两条都会命中——**跟横滑方向配没配动作无关**，只跟「上滑动作配没配」有关。这也解释了规律：清空上滑就好，清空横滑没用。

### 现在

- **贴边 24pt 不接管。** 起手点离屏幕左右边缘不到 `TGBottomEdgeGuard`（24pt）时，这一下不算底边手势：不记账、不冻屏、不抑制，整条让给系统。底边手势本来就不该从屏幕最外侧开始。
- **冻屏推迟到确认上滑。** 第一次 `touchesMoved` 里，位移超过 6pt 且确实朝上（`ay > ax`）才 `TGFreezeBegin()`。横滑、轻点、抖动都不再冻屏。
- **横滑分支再挡一道。** `TGBottomShouldSuppressMotion` 里，横向位移且起手贴边的，直接放行，不看有没有配横滑动作。
- **朝向改为先问 `windowScene`。** `activeInterfaceOrientation` 跟着「当前活动界面」走，可能是后台的横屏 App；竖屏下拿它当基准，左右两侧会被算成底边。现在按 RC 的顺序：`windowScene` → `activeInterfaceOrientation` → `statusBarOrientation`。

行为不变：底部上滑动作照常执行并冻屏；横条横滑配了动作才接管；锁屏上滑、底边轻点不变。

已知取舍：底边 24pt 以内贴近左右边缘的上滑动作不再触发（那块留给系统更合理）。

## 1.5.0+cn4.50

修 cn4.49 的回归：**配了上滑动作之后，从左右边缘横滑切不了应用。**

### 原因

cn4.49 的判据是「起手点 + 方向」，但起手点有两个来源，第二个是坏的：

1. 识别器自己在 `touchesBegan:` 记下的点（关联对象）；
2. 拿不到时，**回退到进程级记账**（`TGBottomShouldSuppressLive`）——那里存的是上一把底边手势的起点。

左右边缘切应用那两条识别器（`SBFluidSwitcherScreenEdgePanGestureRecognizer`、锁屏的 CoverSheet 那条）不走第 1 条路径，于是每次都落到第 2 条：`start` 是上一次的底边点，`delta` 就成了「从底边往上走了几十点」。这个位移在 `TGBottomShouldSuppressMotion` 里命中**上滑分支**，而该区配了上滑动作，于是判 Failed。

所以清空三个上滑动作就恢复——不是底边判错，也不是 `edges` 判错，是**横滑被一个过期的起点算成了上滑**。两份账、两套坐标系混用，才让这个错误能一路走到底。

### 现在

- **起手点与手指绑定**：关联对象里存 `serial + 时间 + 点`，`serial` 写在 `UITouch` 上。同一根手指、6 秒内才认；对不上一律当作没有。
- **认不到起手点就放行**，不再回退到进程级记账。抑制只能由「这一下自己的起手点」决定。
- **恢复身份白名单**：通用判定只对 `edges & UIRectEdgeBottom` 的识别器和回主屏那一下生效；两条 switcher 不进 `touchesMoved`，只在 `setState: Began` 时用 `sendEvent` 的账 + 横滑方向兜底（RC 的做法）。
- **抬手清理不再被副指卡住**：`Ended` 时只要最后一根手指抬起就清账，避免漏清导致之后 6 秒被误判成「还在这一下里」。
- 只给底边/回主屏这两类识别器记起点，其它识别器身上不再留过期数据。

行为不变的部分：底部上滑动作照常执行；配了横滑动作的横条横滑照常接管；没配的方向照常切应用。

## 1.5.0+cn4.49

重做底边系统手势的抑制方式：**落地不判，按方向判**。

### 之前为什么左右切应用会坏

抑制原来是在手指落下的那一刻做的，那时没有位移，只能依据「触点落在底边带 + 这一区配了上滑动作」——满足就当场把识别器判 Failed。于是同一个触点上，**竖直上滑和水平切应用被同一条判据绑在一起**：配了上滑动作，两侧横滑也一起被按住。

再叠上一层：判断依赖一份进程级的「这一下归 Triggr」记录，任何识别器来问都会拿到同一个答案；靠类名 / `edges` 区分「底边还是侧边」在部分系统版本上又拿不到可靠值。这三层都在误伤侧滑。

### 现在

- **落地时不判任何识别器**（回主屏那一下除外，它只可能上滑）。
- 每条识别器落地时把自己的起手点记在**自己身上**，第一次 `touchesMoved` 用「起手点 + 位移」判：
  - 起手点不在底边带 → 与 Triggr 无关，放行；
  - 竖直向上且该区配了上滑动作 → 拦；
  - 水平且**这个方向**配了横滑动作 → 拦；
  - 其余放行。
- 类名判断只剩“回主屏那一下”这一处，其余全部靠几何 + 方向，不再猜 `edges`。
- `setState: Began → Failed` 的兜底保留，用同一套方向判据。

竖直与水平互斥，上滑抑制不可能再波及左右切应用。

## 1.5.0+cn4.48

修的是**左右两侧边缘横滑切应用**被误拦。

### 原因

`TGBottomIsBottomEdge` 以前把 `edges == 0`（拿不到边缘信息的识别器）也当成「底边」。左右两边的系统手势识别器恰好也拿不到 `edges`，于是被当成底边：只要之前有一次底边手势把状态记上了，之后从左右边缘横滑就被判成「这一下归 Triggr」，系统切应用的手势被按死。cn4.47 只把「切换应用」那两条按类名摘出去，没有改这条宽判据，所以两侧仍然切不了。

### 现在

- 底边判定只认 `edges & UIRectEdgeBottom`；`edges == 0` 只对回主屏那一条（按类名 `HomeGesture`）生效。
- 左/右边缘、其它 edges 拿不到的识别器**一概不碰**，系统从两侧横滑切应用恢复。
- 起手记账加 6 秒过期：手势被系统接走时收不到结束事件，旧账不会一直挂着把后面的手势按住。

底边本身的行为不变：上滑按分区接管（配了才拦），横滑按方向接管（配了才拦）。

## 1.5.0+cn4.47

横条左右滑改成**按方向**决定要不要接管系统手势。

### 问题

cn4.46 之前，只要落点那一区配了上滑动作，底边整片就归我们管——横向滑动也被一起按住，于是「底部横条左滑/右滑」没配动作时切不了应用。原因是我们对边缘手势识别器在 `touchesBegan` 就判 Failed，而那会儿还看不出方向。

### 现在

- **横滑方向没配动作** → 系统切换应用照常，Triggr 不插手。
- **横滑方向配了动作** → 按住系统那条切换应用的识别器，只执行动作，不切应用。
- **上滑**不变：落点那一区配了动作就接管，没配就回主屏。

实现上把「切换应用」那两条识别器（`SBFluidSwitcherScreenEdgePanGestureRecognizer`、`SBCoverSheetScreenEdgePanGestureRecognizer`）从「落地即判」里摘出来：落地放行，等位移出来按方向判（横滑看横滑动作、上滑看该区动作），再补 `setState:` 的 `Began` 兜底。判据收在 `TGBottomShouldSuppressMotion` 一处，落地、移动、`shouldBegin`、`setState` 四个时机读同一套规则。

## 1.5.0+cn4.46

代码整理，**不改行为**——装上去应该和 cn4.45 一模一样，改动都在结构上。

### 1. 阈值只有一份

新增 `Shared/TGBottomGeometry.h`：底边带 50、上滑 45、抬手 35、横滑 60、分区 0.33、横滑比例 1.8 / 最小 12pt、上滑比例 1.5 / 最小 15pt，连同「第几段」的判定。

之前这些数字在 `Tweak.x` 和 `Relay.x` 里各写了一遍（Relay 里还是裸数字），改一个忘一个就会变成「App 里和桌面上手感不一样」这种极难查的问题。现在两边都从这一份取。

坐标换算**没有**合并：SpringBoard 的窗口不跟界面旋转，要用设备固定坐标再按方向换算；App 的窗口跟着界面转，底边永远是 y 最大那条边。把两种坐标系揉进一个函数只会埋 bug，头文件里写明了这条界线。

### 2. 三份重复的识别器钩子

`UIScreenEdgePanGestureRecognizer`、`_UIScreenEdgePanGestureRecognizer`、`SBScreenEdgePanGestureRecognizer` 三块原来各写一遍判定（每块 21 行，共 63 行），只有类型转换写法不同。

现在逻辑收在 `TGBottomTakeTouch(recognizer, touch, moved)` 一处，三个 `%hook` 只剩转手。以后改判据不用改三遍、也不会漏改某一类。

### 3. 注释纠错

- `Tweak.x` 头部还写着 Relay「只上报状态栏点击和摇动」，实际上它现在还管底边手势。
- 「横条左右滑不接管系统手势（RC 也不接管）」是 cn4.44 之前的说法，cn4.45 已经反过来，两处注释同步改掉。

## 1.5.0+cn4.45

两件事：底部上滑时画面不该跟着走；横条左右滑配了动作就不该切应用。

### 1. 画面钉住（照 RC 的冻结）

只按住系统手势不够。手指从底边往上走的那几十点仍然会送到前台 App，列表、网页、图标页都跟着上滚——动作执行了、屏幕也上滑了，用户看到的就是「没拦住」。

RC 的做法（`Tweak.x:17446 RC_FreezeGestureScrolling`）：找到所有 `UIScrollView`，存下 `contentOffset`，`scrollEnabled = NO` 并把它们自己的手势识别器一起关掉；抬手时还原偏移。新增 `Shared/TGBottomFreeze.h` 实现这一套，两处调用：

- **App 内**：`Relay` 在 `UIApplication sendEvent:` 里，往上滑的意图一明确（6pt）就冻住，45pt 执行动作后抬手解冻。
- **SpringBoard**：底边落地且这一区配了动作时冻住（桌面图标页同样会被上滑带走）。

2 秒兜底解冻，避免漏掉一次结束事件导致 App 永久滚不动。**不关窗口的 `userInteractionEnabled`**：RC 关它是为了防「抬手点到按钮」，代价是 UIKit 把正在进行的触摸变成 `Cancelled`，手势状态跟着丢，这里只停滚动。

### 2. 横条左右滑接管

之前把横滑排除了（那是系统的切换应用），现在按你的要求：**配了动作就不切应用**。

- 方向要等手指动了才知道，所以在 `touchesMoved` 里判：起点在底边带、横向压过纵向 1.8 倍、位移过 12pt，且该方向配了动作 → 识别器 `Failed`。
- 再补一层 `SBFluidSwitcherScreenEdgePanGestureRecognizer` / `SBCoverSheetScreenEdgePanGestureRecognizer` 的 `setState:`（RC 的 `Tweak.x:19151`）：刚要 `Began` 就改判 `Failed`，防个别系统版本上位移还没累积就判开始。
- 没配动作的方向原样放行，切换应用照常。

### 3. App 内底边手势开始真正生效

之前 `Triggr` 只注入 SpringBoard，前台 App 的触摸它看不见，所以底边动作在 App 里其实不执行。现在 `Relay`（本来就注入所有 App）在 `sendEvent` 里认方向，认到后 `notify_post` 通知 SpringBoard 执行，五个触发器各一条通知。SpringBoard 侧同时把「哪几个底边触发器配了动作」写进 `relay-wanted` 状态位（bit 16–20），Relay 只在这些区里冻结与上报。

## 1.5.0+cn4.44

重新对着 RemoteCompanion 的源码抄了一遍，找到之前漏掉的部分：它拦底部手势并不靠 `SBSystemGestureManager` 的 delegate，而是**直接按住执行手势的那个识别器**。

### 之前为什么不行

- cn4.42 只抄了 RC 的 `sendEvent` 记账，抑制仍走 manager 的 `gestureRecognizer:shouldReceiveTouch:` / `shouldBegin:`。真机上这两个回调没被问到（系统识别器的 delegate 不都经过这个 manager），于是动作照常执行、系统手势照常起来。
- cn4.43 改成 hook `UIGestureRecognizer` 的 `setState:`，抓得太晚也太宽：识别器已经 `Began` 才动手，系统的位移已经跟出去了。

### RC 真正的做法（已照搬）

RC 在源码里同时 hook 了这些执行者，每一个都做三件事：`_shouldReceiveTouch:withEvent:` 返回 NO、`touchesBegan:` 和 `touchesMoved:` 直接把 `state` 设成 `Failed`。

| 被 hook 的类 | 负责的手势 |
|---|---|
| `UIScreenEdgePanGestureRecognizer` | 底边/侧边的系统边缘手势基类 |
| `_UIScreenEdgePanGestureRecognizer` | UIKit 内部同名私有类 |
| `SBScreenEdgePanGestureRecognizer` | SpringBoard 的上滑进多任务、切换应用 |
| `SBGrabberTongue` | 控制中心/通知中心从底边往上拉的「舌头」 |
| `SBControlCenterController` | 同上，控制中心的 delegate 回调 |
| `SBHomeGesturePanGestureRecognizer` | 回主屏（按类是否存在条件注册，老系统不 hook） |

判据仍是「触点落在底边带 + 该分区配了动作 + 不是锁屏/面板」，`tgBottomActive` 记账优先、触点坐标兜底。锁屏、通知中心/控制中心面板一律放行，横条左右滑不参与。

### 说明

- cn4.43 的 `%hook UIGestureRecognizer setState:` 已删除，它影响 SpringBoard 里所有识别器，且时机太晚。
- manager 的两个 delegate 判断保留：能拦就拦，拦不住还有识别器这一层，两者不冲突。

## 1.5.0+cn4.43

补上「动作执行了、系统手势照样发生」这一半：`SBSystemGestureManager` 的 delegate 回调在真机上没有被问到，改在识别器将要 `Began` 时按住它。

### 现象与判断

- cn4.42 之后动作能执行，说明 `sendEvent` 记账这条路是通的；但系统底部手势照常起来，说明 `gestureRecognizer:shouldReceiveTouch:` / `gestureRecognizerShouldBegin:` 根本没有被调用（系统识别器的 delegate 并不都经过这个 manager 实例）。
- 不再赌 delegate。改成 hook `UIGestureRecognizer` 的 `setState:`：状态要进 `Began` 时，如果这一下是记过账的底边触摸、且识别器是 SpringBoard 自己的底部手势（`HomeGesture` / `ScreenEdgePan` / `FluidSwitcher` 三类），直接改成 `Failed`。
- 这是 RemoteCompanion 对横条左右滑用的同一招（它的 `SBFluidSwitcherScreenEdgePanGestureRecognizer.setState:`）；只是把范围扩到所有底部系统手势。
- 只在底边这一下确实配了动作时动手（`tgBottomActive && tgBottomZone`），其它手势、其它区域一律 `%orig`。原来的 manager delegate 判断保留，能拦就不用走到这一步。

## 1.5.0+cn4.42

底部手势的执行改走 RemoteCompanion 4.4 的 `sendEvent` 记账：不再依赖手势识别器，动作和「接管系统手势」读同一份状态。

### 修的问题

- **配了动作仍会触发系统手势、而且动作没执行**。根因是两条路各自判：识别器从 `touchesBegan` 到识别要几十毫秒，系统底部手势可能已经起来；识别器一旦判失败（第二根手指、方向不符）就再也收不到后面的事件，动作也就没了。cn4.41 的 `shouldBegin:` 兜底同样依赖识别器先落地记账，来不及。
- **横屏方向取错**。原来问的是 `windowScene`，SpringBoard 的窗口常年停在竖屏，横屏时底边带会算到屏幕下边，实际手势在侧边，于是拦不住、也判不出区。现在先问 SpringBoard 自己的 `activeInterfaceOrientation`（RC 的注释里写明这是唯一可靠的方向源）。

### 实现

- `UIApplication` 的 `sendEvent:` 里记账：`Began` 记起点与所在区、`Moved` 走 45pt 上滑（抬手 35pt 兜底）、`Ended` 判横条左右滑 60pt。阈值、分区 0.33/0.67、四方向换算全部照 RC。
- 只认单指；起手后再落下第二根手指不改账，也不参与位移。
- 锁屏、通知中心 / 控制中心面板放行（上滑是解锁、收起），这两种情况不接管。
- 删掉 `TGBottomRecognizer` 及其 target、`TGUpdateBottomGestures`、`tgBottomOwnsTouch` 一整套；gestureType 范围从 6 收回 4，只剩三条边滑加双指边滑。**没有留兼容分支**。

## 1.5.0+cn4.41

底部横条手势对齐 RemoteCompanion 4.4：删掉双指，名称、顺序、分组图标跟 RC 一致，配了动作的上滑区接管系统手势。

### 触发器

- 五项，顺序照 RC：底部横条左滑、底部横条右滑、底部上滑（左侧）、底部上滑（中部）、底部上滑（右侧）。
- **删掉「双指从底部上滑」**。之前配过的 `bottom.up.two` 会留在偏好里，但不再显示、不再触发。
- 五项 id 没变（`bottom.bar.left/right`、`bottom.up.left/center/right`），已配的动作不会丢。
- 分组改名「底部横条手势」，补上分组图标（`rectangle.bottomthird.inset.filled`，与状态栏用的顶部三分区图标成对）。注意图标是按分组标题查的，改名和字典要一起动。

### 接管系统手势

- 某一区配了上滑动作后，这一下就归 Triggr：`SBSystemGestureManager` 的 `shouldReceiveTouch:` / `shouldBegin:` 对该区返回 NO，iOS 自己的回主屏、上滑进多任务不再发生。
- **按分区判**，不按「底部配没配动作」一刀切：只配中间区时，左下、右下照常回主屏。RC 4.3 修过同一个坑（中间区把右下角控制中心一起吃了）。
- 锁屏不接管：上滑就是解锁，接管了就解不开。
- 横条左右滑不接管：那是系统的切换应用，接管等于废掉这个常用手势，RC 也没接管。
- 底部、边缘手势自己的识别器不受影响：它们不是 edge pan，`edges` 为 0，会撞上「edges 为 0 就是系统 Home 手势」这条判据，所以按类名先排除。

### 横屏（修 cn4.40 的错）

- 底边判定改用**设备固定竖屏坐标**（短边 S / 长边 L）。SpringBoard 的 window 横屏时不旋转，触点仍是竖屏坐标（RC 的现场日志也是这么记的），cn4.40 拿窗口宽高去比，横屏时底边带会落到错误的位置、三段分区整体失效。
- 横屏两侧的分区镜像修正：LandscapeLeft 里用户看到的左侧是设备底部（y = L），位置应是 `1 - y/L`，cn4.40 写成了 `y/L`；LandscapeRight 同理反过来。RC 4.3 修过同一个镜像问题，搬参数时搬错了方向。

### 说明

- cn4.40 的日志写「照 RC 的做法，没有去抢系统手势」，这句是错的：RC 是抢的，只是抢在它自己的 sendEvent 管线里。这次改成按 RC 的行为接管，代码仍是自己这套识别器。

## 1.5.0+cn4.40

### 应用内手势重排

- 顺序改成先两指七项、再三指七项：两指点按 / 两指上、下、左、右滑 / 两指捏合 / 两指张开，然后三指点按 / 三指上、下、左、右滑 / 三指捏合 / 三指张开。三指点按从第二位挪到三指组开头。
- **新增两指捏合、两指张开**。捏合识别器不再写死三指，两指和三指共用同一套「各指到质心的平均半径」判定，阈值仍是 0.7 / 1.4。
- 槽位从 12 扩到 14，位段用到 bit15。名单只从 `TGCatalog.h` 的 `TGInAppGestures` 取，SpringBoard 与 Relay 不再各抄一份——之前那两份手抄名单迟早会再次不同步。

### 底部手势（搬运 RemoteCompanion 4.4）

新增六个触发器：从左下角上滑、从底部中间上滑、从右下角上滑、双指从底部上滑、底部横条左滑、底部横条右滑。

- 起点要在屏幕最底部约 50pt 内；上滑按起点位置分左、中、右三段，分界跟 RC 一样是 0.33 / 0.67。
- 双指上滑不分区；横条左右滑是单指、水平位移满 60pt 才触发。
- **与系统手势并存**：识别器不设失败要求，iOS 自己的回主屏幕、切换应用照常发生，Triggr 只是在你做这个手势时额外执行一次动作。（当时的判断有误——RC 其实是抢的，见 cn4.41。）
- 「底部在哪条边」「哪个方向算上」按界面方向换算，横屏也有效。

## 1.5.0+cn4.39

两处手势调整。

### 三指捏合、张开

- 应用内的「捏合」「张开」改成**三指**触发，名字也写成「三指捏合」「三指张开」。没有新增四指、五指动作。
- 两指缩放几乎和每个应用自己的放大手势重合（照片、Safari、地图），三指基本没人占用。
- `UIPinchGestureRecognizer` 写死两指，改不了，所以换成一个按「三指到质心的平均半径」算比例的自定义识别器，阈值仍是 0.7 / 1.4。
- 捏合、张开各一个识别器，方向不符的那个在判定时直接失败，一次手势只派发一次。

### 沿边缘上下滑

新增四个触发器：沿左边缘上滑、沿左边缘下滑、沿右边缘上滑、沿右边缘下滑。

- 做法参照 RemoteCompanion 4.4：一条边只挂一个普通 `UIPanGestureRecognizer`，在 `touchesBegan` 里看第一根手指是否落在距边缘 20pt 以内，之后按位移方向分派——竖直为主且超过 30pt 就触发上/下滑，水平离开边缘 60pt 触发原来的滑入。
- 换掉 `UIScreenEdgePanGestureRecognizer` 的原因：它只上报「横向离开边缘」的位移，纯竖向拖动根本不会送到 target，上下滑没法在它上面做。
- 一条边一个识别器、三个动作共用，不再是一条边挂多个 edge pan 互相抢触摸。
- 这条边没配竖直动作时，竖直滑动在识别之前就失败，交还给应用自己滚动，不会把列表冻住。

## 1.5.0+cn4.38

快捷指令的候选列表只更新过一次：在快捷指令 App 里改了名、新建或删除，弹窗里还是第一次取到的那份。

### 原因

cn4.34 把取数挪到 SpringBoard 代取，结果写进 `com.johndie.triggr.shortcuts.plist`；
设置页这边是「文件里有就直接用」，于是那份文件成了永久快照，之后再没触发过第二次请求。

### 改动

- **每次点「运行快捷指令…」都重新取一次**，不再看文件有没有内容。正常回包几十毫秒，弹窗照常即时。
- **不用旧列表顶替**：这一轮没回包就等，1.5 秒后才放弃并弹输入框（附原因）。
  SpringBoard 卡住时宁可让人输名字，也不显示一份过期的名单——旧名字正是被抱怨的那件事。
- 已配置的那条如果不在新名单里（改了名或删了），弹窗标题下面说明一句——
  否则用户只看到勾不见了，不知道旧的那条去哪了。

## 1.5.0+cn4.37

两处小修：打勾的位置，以及「运行快捷指令」在「打开」分类里的先后。

### 改动

- **勾改成右对齐**：cn4.36 是在标题后面拼一个「  ✓」，勾贴着文字走，位置随名字长短变。
  改用 `UIAlertAction` 自己的 `checked` 私有键——飞行模式那三个选项从 cn4.9 起就这么写，
  同一套代码，勾由系统画在行末，和其他几选一的动作完全一致。
- **「运行快捷指令…」挪到「微信扫一扫」上面**：位置在「静默请求 URL…」之后、扫一扫预设之前。

### 核查

- 五个可执行文件都在 `-Os`（Theos release 默认）、已 strip、无 `__DWARF`；
  deb 里除图标外没有多余文件，源码里没有未调用的静态函数/方法。
- 体积没变小的空间：双架构各一份，小文件还要按 16 KB 页对齐（TriggRelay 代码 9 KB、文件 87 KB）。

## 1.5.0+cn4.36

快捷指令的候选列表改用系统弹窗，和插件里其他几选一的动作（低电量模式、方向锁定）同一种样式。
只动了这一条，其余动作保持原样。

### 改动

- **从底部弹出 actionSheet**：标题「运行快捷指令」，一行一个快捷指令，末尾独立的「取消」。
  上一版的卡片页、导航栏、搜索框全部删掉（净减 100 多行）。
- **当前项后面打勾**，再点它＝取消这个动作。
- **没有搜索**：条目多了靠滚动，这是换取统一观感的代价。
- **仍然有输入框兜底**：取不到列表时直接弹输入框（不弹空列表），message 带原因。
- 首次使用、文件里还没有内容时最多等 1 秒，取到就弹列表。

## 1.5.0+cn4.35

cn4.34 的列表是 push 进来的一整页，还要先过一层「换 / 移除」菜单。这一版改成从底部升起的卡片，
并把「再点一次当前项＝取消」做成唯一的移除方式。

### 改动

- **弹出层代替 push**：点「运行快捷指令…」直接从底部升起卡片，导航栏「运行快捷指令」+「取消」，
  父页面留在下面可见，搜索框常驻。
- **移除入口删掉**：再点一次打勾那项就把这个动作删掉（footer 有一行说明），
  配置过时那层「选择其他 / 移除 / 取消」的菜单也一并删了。
- **超时 3 秒 → 1 秒**，而且只有「SpringBoard 完全不回音」才用得上；回话说失败会立刻处理。
- **取不到列表就弹输入框**：收起卡片，弹一个带原因说明的输入框，名字原样写进
  `shortcut:<名字>`。这就是原版「Run Shortcut by Name…」那一项的兜底作用。

## 1.5.0+cn4.34

cn4.33 的诊断结果：设置进程里 `VCVoiceShortcutClient` 的类和方法都在（`class=no` 是
dlopen 前查的，加载后 `standard=1 list=1`），但调用返回 nil，错误是
`NSCocoaErrorDomain 4097 "Couldn't communicate with a helper application."`
——Settings 的沙盒不放行这条 XPC，换线程、换路径都没用。

### 改动

- **取数搬到 SpringBoard**：设置页发一个 Darwin 通知，tweak 收到后取列表、写进
  `/var/mobile/Library/Preferences/com.johndie.triggr.shortcuts.plist`，再回一个通知。
  和「AirPlay 到」用的是同一套通道（设置进程同样看不到 AirPlay 设备）。
- **写字典而不是数组**：`names`、`failed`、`error`，把「调用失败」和「真的没有」分开。
- **设置页先显示上次结果**，同时后台刷新；等 3 秒没回话才报「SpringBoard 没有回应」。
- 设置进程里那段直接调用删掉了（在这台机器上恒定失败）。

## 1.5.0+cn4.33

cn4.32 在真机上停在「无法读取快捷指令」。这一版把取数改回主线程（2.1 也是主线程调的，
这条跨进程连接在后台线程上可能拿不到东西），并在书面上把探测过程显示出来。

### 改动

- **取数改为主线程同步**：进页面直接取，不再先显示「正在读取」。
- **失败页显示探测结果**：类在不在、`dlopen` 每条候选路径成没成功、`standardClient` 与
  `accessibilityWorkflowsWithError:` 是否响应、返回条数、错误对象，逐行写在页脚。
  截图即可定位，不必连电脑看 Console。
- **`dlopen` 候选加裸库名**：除两个框架路径外，再让 dyld 按名字自己找一次。

## 1.5.0+cn4.32

「运行快捷指令」不再要求手打名字。原来它弹一个输入框，名字必须与快捷指令 App 里一字不差，
打错一个字就是触发时静默失败、没有任何提示。

### 改动

- **改成从列表里选**：点「运行快捷指令…」直接进入选择页，一行一个快捷指令，带搜索。
  当前生效的那条打勾。已经配过的话先弹一个小菜单：换个快捷指令 / 移除 / 取消。
- **取数走系统自己那条路**：`VCVoiceShortcutClient.standardClient` 的
  `accessibilityWorkflowsWithError:`，和设置里「轻点背面 → 选择快捷指令」用的是同一个接口。
  运行时 `dlopen`，先试 `VoiceShortcutClient` 再试 `WorkflowKit`，类搬过家也不受影响。
- **值不变**：仍然存 `shortcut:<名字>`，执行路径一行没动，旧配置照常可用。
- **失败分两种说法**：类或方法取不到 → 「无法读取快捷指令」；取到了但是空表 →
  「没有快捷指令」并提示先去 App 里创建。另有一行 `[Triggr] shortcut list:` 日志，
  记下类/方法/条数/错误，换系统版本时看这一行就能定位。

## 1.5.0+cn4.31

恢复「AutoTouch 脚本」动作。这套代码在 cn4.9 里是完整的，cn11 那次重构（条件序列、
多指手势移植）没有把它带过来，此后一直缺席。

### 新增

- **AutoTouch**：设置 → 动作里多一个分类，直接列出脚本目录里的 `.lua` / `.at` 文件，选中即
  播放。动作 id 是 `autotouch:<脚本名>`，子目录里的脚本显示为「分组/名字」。
- **调用方式**：不走 Activator，也不依赖命令行。直接调 AutoTouch 注入进程的播放引擎
  —— `PlayingManager.sharedInstance` → `makePlayingFor:` → `start`。这条入口与 Powercuts 的
  `AutoTouchRunFileAction` 相同。
- **脚本目录探测**：`/var/jb/var/mobile/Library/AutoTouch/Scripts`、裸
  `/var/mobile/...`、AppGroup 容器的三种布局（`var/mobile/…`、`Library/…`、`AutoTouch/…`），
  外加从自身二进制路径反推隐根。roothide 的 `/.jbroot-<hex>/…` 会在执行前归一化成
  AppGroup 的绝对路径；rootless 不含这一段，直接跳过。
- **可用性**：只查 `PlayingManager` 类在不在。AutoTouch 没装、或它的 dylib 没注入
  SpringBoard 时，动作显示为不可用，不会按了没反应。

### 上限

只能播放脚本，不能录制、不能停、不能设速度——那些都没有对外入口。

## 1.5.0+cn4.30

按代码评审把「会咬到用户」和「小改动防患」的两组问题收掉。日出日落触发器删掉（见下）。

### 修复

- **应用内指派在四条链路上被静默丢掉**（评审 H2）：配置键的 mode 判定原先有两套——`TGAllAssignments` 认 `app:<bundle id>` 前缀，`TGSanitizedSetup` 只认四个内置位置，于是 `app:com.x/home.single` 在导出、存为方案、导入、恢复默认四条链路上全部消失。最难受的是最后一条：点「恢复默认设置」后界面回到默认，那个 App 里的按键仍被接管。现在统一成 `TGModeIsValid()`，「仅当」命名空间（`if:app:com.x/home.single`）一并修好。
- **设置包版本号与包版本号不一致**（评审 L3）：`control` 是 cn4.29、两个 `Info.plist` 还停在 cn4.28，崩溃日志因此报旧版本。改为打包时从 `control` 注入，macOS 用 `PlistBuddy`、Linux 沙箱退回 `python3`。
- **升级系统后「当前系统上不可用」的提示不消失**（评审 M2）：进程内缓存把「首次算出的集合是空」当成「没变化」，旧记录永远清不掉，会误导用户删掉本来能用的动作。

### 加固

- 前台 App 的取法统一走 `TGFrontAppIdentifier()`（评审 H1）。原来「应用内指派」那条分支直接对私有 selector 发消息，方法一旦改名就是 SpringBoard 注销。
- 状态栏轻点加 10pt 位移阈值（评审 M5）：从顶部下拉通知中心/控制中心不再被当成左/右轻点。
- `shell:` 命令交给 `triggrd` 时写盘失败会记日志、并在开启横幅时提示（评审 M3）。iOS 18 上这类动作全走这条路，之前失败是完全静默的。
- 应用内多指手势的关联对象 key 改成静态地址（评审 L2）；Home 手势单例改 `dispatch_once`（评审 L4）。

### 移除

- **日出与日落触发器**。算出的时刻靠 `dispatch_after` 等，而它走系统 uptime，设备深睡时停走，锁屏放着赶不上点；改用 `PCPersistentTimer` 能修，但要连带把坐标缓存、失败诊断一起补，投入与收益不成比例。老配置里的 `sunrise` / `sunset` 会被忽略，不会崩也不会误触发，不需要迁移。



### 重构

- **条件标题只剩一张表**：「仅当」用的 `TGConditionTitle`（`Shared/TGSteps.h`）和「如果」行用的 `TGSeqConditionTitle`（`Shared/TGCatalog.h`）各自写了一份文案，cn4.25 的「未解锁 / 未锁定」就是只改了其中一边。现在 `TGConditionTitle` 先把条件编码成条件串，再交给 `TGSeqConditionTitle`，两边永远同一套说法。24 条条件（含正反两式）逐条比对，合并前后文案完全一致。

### 修复

- 时间条件在「如果」行里曾显示成「2200 到 0600 之间」，掉了冒号；现在统一为「22:00 到 06:00 之间」。
- `wifi:` / `bt:` 不带名字时曾显示成「已连接 Wi-Fi「」」「已连接蓝牙「」」；现在说「已连接 Wi-Fi」「已连接蓝牙设备」，与「仅当」一致。

### 文案

- 删除动作「无操作」右侧那句说明（「只接管这次触发，什么也不做；后面还有动作时照常继续。」），列表恢复成和其他动作一样的单行。

## 1.5.0+cn4.28

### 修复

- **「打开设置页」不管选哪一项都停在设置首页**（iPad / iOS 16.3.1 实测）：cn4.27 统一改成了 `App-prefs:root=<id>`，但 iOS 16 上设置 App 会把 `root=` 丢掉，只把设置拉到前台——iPad 分栏默认选中的就是「通用」，所以看起来「全都停在通用」。
  现在按系统版本分开：**iOS 16 及更早用 `App-prefs:<id>`（裸 id），iOS 17 起用 `prefs:root=<id>`**，后者走 `LSApplicationWorkspace` 的 `openSensitiveURL:withOptions:`，不受 scheme 白名单限制。

## 1.5.0+cn4.27

### 修复

- **添加「打开设置页」的任意一项就闪退**（iOS 16 实测，崩溃栈落在 `cellForRowAtIndexPath`）：那一行要显示副标题，代码按空格切标题取后半段，但「设置：通用」里没有空格，`rangeOfString:` 返回 `NSNotFound`，加一溢出后 `substringFromIndex:` 直接抛 `NSRangeException`。改成没有分隔符就整串显示，并对「设置：」按全角冒号切。
- **设置页跳不过去**：汉化时把「蓝牙 / 通用 / 墙纸」三个页面 id 一并翻成了中文，而 iOS 只认英文 id，点了没反应。三个 id 改回英文，并且从 iOS 16 起必须写成 `App-prefs:root=<id>` 才会离开设置首页——统一走了 `root=` 形式。老配置里的中文 id 和不带 `root=` 的英文 id 都能继续用。

### 文案

- 「声音与触感」「通用」等开关动作标题从「手电筒 开启」改成「开启手电筒」（30 条），与「切换手电筒」语序一致。
- 「音量键」组说明开头多了一个孤立的 `U`，删掉。
- 「锁键 + 音量键」说明里的 `Up Hold / Down Hold` 换成「长按音量加 / 长按音量减」。
- 按键说明里的 `"屏幕休眠"` 改用「」；锁屏界面说明补上「打开设置页」也会等解锁；重启/关机警告不再特指 Dopamine。
- 已选动作列表补上复制：「从右往左滑可移除或复制动作。」
- 「无操作」补一行说明：只接管这次触发，什么也不做，后面的动作照常继续。

## 1.5.0+cn4.26

### 修复

- **日出与日落仍然没有图标**：cn4.25 用的是 `sun.horizon.fill`，这个符号名在 iOS 15/16 上取不到图（`systemImageNamed:` 返回 nil，而 `TGSetIcon` 取不到就整行不加图标，所以看起来像没生效）。改用 `sunrise.fill`，iOS 13 起就有。同时给 `TGSetIcon` 加了一层兜底：带字号配置取不到时，再用默认配置取一次。
- **条件「未解锁」写反了**：`!locked` 表示「设备没锁着、正在使用」，但「未解锁」字面意思是「还没解锁」＝仍然锁着，方向正好相反。改为「未锁定」，和「未充电」「未连接耳机」保持同一套否定式。

## 1.5.0+cn4.25

### 移除

- **条件「手电筒已开启 / 已关闭」**：与「如果有手电筒」类用法重合度低，且需要在条件判定里多走一个 SpringBoard 私有单例。动作里的「切换手电筒 / 开启 / 关闭」不受影响。
- **动作「手电筒调亮 / 调暗」**：cn4.24 刚加，实测使用频率低，且与控制中心调亮度是两条路径。

旧配置里如果已经写了 `if:flashlight` / `!flashlight`，编辑器会显示成「无法识别的条件「flashlight」」——那一行永远不成立，块内动作不会执行，左滑删掉即可。

### 修复

- **CarPlay、日出与日落两组触发器没有图标**：图标表按组标题匹配，新增组漏登记，设置页只剩纯文字行。

### 文案统一

条件名在「如果」「仅当」和动作行里各写了一遍，措辞不一致（「连着耳机」「连接耳机」「耳机未连接」）。现在统一为一套：

| 成立 | 不成立 |
|---|---|
| 已连接 Wi-Fi | 未连接 Wi-Fi |
| 已连接蓝牙设备 | 未连接蓝牙设备 |
| 充电中 | 未充电 |
| 已锁定 | 未解锁 |
| 音乐播放中 | 音乐未播放 |
| 已连接耳机 | 未连接耳机 |
| 低电量模式已开启 | 低电量模式已关闭 |

列表里的滑动手势也一并写清楚了：**从右往左滑移除，从左往右滑换到其他触发器**（以前只写了「左滑可移除」，右滑能移动这件事没人知道）。「全部指派 → 按执行内容」那一屏不再允许右滑移动——一行只是某个触发器上的一个动作，搬走的却是整条指派。

同时统一：条件名里带名称的写法改为「已连接 Wi-Fi「家」」；取消「不满足「…」」这种双重否定，直接给出反义说法；动作行标题的时间条件从「时间在 22:00 和 06:00 之间」改为「22:00 到 06:00 之间」；全仓库中文引号统一为「」；`唤醒 Siri` / `关闭 Siri` 补空格；状态变化的「低电量模式开启 / 关闭」补「已」。

## 1.5.0+cn4.24

补三个上游 2.x 已有、这边缺的功能。

### 新触发器

| 触发器 | 实现 | 说明 |
|---|---|---|
| CarPlay 连接 / 断开 | 音频输出端口是否 `CarAudio` | 有线和无线 CarPlay 都算；不是靠蓝牙判断 |
| 日出 / 日落 | 取一次系统已有位置，本地算当天时刻 | 不持续定位、不联网；极昼极夜不触发 |

两个都复用现有的音频路由观察者和启动后补课机制，不新增后台进程。

### 新动作

- ~~手电筒调亮 / 调暗~~（cn4.25 已移除）

### 注意

- 日出日落需要「定位服务」开着；拿不到位置就不排事件，不报错、不反复请求。
- CarPlay 判断的是**音频端口**：只有 CarPlay 会话把声音接管过去才算连接；只插上线但没接管音频不会触发。

## 1.5.0+cn4.23

把 cn4.22 的启动崩溃修复做成一次完整审计：**启动完成前，不取任何 SpringBoard 单例**。

### 审计结论

| 启动期会执行的东西 | 风险 | 处理 |
|---|---|---|
| `TGShared(...)` | 会实例化 `SBUIController`（崩溃源）、`SBWiFiManager`、`SBMediaController` 等 | 启动完成前一律返回 nil |
| 动作可用性探测 | 经 `TGCanPerform` 走到 `TGShared` | 推迟到启动 15 秒后 |
| 音乐状态基线 | 取 `SBMediaController sharedInstance` | 推迟；就绪后补读 |
| 距离传感器 | 取 SpringBoard 的 `proximitySensorManager` | 启动完成前不碰 |
| Wi-Fi 状态基线 | 取 `SBWiFiManager` | 就绪后重读，否则「本来连着 Wi-Fi」记成 NO，断开时 `wifi.left` 不触发 |
| 图标轻扫 / 主屏手势 | 遍历 `connectedScenes`，启动时为空 | 安全：`didMoveToWindow` 会补挂 |
| 屏幕边缘手势 | 取 `SBSystemGestureManager` | 已有 `tgGestureManagerReady` 守卫 |
| 状态变化 / 通知 / 通话 | 只注册通知和 `CXCallObserver` | 安全，不动 |

### 启动后补课

15 秒后统一补一次：Wi-Fi 基线、音乐基线、距离传感器、不可用动作列表。各函数幂等，重复调用不会重复注册或重复触发。

## 1.5.0+cn4.22

修一个**启动即崩**的问题：配了「App 切换器」等动作后，SpringBoard 一启动就 abort。

### 崩溃原因

`%ctor` 里做动作可用性探测，而探测 `system.switcher` 时会取 `[SBUIController sharedInstance]`。那时 SpringBoard 的 UI 还没建好，`SBUIController init` 里的 `+[UIScreen mainScreen]` 直接抛断言：

```
TGSyncUnavailable → TGCanPerform → TGShared("SBUIController")
→ -[SBUIController init] → +[UIScreen mainScreen] → NSAssertionHandler → abort
```

从 cn4.19 引入「不可用动作」同步起就存在，只是要**刚好配了会实例化 UI 单例的动作**才会踩到（`system.switcher`、`system.cc`、`system.reachability`、`system.lock` 等）。

### 修法

- 启动阶段只读偏好，不碰任何 SpringBoard UI 单例。
- 可用性探测推迟到启动 15 秒后执行一次；之后改设置照常即时同步。
- 探测结果（设置页的「当前系统上不可用」提示）不变，只是晚 15 秒出现。

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
