"""Ninja graph/depfile and receipt boundary regressions without a ROM/toolchain."""
import copy
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import build_config
import build_deps
import build_graph
import build_paths
import build_verify
import configure_build as ninja
from build_actions import clean


class BackendTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory(); self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        for name in ("Makefile", *build_config.CONFIG_FILES, *build_config.IMPLEMENTATION):
            self.put(name, (TOOLS.parent / name).read_text())
        for script in build_paths.link_targets(TOOLS.parent).values():
            for name in build_deps.linker_dependencies(script, root=TOOLS.parent):
                f = TOOLS.parent / name
                if f.is_file() and f.suffix in (".ld", ".sym"):
                    self.put(name, f.read_text())

    def put(self, name, text):
        p = self.root / name; p.parent.mkdir(parents=True, exist_ok=True); p.write_text(text); return p

    def test_configuration_without_tools_is_deterministic_and_writes_only_owned_files(self):
        ninja.configure(self.root)
        files = [self.root / ninja.GRAPH, self.root / ninja.ACTIONS]
        before = [(f.read_bytes(), f.stat().st_mtime_ns) for f in files]
        ninja.configure(self.root)
        self.assertEqual(before, [(f.read_bytes(), f.stat().st_mtime_ns) for f in files])
        self.assertEqual(set(clean(self.root)), {ninja.GRAPH, ninja.ACTIONS})

    def test_generated_products_and_serial_pool_cover_first_build(self):
        ninja.configure(self.root)
        text = (self.root / ninja.GRAPH).read_text()
        self.assertIn("pool serial\n  depth = 1", text)
        self.assertEqual(text.count("rule action_"), text.count("  pool = serial"))
        self.assertIn("builddir = build/usa", text)
        self.assertIn("build/usa/generated/strings/strings_00.bin", text)
        obj = Path(build_paths.unit(self.root, "tu:src/lib/m4a/m4a")["object"])
        self.assertIn(" | " + str(obj.with_suffix(".d")) + " " + str(obj.with_suffix(".s")), text)
        link = next(e for e in build_graph.graph(self.root) if e.outputs[0] == "build/usa/overlays/rom_780898/overlay.elf")
        self.assertEqual(link.outputs[1], "build/usa/overlays/rom_780898/overlay.map")
        self.assertIn("build/usa/stage1.o", link.inputs)
        self.assertLess(link.command.index("--libraries"), link.command.index("-R"))

    def test_ninja_bookkeeping_symlink_rejected_before_writing(self):
        sentinel = self.put("unrelated", "keep")
        parent = self.root / "build/usa"; parent.mkdir(parents=True)
        (parent / ".ninja_log").symlink_to(sentinel)
        with self.assertRaises(ValueError): ninja.configure(self.root)
        self.assertEqual(sentinel.read_text(), "keep")
        self.assertFalse((self.root / ninja.GRAPH).exists())

    def test_dependency_conversion_keeps_headers_incbin_and_escaped_spaces(self):
        obj = "build/usa/src/a.o"
        self.put("build/usa/src/a.c.d", obj + ": src/a.c include/a.h tools/sdk/header.h\nsrc/a.c:\ninclude/a.h:\n")
        self.put("build/usa/src/a.d", obj + ": build/usa/src/a.s asm/entry.s data/raw.bin data/with\\ space.bin\nasm/entry.s:\n")
        old = Path.cwd()
        try:
            os.chdir(self.root); build_deps.ninja_dependencies(obj)
        finally: os.chdir(old)
        text = (self.root / "build/usa/src/a.ninja.d").read_text()
        for name in ("src/a.c", "include/a.h", "asm/entry.s", "data/raw.bin", "data/with\\ space.bin"):
            self.assertIn(name, text)
        self.assertNotIn("build/usa/src/a.s", text)
        self.assertEqual(len(text.splitlines()), 1)

    def test_empty_dependency_information_is_rejected(self):
        self.put("build/usa/src/a.d", "build/usa/src/a.o: build/usa/src/a.s\n")
        old = Path.cwd()
        try:
            os.chdir(self.root)
            with self.assertRaises(ValueError): build_deps.ninja_dependencies("build/usa/src/a.o")
        finally: os.chdir(old)

    def test_runner_preserves_argv_and_rejects_stale_graph(self):
        argv = ["tool", "path with spaces", "$(do-not-run)"]
        self.put(ninja.ACTIONS, json.dumps(dict(schema=1, values={"CC": "cc"}, actions={"edge": argv})))
        with patch.object(ninja.subprocess, "run", return_value=subprocess.CompletedProcess(argv, 0)) as run:
            self.assertEqual(ninja.run(self.root, "edge", ninja.signature(argv)), 0)
            self.assertEqual(run.call_args.args[0], argv)
            self.assertEqual(run.call_args.kwargs["env"]["GS_BUILD_CC"], "cc")
            with self.assertRaises(ValueError): ninja.run(self.root, "edge", "wrong-signature")
            self.assertEqual(run.call_count, 1)

    def gate(self, backend="ninja"):
        return dict(schema=1, backend=backend, serial=True, commands=build_verify.commands(backend),
                    checks=["rom-sha1", "all-96-overlays"], executor=dict(name=backend, version="fixture", sha256="a" * 64))

    def test_receipts_distinguish_both_backends_and_legacy(self):
        for backend in ("make", "ninja"): build_verify.validate(self.gate(backend))
        build_verify.validate(build_verify.LEGACY_GATE, legacy=True)
        with self.assertRaises(ValueError): build_verify.validate(build_verify.LEGACY_GATE)
        with self.assertRaises(ValueError): build_verify.validate(self.gate(), legacy=True)

    def test_receipt_rejects_partial_gate_and_mislabeled_backend(self):
        for mutate in (lambda r:r["checks"].pop(), lambda r:r["commands"].pop(0),
                       lambda r:r.update(serial=False), lambda r:r["executor"].update(name="make"),
                       lambda r:r["commands"][1].__setitem__(-1,"compare-rom")):
            row=self.gate(); mutate(row)
            with self.assertRaises(ValueError): build_verify.validate(row)

    def test_failed_clean_stops_verification(self):
        with patch.object(build_verify, "receipt", return_value=self.gate()), \
             patch.object(build_verify.subprocess, "run", side_effect=subprocess.CalledProcessError(7, "clean")) as run:
            with self.assertRaises(subprocess.CalledProcessError): build_verify.run(self.root, None)
            self.assertEqual(run.call_count, 1)

    def test_backend_replacement_during_verification_is_rejected(self):
        a=self.gate(); b=copy.deepcopy(a); b["executor"]["sha256"]="b"*64
        with patch.object(build_verify, "receipt", side_effect=[a,b]), \
             patch.object(build_verify.subprocess, "run", return_value=subprocess.CompletedProcess([],0)):
            with self.assertRaisesRegex(ValueError,"backend changed"): build_verify.run(self.root,None)


if __name__ == "__main__": unittest.main()
