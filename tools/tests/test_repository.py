import copy
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import check_repository as checks


class RepositoryTests(unittest.TestCase):
    def test_duplicate_original_identity_is_rejected(self):
        row = dict(domain="rom", address=0x08000000, mode="thumb")
        self.assertEqual(checks.manifest_errors(dict(schema=1, functions=[row])), [])
        self.assertTrue(checks.manifest_errors(dict(schema=1, functions=[row, copy.copy(row)])))
        self.assertTrue(checks.manifest_errors(dict(schema=1, functions=[])))

    def test_registry_checks_definition_and_duplicate_identity(self):
        work = checks.ROOT / ".diff-baselines"
        work.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(dir=work) as temp:
            root = Path(temp)
            (root / "src").mkdir()
            (root / "src/a.c").write_text("int present(void) { return 1; }\n")
            registry = root / "fakematch.txt"
            registry.write_text("present src/a.c\n")
            self.assertEqual(checks.registry_errors(root), [])
            registry.write_text("present src/a.c\npresent src/a.c\nmissing src/a.c\n")
            errors = checks.registry_errors(root)
            self.assertTrue(any("duplicate" in x for x in errors))
            self.assertTrue(any("definition missing" in x for x in errors))
            with self.assertRaises(ValueError): checks.local_path(root, "../outside.c")


if __name__ == "__main__":
    unittest.main()
