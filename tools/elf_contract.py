#!/usr/bin/env python3
"""Conservative link contract for little-endian ELF32 ARM relocatable objects.

Ignores file/mapping symbol order and non-allocated debug metadata. Preserves
allocated layout, exported definitions and relocation symbol identity. Raw contracts
retain sizes; equivalence also recognizes proven two-byte Thumb tail padding. A match
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


    def _trailing_thumb_padding(self, sym, short_size, long_size):
        """Recognize only one data-mapped zero halfword after a Thumb return."""
        if (sym["type"] != 2 or not sym["value"] & 1 or
                not 0 < sym["index"] < len(self.sections)):
            return False
        sec = self.sections[sym["index"]]
        start = sym["value"] & ~1
        end, limit = start + short_size, start + long_size
        if (long_size - short_size != 2 or short_size < 2 or start % 4 or
                end % 4 != 2 or limit % 4 or limit > sec["size"] or
                sec["type"] != 1 or sec["flags"] & 6 != 6 or sec["align"] < 4):
            return False
        data = self.contents(sec)
        if data[end:limit] != b"\0\0":
            return False
        symbols = [s for s in self.symbols if s["index"] == sym["index"]]
        mappings = [(s["value"], s["name"].split(".")[0]) for s in symbols
                    if not s["bind"] and s["type"] == 0 and
                    s["name"].split(".")[0] in ("$a", "$t", "$d")]

        def mode(offset):
            earlier = [value for value, kind in mappings if value <= offset]
            if not earlier:
                return None
            kinds = {kind for value, kind in mappings if value == max(earlier)}
            return next(iter(kinds)) if len(kinds) == 1 else None

        if (mode(start) != "$t" or mode(end - 2) != "$t" or mode(end) != "$d" or
                (end, "$d") not in mappings or
                any(start <= value < end and kind == "$a" for value, kind in mappings)):
            return False
        if limit != sec["size"] and not any(
                s["type"] == 2 and s["value"] & 1 and
                (s["value"] & ~1) == limit for s in symbols):
            return False

        def word(offset):
            return struct.unpack_from("<H", data, offset)[0]

        def is_return(offset):
            op = word(offset)
            if op == 0x4770 or op & 0xff00 == 0xbd00:  # bx lr / pop {..., pc}
                return True
            if op & 0xff87 == 0x4700:  # pop {rN}; bx rN (Thumb interworking return)
                reg = (op >> 3) & 15
                return (reg < 8 and offset >= start + 2 and mode(offset - 2) == "$t"
                        and word(offset - 2) == (0xbc00 | (1 << reg)))
            return False

        if not is_return(end - 2):
            return False
        for other in symbols:
            if other is sym or other["type"] == 3:
                continue
            value = other["value"] & ~1 if other["type"] == 2 else other["value"]
            mapping = (not other["bind"] and other["type"] == 0 and not other["size"]
                       and other["name"].split(".")[0] == "$d")
            if end <= value < limit and not mapping:
                return False
            if other["size"] and value < limit and value + other["size"] > end:
                return False
        for i, section in enumerate(self.sections):
            for pos, kind, target, addend in self.relocations(i):
                # ARM relocation fields can span a word. Keep ambiguous section-
                # relative/self references conservative instead of guessing REL addends.
                if i == sym["index"] and end - 3 <= pos < limit:
                    return False
                if target[1] == sec["name"] and (target[3] == 3 or
                        target[0] == sym["name"] or end <= (target[2] & ~1) < limit):
                    return False
        for offset in range(start, end, 2):
            if mode(offset) != "$t":
                continue
            op = word(offset)
            target = None
            if op & 0xf800 == 0xe000:  # Thumb B
                imm = op & 0x7ff
                target = offset + 4 + (imm - 0x800 if imm & 0x400 else imm) * 2
            elif op & 0xf000 == 0xd000 and op & 0x0f00 < 0x0e00:  # Bcc
                imm = op & 0xff
                target = offset + 4 + (imm - 0x100 if imm & 0x80 else imm) * 2
            elif op & 0xf800 == 0xf000 and offset + 2 < end:
                low = word(offset + 2)
                if low & 0xf800 == 0xf800:  # Thumb-1 BL pair
                    high = op & 0x7ff
                    if high & 0x400:
                        high -= 0x800
                    target = offset + 4 + (high << 12) + ((low & 0x7ff) << 1)
            elif op & 0xf800 == 0x4800:  # PC-relative literal load
                address = ((offset + 4) & ~3) + (op & 0xff) * 4
                if address < limit and address + 4 > end:
                    return False
            elif op & 0xf800 == 0xa000:  # ADR
                target = ((offset + 4) & ~3) + (op & 0xff) * 4
            if target is not None and end <= target < limit:
                return False
            if op & 0xff87 in (0x4487, 0x4687):  # add/mov pc, register
                return False
            if op & 0xff87 == 0x4700 and not is_return(offset):
                return False
        return True

    def padding_differences(self, other):
        """Explain accepted size differences; every other whole-object field must match."""
        a, b = self.contract(), other.contract()
        if any(a[i] != b[i] for i in (0, 1, 3)) or len(a[2]) != len(b[2]):
            return []
        differences = []
        for left, right in zip(a[2], b[2]):
            if left == right:
                continue
            if left[:-1] != right[:-1]:
                return []
            sa = [s for s in self.symbols if s["name"] == left[0]]
            sb = [s for s in other.symbols if s["name"] == right[0]]
            short, long = sorted((left[-1], right[-1]))
            if (len(sa) != 1 or len(sb) != 1 or
                    not self._trailing_thumb_padding(sa[0], short, long) or
                    not other._trailing_thumb_padding(sb[0], short, long)):
                return []
            differences.append(dict(name=left[0], expected_size=left[-1],
                                    candidate_size=right[-1], padding_bytes=long - short))
        return differences

    def equivalent(self, other, function=None):
        """Compare raw contracts, with a bounded trailing-alignment exception."""
        if function is None:
            if self.contract() == other.contract():
                return True
        elif self.function(function) == other.function(function):
            return True
        differences = self.padding_differences(other)
        return bool(differences) and (function is None or
                                     any(d["name"] == function for d in differences))


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("expected")
    ap.add_argument("candidate")
    ap.add_argument("--function")
    ap.add_argument("--strict", action="store_true", help="require identical raw symbol sizes")
    args = ap.parse_args()
    try:
        a, b = ELF(args.expected), ELF(args.candidate)
        if args.strict:
            equal = a.function(args.function) == b.function(args.function) if args.function else a.contract() == b.contract()
        else:
            equal = a.equivalent(b, args.function)
        print("pass" if equal else "fail")
        if equal and not args.strict:
            for row in a.padding_differences(b):
                print("alignment padding: {name} size {expected_size} -> {candidate_size}".format(**row))
        return 0 if equal else 1
    except (OSError, ValueError, IndexError, KeyError, struct.error) as exc:
        print("error\n" + str(exc))
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
