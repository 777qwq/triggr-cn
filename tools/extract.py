#!/usr/bin/env python3
"""把 2.1 的 Mach-O 拆成可检索的文本：段表、字符串、类名/方法名、全量反汇编。"""
import json
import os
import struct
import subprocess
import sys

ARM64 = 0x0100000C


def fat_slice(data):
    magic = struct.unpack(">I", data[:4])[0]
    if magic not in (0xCAFEBABE, 0xBEBAFECA):
        return 0, len(data), "thin"
    n = struct.unpack(">I", data[4:8])[0]
    for i in range(n):
        cpu, sub, off, size, align = struct.unpack(">iiIII", data[8 + i * 20: 8 + i * 20 + 20])
        if cpu == ARM64 and (sub & 0xFF) == 0:
            return off, size, "arm64"
    raise SystemExit("no arm64 slice")


def sections(data, base, size):
    magic, cpu, sub, ftype, ncmds, sizeofcmds = struct.unpack("<IiiIII", data[base:base + 24])
    assert magic == 0xFEEDFACF, hex(magic)
    p = base + 32
    out = {}
    for _ in range(ncmds):
        cmd, cmdsize = struct.unpack("<II", data[p:p + 8])
        if cmd == 0x19:  # LC_SEGMENT_64
            segname = data[p + 8:p + 24].rstrip(b"\0").decode()
            vmaddr, vmsize, fileoff, filesize = struct.unpack("<QQQQ", data[p + 24:p + 56])
            nsects = struct.unpack("<I", data[p + 64:p + 68])[0]
            sp = p + 72
            for _ in range(nsects):
                sect = data[sp:sp + 80]
                sname = sect[0:16].rstrip(b"\0").decode()
                sseg = sect[16:32].rstrip(b"\0").decode()
                addr, sz, off = struct.unpack("<QQI", sect[32:52])
                out[f"{sseg},{sname}"] = {"addr": addr, "size": sz, "off": base + off}
                sp += 80
        p += cmdsize
    return out


def cstrings(data, sec):
    raw = data[sec["off"]:sec["off"] + sec["size"]]
    res = []
    cur = b""
    start = 0
    for i, b in enumerate(raw):
        if b == 0:
            if cur:
                res.append((sec["addr"] + start, cur.decode("utf-8", "replace")))
            cur = b""
            start = i + 1
        else:
            if not cur:
                start = i
            cur += bytes([b])
    return res


def utf16strings(data, sec):
    raw = data[sec["off"]:sec["off"] + sec["size"]]
    res = []
    cur = bytearray()
    start = 0
    for i in range(0, len(raw) - 1, 2):
        ch = raw[i:i + 2]
        if ch == b"\0\0":
            if cur:
                try:
                    res.append((sec["addr"] + start, cur.decode("utf-16-le")))
                except Exception:
                    pass
            cur = bytearray()
            start = i + 2
        else:
            if not cur:
                start = i
            cur += ch
    return res


def main(path, outdir):
    data = open(path, "rb").read()
    off, size, arch = fat_slice(data)
    secs = sections(data, off, size)
    name = os.path.basename(path)
    os.makedirs(outdir, exist_ok=True)
    manifest = {"file": path, "arch": arch, "size": len(data),
                "sections": {k: v["size"] for k, v in secs.items() if v["size"]}}

    strings = []
    for key in ("__TEXT,__cstring", "__TEXT,__objc_classname", "__TEXT,__objc_methname"):
        if key in secs:
            for addr, s in cstrings(data, secs[key]):
                strings.append((addr, s, key))
    if "__TEXT,__ustring" in secs:
        for addr, s in utf16strings(data, secs["__TEXT,__ustring"]):
            strings.append((addr, s, "__TEXT,__ustring"))

    with open(os.path.join(outdir, f"{name}.strings.tsv"), "w", encoding="utf-8") as f:
        f.write("addr\tsection\ttext\n")
        for addr, s, key in sorted(strings):
            f.write(f"0x{addr:x}\t{key}\t{s.replace(chr(9), ' ')}\n")

    # 全量反汇编（arm64 切片，带字面量注释）
    asm = subprocess.run(
        ["llvm-objdump", "-d", "--macho", "--arch=arm64", "--no-show-raw-insn",
         "--symbolize-operands", path],
        capture_output=True, text=True, check=True).stdout
    with open(os.path.join(outdir, f"{name}.arm64.s"), "w", encoding="utf-8") as f:
        f.write(asm)

    manifest["asm_lines"] = asm.count("\n")
    manifest["strings"] = len(strings)
    print(json.dumps(manifest, ensure_ascii=False))


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])
