"""Output ownership, cleanup and failure recovery without a ROM or target compiler."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import build_clean as actions
import build_strings
import build_config
import build_inventory
import build_paths as paths
from build_deps import linker_dependencies


class OutputTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        for name in ("Makefile", *build_config.CONFIG_FILES, *build_config.IMPLEMENTATION):
            self.put(name, (TOOLS.parent / name).read_text())
        for script in paths.link_targets(TOOLS.parent).values():
            for name in linker_dependencies(script, root=TOOLS.parent):
                f = TOOLS.parent / name
                if f.is_file() and f.suffix in (".ld", ".sym"):
                    self.put(name, f.read_text())

    def put(self, name, text="sentinel"):
        f = self.root / name
        f.parent.mkdir(parents=True, exist_ok=True)
        f.write_text(text)
        return f

    def test_clean_preserves_sources_unknown_files_and_durable_state(self):
        keep = ["src/lib/m4a/m4a0.s", "src/new.s", "asm/new.s", "build/non_matching/run/evidence.o",
                ".diff-baselines/reference/a.o", ".progress/receipt.json", "tools/gcc296/cc1",
                "tools/agbcc/bin/old_agbcc", "build/usa/my-notes.txt", "build/host/unknown.o", "work/history"]
        old = {n: self.put(n) for n in keep}
        states = {n: (f.read_bytes(), f.stat().st_mtime_ns) for n, f in old.items()}
        disposable = [paths.unit(self.root, "tu:src/math/vector")["object"],
                      str(Path(paths.unit(self.root, "tu:src/lib/m4a/m4a")["object"]).with_suffix(".s")),
                      "build/usa/stage1.o.tmp", "build/host/pack_overlay", paths.STRING_OUTPUTS[1],
                      paths.STRINGS + ".tmp/strings.s"]
        for n in disposable: self.put(n)
        self.assertEqual(set(actions.clean(self.root, True)), set(disposable))
        self.assertTrue(all((self.root / n).exists() for n in disposable))
        actions.clean(self.root)
        self.assertFalse(any((self.root / n).exists() for n in disposable))
        self.assertEqual(actions.clean(self.root), [])
        self.assertEqual(states, {n: (f.read_bytes(), f.stat().st_mtime_ns) for n, f in old.items()})

    def test_clean_rejects_symlink_escape_before_removing_any_output(self):
        untouched = self.put("build/host/pack_overlay")
        outside = self.root / "elsewhere"; outside.mkdir()
        self.put("build/usa/marker")
        parent = self.root / Path(paths.unit(self.root, "tu:src/math/vector")["object"]).parent
        parent.parent.mkdir(parents=True, exist_ok=True)
        parent.symlink_to(outside, target_is_directory=True)
        with self.assertRaisesRegex(ValueError, "symlink"):
            actions.clean(self.root)
        self.assertTrue(untouched.exists())

    def test_clean_rejects_tracked_output_before_deletion(self):
        f = self.put("build/host/pack_overlay")
        with patch.object(actions.subprocess, "run", return_value=subprocess.CompletedProcess(
                [], 0, stdout="build/host/pack_overlay\0")), self.assertRaisesRegex(ValueError, "tracked"):
            actions.clean(self.root)
        self.assertTrue(f.exists())

    def test_string_failure_does_not_publish_a_complete_marker_or_partial_outputs(self):
        self.put(paths.STRING_STAMP)
        self.put(paths.STRING_OUTPUTS[0], "old assembly")
        def fail(argv):
            self.put(paths.STRINGS + ".tmp/strings.s", "partial")
            raise subprocess.CalledProcessError(1, argv)
        with patch.object(build_strings, "run", side_effect=fail), self.assertRaises(subprocess.CalledProcessError):
            build_strings.strings(self.root)
        self.assertFalse((self.root / paths.STRING_STAMP).exists())
        self.assertFalse(any((self.root / n).exists() for n in paths.STRING_OUTPUTS))
        self.assertFalse((self.root / (paths.STRINGS + ".tmp")).exists())

    def test_string_publish_rewrites_only_temporary_include_paths(self):
        def produce(argv):
            for name in paths.STRING_FILES:
                self.put(paths.STRINGS + ".tmp/" + name, '.incbin "' + paths.STRINGS + '.tmp/data.bin"\n')
        with patch.object(build_strings, "run", side_effect=produce):
            build_strings.strings(self.root)
        self.assertTrue((self.root / paths.STRING_STAMP).exists())
        self.assertIn('"'+paths.STRINGS+'/data.bin"', (self.root / paths.STRING_OUTPUTS[0]).read_text())
        self.assertFalse((self.root / (paths.STRINGS + ".tmp")).exists())

    def test_generated_prerequisites_exist_in_graph_before_depfiles(self):
        original = paths.overlay(self.root, "rom_7bf5a8")["original"]
        unit = paths.unit(self.root, "tu:src/maps/common/common2")
        assembly = unit["assembly_directory"] + "/data.s"
        self.put(unit["source"], 'INCLUDE_ASM("' + assembly + '");')
        self.put(assembly, '.incbin "' + original + '"')
        result = build_inventory.inventory(self.root)
        self.assertIn(unit["object"] + ": " + original, result)
        self.assertIn("asm/maps/common/common2.o: " + unit["object"], result)
        self.assertIn(paths.STRINGS + "/strings.s", result)
        self.assertNotIn("\t", result, "inventory must not generate recipes")
        self.assertFalse((self.root / "build").exists())

    def test_nested_linker_dependencies_resolve_in_supplied_root(self):
        self.put("outer.ld", 'INCLUDE "nested/one.sym"\nbuild/usa/src/a.o(.text)')
        self.put("nested/one.sym", 'INCLUDE "nested/two.sym"')
        self.put("nested/two.sym", '/* nested symbol file */')
        self.assertEqual(linker_dependencies("outer.ld", root=self.root),
                         {"outer.ld", "nested/one.sym", "nested/two.sym", "build/usa/src/a.o"})

    def test_paths_reject_unknown_overlay_and_resolve_legacy_aliases(self):
        u = paths.unit(self.root, "asm/maps/common/common2.o")
        self.assertEqual(u, paths.unit(self.root, "tu:src/maps/common/common2"))
        with self.assertRaises(ValueError): paths.overlay(self.root, "does_not_exist")
        self.assertEqual(paths.domain_artifact(self.root, "common:common2"), u["object"])

    def test_dependency_query_accepts_current_and_legacy_link_targets(self):
        for name in ("stage1.o", paths.STAGE1):
            result = subprocess.run([sys.executable, "-B", "tools/build_deps.py", "linker", name],
                                    cwd=self.root, capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertTrue(result.stdout.startswith(paths.STAGE1 + ": "))
            self.assertIn(paths.unit(self.root, "tu:src/math/vector")["object"], result.stdout)
        self.assertFalse((self.root / "build").exists())

    def test_catalog_has_no_output_source_collision(self):
        outputs = set(paths.owned_outputs(self.root))
        for u in paths.units(self.root):
            if u.get("source_role") != "generated":
                self.assertNotIn(u["source"], outputs)
            self.assertIn(u["object"], outputs)
        self.assertNotIn("src/lib/m4a/m4a0.s", outputs)


if __name__ == "__main__":
    unittest.main()
