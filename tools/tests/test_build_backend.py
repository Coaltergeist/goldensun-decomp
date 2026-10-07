"""Direct Make ownership and verification-receipt boundaries, without a ROM."""
import copy
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
import build_inventory
import build_paths
import build_verify
from build_clean import clean


class MakeTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        for name in ("Makefile", *build_config.CONFIG_FILES, *build_config.IMPLEMENTATION):
            self.put(name, (TOOLS.parent / name).read_text())
        for script in build_paths.link_targets(TOOLS.parent).values():
            for name in build_deps.linker_dependencies(script, root=TOOLS.parent):
                f = TOOLS.parent / name
                if f.is_file() and f.suffix in (".ld", ".sym"):
                    self.put(name, f.read_text())

    def put(self, name, text):
        p = self.root / name
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(text)
        return p

    def test_input_inventory_is_deterministic_and_contains_no_recipes(self):
        build_inventory.write_inventory(self.root)
        p = self.root / build_inventory.OUTPUT
        before = p.read_bytes(), p.stat().st_mtime_ns
        build_inventory.write_inventory(self.root)
        self.assertEqual(before, (p.read_bytes(), p.stat().st_mtime_ns))
        self.assertNotIn("\t", p.read_text())
        self.assertEqual(clean(self.root), [build_inventory.OUTPUT])

    def test_build_output_symlink_is_rejected_before_inventory_write(self):
        sentinel = self.put("unrelated", "keep")
        parent = self.root / "build/usa"
        parent.mkdir(parents=True)
        (parent / "goldensun.gba").symlink_to(sentinel)
        with self.assertRaises(ValueError):
            build_inventory.write_inventory(self.root)
        self.assertEqual(sentinel.read_text(), "keep")
        self.assertFalse((self.root / build_inventory.OUTPUT).exists())

    def gate(self, schema=2, backend="make"):
        commands = build_verify.commands() if schema == 2 else build_verify.historical_commands(backend)
        return dict(schema=schema, backend=backend, serial=True, commands=commands,
                    checks=["rom-sha1", "all-96-overlays"],
                    executor=dict(name=backend, version="fixture", sha256="a" * 64))

    def test_current_make_and_historical_receipts_keep_distinct_commands(self):
        build_verify.validate(self.gate())
        for backend in ("make", "ninja"):
            build_verify.validate(self.gate(1, backend))
        build_verify.validate(build_verify.LEGACY_GATE, legacy=True)
        with self.assertRaises(ValueError):
            build_verify.validate(self.gate(2, "ninja"))
        with self.assertRaises(ValueError):
            build_verify.validate(build_verify.LEGACY_GATE)

    def test_receipt_rejects_partial_gate_and_mislabeled_executor(self):
        changes = [
            lambda r: r["checks"].pop(),
            lambda r: r["commands"].pop(0),
            lambda r: r.update(serial=False),
            lambda r: r["executor"].update(name="ninja"),
            lambda r: r["commands"][1].__setitem__(-1, "compare-rom"),
        ]
        for change in changes:
            row = self.gate()
            change(row)
            with self.assertRaises(ValueError):
                build_verify.validate(row)

    def test_failed_clean_stops_verification(self):
        with patch.object(build_verify, "receipt", return_value=self.gate()), \
             patch.object(build_verify.subprocess, "run", side_effect=subprocess.CalledProcessError(7, "clean")) as run:
            with self.assertRaises(subprocess.CalledProcessError):
                build_verify.run(self.root, None)
            self.assertEqual(run.call_count, 1)

    def test_make_replacement_during_verification_is_rejected(self):
        before = self.gate()
        after = copy.deepcopy(before)
        after["executor"]["sha256"] = "b" * 64
        with patch.object(build_verify, "receipt", side_effect=[before, after]), \
             patch.object(build_verify.subprocess, "run"):
            with self.assertRaises(ValueError):
                build_verify.run(self.root, None)


if __name__ == "__main__":
    unittest.main()
