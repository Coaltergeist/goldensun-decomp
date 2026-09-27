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
import original_functions
from progress import symbols, symbol_records


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
    snapshot = dict(schema=1, policy=dp.POLICY, baseline_sha256="b" * 64,
                    source_fingerprint=dp.fingerprint(inputs), input_count=1,
                    functions={r["id"]: s for r, s in zip(rows, ["assembly", "c", "c", "assembly", "c-registered-fakematch"])},
                    verification=dict(rom_sha1=dp.ROM_SHA1,
                                      gate="make -j1 clean && make -j1 compare",
                                      overlays={name: "a" * 64 for name in ["a", "b"] + [f"rom_{i:06x}" for i in range(94)]}))
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

    def test_mixed_unit_and_overlay_names_are_scoped(self):
        m, b, s, _ = fixture()
        domains = {r["domain"]: {r["address"]: [{"name": r["original_name"]}]} for r in m["functions"]}
        domains["rom"] = {0x080003c0: [{"name": "_start"}], 0x08001000: [{"name": "main"}]}
        allowed = {"rom": {"src/main.c"}, "overlay:a": {"src/a.c"},
                   "overlay:b": {"src/b.c"}, "common:common1": {"src/shared.c"}}
        definitions = {"src/main.c": {"main": "body"}, "src/a.c": {"repeat": "body"},
                       "src/shared.c": {"shared": "body"},
                       # Neither a parked body nor an unlinked same-named body is ownership.
                       "src/non_matching/b.c": {"repeat": "body"},
                       "src/unlinked.c": {"repeat": "body"}}
        self.assertEqual(dp.classify(m, domains, allowed, definitions, {("shared", "src/shared.c")}), s["functions"])
        domains["rom"][0x08001000] = [{"name": "renamed"}]
        definitions["src/main.c"] = {"renamed": "body", "new_helper": "body"}
        self.assertEqual(dp.classify(m, domains, allowed, definitions, {("shared", "src/shared.c")}), s["functions"])
        del domains["overlay:b"][0x02008000]
        with self.assertRaisesRegex(ValueError, "unresolved"):
            dp.classify(m, domains, allowed, definitions, set())

    def test_ambiguous_c_ownership_is_rejected(self):
        m, _, _, _ = fixture()
        m["functions"] = m["functions"][1:2]
        with self.assertRaisesRegex(ValueError, "ambiguous"):
            dp.classify(m, {"rom": {0x08001000: [{"name": "main"}]}},
                        {"rom": {"src/a.c", "src/b.c"}},
                        {"src/a.c": {"main": ""}, "src/b.c": {"main": ""}}, set())

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
