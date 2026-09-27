import copy
from collections import Counter
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import decomp_progress as dp


def fixture():
    rows = [
        dict(id="rom:080003c0", domain="rom", address=0x080003c0, mode="arm", original_name="_start"),
        dict(id="rom:08001000", domain="rom", address=0x08001000, mode="thumb", original_name="main"),
        dict(id="overlay:a:02008000", domain="overlay:a", address=0x02008000, mode="thumb", original_name="repeat"),
        dict(id="overlay:b:02008000", domain="overlay:b", address=0x02008000, mode="thumb", original_name="repeat"),
        dict(id="common:common1:00000000", domain="common:common1", address=0, mode="thumb", original_name="shared"),
    ]
    manifest = dict(schema=1, revision="reference", functions=rows)
    baseline = dict(schema=1, revision="reference", rom_sha1=dp.ROM_SHA1,
                    sizes={r["id"]: n for r, n in zip(rows, [68, 100, 200, 300, 40])})
    inputs = {"src/test.c": "a" * 64}
    snapshot = dict(schema=2, policy=dp.POLICY, baseline_sha256="b" * 64,
                    source_fingerprint=dp.fingerprint(inputs), input_count=1,
                    functions={r["id"]: s for r, s in zip(rows, ["assembly", "c", "c", "assembly", "c-registered-fakematch"])},
                    verification=dict(rom_sha1=dp.ROM_SHA1,
                                      gate="make -j1 clean && make -j1 compare",
                                      overlays={name: "a" * 64 for name in ["a", "b"] + [f"rom_{i:06x}" for i in range(94)]}))
    paths = ["src/crt0.s", "src/main.c", "src/a.c", "src/b.c", "src/maps/common/common1.c"]
    snapshot["units"] = {}
    for row, source in zip(rows, paths):
        inputs[source] = "a" * 64
        obj = ("asm/" + source[4:-2] if source.startswith("src/maps/") else source[:-2]) + ".o"
        snapshot["units"][source] = dict(object=obj, functions={
            row["id"]: dict(name=row["original_name"], address=0, section=".text")})
    snapshot["source_fingerprint"] = dp.fingerprint(inputs)
    snapshot["input_count"] = len(inputs)
    return manifest, baseline, snapshot, inputs


class AccountingTests(unittest.TestCase):
    def test_report_uses_original_bytes_includes_arm_and_excludes_fakematches(self):
        m, b, s, inputs = fixture()
        dp.validate_snapshot(m, b, s, inputs, "b" * 64)
        out = dp.summary(b, s)["measures"]
        self.assertEqual(out["total_code"], "708")
        self.assertEqual(out["matched_code"], "300")
        self.assertEqual(out["total_functions"], 5)
        self.assertEqual(out["matched_functions"], 2)
        self.assertAlmostEqual(out["matched_code_percent"], 100 * 300 / 708)
        self.assertNotIn("fuzzy_match_percent", out)
        self.assertNotIn("complete_code", out)

    def test_c_definitions_are_scoped_to_the_actual_tu(self):
        _, _, snapshot, _ = fixture()
        definitions = {"src/main.c": {"main": "", "_start": "unrelated inline helper"},
                       "src/a.c": {"repeat": ""},
                       "src/maps/common/common1.c": {"shared": ""},
                       "src/non_matching/b.c": {"repeat": ""},
                       "src/unlinked.c": {"repeat": ""}}
        registered = {("shared", "src/maps/common/common1.c")}
        units = snapshot["units"]
        self.assertEqual(dp.classify(units, definitions, registered), snapshot["functions"])
        units["src/main.c"]["functions"]["rom:08001000"]["name"] = "renamed"
        definitions["src/main.c"] = {"renamed": "", "new_helper": ""}
        self.assertEqual(dp.classify(units, definitions, registered), snapshot["functions"])

    def test_same_named_inline_helper_cannot_credit_assembly_in_another_tu(self):
        units = {
            "src/ui/text.c": {"functions": {"rom:0801f818": {"name": "PrepareSaveHeader"}}},
            "src/save.c": {"functions": {"rom:08006300": {"name": "SaveGame"}}}}
        definitions = {"src/ui/text.c": {}, "src/save.c": {"SaveGame": "", "PrepareSaveHeader": ""}}
        self.assertEqual(dp.classify(units, definitions, set()),
                         {"rom:0801f818": "assembly", "rom:08006300": "c"})

    def test_bad_coverage_sizes_and_overlaps_are_rejected(self):
        m, b, _, _ = fixture()
        for value in [0, -1, True, 2.5]:
            bad = copy.deepcopy(b)
            bad["sizes"]["rom:08001000"] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                dp.validate_baseline(m, bad)
        bad = copy.deepcopy(b)
        del bad["sizes"]["rom:08001000"]
        with self.assertRaises(ValueError): dp.validate_baseline(m, bad)
        bad = copy.deepcopy(b)
        bad["sizes"]["rom:080003c0"] = 0x1000
        with self.assertRaisesRegex(ValueError, "overlap"): dp.validate_baseline(m, bad)
        m["functions"].append(copy.deepcopy(m["functions"][0]))
        with self.assertRaises(ValueError): dp.validate_baseline(m, b)

    def test_stale_and_partial_snapshots_are_rejected(self):
        m, b, s, inputs = fixture()
        with self.assertRaisesRegex(ValueError, "stale"):
            dp.validate_snapshot(m, b, s, {"src/test.c": "changed"}, "b" * 64)
        for key, value in [("policy", "other"), ("baseline_sha256", "changed"),
                           ("functions", {}), ("verification", {})]:
            bad = copy.deepcopy(s); bad[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                dp.validate_snapshot(m, b, bad, inputs, "b" * 64)
        s["functions"]["rom:08001000"] = "unresolved"
        with self.assertRaises(ValueError): dp.validate_snapshot(m, b, s, inputs, "b" * 64)


    def test_treemap_totals_and_function_scores_preserve_strict_accounting(self):
        _, baseline, snapshot, _ = fixture()
        # A partially decompiled TU: original ARM assembly plus a matching C body.
        startup = snapshot["units"].pop("src/crt0.s")["functions"]
        snapshot["units"]["src/main.c"]["functions"].update(startup)
        report = dp.unit_report(baseline, snapshot)
        self.assertEqual(report["measures"]["total_units"], 4)
        for key, value in dp.summary(baseline, snapshot)["measures"].items():
            self.assertEqual(report["measures"][key], value)
        self.assertEqual(sum(int(u["measures"]["total_code"]) for u in report["units"]), 708)
        self.assertEqual(sum(int(u["measures"]["matched_code"]) for u in report["units"]), 300)
        self.assertEqual(sum(len(u["functions"]) for u in report["units"]), 5)
        units = {u["name"]: u for u in report["units"]}
        partial = units["src/main.c"]
        self.assertAlmostEqual(partial["measures"]["fuzzy_match_percent"], 100 * 100 / 168)
        self.assertEqual({f["name"]: f["fuzzy_match_percent"] for f in partial["functions"]},
                         {"_start": 0.0, "main": 100.0})
        self.assertEqual(units["src/a.c"]["measures"]["fuzzy_match_percent"], 100.0)
        self.assertEqual(units["src/b.c"]["measures"]["fuzzy_match_percent"], 0.0)
        shared = units["src/maps/common/common1.c"]
        self.assertEqual(shared["functions"][0]["fuzzy_match_percent"], 0.0)
        self.assertEqual(shared["metadata"]["source_path"], shared["name"])
        for unit in report["units"]:
            self.assertNotIn("complete", unit["metadata"])
            self.assertNotIn("complete_code", unit["measures"])
            self.assertEqual(sum(int(f["size"]) for f in unit["functions"]),
                             int(unit["measures"]["total_code"]))
        self.assertEqual(dp.unit_report(baseline, snapshot), report)

    def test_tu_inventory_rejects_missing_duplicate_and_invalid_ownership(self):
        manifest, baseline, snapshot, inputs = fixture()
        dp.validate_units(baseline, snapshot, inputs)
        cases = []
        missing = copy.deepcopy(snapshot)
        del missing["units"]["src/main.c"]
        cases.append(missing)
        duplicate = copy.deepcopy(snapshot)
        duplicate["units"]["src/a.c"]["functions"].update(
            duplicate["units"]["src/main.c"]["functions"])
        cases.append(duplicate)
        unknown_source = copy.deepcopy(snapshot)
        unknown_source["units"]["src/parked.c"] = unknown_source["units"].pop("src/a.c")
        cases.append(unknown_source)
        wrong_object = copy.deepcopy(snapshot)
        wrong_object["units"]["src/main.c"]["object"] = "src/a.o"
        cases.append(wrong_object)
        bad_address = copy.deepcopy(snapshot)
        bad_address["units"]["src/main.c"]["functions"]["rom:08001000"]["address"] = -1
        cases.append(bad_address)
        unknown = copy.deepcopy(snapshot)
        unknown["units"]["src/main.c"]["functions"]["rom:deadbeef"] = dict(
            name="new_helper", address=100, section=".text")
        cases.append(unknown)
        cases.append({**snapshot, "units": {}})
        for i, bad in enumerate(cases):
            with self.subTest(case=i), self.assertRaises(ValueError):
                dp.validate_units(baseline, bad, inputs)
        with self.assertRaisesRegex(ValueError, "schema"):
            dp.validate_snapshot(manifest, baseline, {**snapshot, "schema": 1},
                                 inputs, "b" * 64)

    def test_overlap_corrections_only_cover_reviewed_entry_points(self):
        m = dict(functions=[
            dict(id="rom:080008d4", domain="rom", address=0x080008d4),
            dict(id="rom:080008d8", domain="rom", address=0x080008d8)])
        sizes, notes = dp.account_sizes(m, {"rom:080008d4": 116, "rom:080008d8": 112})
        self.assertEqual(sum(sizes.values()), 116)
        self.assertEqual(notes["rom:080008d4"]["elf_size"], 116)
        m["functions"][0]["id"] = "other"
        with self.assertRaisesRegex(ValueError, "unreviewed"):
            dp.account_sizes(m, {"other": 116, "rom:080008d8": 112})

    def test_missing_size_corrections_are_explicit(self):
        rows = [dict(id=k, domain=k.rsplit(":", 1)[0], address=int(k.rsplit(":", 1)[1], 16))
                for k in dp.SIZE_CORRECTIONS]
        raw = {r["id"]: 0 for r in rows}
        sizes, notes = dp.account_sizes(dict(functions=rows), raw)
        self.assertEqual(sorted(sizes.values()), [12, 20])
        self.assertTrue(all(note["elf_size"] == 0 for note in notes.values()))
        raw[rows[0]["id"]] = 12
        with self.assertRaises(ValueError): dp.account_sizes(dict(functions=rows), raw)


class SnapshotWorkflowTests(unittest.TestCase):
    def setUp(self):
        work = dp.ROOT / ".progress"
        work.mkdir(exist_ok=True)
        self.temp = tempfile.TemporaryDirectory(dir=work)
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)

    def test_fingerprint_tracks_source_additions_edits_deletions_and_not_order(self):
        for name, text in {"Makefile": "build", "original_functions.json": "{}",
                           "src/a.c": "int a;", "include/a.h": "int a;",
                           "README.md": "documentation"}.items():
            p = self.root / name; p.parent.mkdir(parents=True, exist_ok=True); p.write_text(text)
        paths = b"Makefile\0original_functions.json\0src/a.c\0include/a.h\0README.md\0"
        with patch.object(dp, "git", return_value=paths):
            first = dp.source_inputs(self.root)
            (self.root / "README.md").write_text("new docs")
            self.assertEqual(first, dp.source_inputs(self.root))
            (self.root / "include/a.h").write_text("changed header")
            self.assertNotEqual(first, dp.source_inputs(self.root))
            (self.root / "src/a.c").unlink()
            self.assertNotIn("src/a.c", dp.source_inputs(self.root))
        self.assertEqual(dp.fingerprint(first), dp.fingerprint(dict(reversed(list(first.items())))))
        self.assertNotEqual(dp.fingerprint(first), dp.fingerprint({**first, "src/new.c": "new"}))

    def test_ignored_but_referenced_assembly_is_fingerprinted(self):
        (self.root / "src").mkdir(); (self.root / "asm").mkdir()
        (self.root / "Makefile").write_text("build")
        (self.root / "original_functions.json").write_text("{}")
        (self.root / "src/a.c").write_text('INCLUDE_ASM("asm/a.s");\n')
        (self.root / "asm/a.s").write_text("bx lr")
        names = b"Makefile\0original_functions.json\0src/a.c\0"
        with patch.object(dp, "git", return_value=names):
            self.assertIn("asm/a.s", dp.source_inputs(self.root))
            (self.root / "asm/a.s").unlink()
            with self.assertRaisesRegex(ValueError, "assembly input"):
                dp.source_inputs(self.root)

    def test_linked_assembly_includes_are_checked_but_archived_sources_are_not_walked(self):
        for name, text in {"Makefile": "", "original_functions.json": "{}",
                           "stage1.ld": "src/crt0.o(.text)",
                           "src/crt0.s": '.include "include/start.inc"',
                           "src/historical.s": '.include "upstream-only.inc"',
                           "include/start.inc": "bx lr"}.items():
            p = self.root / name
            p.parent.mkdir(parents=True, exist_ok=True)
            p.write_text(text)
        names = b"Makefile\0original_functions.json\0stage1.ld\0src/crt0.s\0src/historical.s\0"
        with patch.object(dp, "git", return_value=names):
            self.assertIn("include/start.inc", dp.source_inputs(self.root))
            (self.root / "include/start.inc").unlink()
            with self.assertRaisesRegex(ValueError, "assembly input"):
                dp.source_inputs(self.root)

    def test_preprocessing_excludes_disabled_bodies_and_expands_macros(self):
        (self.root / "test.c").write_text("""
#if 0
int parked(void) { return 0; }
#endif
#define BODY(name) int name(void) { return 1; }
BODY(active)
""")
        contract = "gcc296\ngcc\n-nostdinc\nunused\nunused\nunused\n"
        with patch.object(dp.subprocess, "check_output", return_value=contract):
            definitions = dp.active_definitions(self.root, "test.c")
        self.assertIn("active", definitions)
        self.assertNotIn("parked", definitions)


    def test_linker_map_ignores_discarded_sections_and_handles_wrapping(self):
        sections = dp.map_sections("""
Discarded input sections
 .text 0x08001000 0x64 src/unused.o
Linker script and memory map
rom_1b70 0x08001000 0x100
 .text          0x08001000 0x64 src/main.o
 .text.long_section_name
                0x08001064 0x20 src/other.o
                0x08001065 current_symbol
 .bss           0x02000000 0x0 src/main.o
""")
        self.assertEqual(sections[:2], [
            (".text", 0x08001000, 100, "src/main.o"),
            (".text.long_section_name", 0x08001064, 32, "src/other.o")])
        with self.assertRaisesRegex(ValueError, "linker map"):
            dp.map_sections("unrecognized")

    def test_tu_capture_uses_linked_objects_and_scopes_overlay_names(self):
        manifest, _, snapshot, _ = fixture()
        root = self.root
        for source, unit in snapshot["units"].items():
            for name in (source, unit["object"]):
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text("fixture")
        texts = {
            "stage1.map": """
Linker script and memory map
 .text 0x080003c0 0x44 src/crt0.o
 .text 0x08001000 0x64 src/main.o
""",
            "overlays/a/overlay.map": """
Linker script and memory map
 .text 0x02008000 0xc8 src/a.o
""",
            "overlays/b/overlay.map": """
Linker script and memory map
 .text 0x02008000 0x12c src/b.o
"""}
        for name, value in texts.items():
            path = root / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(value)
        domains = {"rom": {}}
        objects = {}
        for row, (source, unit) in zip(manifest["functions"], snapshot["units"].items()):
            name = "AgbMain" if row["original_name"] == "main" else row["original_name"]
            records = [dict(name=name, section=".text")]
            domains.setdefault(row["domain"], {})[row["address"]] = records
            objects[unit["object"]] = {0: records, 50: [dict(name="new_helper", section=".text")]}
        definitions = {"src/main.c": {"AgbMain": ""},
                       "src/a.c": {"repeat": ""},
                       "src/maps/common/common1.c": {"shared": ""},
                       "src/unlinked.c": {"AgbMain": ""}}
        def read(path):
            return objects[path.relative_to(root).as_posix()]
        with patch.object(dp, "symbol_records", side_effect=read):
            units, artifacts = dp.capture_units(root, manifest, domains, definitions)
            self.assertEqual(len(units), 5)
            main = units["src/main.c"]["functions"]["rom:08001000"]
            self.assertEqual(main["name"], "AgbMain")
            self.assertEqual(main["address"], 0)
            self.assertEqual(main["virtual_address"], 0x08001000)
            shared = units["src/maps/common/common1.c"]["functions"]["common:common1:00000000"]
            self.assertNotIn("virtual_address", shared)
            self.assertEqual(len(units["src/a.c"]["functions"]), 1)
            self.assertEqual(len(units["src/b.c"]["functions"]), 1)
            self.assertIn("stage1.map", artifacts)
            self.assertIn("src/main.o", artifacts)
            objects["src/main.o"][0].append(dict(name="second_alias", section=".text"))
            definitions["src/main.c"]["second_alias"] = ""
            with self.assertRaisesRegex(ValueError, "ambiguous C ownership"):
                dp.capture_units(root, manifest, domains, definitions)
            objects["src/main.o"][0].pop()
            del definitions["src/main.c"]["second_alias"]
            del objects["src/b.o"][0]
            with self.assertRaisesRegex(ValueError, "TU ownership"):
                dp.capture_units(root, manifest, domains, definitions)

    def test_iwram_function_uses_runtime_map_address_and_assembly_source(self):
        source = self.root / "asm/ram.s"
        source.parent.mkdir()
        source.write_text("assembly")
        source.with_suffix(".o").write_text("object")
        (self.root / "stage1.map").write_text("""
Linker script and memory map
 .text 0x03000000 0x100 asm/ram.o
""")
        identity = "rom:08000790"
        manifest = {"functions": [dict(id=identity, domain="rom",
                                      address=0x08000790, original_name="ram_function")]}
        domains = {"rom": {0x08000790: [dict(name="ram_function", section="rom_770")]}}
        with patch.object(dp, "symbol_records", return_value={
                0x20: [dict(name="ram_function", section=".text")]}):
            units, _ = dp.capture_units(self.root, manifest, domains, {})
        function = units["asm/ram.s"]["functions"][identity]
        self.assertEqual(function["address"], 0x20)
        self.assertEqual(function["virtual_address"], 0x03000020)

    def test_failed_gate_preserves_previous_snapshot(self):
        output = self.root / dp.SNAPSHOT
        output.write_text("previous verified snapshot")
        with patch.object(dp, "metadata", return_value=({}, {})), \
             patch.object(dp, "source_inputs", return_value={}), \
             patch.object(dp, "installed_tools", return_value={}), \
             patch.object(dp, "run_gate", side_effect=subprocess.CalledProcessError(1, "make")):
            with self.assertRaises(subprocess.CalledProcessError):
                dp.capture(self.root, output)
        self.assertEqual(output.read_text(), "previous verified snapshot")

    def test_duplicate_json_id_is_rejected(self):
        p = self.root / "bad.json"
        p.write_text('{"functions":{"same":"c","same":"assembly"}}')
        with self.assertRaisesRegex(ValueError, "duplicate JSON"):
            dp.load(p)


class RealBaselineTests(unittest.TestCase):
    def test_checked_in_sizes_cover_the_manifest(self):
        m, b = dp.metadata(dp.ROOT)
        self.assertEqual(len(m["functions"]), 5794)
        self.assertEqual(Counter(r["mode"] for r in m["functions"]), {"thumb": 5741, "arm": 53})
        start = next(r for r in m["functions"] if r["original_name"] == "_start")
        self.assertEqual(start["address"], 0x080003c0)
        self.assertEqual(b["sizes"][start["id"]], 68)
        self.assertEqual(sum(b["sizes"].values()), 1289450)


if __name__ == "__main__":
    unittest.main()
