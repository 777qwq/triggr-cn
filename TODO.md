# 待办

已完成的两批（删除日出日落、评审八条修复）见 `CHANGELOG.md` 的 `1.5.0+cn4.30`。

## 下一步：给 Tweak Actions 做 Activator 事件桥

目标：让插件注册给 Activator 的事件（例如 AutoTouch 的「显示面板」）出现在 Triggr 的动作
列表里，按一下把事件派发给插件自己。

**上限先写清楚**：这条路只能做到「唤起插件自己的界面」。AutoTouch 只注册了「显示面板」
一个事件，没有「播放指定 .lua」的事件，所以按一下最多弹出面板，脚本还得手点。想按一下就
跑某个脚本，只能等 AutoTouch 自己提供命令行入口，或者用系统的「运行快捷指令」。

### 参考

上游 2.0 beta8 起有 Tweak Actions。2.1 的 `Triggr.dylib` 里能看到这些符号：

```
activator:receiveEvent:
activator:receiveEvent:forListenerName:
/Library/Activator/Listeners
```

### 要做的东西

1. **发现**：扫 `/Library/Activator/Listeners/<bundle>/` 下的 plist，读事件名、标题、
   图标、默认动作；按插件分组，作为动作选择器里的一类（和 `ext:` 并列，但实现无关）。
2. **展示**：设置页动态追加分类（与 cn4.21 的扩展分类同一套做法，不进编译期常量表），
   搜索里能搜到；已选动作能展开到所属插件。
3. **派发**：把选中的事件交给对应插件的 listener。是否需要 libactivator 的私有入口、
   跨进程能否成功，要在真机上验（多数插件监听器只在自身进程内有意义）。
4. **降级**：插件没装、没运行、事件名冲突、派发失败，都要有明确表现（不可用即跳过，
   并进 `UnavailableActions` 那条提示通道），不能静默。

### 先验证再写

拿 AutoTouch 做一个最小实验：在设备上用 Activator 或手工调用，确认它的事件能否被外部
触发、触发后表现为弹面板。这一步不通过，就不值得写桥。

### 风险

- 依赖 Activator 生态的私有约定，每代 iOS、每个插件都可能不一样，测试成本远高于前面
  八条修复。
- 事件清单是运行时扫出来的，用户配置里存的键要在插件卸载后仍能优雅失效。
