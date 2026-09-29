"""Manifest discovery, metadata preservation, and fail-before-write behavior."""
import contextlib
import io
import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import generate_candidates as generator
from candidate_catalog import catalog


class GeneratorTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        self.snapshot = dict(units={}, functions={})
        self.add_unit("example", {"One": "rom:1", "Two": "rom:2"})
        self.candidate("example", "One")
        self.candidate("example", "Two")

    def tearDown(self):
        self.temp.cleanup()

    def put(self, name, text):
        path = self.root / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(text)
        return path

    def save_snapshot(self):
        self.put("progress_snapshot.json", json.dumps(self.snapshot))

    def add_unit(self, tu, functions):
        source = "src/" + tu + ".c"
        self.put(source, "\n".join('INCLUDE_ASM("asm/' + tu + '/' + n + '.s");'
                                   for n in functions))
        for name, identity in functions.items():
            self.put("asm/" + tu + "/" + name + ".s", "/* reference */")
            self.snapshot["functions"][identity] = "assembly"
        self.snapshot["units"][source] = dict(object=source[:-2] + ".o", functions={
            identity: dict(name=name) for name, identity in functions.items()})
        self.save_snapshot()

    def candidate(self, tu, name):
        return self.put("src/non_matching/" + tu + "/" + name + ".c",
                        "int " + name + "(void) { return 1; }\n")

    def sync(self, check=False):
        with contextlib.redirect_stdout(io.StringIO()):
            return generator.sync(self.root, check)

    def manifest(self, tu="example"):
        return self.root / "src/non_matching" / tu / "candidates.json"

    def test_create_and_check_mode_then_idempotent_rerun(self):
        self.assertEqual(self.sync(check=True), 1)
        self.assertFalse(self.manifest().exists())
        self.assertFalse((self.root / "src/non_matching/INDEX.md").exists())
        self.assertEqual(self.sync(), 0)
        meta = json.loads(self.manifest().read_text())
        self.assertEqual(meta, dict(schema=1, source="src/example.c", functions={
            "One": dict(id="rom:1"), "Two": dict(id="rom:2")}))
        index = (self.root / "src/non_matching/INDEX.md").read_text()
        self.assertIn("[One](example/One.c)", index)
        stamp = self.manifest().stat().st_mtime_ns
        self.assertEqual(self.sync(check=True), 0)
        self.assertEqual(self.sync(), 0)
        self.assertEqual(self.manifest().stat().st_mtime_ns, stamp)
        self.assertEqual(len(catalog(self.root)["example"]["functions"]), 2)

    def test_preserves_existing_metadata_and_adds_missing_function(self):
        entry = dict(id="rom:1", credit="Original author", notes="Unresolved ABI",
                     context=["context.h"], requires=["Two"])
        meta = dict(schema=1, source="src/example.c", functions={"One": entry},
                    extra="preserve")
        self.put("src/non_matching/example/candidates.json", json.dumps(meta))
        self.put("src/non_matching/example/context.h", "typedef int value_t;")
        self.sync()
        result = json.loads(self.manifest().read_text())
        self.assertEqual(result["functions"]["One"], entry)
        self.assertEqual(result["extra"], "preserve")
        self.assertEqual(result["functions"]["Two"], dict(id="rom:2"))

    def test_reused_overlay_name_resolves_within_owning_tu(self):
        self.add_unit("maps/other", {"One": "overlay:other:1"})
        self.candidate("maps/other", "One")
        self.sync()
        other = json.loads(self.manifest("maps/other").read_text())
        self.assertEqual(other["functions"]["One"]["id"], "overlay:other:1")
        self.assertEqual(json.loads(self.manifest().read_text())["functions"]["One"]["id"], "rom:1")

    def test_invalid_candidate_prevents_all_writes(self):
        self.candidate("unowned", "Unknown")
        index = self.put("src/non_matching/INDEX.md", "preserve me")
        with self.assertRaisesRegex(ValueError, "no production TU"):
            self.sync()
        self.assertFalse(self.manifest().exists())
        self.assertFalse(self.manifest("unowned").exists())
        self.assertEqual(index.read_text(), "preserve me")

    def test_landed_missing_assembly_or_missing_c_definition_is_rejected(self):
        self.snapshot["functions"]["rom:2"] = "c"
        self.save_snapshot()
        with self.assertRaisesRegex(ValueError, "already landed"):
            self.sync()
        self.assertFalse(self.manifest().exists())
        self.snapshot["functions"]["rom:2"] = "assembly"
        self.save_snapshot()
        asm = self.root / "asm/example/Two.s"
        asm.unlink()
        with self.assertRaisesRegex(ValueError, "assembly inclusion"):
            self.sync()
        self.assertFalse(self.manifest().exists())
        asm.write_text("/* reference */")
        self.put("src/non_matching/example/Two.c", "int Wrong(void) { return 0; }")
        with self.assertRaisesRegex(ValueError, "must define C"):
            self.sync()
        self.assertFalse(self.manifest().exists())

    def test_stale_metadata_is_preserved_and_reported(self):
        text = json.dumps(dict(schema=1, source="src/example.c", functions={
            "One": dict(id="overlay:wrong:1", credit="preserve")}))
        self.put("src/non_matching/example/candidates.json", text)
        with self.assertRaisesRegex(ValueError, "target missing"):
            self.sync()
        self.assertEqual(self.manifest().read_text(), text)

    def test_duplicate_keys_and_ambiguous_original_names_fail(self):
        self.put("src/non_matching/example/candidates.json", '{"schema":1,"schema":2}')
        with self.assertRaisesRegex(ValueError, "duplicate JSON key"):
            self.sync()
        self.manifest().unlink()
        self.snapshot["units"]["src/example.c"]["functions"]["rom:3"] = dict(name="One")
        self.save_snapshot()
        with self.assertRaisesRegex(ValueError, "no unique original function"):
            self.sync()
        self.assertFalse(self.manifest().exists())

    def test_empty_and_header_only_folders_do_not_get_manifests(self):
        (self.root / "src/non_matching/empty").mkdir()
        self.put("src/non_matching/header_only/context.h", "/* no candidate */")
        self.sync()
        self.assertFalse(self.manifest("empty").exists())
        self.assertFalse(self.manifest("header_only").exists())

    def test_removing_a_candidate_does_not_silently_prune_metadata(self):
        self.sync()
        original = self.manifest().read_bytes()
        (self.root / "src/non_matching/example/Two.c").unlink()
        with self.assertRaises(OSError):
            self.sync()
        self.assertEqual(self.manifest().read_bytes(), original)


if __name__ == "__main__":
    unittest.main()
