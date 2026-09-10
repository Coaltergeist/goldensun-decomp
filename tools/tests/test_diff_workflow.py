"""Baseline failure isolation and compatibility with wrapped GNU linker maps."""
import contextlib
import importlib.util
import io
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

GAME = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(GAME / "tools"))
import create_diff_baseline as baseline
spec = importlib.util.spec_from_file_location("diff_settings", GAME / "diff_settings.py")
settings = importlib.util.module_from_spec(spec)
spec.loader.exec_module(settings)


class BaselineTests(unittest.TestCase):
    def setUp(self):
        work = GAME / ".diff-baselines"
        work.mkdir(exist_ok=True)
        self.temp = tempfile.TemporaryDirectory(dir=work)
        self.root = Path(self.temp.name)
        subprocess.run(["git", "init", "-q", str(self.root)], check=True)
        (self.root / ".gitignore").write_text("*.o\n*.gba\n*.bin\n.build/\nexpected/\n.diff-baselines/\n")
        (self.root / "stage1.ld").write_text("INPUT(src/example.o)\n")
        (self.root / "goldensun.ld").write_text("INPUT(stage1.o)\n")
        (self.root / "src").mkdir()
        (self.root / "src/example.c").write_text("unsigned example(void) { return 1; }\n")
        self.old_cwd = Path.cwd()
        self.root_patch = mock.patch.object(baseline, "ROOT", self.root)
        self.root_patch.start()
        self.real_run = subprocess.run
        self.targets = []
        self.fail = None
        self.edit = False

    def tearDown(self):
        os.chdir(self.old_cwd)
        self.root_patch.stop()
        self.temp.cleanup()

    def run_command(self, command, **kwargs):
        if command == ["git", "rev-parse", "HEAD"]:
            return subprocess.CompletedProcess(command, 0, stdout="fixture-revision\n")
        if command[0] != "make":
            return self.real_run(command, **kwargs)
        self.assertEqual(command[:2], ["make", "-j1"])
        self.targets.append(command[-1])
        if command[-1] == self.fail:
            raise subprocess.CalledProcessError(2, command)
        if command[-1] == "compare":
            (self.root / "src/example.o").write_bytes(b"verified object")
            for name in ("baserom.gba", "goldensun.gba"):
                (self.root / name).write_bytes(b"verified ROM")
            (self.root / ".build").mkdir(exist_ok=True)
            (self.root / ".build/compiler.stamp").write_text('{"tools": {}}')
            if self.edit:
                (self.root / "src/example.c").write_text("changed during build")
        return subprocess.CompletedProcess(command, 0)

    def create(self, output="expected"):
        with mock.patch.object(baseline.subprocess, "run", side_effect=self.run_command), contextlib.redirect_stdout(io.StringIO()):
            baseline.create(output)

    def test_success_requires_both_gates_and_copies_contract(self):
        self.create()
        self.assertEqual(self.targets, ["clean", "compare"])
        manifest = json.loads((self.root / "expected/manifest.json").read_text())
        self.assertEqual(manifest["objects"], {"src/example.o": baseline.sha(self.root / "src/example.o")})
        self.assertEqual((self.root / "expected/src/example.o").read_bytes(), b"verified object")

    def test_failed_clean_never_runs_compare_or_publishes(self):
        self.fail = "clean"
        with self.assertRaises(subprocess.CalledProcessError): self.create()
        self.assertEqual(self.targets, ["clean"])
        self.assertFalse((self.root / "expected").exists())

    def test_failed_compare_preserves_existing_historical_cache(self):
        (self.root / "expected").mkdir()
        old = self.root / "expected/old.o"
        old.write_bytes(b"historical evidence")
        self.fail = "compare"
        with self.assertRaises(subprocess.CalledProcessError): self.create(".diff-baselines/new")
        self.assertFalse((self.root / ".diff-baselines/new").exists())
        self.assertEqual(old.read_bytes(), b"historical evidence")

    def test_existing_destination_refused_before_build(self):
        (self.root / "expected").mkdir()
        with self.assertRaises(ValueError): self.create()
        self.assertEqual(self.targets, [])

    def test_concurrent_source_change_does_not_publish(self):
        self.edit = True
        with self.assertRaisesRegex(ValueError, "sources changed"): self.create()
        self.assertFalse((self.root / "expected").exists())

    def test_escaped_destination_refused(self):
        with self.assertRaises(ValueError): self.create("../outside")
        self.assertEqual(self.targets, [])

    def test_map_normalization_preserves_original_and_section_owner(self):
        os.chdir(self.root)
        original = " .text.long_name\n                0x08000000 0x10 src/example.o\n                0x08000000 Example\n"
        Path("stage1.map").write_text(original)
        normalized = settings.object_map("stage1.map")
        self.assertIn(" .text.long_name 0x08000000 0x10 src/example.o\n", Path(normalized).read_text())
        self.assertEqual(Path("stage1.map").read_text(), original)
        with mock.patch.dict(os.environ, {}, clear=True):
            config = {}
            settings.apply(config, type("Args", (), {"diff_obj": True})())
            self.assertEqual(config["make_command"], ["make", "-j1"])
            self.assertEqual(config["mapfile"], normalized)
            settings.apply(config, type("Args", (), {"diff_obj": False})())
            self.assertEqual(config["mapfile"], "goldensun.map")


if __name__ == "__main__":
    unittest.main()
