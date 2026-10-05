"""Catalog failures must be detected without compiling or editing the game."""
import copy
import json
from pathlib import Path
import sys
import tempfile
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import module_catalog as catalog

class CatalogTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.root = TOOLS.parent
        cls.data = json.loads((cls.root / "config/modules.json").read_text())

    def reject(self, mutate, message):
        data = copy.deepcopy(self.data)
        mutate(data)
        with self.assertRaisesRegex(ValueError, message):
            catalog.validate(self.root, data)

    def test_current_catalog_covers_all_linked_sources(self):
        graph = catalog.validate(self.root, self.data)
        self.assertEqual(set(graph["units"]), {u["object"] for u in self.data["units"]})

    def test_missing_linked_object_is_rejected(self):
        self.reject(lambda data: data["units"].pop(), "coverage")

    def test_duplicate_identity_is_rejected(self):
        self.reject(lambda data: data["units"].append(copy.deepcopy(data["units"][0])), "duplicate TU")

    def test_profile_exception_cannot_be_lost(self):
        def mutate(data):
            next(u for u in data["units"] if u["source"].endswith("/gaia.c"))["profile"] = "gcc296"
        self.reject(mutate, "profile differs")

    def test_shared_common_owner_cannot_become_one_overlay(self):
        def mutate(data):
            next(u for u in data["units"] if u["owner"] == "common:common1")["owner"] = "overlay:rom_7db0c8"
        self.reject(mutate, "owner differs")

    def test_wrong_overlay_load_address_is_rejected(self):
        def mutate(data):
            next(m for m in data["modules"] if m["kind"] == "overlay")["rom_offset"] += 4
        self.reject(mutate, "load/execution")

    def test_unknown_source_role_is_rejected(self):
        def mutate(data):
            data["units"][0]["source_role"] = "reference"
        self.reject(mutate, "source_role differs")

    def test_parent_escape_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "nonlocal"):
            catalog.local(self.root, "../goldensun/Makefile")

    def test_recursive_includes_preserve_interleaved_selectors_and_directives(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "main.ld").write_text('SECTIONS {\n rom_9000 : ALIGN(0x1000) {\n a.o(.text)\n INCLUDE "nested.ld"\n a.o(.text.tail)\n . += 0x1000;\n } > rom\n}\n')
            (root / "nested.ld").write_text('INCLUDE "leaf.ld"\n')
            (root / "leaf.ld").write_text('b.o(.text)\n')
            result = catalog.read_script(root, "main.ld")
            section = result["sections"][0]
            self.assertEqual(result["includes"], ["nested.ld", "leaf.ld"])
            self.assertEqual(section["inputs"], [
                {"object": "a.o", "selector": ".text"},
                {"object": "b.o", "selector": ".text"},
                {"object": "a.o", "selector": ".text.tail"}])
            self.assertIn(". += 0x1000;", section["body"])
            self.assertEqual(section["address_clause"], "ALIGN(0x1000)")
            self.assertEqual(section["placement"], "> rom")

    def test_include_cycle_is_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "a.ld").write_text('INCLUDE "b.ld"')
            (root / "b.ld").write_text('INCLUDE "a.ld"')
            with self.assertRaisesRegex(ValueError, "cycle"):
                catalog.read_script(root, "a.ld")

    def test_unbalanced_sections_fail_closed(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "a.ld").write_text('SECTIONS {\n .text : { a.o(.text)\n')
            with self.assertRaisesRegex(ValueError, "unbalanced"):
                catalog.read_script(root, "a.ld")

if __name__ == "__main__":
    unittest.main()
