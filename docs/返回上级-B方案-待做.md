# 返回上级：B 方案（修页面戳），暂不实施

记录时间：2026-11-07　状态：**待做**，当前主线仍是 cn4.17（escape → 公开 pop）。

## 问题

微信公众号文章页按「返回上级」，一次按键退了两层，直接回到消息主页。

链路：`TGRelayDoBack` → `TGBackStep`
1. `TGEscapeIn` 让文章页自己应答，退一层（文章 → 会话）；
2. 0.35 秒后 `TGPageStamp` 复核，页面「没变」；
3. 于是 `TGPublicPop` 再补一次（会话 → 消息主页）。

两次动作叠加，就是用户看到的「退两层」。

## 根因

`Relay.x` 的 `TGPageStamp` 只遍历 `vc.childViewControllers`：

```objc
static NSString *TGPageStamp(UIViewController *vc) {
    if (!vc) return @"";
    NSMutableString *s = [NSMutableString stringWithString:NSStringFromClass(vc.class)];
    for (UIViewController *child in vc.childViewControllers)
        [s appendFormat:@"/%@#%lu", NSStringFromClass(child.class),
            (unsigned long)child.viewIfLoaded.subviews.count];
    [s appendFormat:@"#%lu", (unsigned long)vc.viewIfLoaded.subviews.count];
    return s;
}
```

微信的层级是「根容器 → 内层导航 → 会话 → 文章」。文章退回会话时，**根控制器的直接子控制器没变**，
`viewIfLoaded.subviews.count` 也没变 → 戳相同 → 判定「没动」→ 补一次 pop。

同样的结构性问题也会影响：`UITabBarController` 里切 tab、内层 nav 的 push/pop、
以及任何自绘容器内部的页面切换。

## 改法（只动一个函数）

把 `TGPageStamp` 从「只看直接子控制器」换成「走 `TGVisibleChain`，并把 nav 栈深、tab 选中项显式拼进戳」：

```objc
static NSString *TGPageStamp(UIViewController *root) {
    if (!root) return @"";
    NSMutableString *s = [NSMutableString string];
    for (UIViewController *vc in TGVisibleChain(root)) {
        [s appendFormat:@"%@#%lu|", NSStringFromClass(vc.class),
            (unsigned long)vc.viewIfLoaded.subviews.count];
        if ([vc isKindOfClass:[UINavigationController class]])
            [s appendFormat:@"nav%lu|", (unsigned long)((UINavigationController *)vc).viewControllers.count];
        if ([vc isKindOfClass:[UITabBarController class]])
            [s appendFormat:@"tab%ld|", (long)((UITabBarController *)vc).selectedIndex];
    }
    return s;
}
```

要点：
- `TGVisibleChain` 已经是现成的（tab 只走选中项、nav 沿栈顶下钻、presented 只走最上层），
  和 `TGEscapeIn`、`TGPublicPop` 用的是同一条链，三者对「当前这一屏」的理解一致。
- `viewControllers.count` 必须显式拼：`TGVisibleChain` 只取栈顶，栈顶换人时链长可能不变。
- `selectedIndex` 同理：切 tab 时链的形状可能完全一样。
- 调用点不变：`TGBackStep` 里 `stamp` 与 0.35 秒后的复核都用这一个函数。

## 影响面

| 项 | 变化 |
|---|---|
| 改动文件 | `Relay/Relay.x` 一个函数（约 15 行） |
| 二进制 | 基本不变，无新增依赖 |
| 行为 | escape 退成功后不再补 pop；真没动时仍会补 |
| 风险 | 戳更细，理论上可能在「页面只换内容没换控制器」时误判为没动 —— 与现状一致，不会更差 |

## 验收

1. 微信：公众号文章 → 按一次返回，落到会话列表，**不再**继续退到消息主页；
2. 微信：会话列表 → 按一次返回，落到微信主页（此处本就该退）;
3. 设置 → 通用 → 关于本机：退一层；
4. 淘宝商品详情：退一层（escape 路径）；
5. 任意 App 根页按返回：无反应、无崩溃。

## 备注：被否掉的两个方向

- **只留公开 pop**：重复返回必然消失，但模态页、自绘容器（淘宝/小红书/抖音详情）全部失效，
  `TGPublicPop` 的 `isKindOfClass:UINavigationController` + `viewControllers.count >= 2` 两道闸会把它们全挡掉。
- **反转成 pop → escape**：一次按键也只动一次，但顶层是模态、底下压着 nav 时，
  pop 会弹掉被盖住的那层，模态收起后露出错误页面。要用必须先加模态守卫。
