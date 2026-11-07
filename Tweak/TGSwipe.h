// 实验分支专用（cn4.17-1）：屏幕级右滑返回。
// 只在 SpringBoard 里调用：注入一次真实触摸，交给系统/App 自己的边缘返回手势去处理。
#import <Foundation/Foundation.h>

// 从屏幕左缘注入一次「按下 → 右移 → 抬起」。没有回退路径：
// 本分支已摘除 escape/pop，注入不生效时这个动作就是没反应。
void TGSwipeBackStart(void);
