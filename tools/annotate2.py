#!/usr/bin/env python3
"""给 llvm-objdump 的输出补两样东西：

1. 函数边界——strip 过的二进制没有局部符号，把 bl/b 落在 __text 内的目标当作函数起点。
2. 字符串引用——llvm 只解析出极少数 chained-fixup 的 cfstring 注释（2.1 全篇只有 2 条），
   所以这里自己解析 __DATA_CONST,__cfstring：每 32 字节一条，+16 是 char*（chained
   fixup 编码，低 36 位是目标地址），+24 是长度。再顺着 adrp/add/ldr 算出代码里的
   有效地址，命中就注上原文。

产物：*.annotated.s（带注释与函数分隔）、*.functions.tsv（函数→提到的字符串）、
*.strings-xref.tsv（字符串→引用它的地址）。
"""
import os
import re
import struct
import sys

ARM64 = 0x0100000C
LINE = re.compile(r"^\s*([0-9a-f]+):\t(.*)$")
ADRP = re.compile(r"^adrp\s+(x\d+),.*;\s*0x([0-9a-f]+)$")
ADD = re.compile(r"^add\s+(x\d+),\s*(x\d+),\s*#0x([0-9a-f]+)")
LDR = re.compile(r"^ldr\s+(x\d+),\s*\[(x\d+)(?:,\s*#0x([0-9a-f]+))?\]")
TARGET = re.compile(r"\b(?:bl|b)\s+0x([0-9a-f]+)")


def slice_off(d):
    if struct.unpack(">I", d[:4])[0] not in (0xCAFEBABE, 0xBEBAFECA):
        return 0
    n = struct.unpack(">I", d[4:8])[0]
    for i in range(n):
        cpu, sub, off, size, al = struct.unpack(">iiIII", d[8 + i * 20:8 + i * 20 + 20])
        if cpu == ARM64 and (sub & 0xFF) == 0:
            return off
    raise SystemExit("no arm64 slice")


def segments(d, o):
    magic, cpu, sub, ft, ncmds, sz = struct.unpack("<IiiIII", d[o:o + 24])
    p = o + 32
    out = {}
    for _ in range(ncmds):
        cmd, cs = struct.unpack("<II", d[p:p + 8])
        if cmd == 0x19:
            segname = d[p + 8:p + 24].rstrip(b"\0").decode()
            out["__SEG__" + segname] = (struct.unpack("<Q", d[p + 24:p + 32])[0], 0, 0)
            nsects = struct.unpack("<I", d[p + 64:p + 68])[0]
            sp = p + 72
            for _ in range(nsects):
                s = d[sp:sp + 80]
                nm = s[0:16].rstrip(b"\0").decode()
                sg = s[16:32].rstrip(b"\0").decode()
                addr, size, off = struct.unpack("<QQI", s[32:52])
                out[f"{sg},{nm}"] = (addr, size, o + off)
                sp += 80
        p += cs
    return out


def read_text(d, a2o, addr, length, utf16):
    """按 length 精确截取：常量池会复用后缀，指针常指向共享串的中间，
    读 \0 会截短；编码由字符串落在哪个段决定。"""
    off = a2o(addr)
    if off is None or length <= 0 or length > 4096:
        return None
    if utf16:
        raw = d[off:off + length * 2]
        try:
            s = raw.decode("utf-16-le")
        except Exception:
            return None
    else:
        raw = d[off:off + length]
        s = raw.decode("utf-8", "replace")
    if "\ufffd" in s:
        return None
    s = s.strip()
    if not s or len(s) < 2:
        return None
    return s


def make_a2o(segs):
    table = [(v[0], v[1], v[2]) for k, v in segs.items() if not k.startswith("__SEG__")]
    # 可执行文件的 chained fixup 存的是「相对 __TEXT 基址」的偏移，dylib 存的是绝对 vmaddr。
    base = segs.get("__SEG____TEXT", (0, 0, 0))[0]
    if base < 0x100000000:
        base = 0

    def a2o(addr):
        for va, sz, off in table:
            if va <= addr < va + sz:
                return off + (addr - va)
        a = addr + base
        for va, sz, off in table:
            if va <= a < va + sz:
                return off + (a - va)
        return None
    return a2o


def cfstrings(d, segs, a2o):
    if "__DATA_CONST,__cfstring" not in segs:
        return {}
    addr, size, off = segs["__DATA_CONST,__cfstring"]
    us_lo, us_hi = (0, 0)
    if "__TEXT,__ustring" in segs:
        us_lo = segs["__TEXT,__ustring"][0]
        us_hi = us_lo + segs["__TEXT,__ustring"][1]
    table = {}
    for i in range(size // 32):
        isa, flags, ch, ln = struct.unpack("<QQQQ", d[off + i * 32:off + i * 32 + 32])
        target = ch & 0xFFFFFFFFF
        text = read_text(d, a2o, target, ln, us_lo <= target < us_hi)
        if text:
            table[addr + i * 32] = text
    return table


def u16(d, segs):
    if "__TEXT,__ustring" not in segs:
        return {}
    addr, size, off = segs["__TEXT,__ustring"]
    out = {}
    cur = bytearray()
    start = 0
    for i in range(0, size - 1, 2):
        ch = d[off + i:off + i + 2]
        if ch == b"\0\0":
            if cur:
                try:
                    out[addr + start] = cur.decode("utf-16-le")
                except Exception:
                    pass
            cur = bytearray()
            start = i + 2
        else:
            if not cur:
                start = i
            cur += ch
    return out


def main(binary, asm_path, outdir, name):
    d = open(binary, "rb").read()
    o = slice_off(d)
    segs = segments(d, o)
    a2o = make_a2o(segs)
    cf = cfstrings(d, segs, a2o)
    us = u16(d, segs)

    lines = open(asm_path, encoding="utf-8").read().splitlines()
    addrs = [int(m.group(1), 16) for m in (LINE.match(l) for l in lines) if m]
    lo, hi = min(addrs), max(addrs) + 4

    starts = {lo}
    for line in lines:
        m = LINE.match(line)
        if not m:
            continue
        a = int(m.group(1), 16)
        if not (lo <= a < hi):
            continue
        t = TARGET.search(m.group(2))
        if t:
            x = int(t.group(1), 16)
            if lo <= x < hi:
                starts.add(x)
    ordered = sorted(starts)
    ends = ordered[1:] + [hi]

    pending = {}
    hits = {}            # func start -> [text]
    xref = {}            # text -> [addr]
    out = []
    idx = 0
    cur = ordered[0]
    for line in lines:
        m = LINE.match(line)
        if not m:
            out.append(line)
            continue
        a = int(m.group(1), 16)
        body = m.group(2)
        while idx + 1 < len(ordered) and ordered[idx + 1] <= a:
            idx += 1
            cur = ordered[idx]
        note = None
        am = ADRP.search(body)
        if am:
            pending[am.group(1)] = int(am.group(2), 16)
        else:
            dm = ADD.match(body)
            lm = LDR.match(body) if not dm else None
            if dm:
                dst, src, imm = dm.group(1), dm.group(2), int(dm.group(3), 16)
                if src in pending:
                    tgt = pending[src] + imm
                    note = cf.get(tgt) or us.get(tgt)
                    if dst != src:
                        pending.pop(src, None)
            elif lm:
                dst, src = lm.group(1), lm.group(2)
                imm = int(lm.group(3) or "0", 16)
                if src in pending:
                    tgt = pending[src] + imm
                    note = cf.get(tgt) or us.get(tgt)
                    pending.pop(src, None)
            elif body.split()[0] not in ("cmp", "tst", "cmn"):
                pass
            for reg in list(pending):
                if body.startswith(("mov ", "ldr ", "add ", "sub ", "orr ", "adrp ")) and f"{reg}," in body:
                    if not (body.startswith("add ") and reg in pending and body.split(",")[2].strip().startswith(reg)):
                        pending.pop(reg, None)
        if note:
            esc = note.replace("\n", " ").replace('"', "'")
            line = f'{line} ; "{esc}"'
            hits.setdefault(cur, [])
            if esc not in hits[cur]:
                hits[cur].append(esc)
            xref.setdefault(esc, [])
            if a not in xref[esc]:
                xref[esc].append(a)
        out.append(line)

    os.makedirs(outdir, exist_ok=True)
    with open(os.path.join(outdir, name + ".annotated.s"), "w", encoding="utf-8") as f:
        cur = None
        for line in out:
            m = LINE.match(line)
            if m and int(m.group(1), 16) in starts:
                f.write(f"\n; ===== sub_{int(m.group(1), 16):x} =====\n")
            f.write(line + "\n")

    with open(os.path.join(outdir, name + ".functions.tsv"), "w", encoding="utf-8") as f:
        f.write("start\tend\tsize\tstrings\n")
        for s, e in zip(ordered, ends):
            f.write(f"0x{s:x}\t0x{e:x}\t{e - s}\t{' | '.join(hits.get(s, []))}\n")

    with open(os.path.join(outdir, name + ".strings-xref.tsv"), "w", encoding="utf-8") as f:
        f.write("text\taddrs\n")
        for t, addrs in sorted(xref.items()):
            f.write(f"{t}\t{','.join(hex(x) for x in addrs)}\n")

    print(f"{name}: {len(ordered)} 函数, {sum(len(v) for v in hits.values())} 条字符串引用, "
          f"{len(cf)} 条 cfstring")


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])
