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
import build_actions as actions
import build_config
import build_graph
import build_paths as paths
from build_deps import linker_dependencies


class OutputTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        for name in ("Makefile", *build_config.CONFIG_FILES, *build_config.IMPLEMENTATION):
            self.put(name, (TOOLS.parent / name).read_text())
        for f in [*TOOLS.parent.glob("*.ld"), *TOOLS.parent.glob("*.sym"), *TOOLS.parent.glob("overlays/*/overlay.ld")]:
            self.put(f.relative_to(TOOLS.parent).as_posix(), f.read_text())

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
        disposable = ["build/usa/src/math/vector.o", "build/usa/src/lib/m4a/m4a.s",
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
        (self.root / "build/usa/src").symlink_to(outside, target_is_directory=True)
        with self.assertRaisesRegex(ValueError, "symlink"):
            actions.clean(self.root)
        self.assertTrue(untouched.exists())

    def test_clean_rejects_tracked_output_before_deletion(self):
        f = self.put("build/host/pack_overlay")
        with patch.object(actions.subprocess, "run", return_value=subprocess.CompletedProcess(
                [], 0, stdout="build/host/pack_overlay\0")), self.assertRaisesRegex(ValueError, "tracked"):
            actions.clean(self.root)
        self.assertTrue(f.exists())

    def test_atomic_failure_removes_partial_and_stale_products(self):
        output, map_name = "build/usa/stage1.o", "build/usa/stage1.map"
        self.put(output, "old object"); self.put(map_name, "old map")
        def fail(argv):
            self.put(output + ".tmp", "partial")
            self.put(map_name + ".tmp", "partial")
            raise subprocess.CalledProcessError(1, argv)
        with patch.object(actions, "run", side_effect=fail), self.assertRaises(subprocess.CalledProcessError):
            actions.atomic_output(self.root, output, lambda temp: temp, map_name)
        self.assertFalse(any((self.root / n).exists() for n in [output, map_name, output+".tmp", map_name+".tmp"]))
        def succeed(argv):
            for n in argv: self.put(n, "complete")
        with patch.object(actions, "run", side_effect=succeed):
            actions.atomic_output(self.root, output, lambda temp: temp, map_name)
        self.assertEqual((self.root / output).read_text(), "complete")

    def test_string_failure_does_not_publish_a_complete_marker_or_partial_outputs(self):
        self.put(paths.STRING_STAMP)
        self.put(paths.STRING_OUTPUTS[0], "old assembly")
        def fail(argv):
            self.put(paths.STRINGS + ".tmp/strings.s", "partial")
            raise subprocess.CalledProcessError(1, argv)
        with patch.object(actions, "run", side_effect=fail), self.assertRaises(subprocess.CalledProcessError):
            actions.strings(self.root)
        self.assertFalse((self.root / paths.STRING_STAMP).exists())
        self.assertFalse(any((self.root / n).exists() for n in paths.STRING_OUTPUTS))
        self.assertFalse((self.root / (paths.STRINGS + ".tmp")).exists())

    def test_string_publish_rewrites_only_temporary_include_paths(self):
        def produce(argv):
            for name in paths.STRING_FILES:
                self.put(paths.STRINGS + ".tmp/" + name, '.incbin "' + paths.STRINGS + '.tmp/data.bin"\n')
        with patch.object(actions, "run", side_effect=produce):
            actions.strings(self.root)
        self.assertTrue((self.root / paths.STRING_STAMP).exists())
        self.assertIn('"'+paths.STRINGS+'/data.bin"', (self.root / paths.STRING_OUTPUTS[0]).read_text())
        self.assertFalse((self.root / (paths.STRINGS + ".tmp")).exists())

    def test_generated_prerequisites_exist_in_graph_before_depfiles(self):
        original = paths.overlay(self.root, "rom_7bf5a8")["original"]
        self.put("src/maps/common/common2.c", 'INCLUDE_ASM("asm/maps/common/common2/data.s");')
        self.put("asm/maps/common/common2/data.s", '.incbin "' + original + '"')
        result = build_graph.graph(self.root)
        self.assertIn(original, next(e for e in result if e.outputs == ["build/usa/asm/maps/common/common2.o"]).inputs)
        self.assertEqual(next(e for e in result if e.outputs == ["asm/maps/common/common2.o"]).inputs,
                         ["build/usa/asm/maps/common/common2.o"])
        self.assertTrue(any(paths.STRINGS + "/strings.s" in e.outputs for e in result))
        self.assertIn(" &: ", build_graph.make_graph(self.root))
        self.assertFalse((self.root / "build").exists())

    def test_nested_linker_dependencies_resolve_in_supplied_root(self):
        self.put("outer.ld", 'INCLUDE "nested/one.sym"\nbuild/usa/src/a.o(.text)')
        self.put("nested/one.sym", 'INCLUDE "nested/two.sym"')
        self.put("nested/two.sym", '/* nested symbol file */')
        self.assertEqual(linker_dependencies("outer.ld", root=self.root),
                         {"outer.ld", "nested/one.sym", "nested/two.sym", "build/usa/src/a.o"})

    def test_paths_reject_unknown_overlay_and_resolve_legacy_aliases(self):
        u = paths.unit(self.root, "asm/maps/common/common2.o")
        self.assertEqual(u["object"], "build/usa/asm/maps/common/common2.o")
        with self.assertRaises(ValueError): paths.overlay(self.root, "does_not_exist")
        self.assertEqual(paths.domain_artifact(self.root, "common:common2"), u["object"])

    def test_overlay_link_preserves_script_before_symbol_provider(self):
        output = paths.overlay(self.root, "rom_780898")["elf"]
        script = "overlays/rom_780898/overlay.ld"
        seen = []
        def link(argv):
            seen.append(argv)
            self.assertLess(argv.index("-T"), argv.index("-R"))
            self.put(argv[argv.index("-o") + 1], "linked")
            self.put(argv[argv.index("-Map") + 1], "map")
        previous = Path.cwd()
        try:
            with patch.object(actions, "ROOT", self.root), patch.object(actions, "run", side_effect=link), \
                 patch.object(sys, "argv", ["build_actions.py", "link", output, script, "--libraries", "-R", paths.STAGE1]):
                self.assertEqual(actions.main(), 0)
        finally:
            os.chdir(previous)
        self.assertEqual(len(seen), 1)

    def test_dependency_query_accepts_current_and_legacy_link_targets(self):
        for name in ("stage1.o", paths.STAGE1):
            result = subprocess.run([sys.executable, "-B", "tools/build_deps.py", "linker", name],
                                    cwd=self.root, capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertTrue(result.stdout.startswith(paths.STAGE1 + ": "))
            self.assertIn("build/usa/src/math/vector.o", result.stdout)
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
