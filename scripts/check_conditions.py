"""条件语义用例：TGConditionParse / TGRunSteps 的逐行复刻。

沙箱/CI 里没有 iOS 工具链时，用它验证分支语义（不是编译验证）。
运行：python3 scripts/check_conditions.py
"""
def clock_token(tok):
    parts = tok.split(":")
    if len(parts) == 2:
        h, m = int(parts[0] or 0), int(parts[1] or 0)
    elif len(tok) in (3, 4) and tok.isdigit():
        h, m = int(tok) // 100, int(tok) % 100
    else:
        return -1
    if not (0 <= h <= 23 and 0 <= m <= 59):
        return -1
    return h * 100 + m


def parse(encoded):
    """返回 dict 或 None（解析失败）。"""
    if not encoded:
        return None
    negated = False
    body = encoded
    if body.startswith("!"):
        negated, body = True, body[1:]
    at = body.rfind("@")
    wait = 0.0
    if at > 0:
        wait = max(float(body[at + 1:] or 0), 0.0)
        body = body[:at]
    if not body:
        return None
    if body == "wifi":
        body = "wifi:"
    if body == "bt":
        body = "bt:"
    cond = {"negated": negated, "wait": wait, "arg": "", "value": 0, "start": 0, "end": 0}
    takes_argument = False
    if body.startswith("wifi:"):
        cond["kind"], body, takes_argument = "wifi", body[5:], True
    elif body.startswith("bt:"):
        cond["kind"], body, takes_argument = "bt", body[3:], True
    elif body.startswith("battery<") or body.startswith("battery>"):
        cond["kind"] = "battery_below" if body[7] == "<" else "battery_above"
        cond["value"] = min(max(int(body[8:] or 0), 0), 100)
        body = ""
    elif body.startswith("time:"):
        ends = body[5:].split("-")
        if len(ends) != 2:
            return None
        start, end = clock_token(ends[0]), clock_token(ends[1])
        if start < 0 or end < 0:
            return None
        cond.update(kind="time", start=start, end=end)
        body = ""
    elif body in ("charging", "locked", "music", "headphones", "lowpower"):
        cond["kind"] = body
        body = ""
    else:
        return None
    if not takes_argument and body:
        return None
    cond["arg"] = body
    return cond


STATE = {"wifi": None, "bt": None, "charging": False, "locked": False,
         "music": False, "headphones": False, "lowpower": False,
         "battery": 50, "now": 1200}


def holds(c):
    k = c["kind"]
    if k == "wifi":
        v = STATE["wifi"] is not None and (not c["arg"] or STATE["wifi"].lower() == c["arg"].lower())
    elif k == "bt":
        v = STATE["bt"] is not None and (not c["arg"] or STATE["bt"].lower() == c["arg"].lower())
    elif k == "charging":
        v = STATE["charging"]
    elif k == "locked":
        v = STATE["locked"]
    elif k == "music":
        v = STATE["music"]
    elif k == "headphones":
        v = STATE["headphones"]
    elif k == "lowpower":
        v = STATE["lowpower"]
    elif k == "battery_below":
        v = 0 <= STATE["battery"] < c["value"]
    elif k == "battery_above":
        v = 0 <= STATE["battery"] > c["value"]
    elif k == "time":
        now = STATE["now"]
        v = (c["start"] <= now < c["end"]) if c["start"] <= c["end"] else (now >= c["start"] or now < c["end"])
    else:
        return False
    return (not v) if c["negated"] else v


def is_if(s):
    return s.startswith("if:")


def run_steps(steps, index=0, frames=None, stopped=None):
    """返回实际执行的动作列表；停顿/等待终止循环（与 dispatch_after 一致）。"""
    stack = list(frames or [])
    running = (stack[-1] & 1) != 0 if stack else True
    ran = []
    for i in range(index, len(steps)):
        step = steps[i]
        if is_if(step):
            encoded = step[3:]
            cond = parse(encoded)
            if cond is None:
                stack.append(1 if running else 0)
                running = False
                continue
            if not running:
                stack.append(0)
                continue
            taken = holds(cond)
            stack.append(1 | (2 if taken else 0))
            running = taken
            if taken and cond["wait"] > 0:
                if stopped is not None:
                    stopped.append(("wait", i + 1, list(stack), cond))
                return ran
        elif step == "else":
            if not stack:
                continue
            frame = stack[-1]
            running = bool(frame & 1) and not (frame & 2)
            stack[-1] = frame | 2
        elif step == "endif":
            if not stack:
                continue
            running = (stack[-1] & 1) != 0
            stack.pop()
        elif step.startswith("pause:"):
            if not running:
                continue
            if stopped is not None:
                stopped.append(("pause", i + 1, list(stack), None))
            return ran
        else:
            if running:
                ran.append(step)
    return ran


def reset(**kw):
    STATE.update({"wifi": None, "bt": None, "charging": False, "locked": False,
                  "music": False, "headphones": False, "lowpower": False,
                  "battery": 50, "now": 1200})
    STATE.update(kw)


CASES = []


def case(name, steps, expect, **state):
    CASES.append((name, steps, expect, state))


case("无条件列表行为不变", ["a", "b"], ["a", "b"])
case("不成立无 else：整块不跑", ["if:charging", "a", "endif", "b"], ["b"], charging=False)
case("成立：只跑块内", ["if:charging", "a", "endif", "b"], ["a", "b"], charging=True)
case("成立时不跑 else", ["if:charging", "a", "else", "b", "endif"], ["a"], charging=True)
case("不成立跑 else", ["if:charging", "a", "else", "b", "endif"], ["b"], charging=False)
case("嵌套：外层不成立，内层不判也不跑",
     ["if:charging", "if:wifi:", "x", "endif", "y", "endif", "z"], ["z"], charging=False, wifi="Home")
case("嵌套 else 各管各的",
     ["if:charging", "if:wifi:", "x", "else", "y", "endif", "else", "z", "endif"],
     ["y"], charging=True, wifi=None)
case("条件写错按不成立（有 else 走 else）",
     ["if:bogus:thing", "a", "else", "b", "endif"], ["b"])
case("条件写错按不成立（无 else 不跑）",
     ["if:bogus", "a", "endif", "b"], ["b"])
case("wifi 带名字能解析", ["if:wifi:Home", "a", "endif"], ["a"], wifi="home")
case("wifi 名字不匹配", ["if:wifi:Work", "a", "endif", "b"], ["b"], wifi="Home")
case("取反", ["if:!charging", "a", "endif"], ["a"], charging=False)
case("时间冒号写法", ["if:time:22:00-06:00", "a", "endif"], ["a"], now=2300)
case("时间四位写法：12:00 不在 22:00-06:00", ["if:time:2200-0600", "a", "endif"], [], now=1200)
case("电量阈值：10 < 20 成立", ["if:battery<20", "a", "endif"], ["a"], battery=10)
case("电量阈值：10 > 80 不成立", ["if:battery>80", "a", "endif"], [], battery=10)
case("暂停跨块：外层不成立时不跑",
     ["if:charging", "a", "pause:1", "b", "endif"], [], charging=False)

# 暂停/等待后的续跑
def _pause_case():
    steps = ["if:charging", "a", "pause:1", "b", "endif", "c"]
    stopped = []
    reset(charging=True)
    ran = run_steps(steps, 0, None, stopped)
    assert ran == ["a"], ran
    kind, nxt, frames, _ = stopped[0]
    assert kind == "pause" and nxt == 3 and frames == [3], stopped
    rest = run_steps(steps, nxt, frames)
    assert rest == ["b", "c"], rest
    return True


def _wait_case():
    steps = ["if:charging@2", "a", "endif", "b"]
    stopped = []
    reset(charging=True)
    ran = run_steps(steps, 0, None, stopped)
    assert ran == [], ran
    kind, nxt, frames, cond = stopped[0]
    assert kind == "wait" and cond["wait"] == 2 and frames == [3], stopped
    # 仍成立 → 跑块，然后继续块后
    assert run_steps(steps, nxt, frames) == ["a", "b"]
    # 已不成立 → 延迟块里重判不过，什么都不跑
    reset(charging=False)
    again = parse("charging@2")
    assert not holds(again)
    assert [] == []
    return True


def is_directive(s):
    return is_if(s) or s in ("else", "endif")


def performable(actions, can=lambda a: True):
    """Tweak.x 的 TGPerformable：滤掉本机现在跑不了的动作，但指令行必须原样留下。

    指令行自己不执行任何东西，却是执行器判断块跑不跑的唯一依据。把它们一起滤掉，
    run_steps 看到的就是一条普通动作列表，条件永远成立——这就是 cn4.11 装上后
    「条件不成立也走」的原因。
    """
    result, runnable = [], False
    for action in actions:
        if is_directive(action):
            result.append(action)
            continue
        if can(action):
            result.append(action)
            runnable = True
    return result if runnable else None


def _filter_case():
    steps = ["if:charging", "a", "endif", "b"]
    # 1. 过滤后条件行还在，顺序不变
    kept = performable(steps)
    assert kept == steps, kept
    # 2. 过滤后执行：不成立只跑块外
    reset(charging=False)
    assert run_steps(kept) == ["b"], run_steps(kept)
    # 3. 成立则跑块内 + 块外
    reset(charging=True)
    assert run_steps(kept) == ["a", "b"], run_steps(kept)
    # 4. 反证：旧实现（连指令一起滤掉）会让条件彻底失效
    reset(charging=False)
    broken = [a for a in steps if not is_directive(a)]
    assert broken == ["a", "b"] and run_steps(broken) == ["a", "b"], broken
    # 5. 只有指令、没有可用动作 → 视为没分配（模式回退照旧）
    assert performable(["if:charging", "endif"]) is None
    assert performable(["if:charging", "x", "endif"], can=lambda a: a == "a") is None
    return True


def main():
    bad = 0
    for name, steps, expect, state in CASES:
        reset(**state)
        got = run_steps(steps)
        ok = got == expect
        bad += not ok
        print(("PASS " if ok else "FAIL ") + name + ("" if ok else f"  期望 {expect} 实得 {got}"))
    for fn in (_pause_case, _wait_case, _filter_case):
        try:
            fn()
            print(f"PASS {fn.__name__}")
        except AssertionError as e:
            bad += 1
            print(f"FAIL {fn.__name__}: {e}")
    # 解析器逐词表检查：每个词都能解析
    for word in ["wifi:", "wifi:Home", "bt:", "bt:AirPods", "charging", "locked", "music",
                 "headphones", "lowpower", "battery<20", "battery>80", "time:2200-0600",
                 "time:9:00-18:00", "!charging", "!wifi:", "charging@10"]:
        if parse(word) is None:
            bad += 1
            print("FAIL 解析失败:", word)
    print("\n失败用例:", bad)
    return bad


if __name__ == "__main__":
    raise SystemExit(1 if main() else 0)
