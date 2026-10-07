"""Candidate identity, isolation, freshness, and compiler-contract checks."""
import json
from pathlib import Path
import subprocess
import struct
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import candidate_catalog as catalog
import candidate_build as build
import build_config
import compare_candidate as cli
from decomp_progress import source_inputs


class CandidateTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        subprocess.run(["git", "init", "-q", str(self.root)], check=True)
        self.put(".gitignore", "build/\n*.o\n")
        self.put("Makefile", "# fixture\n")
        profiles = build_config.read_json(Path(__file__).resolve().parents[2] / "config/compiler_profiles.json")
        profiles["required_unit_profiles"] = {}
        profiles["host_units"] = []
        self.put("config/compiler_profiles.json", json.dumps(profiles))
        self.put("config/modules.json", json.dumps(dict(schema=1, units=[dict(
            id="tu:example", source="src/example.c", object="src/example.o",
            profile="gcc296", owner="example", source_role="maintained")], modules=[])))
        self.put("original_functions.json", "{}")
        self.put("src/example.c", '#include "nonmatching.h"\n'
                 'INCLUDE_ASM("asm/example/One.s");\n'
                 'INCLUDE_ASM_SECTION("asm/example/Two.s", ".text.second");\n')
        self.put("asm/example/One.s", "/* original One */")
        self.put("asm/example/Two.s", "/* original Two */")
        self.put("include/nonmatching.h", "")
        self.snapshot = dict(functions={"rom:1": "assembly", "rom:2": "assembly"},
            units={"src/example.c": dict(object="src/example.o", functions={
                "rom:1": dict(name="One"), "rom:2": dict(name="Two")})})
        self.put("progress_snapshot.json", json.dumps(self.snapshot))
        self.meta = dict(schema=1, source="src/example.c", functions={
            "One": dict(id="rom:1"), "Two": dict(id="rom:2")})
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        self.put("src/non_matching/example/One.c", "int One(void) { return 1; }\n")
        self.put("src/non_matching/example/Two.c", "int Two(void) { return 2; }\n")

    def tearDown(self):
        self.temp.cleanup()

    def put(self, name, text):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
        return path

    def unit(self):
        return catalog.catalog(self.root)["example"]

    def test_single_substitution_preserves_other_assembly_and_order(self):
        result = catalog.compose(self.root, self.unit(), ["One"])
        self.assertIn("int One(void)", result)
        self.assertNotIn('INCLUDE_ASM("asm/example/One.s")', result)
        self.assertIn('INCLUDE_ASM_SECTION("asm/example/Two.s"', result)
        self.assertLess(result.index("int One"), result.index("INCLUDE_ASM_SECTION"))

    def test_sectioned_substitution_restores_section(self):
        result = catalog.compose(self.root, self.unit(), ["Two"])
        self.assertIn('SECTION(".text.second");', result)
        self.assertIn('#line 1 "src/non_matching/example/Two.c"', result)

    def test_companions_and_context_are_inserted_once(self):
        self.meta["functions"]["One"].update(requires=["Two"], context=["context.h"])
        self.meta["functions"]["Two"]["context"] = ["context.h"]
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        self.put("src/non_matching/example/context.h", "typedef int value_t;\n")
        result = catalog.compose(self.root, self.unit(), ["One"])
        self.assertEqual(result.count("context.h"), 1)
        self.assertIn("int Two(void)", result)

    def test_dependency_cycles_fail(self):
        self.meta["functions"]["One"]["requires"] = ["Two"]
        self.meta["functions"]["Two"]["requires"] = ["One"]
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        with self.assertRaisesRegex(ValueError, "cyclic"): self.unit()

    def test_landed_function_is_rejected(self):
        self.snapshot["functions"]["rom:1"] = "c"
        self.put("progress_snapshot.json", json.dumps(self.snapshot))
        with self.assertRaisesRegex(ValueError, "already landed"): self.unit()

    def test_wrong_identity_is_rejected_even_with_matching_name(self):
        self.meta["functions"]["One"]["id"] = "overlay:other:1"
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        with self.assertRaises(ValueError): self.unit()

    def test_comment_cannot_supply_missing_assembly_site(self):
        self.put("src/example.c", '/* INCLUDE_ASM("asm/example/One.s"); */\n')
        with self.assertRaisesRegex(ValueError, "one assembly inclusion"): self.unit()

    def test_assembly_fallback_is_not_a_c_candidate(self):
        self.put("src/non_matching/example/One.c", 'INCLUDE_ASM("asm/example/One.s");\n')
        with self.assertRaisesRegex(ValueError, "define C"): self.unit()
        self.assertIn("replacement C definition missing: One", build.source_errors(
            '__asm__(".include \\"asm/example/One.s\\"");', ["One"]))

    def test_unregistered_source_and_escaping_context_fail(self):
        path = self.put("src/non_matching/example/Other.c", "int Other(void) { return 0; }")
        with self.assertRaisesRegex(ValueError, "unregistered"): self.unit()
        path.unlink()
        self.meta["functions"]["One"]["context"] = ["../../../outside.h"]
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        with self.assertRaises(ValueError): self.unit()

    def test_candidate_changes_do_not_change_production_fingerprint(self):
        before = source_inputs(self.root)
        self.put("src/non_matching/example/One.c", "int One(void) { return 3; }")
        self.assertEqual(before, source_inputs(self.root))
        self.put("include/nonmatching.h", "/* changed header */")
        self.assertNotEqual(before, source_inputs(self.root))

    def test_expanded_size_overrides_rejected_but_aliases_and_hardware_allowed(self):
        for statement in [r'__asm__(".size One, 4");', r'__asm__("\x2e" "size One, 4");']:
            self.assertIn("source-authored .size override", build.source_errors(
                statement + "int One(void) { return 0; }", ["One"]))
        allowed = r'''extern char pool[] __asm__(".Lpool");
__asm__(".equ .Lconstant, 4");
int One(void) { __asm__ volatile("swi 0"); return 0; }
const char *description = ".size is not assembly here";
'''
        self.assertEqual(build.source_errors(allowed, ["One"]), [])

    def test_preprocessor_must_retain_candidate_definition(self):
        self.assertTrue(build.source_errors("int Other(void) { return 0; }", ["One"]))

    def test_reference_requires_verified_metadata_and_hash(self):
        base = self.root / "expected"
        obj = self.put("expected/src/example.o", "original")
        meta = dict(schema=2, gate="make -j1 clean && make -j1 compare",
                    objects={"src/example.o": build.sha(obj)},
                    production_inputs=build.production_inputs(self.root),
                    candidate_compilers={"test": "compiler"})
        self.put("expected/manifest.json", json.dumps(meta))
        with mock.patch.object(build, "compiler_inputs", return_value={"test": "compiler"}):
            self.assertEqual(build.reference(self.root, base, "src/example.o")[0], obj)
            obj.write_text("modified")
            with self.assertRaisesRegex(ValueError, "modified"):
                build.reference(self.root, base, "src/example.o")

    def test_reference_rom_and_overlay_are_checked_and_fingerprinted(self):
        self.put(".gitignore", "build/\n*.o\n*.bin\n*.gba\n")
        obj = self.put("expected/src/example.o", "reference")
        rom = self.put("baserom.gba", "ROM")
        overlay = self.put("overlays/test/orig.bin", "overlay")
        meta = dict(schema=2, gate="make -j1 clean && make -j1 compare",
            production_inputs=build.production_inputs(self.root), candidate_compilers={"test": "cc"},
            reference_sha256=build.sha(rom), overlays={"overlays/test/overlay.bin": build.sha(overlay)},
            objects={"src/example.o": build.sha(obj)})
        self.put("expected/manifest.json", json.dumps(meta))
        before = cli.input_state(self.root, self.unit())
        with mock.patch.object(build, "compiler_inputs", return_value={"test": "cc"}):
            build.reference(self.root, obj.parents[1], "src/example.o")
            rom.write_text("changed ROM")
            self.assertNotEqual(before, cli.input_state(self.root, self.unit()))
            with self.assertRaisesRegex(ValueError, "reference ROM changed"):
                build.reference(self.root, obj.parents[1], "src/example.o")
            rom.write_text("ROM")
            overlay.write_text("changed overlay")
            with self.assertRaisesRegex(ValueError, "reference overlay changed"):
                build.reference(self.root, obj.parents[1], "src/example.o")

    def test_gcc_and_agbcc_use_supplied_contract_and_original_include_path(self):
        calls = []
        values = build_config.make_values(Path(__file__).resolve().parents[2])
        def run(argv, **kwargs):
            calls.append(argv)
            if "-S" in argv or argv[0] == "oldcc":
                Path(argv[argv.index("-o") + 1]).write_text(".text\n")
            elif argv[0] == "arm-none-eabi-as":
                Path(argv[argv.index("-o") + 1]).write_bytes(b"object")
            return subprocess.CompletedProcess(argv, 0, "int One(void) { return 1; }\n", "")
        for mode in ("gcc296", "agbcc"):
            data = json.loads((self.root / "config/modules.json").read_text())
            data["units"][0]["profile"] = "gcc296" if mode == "gcc296" else "old-agbcc-m4a"
            self.put("config/modules.json", json.dumps(data))
            settings = [mode, "xgcc", "-O2 -fno-strict-aliasing",
                        "oldcc", "-nostdinc -D M4A_SIGNED_CHAR", "-O"]
            with mock.patch.object(build_config, "make_values", return_value=values), \
                 mock.patch.object(build.subprocess, "run", side_effect=run):
                build.compile_tu(self.root, "src/example.c", "int One(void) { return 1; }",
                                 self.root / mode, settings, ["One"])
        self.assertTrue(any(a[0] == "xgcc" and "-fno-strict-aliasing" in a for a in calls))
        self.assertTrue(any(a[0] == "gcc" and "M4A_SIGNED_CHAR" in a for a in calls))
        self.assertTrue(any(a[0] == "oldcc" and "-O" in a for a in calls))
        self.assertTrue(all("-I" + str(self.root / "src") in a for a in calls
                            if "-E" in a or "-S" in a))

    def test_control_mismatch_stops_before_candidate_and_preserves_source(self):
        unit = self.unit()
        original = (self.root / "src/example.c").read_bytes()
        base = self.root / "expected"
        expected = self.put("expected/src/example.o", "original")
        self.put("expected/manifest.json", "{}")
        with mock.patch.object(cli, "reference", return_value=(expected, {})), \
             mock.patch.object(cli, "compiler_inputs", return_value={"tool": "hash"}), \
             mock.patch.object(cli, "contract", return_value=["contract"]), \
             mock.patch.object(cli, "compile_tu", return_value=(expected, "", [])) as compile_mock, \
             mock.patch.object(cli, "comparison", return_value={"exact": False}), \
             mock.patch.object(cli, "disassembly_diff", return_value="diff"):
            status, output = cli.compare(self.root, unit, ["One"], base)
        self.assertEqual(status, 2)
        self.assertEqual(compile_mock.call_count, 1)
        self.assertEqual((self.root / "src/example.c").read_bytes(), original)
        self.assertEqual(expected.read_text(), "original")
        self.assertTrue(output.is_relative_to(self.root / "build/non_matching"))


    def test_repeated_overlay_name_is_scoped_to_original_identity(self):
        config = json.loads((self.root / "config/modules.json").read_text())
        config["units"].append(dict(id="tu:overlay", source="src/overlay.c", object="src/overlay.o",
            source_role="maintained", profile="gcc296", owner="overlay"))
        self.put("config/modules.json", json.dumps(config))
        self.put("src/overlay.c", 'INCLUDE_ASM("asm/overlay/One.s");')
        self.put("asm/overlay/One.s", "/* another overlay */")
        self.snapshot["functions"]["overlay:other:1"] = "assembly"
        self.snapshot["units"]["src/overlay.c"] = dict(object="src/overlay.o", functions={
            "overlay:other:1": dict(name="One")})
        self.put("progress_snapshot.json", json.dumps(self.snapshot))
        self.put("src/non_matching/overlay/candidates.json", json.dumps(dict(
            schema=1, source="src/overlay.c", functions={"One": dict(id="overlay:other:1")})))
        self.put("src/non_matching/overlay/One.c", "int One(void) { return 3; }")
        self.assertEqual(len(catalog.catalog(self.root)), 2)

    def test_production_cannot_hide_candidate_dependency(self):
        for directive in ('#include "non_matching/example/One.c"',
                          '#define CANDIDATE "non_matching/example/One.c"\n#include CANDIDATE',
                          '#include \\\n "non_matching/example/One.c"'):
            self.put("src/import.c", directive)
            with self.assertRaises(ValueError): source_inputs(self.root)
        self.put("src/import.c", '/* #include "non_matching/example/One.c" */')
        self.assertFalse(catalog.production_candidate_errors(self.root))
        self.put("stage1.ld", "src/non_matching/example/One.o(.text)")
        with self.assertRaisesRegex(ValueError, "linker references"):
            source_inputs(self.root)

    def test_changed_reference_inputs_are_rejected(self):
        expected = self.put("expected/src/example.o", "reference")
        state = build.production_inputs(self.root)
        meta = dict(schema=2, gate="make -j1 clean && make -j1 compare", production_inputs=state,
                    candidate_compilers={"test": "old"}, objects={"src/example.o": build.sha(expected)})
        self.put("expected/manifest.json", json.dumps(meta))
        with mock.patch.object(build, "compiler_inputs", return_value={"test": "new"}):
            with self.assertRaisesRegex(ValueError, "compiler inputs changed"):
                build.reference(self.root, expected.parents[1], "src/example.o")
        self.put("include/changed.h", "#define VALUE 2")
        with self.assertRaisesRegex(ValueError, "production inputs changed"):
            build.reference(self.root, expected.parents[1], "src/example.o")

    def test_input_change_overrides_exact_result_and_keeps_inputs(self):
        unit = self.unit()
        expected = self.put("expected/src/example.o", "reference")
        self.put("expected/manifest.json", "{}")
        state = cli.input_state(self.root, unit)
        with mock.patch.object(cli, "reference", return_value=(expected, {})), \
             mock.patch.object(cli, "compiler_inputs", return_value={"tool": "hash"}), \
             mock.patch.object(cli, "input_state", side_effect=[state, dict(state, changed="yes")]), \
             mock.patch.object(cli, "contract", return_value=["contract"]), \
             mock.patch.object(cli, "compile_tu", return_value=(expected, "", [])), \
             mock.patch.object(cli, "comparison", return_value={"exact": True}), \
             mock.patch.object(cli, "disassembly_diff", return_value=""):
            status, output = cli.compare(self.root, unit, ["One"], expected.parents[1])
        self.assertEqual(status, 2)
        report = json.loads((output / "report.json").read_text())
        self.assertEqual(report["error"], "inputs changed during evaluation")
        self.assertEqual(expected.read_text(), "reference")

    def test_compile_failure_is_error_and_leaves_reference_untouched(self):
        expected = self.put("expected/src/example.o", "reference")
        self.put("expected/manifest.json", "{}")
        with mock.patch.object(cli, "reference", return_value=(expected, {})), \
             mock.patch.object(cli, "compiler_inputs", return_value={"tool": "hash"}), \
             mock.patch.object(cli, "contract", return_value=["contract"]), \
             mock.patch.object(cli, "compile_tu", side_effect=ValueError("bad source")):
            status, output = cli.compare(self.root, self.unit(), ["One"], expected.parents[1])
        self.assertEqual(status, 2)
        self.assertEqual(expected.read_text(), "reference")
        self.assertEqual(json.loads((output / "report.json").read_text())["status"], "ERROR")

class ELFComparisonTests(unittest.TestCase):
    def object(self, path, code=b"\0" * 8, size=4, callee="Callee", flags=0):
        strings = ("\0One\0Neighbor\0" + callee + "\0").encode()
        names = b"\0.text\0.rel.text\0.symtab\0.strtab\0.shstrtab\0"
        symbol = lambda name, value, length, info, index: struct.pack(
            "<IIIBBH", name, value, length, info, 0, index)
        symbols = (bytes(16) + symbol(1, 1, size, 0x12, 1)
                   + symbol(5, 5, 4, 0x12, 1) + symbol(14, 0, 0, 0x10, 0))
        sections = [(b"", 0, 0, 0, 0, 0, 0, b""),
            (b".text", 1, 6, 0, 0, 4, 0, code),
            (b".rel.text", 9, 0, 3, 1, 4, 8, struct.pack("<II", 4, (3 << 8) | 2)),
            (b".symtab", 2, 0, 4, 1, 4, 16, symbols),
            (b".strtab", 3, 0, 0, 0, 1, 0, strings),
            (b".shstrtab", 3, 0, 0, 0, 1, 0, names)]
        data = bytearray(52)
        headers = []
        for name, kind, attrs, link, info, align, width, content in sections:
            while len(data) % max(1, align): data.append(0)
            offset = len(data)
            data.extend(content)
            headers.append(struct.pack("<IIIIIIIIII", names.index(name) if name else 0,
                kind, attrs, 0, offset, len(content), link, info, align, width))
        while len(data) % 4: data.append(0)
        start = len(data)
        data.extend(b"".join(headers))
        data[:16] = b"\x7fELF\x01\x01\x01" + bytes(9)
        data[16:52] = struct.pack("<HHIIIIIHHHHHH", 1, 40, 1, 0, 0, start,
                                   flags, 52, 0, 0, 40, len(headers), 5)
        path.write_bytes(data)
        return path

    def test_metadata_relocations_and_neighbor_changes_do_not_count_as_exact(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            expected = self.object(root / "expected.o")
            actual = self.object(root / "actual.o")
            self.assertTrue(build.comparison(expected, actual)["exact"])
            self.object(actual, size=2)
            result = build.comparison(expected, actual)
            self.assertFalse(result["exact"])
            self.assertFalse(result["sections"])
            self.assertEqual(result["symbols"][0]["name"], "One")
            self.object(actual, callee="Other")
            self.assertEqual(build.comparison(expected, actual)["relocations"], [".text"])
            self.object(actual, code=b"\0" * 7 + b"\x01")
            result = build.comparison(expected, actual)
            self.assertFalse(result["exact"])
            self.assertEqual(result["sections"][0]["differing_bytes"], 1)
            self.object(actual, flags=1)
            self.assertTrue(build.comparison(expected, actual)["flags"])


if __name__ == "__main__":
    unittest.main()
