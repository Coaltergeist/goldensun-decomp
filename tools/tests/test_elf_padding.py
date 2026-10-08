"""Portable ELF fixtures for the trailing Thumb alignment exception."""
from pathlib import Path
import importlib.util
import struct
import subprocess
import sys
import tempfile
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
from elf_contract import ELF
import candidate_build


def object_file(path, size, *, code=None, mappings=None, extra=(), relocations=(),
                align=4, flags=0, value=1, neighbor=9, binding=1, visibility=0):
    if code is None:
        code = bytes.fromhex("0020 01bc 0047 0000 7047 c046")
    if mappings is None:
        mappings = [("$t", 0), ("$d", 6), ("$t", 8)]
    # name, value, size, binding/type, visibility, section
    rows = [(name, pos, 0, 0, 0, 1) for name, pos in mappings]
    rows += list(extra)
    rows += [("Test", value, size, (binding << 4) | 2, visibility, 1),
             ("Callee", 0, 0, 0x10, 0, 0), ("Other", 0, 0, 0x10, 0, 0)]
    if neighbor is not None:
        rows.append(("Neighbor", neighbor, 4, 0x12, 0, 1))
    strings = bytearray(b"\0")
    symbols = bytearray(16)
    indexes = {}
    for i, (name, pos, length, info, other, section) in enumerate(rows, 1):
        offset = len(strings)
        strings.extend(name.encode() + b"\0")
        symbols.extend(struct.pack("<IIIBBH", offset, pos, length, info, other, section))
        indexes[name] = i
    rel = b"".join(struct.pack("<II", pos, (indexes[name] << 8) | kind)
                   for pos, name, kind in relocations)
    names = b"\0.text\0.rel.text\0.symtab\0.strtab\0.shstrtab\0"
    sections = [(b"", 0, 0, 0, 0, 0, 0, b""),
                (b".text", 1, 6, 0, 0, align, 0, code),
                (b".rel.text", 9, 0, 3, 1, 4, 8, rel),
                (b".symtab", 2, 0, 4, 1 + len(mappings) + len(extra), 4, 16, symbols),
                (b".strtab", 3, 0, 0, 0, 1, 0, strings),
                (b".shstrtab", 3, 0, 0, 0, 1, 0, names)]
    data = bytearray(52)
    headers = []
    for name, kind, attrs, link, info, alignment, width, content in sections:
        data.extend(bytes((-len(data)) % max(1, alignment)))
        offset = len(data)
        data.extend(content)
        headers.append(struct.pack("<IIIIIIIIII", names.index(name) if name else 0,
                       kind, attrs, 0, offset, len(content), link, info, alignment, width))
    data.extend(bytes((-len(data)) % 4))
    offset = len(data)
    data.extend(b"".join(headers))
    data[:16] = b"\x7fELF\x01\x01\x01" + bytes(9)
    data[16:52] = struct.pack("<HHIIIIIHHHHHH", 1, 40, 1, 0, 0, offset,
                              flags, 52, 0, 0, 40, len(headers), 5)
    path.write_bytes(data)
    return ELF(path)


class PaddingTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)

    def pair(self, common=None, actual=None, expected=None):
        common, actual, expected = common or {}, actual or {}, expected or {}
        return (object_file(self.root / "expected.o", **(dict(size=8) | common | expected)),
                object_file(self.root / "actual.o", **(dict(size=6) | common | actual)))

    def rejected(self, **kwargs):
        a, b = self.pair(**kwargs)
        self.assertFalse(a.equivalent(b))
        self.assertFalse(b.equivalent(a))
        self.assertFalse(a.equivalent(b, "Test"))
        self.assertFalse(a.padding_differences(b))

    def test_real_interworking_return_padding_is_symmetric_and_explained(self):
        a, b = self.pair()
        self.assertNotEqual(a.contract(), b.contract())
        self.assertNotEqual(a.function("Test"), b.function("Test"))
        self.assertTrue(a.equivalent(b))
        self.assertTrue(b.equivalent(a))
        self.assertTrue(a.equivalent(b, "Test"))
        self.assertEqual(a.padding_differences(b), [dict(name="Test", expected_size=8,
                         candidate_size=6, padding_bytes=2)])

    def test_bx_lr_and_pop_pc_returns(self):
        for suffix in ("7047", "01bd"):
            with self.subTest(suffix=suffix):
                a, b = self.pair(common=dict(code=bytes.fromhex("0020 c046 " + suffix + " 0000 7047 c046")))
                self.assertTrue(a.equivalent(b))

    def test_section_end_padding_is_also_bounded(self):
        a, b = self.pair(common=dict(code=bytes.fromhex("0020 01bc 0047 0000"),
                                    mappings=[("$t", 0), ("$d", 6)], neighbor=None))
        self.assertTrue(a.equivalent(b))

    def test_bl_into_padding_is_rejected(self):
        self.rejected(common=dict(code=bytes.fromhex("00f0 01f8 7047 0000 7047 c046")))

    def test_equal_raw_contract_needs_no_padding_exception(self):
        a, b = self.pair(actual=dict(size=8))
        self.assertTrue(a.equivalent(b))
        self.assertEqual(a.padding_differences(b), [])

    def test_candidate_comparison_and_cli_report_exception(self):
        self.pair()
        result = candidate_build.comparison(self.root / "expected.o", self.root / "actual.o")
        self.assertTrue(result["exact"])
        self.assertEqual(result["symbols"], [])
        self.assertEqual(result["alignment_padding"][0]["name"], "Test")
        args = [sys.executable, "-B", str(TOOLS / "elf_contract.py"),
                str(self.root / "expected.o"), str(self.root / "actual.o")]
        accepted = subprocess.run(args, text=True, capture_output=True)
        self.assertEqual(accepted.returncode, 0, accepted.stderr)
        self.assertIn("alignment padding: Test size 8 -> 6", accepted.stdout)
        self.assertEqual(subprocess.run(args + ["--strict"], capture_output=True).returncode, 1)

    def test_instruction_and_neighbor_changes_remain_differences(self):
        for offset in (0, 8):
            code = bytearray(bytes.fromhex("0020 01bc 0047 0000 7047 c046"))
            code[offset] ^= 1
            with self.subTest(offset=offset):
                self.rejected(actual=dict(code=bytes(code)))

    def test_padding_must_be_zero_even_when_both_objects_agree(self):
        self.rejected(common=dict(code=bytes.fromhex("0020 01bc 0047 c046 7047 c046")))

    def test_padding_size_must_be_one_halfword(self):
        for size in (2, 4, 7, 10):
            with self.subTest(size=size):
                self.rejected(actual=dict(size=size))

    def test_return_must_be_code_and_padding_must_be_data_mapped(self):
        for mappings in ([], [("$t", 0)], [("$d", 0), ("$t", 8)],
                         [("$t", 0), ("$d", 4), ("$t", 8)],
                         [("$a", 0), ("$t", 4), ("$d", 6), ("$t", 8)],
                         [("$t", 4), ("$d", 6), ("$t", 8)],
                         [("$t", 0), ("$d", 6), ("$t", 6), ("$t", 8)]):
            with self.subTest(mappings=mappings):
                self.rejected(common=dict(mappings=mappings))

    def test_fallthrough_and_unproven_indirect_branch_are_rejected(self):
        for code in ("0020 01bc c046 0000 7047 c046", "0020 c046 0047 0000 7047 c046",
                     "1847 01bc 0047 0000 7047 c046", "8746 01bc 0047 0000 7047 c046"):
            with self.subTest(code=code):
                self.rejected(common=dict(code=bytes.fromhex(code)))

    def test_branch_into_alignment_is_not_padding(self):
        for branch in ("01e0", "01d0"):
            with self.subTest(branch=branch):
                self.rejected(common=dict(code=bytes.fromhex(branch + " 01bc 0047 0000 7047 c046")))

    def test_literal_load_touching_padding_is_rejected(self):
        self.rejected(common=dict(code=bytes.fromhex("0048 01bc 0047 0000 7047 c046")))

    def test_relocation_inside_or_across_padding_is_rejected(self):
        for offset in (3, 4, 6):
            with self.subTest(offset=offset):
                self.rejected(common=dict(relocations=[(offset, "Callee", 2)]))

    def test_relocation_target_change_remains_a_difference(self):
        self.rejected(expected=dict(relocations=[(0, "Callee", 10)]),
                      actual=dict(relocations=[(0, "Other", 10)]))

    def test_section_and_self_references_remain_conservative(self):
        self.rejected(common=dict(relocations=[(0, "Test", 10)]))
        self.rejected(common=dict(extra=[("Section", 0, 0, 3, 0, 1)],
                                  relocations=[(0, "Section", 2)]))

    def test_named_padding_and_overlapping_data_are_rejected(self):
        for extra in [[("Tail", 6, 0, 0, 0, 1)], [("Data", 4, 4, 1, 0, 1)],
                      [("Alias", 1, 8, 2, 0, 1)]]:
            with self.subTest(extra=extra):
                self.rejected(common=dict(extra=extra))

    def test_next_function_and_alignment_must_bound_the_gap(self):
        self.rejected(common=dict(neighbor=11))
        self.rejected(common=dict(align=2))
        self.rejected(actual=dict(align=8))

    def test_addresses_flags_binding_and_visibility_stay_strict(self):
        for change in [dict(value=3), dict(value=0), dict(neighbor=11),
                       dict(flags=1), dict(binding=2), dict(visibility=2)]:
            with self.subTest(change=change):
                self.rejected(actual=change)

    def test_missing_or_ambiguous_function_is_error(self):
        a, b = self.pair()
        with self.assertRaises(ValueError):
            a.equivalent(b, "Missing")
        a, b = self.pair(actual=dict(size=0))
        self.assertFalse(a.equivalent(b))
        with self.assertRaises(ValueError):
            a.equivalent(b, "Test")


if __name__ == "__main__":
    unittest.main()
