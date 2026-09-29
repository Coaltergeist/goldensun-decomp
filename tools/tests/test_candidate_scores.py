"""Weighted progress, score freshness, and isolated capture regressions."""
import copy
import json
from pathlib import Path
import subprocess
import sys
import unittest
from unittest.mock import patch
from contextlib import ExitStack

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import candidate_scores as cs
import score_candidates as cli
import decomp_progress as dp
import test_candidates
from test_decomp_progress import fixture


def diff_fixture(score=98.0, name="One", target_size=100, candidate_size=120):
    return dict(left=dict(symbols=[dict(name=name, size=str(target_size),
                    kind="SYMBOL_FUNCTION", target_symbol=0, match_percent=score)]),
                right=dict(symbols=[dict(name=name, size=str(candidate_size),
                    kind="SYMBOL_FUNCTION")]))


class ScoreTests(unittest.TestCase):
    def test_original_byte_weighting_does_not_double_count_or_promote(self):
        _, baseline, snapshot, _ = fixture()
        scores = {"rom:080003c0": 98.0, "overlay:b:02008000": 100.0}
        result = dp.unit_report(baseline, snapshot, scores)
        strict = dp.summary(baseline, snapshot)["measures"]
        for key, value in strict.items():
            self.assertEqual(result["measures"][key], value)
        self.assertEqual(result["measures"]["matched_functions"], 2)
        self.assertAlmostEqual(result["measures"]["fuzzy_match_percent"],
                               (300 * 100 + 68 * 98 + 300 * 100) / 708)
        weighted = sum(int(u["measures"]["total_code"]) * u["measures"]["fuzzy_match_percent"]
                       for u in result["units"]) / 708
        self.assertAlmostEqual(result["measures"]["fuzzy_match_percent"], weighted)
        functions = [f for u in result["units"] for f in u["functions"]]
        self.assertEqual(next(f for f in functions if f["name"] == "shared")["fuzzy_match_percent"], 0)
        self.assertNotIn("complete_code", result["measures"])

    def test_one_percent_function_at_98_adds_098_points(self):
        _, baseline, snapshot, _ = fixture()
        identity = "rom:080003c0"
        baseline["sizes"] = dict(zip(snapshot["functions"], [100, 100, 100, 9600, 100]))
        before = dp.unit_report(baseline, snapshot)["measures"]
        after = dp.unit_report(baseline, snapshot, {identity: 98})["measures"]
        self.assertAlmostEqual(after["fuzzy_match_percent"] - before["fuzzy_match_percent"], .98)

    def test_invalid_scores_and_nonassembly_credit_fail(self):
        _, b, s, _ = fixture()
        for score in (-1, 101, float("nan"), float("inf"), True, "98"):
            with self.subTest(score=score), self.assertRaises(ValueError):
                dp.unit_report(b, s, {"rom:080003c0": score})
        for identity in ("unknown", "rom:08001000", "common:common1:00000000"):
            with self.subTest(identity=identity), self.assertRaises(ValueError):
                dp.unit_report(b, s, {identity: 98})

    def test_parser_uses_named_target_function_not_tu_average(self):
        diff = diff_fixture()
        diff["left"]["sections"] = [dict(match_percent=100)]
        diff["left"]["symbols"].append(dict(name="AssemblyFallback", match_percent=100))
        self.assertEqual(cs.function_score(diff, "One"), dict(
            fuzzy_match_percent=98, target_size=100, candidate_size=120))
        del diff["left"]["symbols"][0]["match_percent"]
        self.assertEqual(cs.function_score(diff, "One")["fuzzy_match_percent"], 0)

    def test_parser_rejects_missing_ambiguous_or_wrong_mapping(self):
        cases = []
        d = diff_fixture(); d["left"]["symbols"].append(copy.deepcopy(d["left"]["symbols"][0])); cases.append(d)
        d = diff_fixture(); d["right"]["symbols"][0]["name"] = "AssemblyFallback"; cases.append(d)
        d = diff_fixture(); del d["left"]["symbols"][0]["target_symbol"]; cases.append(d)
        d = diff_fixture(); d["right"]["symbols"][0]["size"] = "0"; cases.append(d)
        d = diff_fixture(); d["left"]["symbols"] = []; cases.append(d)
        for d in cases:
            with self.subTest(diff=d), self.assertRaises(ValueError):
                cs.function_score(d, "One")


class FreshnessTests(unittest.TestCase):
    put = test_candidates.CandidateTests.put
    tearDown = test_candidates.CandidateTests.tearDown

    def setUp(self):
        test_candidates.CandidateTests.setUp(self)
        self.snapshot["verification"] = dict(artifacts={"src/example.o": "a" * 64},
            toolchain=dict(binaries_and_headers={"gcc": "b" * 64}))
        self.put("progress_snapshot.json", json.dumps(self.snapshot))
        self.saved = dict(schema=1, policy=cs.POLICY,
            scorer=dict(version=cs.VERSION, sha256=sorted(cs.RELEASE_HASHES)[0], config=cs.CONFIG),
            progress_sha256=dp.digest(self.root / "progress_snapshot.json"),
            candidate_fingerprint=dp.fingerprint(cs.candidate_inputs(self.root)), functions={})
        for n, name in enumerate(("One", "Two"), 1):
            self.saved["functions"][f"rom:{n}"] = dict(name=name, source="src/example.c",
                candidate="src/non_matching/example/" + name + ".c", evaluated_with=[name],
                reference_sha256="a" * 64, object_sha256="c" * 64,
                target_size=100, candidate_size=120, fuzzy_match_percent=98)

    def test_saved_scores_can_be_checked_without_compilers_or_rom(self):
        self.put(cs.SCORES, json.dumps(self.saved))
        self.assertEqual(cs.read_scores(self.root, self.snapshot), {"rom:1": 98, "rom:2": 98})

    def test_candidate_context_manifest_and_snapshot_changes_are_stale(self):
        for name in ("src/non_matching/example/One.c", "src/non_matching/example/context.h",
                     "src/non_matching/example/candidates.json", "progress_snapshot.json"):
            path = self.root / name
            old = path.read_bytes() if path.exists() else None
            path.write_text("changed")
            with self.subTest(name=name), self.assertRaisesRegex(ValueError, "stale"):
                cs.validate_scores(self.root, self.snapshot, self.saved)
            if old is None: path.unlink()
            else: path.write_bytes(old)

    def test_docs_do_not_stale_scores_but_added_and_deleted_candidates_do(self):
        self.put("src/non_matching/README.md", "new docs")
        cs.validate_scores(self.root, self.snapshot, self.saved)
        self.put("src/non_matching/example/Three.c", "int Three(void) { return 3; }")
        with self.assertRaisesRegex(ValueError, "stale"):
            cs.validate_scores(self.root, self.snapshot, self.saved)
        (self.root / "src/non_matching/example/Three.c").unlink()
        (self.root / "src/non_matching/example/One.c").unlink()
        with self.assertRaisesRegex(ValueError, "stale"):
            cs.validate_scores(self.root, self.snapshot, self.saved)

    def test_coverage_reference_companions_and_scorer_must_match(self):
        cases = []
        d = copy.deepcopy(self.saved); d["functions"].pop("rom:2"); cases.append(d)
        for key, value in (("reference_sha256", "b" * 64), ("evaluated_with", ["One", "Two"]),
                           ("fuzzy_match_percent", 101), ("candidate_size", 0), ("object_sha256", "bad")):
            d = copy.deepcopy(self.saved); d["functions"]["rom:1"][key] = value; cases.append(d)
        for key, value in (("version", "other"), ("sha256", "b" * 64), ("config", [])):
            d = copy.deepcopy(self.saved); d["scorer"][key] = value; cases.append(d)
        for d in cases:
            with self.subTest(saved=d), self.assertRaises(ValueError):
                cs.validate_scores(self.root, self.snapshot, d)

    def test_missing_file_requires_capture(self):
        with self.assertRaisesRegex(ValueError, "missing"):
            cs.read_scores(self.root, self.snapshot)

    def test_changed_installed_compiler_requires_new_verified_snapshot(self):
        cli.check_compilers(self.snapshot, {"host:gcc": "b" * 64})
        with self.assertRaisesRegex(ValueError, "compiler differs"):
            cli.check_compilers(self.snapshot, {"host:gcc": "c" * 64})

    def test_failed_capture_preserves_previous_scores_and_control_runs_first(self):
        self.run_capture(control_ok=False)

    def test_capture_scores_each_candidate_with_only_required_companions(self):
        self.run_capture(control_ok=True)

    def test_capture_rejects_candidate_edits_during_scoring(self):
        self.run_capture(control_ok=True, mutate=True)

    def run_capture(self, control_ok, mutate=False):
        self.put("original_function_sizes.json", "{}")
        expected = self.put("expected/src/example.o", "original")
        self.put("expected/manifest.json", "{}")
        binary = self.put("objdiff", "fixture executable")
        self.snapshot["verification"]["artifacts"]["src/example.o"] = dp.digest(expected)
        self.put("progress_snapshot.json", json.dumps(self.snapshot))
        previous = self.put(cs.SCORES, "previous scores")
        compiled = []
        def compile_tu(root, source, text, folder, settings, names=()):
            compiled.append((text, list(names)))
            folder.mkdir()
            obj = folder / "tu.o"; obj.write_text("candidate " + str(names))
            return obj, text, []
        def run(argv, **kwargs):
            # Two separately compiled single replacements; no whole-TU score credit.
            name = compiled[-1][1][0]
            Path(argv[argv.index("-o") + 1]).write_text(json.dumps(diff_fixture(name=name)))
            if mutate:
                self.put("src/non_matching/example/One.c", "int One(void) { return 3; }")
            return subprocess.CompletedProcess(argv, 0, "", "")
        info = dict(version=cs.VERSION, sha256=dp.digest(binary), config=cs.CONFIG)
        with ExitStack() as stack:
            stack.enter_context(patch.object(cs, "RELEASE_HASHES", {info["sha256"]}))
            for name, value in dict(metadata=({}, {}), source_inputs={"production": "hash"},
                                    validate_snapshot=None, compiler_inputs={"host:gcc": "b" * 64},
                                    scorer=(str(binary), info), reference=(expected, {}),
                                    contract=["settings"], comparison={"exact": control_ok}).items():
                stack.enter_context(patch.object(cli, name, return_value=value))
            stack.enter_context(patch.object(cli, "compile_tu", side_effect=compile_tu))
            stack.enter_context(patch.object(cli.subprocess, "run", side_effect=run))
            if mutate:
                with self.assertRaisesRegex(ValueError, "inputs changed"):
                    cli.capture(self.root, self.root / "expected", str(binary), previous)
                self.assertEqual(previous.read_text(), "previous scores")
            elif control_ok:
                saved = cli.capture(self.root, self.root / "expected", str(binary), previous)
                self.assertEqual(len(saved["functions"]), 2)
                self.assertEqual([names for _, names in compiled], [[], ["One"], ["Two"]])
                self.assertIn('INCLUDE_ASM_SECTION("asm/example/Two.s"', compiled[1][0])
                self.assertIn('INCLUDE_ASM("asm/example/One.s"', compiled[2][0])
            else:
                with self.assertRaisesRegex(ValueError, "unchanged TU"):
                    cli.capture(self.root, self.root / "expected", str(binary), previous)
                self.assertEqual(len(compiled), 1)
                self.assertEqual(previous.read_text(), "previous scores")


if __name__ == "__main__":
    unittest.main()
