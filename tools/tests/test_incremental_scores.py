"""Incremental/full equivalence with real composition, preprocessing keys and cache IO."""
from contextlib import ExitStack, redirect_stdout
import copy
import hashlib
import io
import json
from pathlib import Path
import re
import subprocess
import sys
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import candidate_build as build
import candidate_scores as cs
import score_candidates as cli
from decomp_progress import digest, load
import test_candidates


class IncrementalTests(unittest.TestCase):
    put = test_candidates.CandidateTests.put
    tearDown = test_candidates.CandidateTests.tearDown

    def setUp(self):
        test_candidates.CandidateTests.setUp(self)
        self.put("original_function_sizes.json", "{}")
        self.expected = self.put("expected/src/example.o", "original")
        self.put("expected/manifest.json", "{}")
        self.binary = self.put("objdiff", "scorer")
        self.header = self.root / "include/nonmatching.h"
        self.external = self.put("data/fixture.inc", "assembly data")
        self.snapshot["verification"] = dict(artifacts={"src/example.o": digest(self.expected)},
            toolchain=dict(binaries_and_headers={"gcc": "compiler"}))
        self.save_snapshot()
        self.settings = ["gcc296", "xgcc", "-O2 -fno-strict-aliasing", "old_agbcc", "", ""]
        self.tools = {"cc1": "original", "cpp": "original"}
        self.commands = []
        self.mutate = None
        self.control_ok = True
        self.stack = ExitStack()
        self.addCleanup(self.stack.close)
        for name, value in dict(metadata=({}, {}), source_inputs={"production": "hash"},
                                validate_snapshot=None, compiler_inputs={"host:gcc": "compiler"}).items():
            self.stack.enter_context(patch.object(cli, name, return_value=value))
        self.stack.enter_context(patch.object(cli, "reference", side_effect=lambda root, baseline, obj: (baseline / obj, {})))
        self.stack.enter_context(patch.object(cli, "contract", side_effect=lambda *a: list(self.settings)))
        self.stack.enter_context(patch.object(cli, "tool_identity", side_effect=lambda *a: dict(self.tools)))
        self.stack.enter_context(patch.object(cli, "comparison", side_effect=lambda *a: {"exact": self.control_ok}))
        values = build.build_config.make_values(Path(__file__).resolve().parents[2])
        self.stack.enter_context(patch.object(build.build_config, "make_values", return_value=values))
        self.stack.enter_context(patch.object(cli.subprocess, "run", side_effect=self.command))
        self.output = self.root / cs.SCORES

    def save_snapshot(self):
        self.put("progress_snapshot.json", json.dumps(self.snapshot))

    def command(self, argv, **kwargs):
        self.commands.append(argv)
        if "-E" in argv:
            source = Path(argv[-1])
            text = source.read_text()
            # Expand declared context/headers, leaving the real cache to fingerprint
            # their contents and preserve line markers and source-policy checking.
            def include(match):
                path = Path(match[1])
                if not path.is_absolute(): path = self.root / "include" / path
                return path.read_text()
            text = re.sub(r'^#include "([^\n"]+)"', include, text, flags=re.M)
            return subprocess.CompletedProcess(argv, 0, '# 1 "' + str(source) + '"\n' + text, "")
        if "-S" in argv:
            text = Path(argv[-1]).read_text()
            text = re.sub(r'^#(?:line|\s*\d+).*$', '', text, flags=re.M)
            Path(argv[argv.index("-o") + 1]).write_text(text + json.dumps(self.tools, sort_keys=True))
        elif argv[0] == "arm-none-eabi-as":
            data = Path(argv[-1]).read_bytes() + self.external.read_bytes()
            Path(argv[argv.index("-o") + 1]).write_bytes(hashlib.sha256(data).digest())
        elif "diff" in argv:
            actual = Path(argv[argv.index("-2") + 1])
            score = actual.read_bytes()[0] * 100 / 255
            names = sorted(set(re.findall(r'int (\w+)\(void\)', actual.with_name("tu.i").read_text())))
            diff = dict(left=dict(symbols=[]), right=dict(symbols=[]))
            for index, name in enumerate(names):
                diff["left"]["symbols"].append(dict(name=name, size="100", kind="SYMBOL_FUNCTION",
                                                     target_symbol=index, match_percent=score))
                diff["right"]["symbols"].append(dict(name=name, size="104", kind="SYMBOL_FUNCTION"))
            Path(argv[argv.index("-o") + 1]).write_text(json.dumps(diff))
            if self.mutate:
                self.mutate()
        else:
            self.fail("unexpected command: " + repr(argv))
        return subprocess.CompletedProcess(argv, 0, "", "")

    def capture(self, full=False):
        checksum = digest(self.binary)
        info = dict(version=cs.VERSION, sha256=checksum, config=cs.CONFIG)
        start = len(self.commands)
        with patch.object(cli, "scorer", return_value=(str(self.binary), info)), \
             patch.object(cs, "RELEASE_HASHES", {checksum}), redirect_stdout(io.StringIO()):
            result = cli.capture(self.root, self.root / "expected", str(self.binary), self.output, full=full)
        runs = list((self.root / "build/non_matching").glob("scores-*"))
        latest = max(runs, key=lambda p: p.stat().st_mtime_ns)
        return result, load(latest / "reuse.json"), self.commands[start:]

    def test_warm_cache_matches_full_and_still_preprocesses_assembles_and_checks_control(self):
        cold, cold_stats, _ = self.capture()
        warm, stats, commands = self.capture()
        self.assertEqual(warm, cold)
        self.assertEqual(cold_stats, dict(assembly_reused=0, assembly_compiled=2, scores_reused=0, scores_measured=2))
        self.assertEqual(stats, dict(assembly_reused=2, assembly_compiled=0, scores_reused=2, scores_measured=0))
        self.assertEqual(sum("-E" in cmd for cmd in commands), 3)
        self.assertEqual(sum(cmd[0] == "arm-none-eabi-as" for cmd in commands), 3)
        self.assertEqual(sum("-S" in cmd for cmd in commands), 1)  # fresh control
        full, stats, _ = self.capture(full=True)
        self.assertEqual(warm, full)
        self.assertEqual(stats["scores_measured"], 2)
        self.assertEqual(stats["assembly_compiled"], 2)

    def test_single_candidate_edit_recompiles_only_its_group(self):
        self.capture()
        self.put("src/non_matching/example/One.c", "int One(void) { return 7; }\n")
        changed, stats, _ = self.capture()
        self.assertEqual(stats["assembly_reused"], 1)
        self.assertEqual(stats["scores_reused"], 1)
        full, _, _ = self.capture(full=True)
        self.assertEqual(changed, full)

    def test_unrelated_tu_change_keeps_same_named_overlay_candidate_reusable(self):
        modules = load(self.root / "config/modules.json")
        modules["units"].append(dict(id="tu:other", source="src/other.c", object="src/other.o",
                                     profile="gcc296", owner="other", source_role="maintained"))
        self.put("config/modules.json", json.dumps(modules))
        self.put("src/other.c", 'INCLUDE_ASM("asm/other/One.s");\n')
        self.put("asm/other/One.s", "original other One")
        self.put("src/non_matching/other/One.c", "int One(void) { return 5; }\n")
        self.put("src/non_matching/other/candidates.json", json.dumps(dict(schema=1,
            source="src/other.c", functions={"One": dict(id="overlay:b:02008000")})))
        other = self.put("expected/src/other.o", "other reference")
        self.snapshot["functions"]["overlay:b:02008000"] = "assembly"
        self.snapshot["units"]["src/other.c"] = dict(object="src/other.o",
            functions={"overlay:b:02008000": dict(name="One")})
        self.snapshot["verification"]["artifacts"]["src/other.o"] = digest(other)
        self.save_snapshot()
        old, _, _ = self.capture()
        source = self.root / "src/example.c"
        source.write_text(source.read_text() + "int NewProduction(void) { return 10; }\n")
        self.expected.write_text("new example reference")
        self.snapshot["verification"]["artifacts"]["src/example.o"] = digest(self.expected)
        self.save_snapshot()
        changed, stats, _ = self.capture()
        self.assertEqual(stats["assembly_reused"], 1)
        self.assertEqual(stats["scores_reused"], 1)
        self.assertEqual(stats["scores_measured"], 2)
        self.assertEqual(old["functions"]["overlay:b:02008000"], changed["functions"]["overlay:b:02008000"])
        full, _, _ = self.capture(full=True)
        self.assertEqual(changed, full)

    def test_companion_edit_invalidates_all_dependent_groups(self):
        self.meta["functions"]["Two"]["requires"] = ["One"]
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        self.capture()
        self.put("src/non_matching/example/One.c", "int One(void) { return 7; }\n")
        changed, stats, _ = self.capture()
        self.assertEqual(stats["assembly_compiled"], 2)
        self.assertEqual(stats["scores_measured"], 2)
        full, _, _ = self.capture(full=True)
        self.assertEqual(changed, full)

    def test_context_header_and_flags_changes_recompile(self):
        self.meta["functions"]["One"]["context"] = ["context.h"]
        context = self.put("src/non_matching/example/context.h", "typedef int value_t;\n")
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        self.capture()
        context.write_text("typedef unsigned int value_t;\n")
        _, stats, _ = self.capture()
        self.assertEqual(stats["assembly_compiled"], 1)
        self.header.write_text("typedef unsigned char shared_t;\n")
        _, stats, _ = self.capture()
        self.assertEqual(stats["assembly_compiled"], 2)
        self.settings[2] += " -fno-builtin"
        _, stats, _ = self.capture()
        self.assertEqual(stats["assembly_compiled"], 2)

    def test_reassembly_detects_changed_included_binary_data(self):
        self.capture()
        self.external.write_text("changed assembly data")
        changed, stats, _ = self.capture()
        self.assertEqual(stats["assembly_reused"], 2)
        self.assertEqual(stats["scores_measured"], 2)
        full, _, _ = self.capture(full=True)
        self.assertEqual(changed, full)

    def test_snapshot_refresh_reuses_unchanged_objects_but_reference_change_rescores(self):
        old, _, _ = self.capture()
        self.snapshot["refreshed"] = True
        self.save_snapshot()
        new, stats, _ = self.capture()
        self.assertNotEqual(old["progress_sha256"], new["progress_sha256"])
        self.assertEqual(old["functions"], new["functions"])
        self.assertEqual(stats["scores_reused"], 2)
        self.expected.write_text("new reference")
        self.snapshot["verification"]["artifacts"]["src/example.o"] = digest(self.expected)
        self.save_snapshot()
        _, stats, _ = self.capture()
        self.assertEqual(stats["scores_measured"], 2)

    def test_compiler_replacement_recompiles_and_scorer_replacement_rescores(self):
        self.capture()
        self.tools["cc1"] = "replacement"
        _, stats, _ = self.capture()
        self.assertEqual(stats["assembly_compiled"], 2)
        self.binary.write_text("new approved scorer")
        _, stats, _ = self.capture()
        self.assertEqual(stats["assembly_reused"], 2)
        self.assertEqual(stats["scores_measured"], 2)

    def test_missing_or_corrupted_cache_is_recomputed(self):
        self.capture()
        index = self.root / ".progress/candidate-score-cache.json"
        entries = load(index)["entries"]
        assembly = next(v for k,v in entries.items() if k.startswith("assembly:"))
        (self.root / assembly["file"]).unlink()
        scores = next(v for k,v in entries.items() if k.startswith("scores:"))
        (self.root / scores["file"]).write_text("damaged")
        _, stats, _ = self.capture()
        self.assertEqual(stats["assembly_compiled"], 1)
        self.assertEqual(stats["scores_measured"], 1)
        for invalid in ("{broken", "[]", '{"schema": 1, "entries": []}'):
            with self.subTest(index=invalid):
                index.write_text(invalid)
                _, stats, _ = self.capture()
                self.assertEqual(stats["assembly_compiled"], 2)
                self.assertEqual(stats["scores_measured"], 2)

    def test_removed_candidate_is_not_carried_into_new_scores(self):
        self.capture()
        del self.meta["functions"]["Two"]
        self.put("src/non_matching/example/candidates.json", json.dumps(self.meta))
        (self.root / "src/non_matching/example/Two.c").unlink()
        saved, stats, _ = self.capture()
        self.assertEqual(set(saved["functions"]), {"rom:1"})
        self.assertEqual(stats["scores_reused"], 1)

    def test_failed_control_cannot_be_bypassed_by_a_warm_cache(self):
        self.capture()
        self.control_ok = False
        old = self.output.read_bytes()
        with self.assertRaisesRegex(ValueError, "unchanged TU"):
            self.capture()
        self.assertEqual(self.output.read_bytes(), old)

    def test_input_change_during_run_preserves_scores_and_cache_index(self):
        self.capture()
        old = self.output.read_bytes()
        index = self.root / ".progress/candidate-score-cache.json"
        before = index.read_bytes()
        self.mutate = lambda: self.put("src/non_matching/example/One.c", "int One(void) { return 42; }")
        with self.assertRaisesRegex(ValueError, "inputs changed"):
            self.capture(full=True)
        self.assertEqual(self.output.read_bytes(), old)
        self.assertEqual(index.read_bytes(), before)


if __name__ == "__main__":
    unittest.main()
