"""Opt-in real-toolchain regression; all input mutations occur in a disposable copy.

RUN_BUILD_INTEGRATION=1 python3 -B -m unittest discover -s tools/tests -p test_build_integration.py -v
"""
from pathlib import Path
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))
from build_deps import linker_dependencies


@unittest.skipUnless(os.environ.get("RUN_BUILD_INTEGRATION") == "1", "opt-in full toolchain test")
class BuildIntegrationTests(unittest.TestCase):
    def test_layout_dependencies_failure_recovery_and_clean(self):
        work = ROOT / ".progress"
        work.mkdir(exist_ok=True)
        fd, log_name = tempfile.mkstemp(prefix="build-integration-", suffix=".log", dir=work)
        os.close(fd)
        log = Path(log_name)
        print("Integration log: " + str(log), flush=True)
        env = dict(os.environ, GIT_OPTIONAL_LOCKS="0", PYTHONDONTWRITEBYTECODE="1")
        for key in list(env):
            if key.startswith("GS_BUILD_") or key in ("MAKEFLAGS", "MFLAGS", "GCC296_DIR", "AGBCC_DIR", "CC", "CFLAGS", "CPPFLAGS"):
                env.pop(key)
        with tempfile.TemporaryDirectory(prefix="build-fixture-", dir=work) as directory:
            game = Path(directory)
            names = subprocess.check_output(["git", "--no-optional-locks", "ls-files", "-z", "--cached", "--others", "--exclude-standard"], cwd=ROOT, env=env).decode().split("\0")
            for name in set(names) | {"baserom.gba"}:
                if not name: continue
                source, target = ROOT / name, game / name
                if source.is_file():
                    target.parent.mkdir(parents=True, exist_ok=True)
                    shutil.copy2(source, target)
            for name in ("gcc296", "agbcc"):
                shutil.copytree(ROOT / "tools" / name, game / "tools" / name)
            def state(file):
                s = file.stat()
                return hashlib.sha256(file.read_bytes()).hexdigest(), s.st_mode, s.st_mtime_ns
            inputs = {n: state(game / n) for n in names if n and (game / n).is_file()}
            def make(*args, success=True):
                command = ["make", "-j1", "--no-print-directory", *args]
                with log.open("a") as output:
                    output.write("COMMAND: " + " ".join(command) + "\n"); output.flush()
                    result = subprocess.run(command, cwd=game, env=env, stdout=output, stderr=subprocess.STDOUT, timeout=600)
                self.assertEqual(result.returncode == 0, success, str(log))
            def mtime(name): return (game / name).stat().st_mtime_ns
            def changed(target, edit, *flags):
                before = mtime(target); edit(); make(target, *flags)
                self.assertNotEqual(mtime(target), before, target)
            def append(name, text):
                with (game / name).open("a") as out: out.write(text)
            make("compare")
            self.assertEqual(inputs, {n: state(game / n) for n in inputs}, "build modified maintained inputs")
            outputs = {str(f.relative_to(game)): mtime(str(f.relative_to(game)))
                       for folder in ("build/usa", "build/host") for f in (game / folder).rglob("*") if f.is_file() and f.name not in (".ninja_log", ".ninja_deps")}
            make("compare", "--debug=b")
            self.assertEqual(outputs, {n: mtime(n) for n in outputs}, "no-op rebuilt output")
            catalog = json.loads((game / "config/modules.json").read_text())
            units = {u["id"]: u for u in catalog["units"]}
            save_unit = units["tu:src/save"]
            common_unit = units["tu:src/maps/common/common2"]
            save, common = save_unit["object"], common_unit["object"]
            stage = "build/usa/stage1.o"
            script = catalog["paths"]["link_targets"][stage]
            symbols = next(n for n in linker_dependencies(script, root=game) if n.endswith("wram.sym"))
            # Old targets are aliases, never copied products.
            before = mtime(save); make("src/save.o")
            self.assertEqual(before, mtime(save)); self.assertFalse((game / "src/save.o").exists())
            changed(save, lambda: append("include/gba/types.h", "\n/* used header */\n"))
            asm = re.findall(r'INCLUDE_ASM\("([^"]+)"', (game / common_unit["source"]).read_text())[0]
            changed(common, lambda: append(asm, "\n@ assembly dependency\n"))
            changed(stage, lambda: append(symbols, "\n/* linker dependency */\n"))
            (game / "dependency-fixture").mkdir()
            (game / "dependency-fixture/one.sym").write_text('INCLUDE "dependency-fixture/two.sym"\n')
            (game / "dependency-fixture/two.sym").write_text("/* nested */\n")
            append(script, '\nINCLUDE "dependency-fixture/one.sym"\n'); make(stage)
            changed(stage, lambda: append("dependency-fixture/two.sym", "/* changed */\n"))
            flags = subprocess.check_output(["make", "-s", "print-compile-contract", "SOURCE=" + save_unit["source"]], cwd=game, env=env, text=True).splitlines()[2]
            changed(save, lambda: None, "GCC296_CFLAGS=" + flags + " -DDEPENDENCY_TEST=1")
            make(save)
            def compiler_change():
                file = game / "tools/gcc296/cc1"; previous = file.stat()
                with file.open("ab") as out: out.write(b"\0")
                os.utime(file, ns=(previous.st_atime_ns, previous.st_mtime_ns))
            changed(save, compiler_change)
            flash = units["tu:src/lib/agb_flash/agb_flash"]["object"]
            before = mtime(flash); append("tools/agbcc/include/stddef.h", "\n/* unused header */\n"); make(flash)
            self.assertEqual(before, mtime(flash))
            changed(flash, lambda: append("tools/agbcc/include/stdint.h", "\n/* used header */\n"))
            original = "build/usa/reference/overlays/rom_7bf5a8/orig.bin"
            data = (game / original).read_bytes()
            changed(common, lambda: (game / original).write_bytes(data + b"\0"))
            changed(common, lambda: (game / original).write_bytes(data))
            changed(common, lambda: (game / original).unlink())
            changed(save, lambda: (game / save).unlink())
            if env.get("BUILD_BACKEND", "ninja") == "ninja":
                changed(save, lambda: (game / Path(save).with_suffix(".s")).unlink())
            strings = units["tu:data/strings/strings"]["object"]
            changed(strings, lambda: (game / "build/usa/generated/strings/strings_00.bin").unlink())
            overlay = "build/usa/overlays/rom_780898/overlay.bin"
            changed(overlay, lambda: (game / overlay).unlink())
            changed(stage, lambda: (game / "build/usa/stage1.map").unlink())
            empty = common_unit["assembly_directory"] + "/dependency_empty.s"
            (game / empty).write_text("@ empty\n")
            inclusion = '\nINCLUDE_ASM("' + empty + '");\n'
            append(common_unit["source"], inclusion); make(common)
            src = game / common_unit["source"]
            src.write_text(src.read_text().replace(inclusion, "")); (game / empty).unlink(); make(common)
            # A failed C rebuild removes the old object, and then repairs cleanly.
            src = game / save_unit["source"]; before_source = src.read_bytes()
            src.write_bytes(before_source + b"\ninvalid C input\n"); make(save, success=False)
            self.assertFalse((game / save).exists()); src.write_bytes(before_source); make(save)
            # Fail after the linker has written a partial temporary output.
            wrappers = game / "dependency-fixture/bin"; wrappers.mkdir()
            linker = wrappers / "arm-none-eabi-ld"
            linker.write_text('#!/bin/sh\nwhile [ "$#" -gt 0 ]; do\n if [ "$1" = "-o" ]; then shift; printf partial > "$1"; fi\n shift\ndone\nexit 17\n')
            linker.chmod(0o755); old_path = env["PATH"]; env["PATH"] = str(wrappers) + ":" + old_path
            make(stage, success=False)
            self.assertFalse((game / stage).exists()); self.assertFalse((game / (stage + ".tmp")).exists())
            env["PATH"] = old_path; make(stage)
            # Failed single-output extraction cannot leave an old/partial original.
            tool = game / "build/host/unpack_overlay"; binary = tool.read_bytes(); mode = tool.stat().st_mode
            tool.write_text('#!/bin/sh\nwhile [ "$#" -gt 0 ]; do\n if [ "$1" = "-o" ]; then shift; printf partial > "$1"; fi\n shift\ndone\nexit 19\n')
            make(original, success=False); self.assertFalse((game / original).exists())
            tool.write_bytes(binary); tool.chmod(mode); make(original)
            # Partial multi-output generation never leaves a completion marker.
            tool = game / "build/host/pack_strings"; binary = tool.read_bytes(); mode = tool.stat().st_mode
            tool.write_text('#!/bin/sh\nwhile [ "$#" -gt 0 ]; do\n if [ "$1" = "-o" ]; then shift; printf partial > "$1/strings.s"; fi\n shift\ndone\nexit 23\n')
            make(strings, success=False)
            self.assertFalse((game / "build/usa/generated/strings/complete.stamp").exists())
            tool.write_bytes(binary); tool.chmod(mode); make(strings)
            make("compare")
            # Cleaning protects durable caches, inputs and unknown files even
            # after all failure paths above. Then build again with no old output.
            sentinels = ["build/non_matching/keep.o", ".diff-baselines/keep.o", ".progress/keep.json", "build/usa/notes.txt"]
            for name in sentinels:
                file = game / name; file.parent.mkdir(parents=True, exist_ok=True); file.write_text("keep")
            make("clean"); make("clean")
            for name in sentinels: self.assertEqual((game / name).read_text(), "keep")
            self.assertTrue((game / "src/lib/m4a/m4a0.s").is_file())
            self.assertTrue((game / "tools/gcc296/cc1").is_file())
            make("compare")
