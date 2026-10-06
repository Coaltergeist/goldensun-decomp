"""Landing/report integration and failure recovery without the game toolchain."""
import contextlib
import copy
import io
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import finalize_progress as finalizer
from candidate_catalog import catalog, markdown_index
from decomp_progress import digest, write_json
from generate_candidates import retirement_plan


class FinalizationTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.snapshot = dict(units={}, functions={})
        self.add_unit("example", {"One": "rom:1", "Two": "rom:2"})
        self.add_unit("maps/other", {"One": "overlay:other:1"})
        meta = json.loads((self.root / "src/non_matching/example/candidates.json").read_text())
        meta["functions"]["Two"].update(requires=["One"], context=["context.h"], credit="Keep author")
        meta["notes"] = "Keep TU notes"
        write_json(self.root / "src/non_matching/example/candidates.json", meta)
        self.put("src/non_matching/example/context.h", "/* keep context evidence */\n")
        write_json(self.root / "progress_snapshot.json", self.snapshot)
        self.put(finalizer.INDEX, markdown_index(catalog(self.root)))
        self.put("candidate_scores.json", "previous scores\n")
        self.put("report.json", "previous report\n")
        # Model reviewed production edits made by the caller, before finalizing.
        self.put("src/example.c", 'void One(void) {}\nINCLUDE_ASM("asm/example/Two.s");\n')
        (self.root / "asm/example/One.s").unlink()
        self.fresh = copy.deepcopy(self.snapshot)
        self.fresh["functions"]["rom:1"] = "c"
        self.original = self.files()
        self.mock("preflight", return_value="verified-objdiff")
        self.mock("progress.capture", side_effect=self.capture)
        self.mock("progress.source_inputs", side_effect=self.production_inputs)
        self.mock("verify_baseline")
        self.mock("check_repository", side_effect=lambda root: catalog(root))
        self.score = self.mock("score_candidates.capture", side_effect=self.score_capture)
        self.export = self.mock("progress.export", side_effect=self.export_report)

    def mock(self, name, **kwargs):
        patcher = patch("finalize_progress." + name, **kwargs)
        self.addCleanup(patcher.stop)
        return patcher.start()

    def put(self, name, text):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
        return path

    def add_unit(self, tu, names):
        source = "src/" + tu + ".c"
        config = self.root / "config/modules.json"
        data = json.loads(config.read_text()) if config.exists() else dict(schema=1, units=[], modules=[])
        data["units"].append(dict(id="tu:" + tu, source=source, object=source[:-2] + ".o",
            source_role="maintained", profile="gcc296", owner=tu, candidate_key=tu,
            candidate_directory="src/non_matching/" + tu, assembly_directory="asm/" + tu))
        self.put("config/modules.json", json.dumps(data))
        self.put(source, "\n".join('INCLUDE_ASM("asm/' + tu + '/' + name + '.s");' for name in names))
        for name, identity in names.items():
            self.put("asm/" + tu + "/" + name + ".s", "/* original */\n")
            self.put("src/non_matching/" + tu + "/" + name + ".c", "void " + name + "(void) {}\n")
            self.snapshot["functions"][identity] = "assembly"
        self.snapshot["units"][source] = dict(object=source[:-2] + ".o", functions={
            identity: dict(name=name) for name, identity in names.items()})
        write_json(self.root / ("src/non_matching/" + tu + "/candidates.json"),
                   dict(schema=1, source=source, functions={name: dict(id=identity)
                                                         for name, identity in names.items()}))

    def files(self):
        return {p.relative_to(self.root).as_posix(): p.read_bytes()
                for p in self.root.rglob("*") if p.is_file()
                and p.relative_to(self.root).parts[0] not in (".progress", ".diff-baselines")}

    def production_inputs(self, root):
        return {name: digest(root / name) for name in ("src/example.c", "src/maps/other.c")}

    def capture(self, root, output):
        write_json(output, self.fresh)

    def score_capture(self, root, baseline, binary, output):
        units = catalog(root)
        self.assertEqual(units["example"]["functions"]["Two"]["requires"], [])
        identities = sorted(entry["id"] for unit in units.values() for entry in unit["functions"].values())
        self.assertEqual(identities, ["overlay:other:1", "rom:2"])
        write_json(output, dict(ids=identities, progress_sha256=digest(root / "progress_snapshot.json")))

    def export_report(self, root, output):
        saved = json.loads((root / "candidate_scores.json").read_text())
        self.assertEqual(saved["ids"], ["overlay:other:1", "rom:2"])
        self.assertEqual(saved["progress_sha256"], digest(root / "progress_snapshot.json"))
        write_json(output, dict(remaining=2))

    def run_finalize(self):
        with contextlib.redirect_stdout(io.StringIO()):
            return finalizer.finalize(self.root, "objdiff")

    def test_complete_workflow_preserves_overlay_identity_credits_and_context(self):
        run = self.run_finalize()
        self.assertFalse((self.root / "src/non_matching/example/One.c").exists())
        self.assertTrue((self.root / "src/non_matching/maps/other/One.c").exists())
        meta = json.loads((self.root / "src/non_matching/example/candidates.json").read_text())
        self.assertEqual(meta["functions"]["Two"]["credit"], "Keep author")
        self.assertEqual(meta["notes"], "Keep TU notes")
        self.assertEqual(meta["functions"]["Two"]["context"], ["context.h"])
        self.assertEqual((self.root / "src/non_matching/example/context.h").read_bytes(),
                         self.original["src/non_matching/example/context.h"])
        self.assertEqual((self.root / finalizer.INDEX).read_text(), markdown_index(catalog(self.root)))
        self.assertEqual((run / "backup/src/non_matching/example/One.c").read_bytes(),
                         self.original["src/non_matching/example/One.c"])
        self.assertEqual(json.loads((run / "transaction.json").read_text())["status"], "complete")
        self.assertEqual((self.root / "src/example.c").read_bytes(), self.original["src/example.c"])

    def test_failed_candidate_compile_restores_every_managed_file(self):
        self.score.side_effect = ValueError("conflicting declarations; see candidate build.log")
        with self.assertRaisesRegex(ValueError, "conflicting declarations"):
            self.run_finalize()
        self.assertEqual(self.files(), self.original)
        record = next((self.root / ".progress").glob("finalize-*/transaction.json"))
        self.assertEqual(json.loads(record.read_text())["status"], "rolled-back")

    def test_failed_export_restores_already_published_scores(self):
        self.export.side_effect = ValueError("stale or invalid report")
        with self.assertRaisesRegex(ValueError, "invalid report"):
            self.run_finalize()
        self.assertEqual(self.files(), self.original)

    def test_interrupt_restores_candidates_and_reports(self):
        self.score.side_effect = InterruptedError("cancelled")
        with self.assertRaises(InterruptedError):
            self.run_finalize()
        self.assertEqual(self.files(), self.original)

    def test_concurrent_manifest_edit_is_not_overwritten_on_rollback(self):
        name = "src/non_matching/example/candidates.json"
        def fail(*args):
            (self.root / name).write_bytes(b"concurrent user edit")
            raise ValueError("compile failed")
        self.score.side_effect = fail
        with self.assertRaisesRegex(RuntimeError, "concurrent edits preserved"):
            self.run_finalize()
        expected = dict(self.original, **{name: b"concurrent user edit"})
        self.assertEqual(self.files(), expected)

    def test_edit_during_snapshot_prevents_reconciliation(self):
        name = "src/non_matching/example/One.c"
        def capture(root, output):
            self.capture(root, output)
            (root / name).write_bytes(b"new user draft")
        with patch.object(finalizer.progress, "capture", side_effect=capture):
            with self.assertRaisesRegex(RuntimeError, "inputs changed"):
                self.run_finalize()
        self.assertEqual(self.files(), dict(self.original, **{name: b"new user draft"}))
        self.score.assert_not_called()

    def test_identity_mismatch_and_fakematch_never_retire(self):
        for status in ("c-registered-fakematch", "missing"):
            with self.subTest(status=status):
                self.fresh["functions"]["rom:1"] = status
                with self.assertRaisesRegex(ValueError, "not clean production C"):
                    self.run_finalize()
                self.assertEqual(self.files(), self.original)
        self.fresh["functions"]["rom:1"] = "c"
        self.fresh["units"]["src/example.c"]["functions"]["rom:1"]["name"] = "Renamed"
        with self.assertRaisesRegex(ValueError, "identity/owner mismatch"):
            self.run_finalize()
        self.assertEqual(self.files(), self.original)

    def test_empty_manifest_is_retired_but_context_is_kept(self):
        self.fresh["functions"]["rom:2"] = "c"
        changes, retired = retirement_plan(self.root, self.fresh)
        self.assertIsNone(changes["src/non_matching/example/candidates.json"])
        self.assertNotIn("src/non_matching/example/context.h", changes)
        self.assertEqual({row["id"] for row in retired}, {"rom:1", "rom:2"})
        self.assertEqual(self.files(), self.original)

    def test_failed_export_removes_new_outputs_that_did_not_exist_before(self):
        for name in ("candidate_scores.json", "report.json"):
            (self.root / name).unlink()
        before = self.files()
        self.export.side_effect = ValueError("report failed")
        with self.assertRaises(ValueError):
            self.run_finalize()
        self.assertEqual(self.files(), before)

    def test_failed_build_never_publishes_or_retires(self):
        with patch.object(finalizer.progress, "capture", side_effect=ValueError("overlay mismatch")):
            with self.assertRaisesRegex(ValueError, "overlay mismatch"):
                self.run_finalize()
        self.assertEqual(self.files(), self.original)
        self.score.assert_not_called()

    def test_dry_run_with_stale_snapshot_builds_and_writes_nothing(self):
        with patch.object(finalizer.progress, "metadata", return_value=({}, {})), \
             patch.object(finalizer.progress, "validate_snapshot", side_effect=ValueError("stale snapshot")), \
             patch.object(finalizer.progress, "digest", return_value="baseline"), \
             contextlib.redirect_stdout(io.StringIO()) as out:
            finalizer.preview(self.root)
        self.assertIn("requires a fresh snapshot", out.getvalue())
        self.assertEqual(self.files(), self.original)
        self.assertFalse((self.root / ".progress").exists())
        finalizer.progress.capture.assert_not_called()

    def test_dry_run_lists_retirements_without_mutation(self):
        write_json(self.root / "progress_snapshot.json", self.fresh)
        before = self.files()
        with patch.object(finalizer.progress, "metadata", return_value=({}, {})), \
             patch.object(finalizer.progress, "validate_snapshot"), \
             patch.object(finalizer.progress, "digest", return_value="baseline"), \
             contextlib.redirect_stdout(io.StringIO()) as out:
            finalizer.preview(self.root)
        self.assertIn("Would delete: src/non_matching/example/One.c", out.getvalue())
        self.assertEqual(self.files(), before)
        self.assertFalse((self.root / ".progress").exists())

    def test_exclusive_lock_prevents_another_finalizer(self):
        with finalizer.exclusive(self.root), self.assertRaisesRegex(RuntimeError, "another progress"):
            with finalizer.exclusive(self.root):
                pass


if __name__ == "__main__":
    unittest.main()
