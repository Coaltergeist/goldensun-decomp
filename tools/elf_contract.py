#!/usr/bin/env python3
"""Conservative link contract for little-endian ELF32 ARM relocatable objects.

Ignores file/mapping symbol order and non-allocated debug metadata. Preserves
allocated layout, exported definitions and relocation symbol identity. A match
is an inner-loop check; only a fresh full link verifies the final ROM.
"""
from pathlib import Path
import argparse
import struct


class ELF:
    def __init__(self, path):
        try:
            self._read(path)
        except (IndexError, KeyError, struct.error) as exc:
            raise ValueError("malformed ELF: " + str(exc)) from exc

    def _read(self, path):
        self.data = Path(path).read_bytes()
        if self.data[:7] != b"\x7fELF\x01\x01\x01":
            raise ValueError("expected little-endian ELF32")
        h = self.unpack("HHIIIIIHHHHHH", 16)
        if h[0:2] != (1, 40) or h[10] != 40 or not h[11]:
            raise ValueError("expected ARM relocatable ELF with section headers")
        self.flags = h[6]
        self.sections = []
        for i in range(h[11]):
            v = self.unpack("IIIIIIIIII", h[5] + i * h[10])
            self.sections.append(dict(zip(
                ("nameoff", "type", "flags", "addr", "offset", "size", "link", "info", "align", "entsize"), v)))
        names = self.contents(self.sections[h[12]])
        for s in self.sections:
            s["name"] = self.string(names, s["nameoff"])
        self.tables = {}
        for i, s in enumerate(self.sections):
            if s["type"] != 2:
                continue
            if s["entsize"] != 16 or s["size"] % 16:
                raise ValueError("invalid symbol table")
            strings = self.contents(self.sections[s["link"]])
            syms = []
            for off in range(s["offset"], s["offset"] + s["size"], 16):
                n, value, size, info, other, index = self.unpack("IIIBBH", off)
                syms.append(dict(name=self.string(strings, n), value=value, size=size,
                                 bind=info >> 4, type=info & 15, visibility=other,
                                 index=index))
            self.tables[i] = syms
        if len(self.tables) != 1:
            raise ValueError("expected one symbol table")
        self.symbols = next(iter(self.tables.values()))

    def unpack(self, fmt, offset):
        return struct.unpack_from("<" + fmt, self.data, offset)

    @staticmethod
    def string(data, offset):
        end = data.find(b"\0", offset)
        if offset >= len(data) or end < 0:
            raise ValueError("invalid ELF string")
        return data[offset:end].decode("utf-8", "surrogateescape")

    def contents(self, section):
        if section["type"] == 8:  # NOBITS occupies memory, not file bytes.
            return b""
        start, size = section["offset"], section["size"]
        if start + size > len(self.data):
            raise ValueError("truncated section")
        return self.data[start:start + size]

    def section_name(self, index):
        if index >= 0xff00 or index == 0:
            return index
        return self.sections[index]["name"]

    def symbol_identity(self, sym):
        # Local labels are identified by their location, not generated spelling.
        name = sym["name"] if sym["bind"] or sym["index"] == 0 else ""
        return (name, self.section_name(sym["index"]), sym["value"],
                sym["type"], sym["bind"], sym["visibility"])

    def relocations(self, section_index, start=0, end=None):
        result = []
        for s in self.sections:
            if s["type"] not in (4, 9) or s["info"] != section_index:
                continue
            width = 12 if s["type"] == 4 else 8
            if s["entsize"] != width or s["size"] % width:
                raise ValueError("invalid relocation section")
            for off in range(s["offset"], s["offset"] + s["size"], width):
                pos, info = self.unpack("II", off)
                if pos >= self.sections[section_index]["size"]:
                    raise ValueError("relocation outside target section")
                if pos < start or (end is not None and pos >= end):
                    continue
                symbol = self.tables[s["link"]][info >> 8]
                addend = self.unpack("i", off + 8)[0] if width == 12 else None
                result.append((pos - start, info & 255, self.symbol_identity(symbol), addend))
        return sorted(result, key=repr)

    def contract(self):
        sections, relocs, exports = {}, {}, []
        for i, s in enumerate(self.sections):
            if not s["flags"] & 2:
                continue
            name = s["name"]
            if name in sections:
                raise ValueError("duplicate allocated section names")
            sections[name] = (s["type"], s["flags"], s["size"], s["align"], s["entsize"], self.contents(s))
            relocs[name] = self.relocations(i)
        if ".text" not in sections:
            raise ValueError("missing allocated .text")
        for sym in self.symbols:
            if sym["bind"] and sym["index"]:
                exports.append(self.symbol_identity(sym) + (sym["size"],))
        return self.flags, sections, sorted(exports, key=repr), relocs

    def function(self, name):
        matches = [s for s in self.symbols if s["name"] == name and s["type"] == 2]
        if len(matches) != 1:
            raise ValueError("missing or ambiguous function: " + name)
        sym = matches[0]
        if not 0 < sym["index"] < len(self.sections):
            raise ValueError("function has no section")
        sec = self.sections[sym["index"]]
        if sec["name"] != ".text" or sec["type"] != 1 or sec["flags"] & 6 != 6:
            raise ValueError("function is not in executable allocated .text")
        start = sym["value"] & ~1
        size = sym["size"]
        if not size or start + size > sec["size"]:
            raise ValueError("function has missing/invalid size: " + name)
        return (size, self.contents(sec)[start:start + size],
                self.relocations(sym["index"], start, start + size),
                self.flags, sym["value"] & 1, sym["bind"], sym["visibility"])


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("expected")
    ap.add_argument("candidate")
    ap.add_argument("--function")
    args = ap.parse_args()
    try:
        a, b = ELF(args.expected), ELF(args.candidate)
        equal = a.function(args.function) == b.function(args.function) if args.function else a.contract() == b.contract()
        print("pass" if equal else "fail")
        return 0 if equal else 1
    except (OSError, ValueError, IndexError, KeyError, struct.error) as exc:
        print("error\n" + str(exc))
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
