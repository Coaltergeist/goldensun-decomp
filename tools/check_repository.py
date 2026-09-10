#!/usr/bin/env python3
"""ROM-free structural checks; not a matching or semantic acceptance gate."""
import json
from pathlib import Path
import re
import subprocess
import sys
from c_source import parse_funcs

ROOT = Path(__file__).resolve().parents[1]


def local_path(root, name):
    path = root / name
    path.resolve().relative_to(root.resolve())
    if Path(name).is_absolute() or ".." in Path(name).parts:
        raise ValueError("nonlocal path: " + name)
    return path


def registry_errors(root):
    errors, seen, definitions = [], set(), {}
    for number, line in enumerate((root / "fakematch.txt").read_text().splitlines(), 1):
        fields = line.split("#", 1)[0].split()
        if not fields:
            continue
        if len(fields) != 2:
            errors.append("fakematch row " + str(number) + ": expected FUNCTION SOURCE")
            continue
        name, source = fields
        identity = (name, source)
        if identity in seen:
            errors.append("duplicate registry identity: " + repr(identity))
        seen.add(identity)
        try:
            path = local_path(root, source)
            if not source.startswith("src/") or path.suffix != ".c":
                raise ValueError("expected src/...c")
            if source not in definitions:
                definitions[source] = parse_funcs(path.read_text())
            if name not in definitions[source]:
                errors.append("registry definition missing: " + name + " in " + source)
        except (OSError, ValueError) as exc:
            errors.append("registry source " + source + ": " + str(exc))
    return errors


def manifest_errors(manifest):
    errors, seen = [], set()
    if manifest.get("schema") != 1 or not manifest.get("functions"):
        return ["invalid or empty original-function manifest"]
    for row in manifest["functions"]:
        identity = (row["domain"], row["address"])
        if identity in seen:
            errors.append("duplicate original identity: " + repr(identity))
        seen.add(identity)
        if row["mode"] not in ("arm", "thumb"):
            errors.append("unknown instruction mode: " + repr(identity))
    return errors


def main():
    tracked = subprocess.check_output(["git", "ls-files", "-z"], cwd=ROOT, text=True).split("\0")
    errors = registry_errors(ROOT)
    errors += manifest_errors(json.loads((ROOT / "original_functions.json").read_text()))
    for name in tracked:
        if Path(name).suffix.lower() in {".gba", ".z64", ".n64", ".v64", ".nds"}:
            errors.append("ROM image tracked: " + name)
        if not name.startswith("src/") or name.startswith("src/non_matching/") or not name.endswith(".c"):
            continue
        text = local_path(ROOT, name).read_text()
        for target in re.findall(r'INCLUDE_ASM(?:_SECTION)?\("([^"]+)"', text):
            if not local_path(ROOT, target).is_file():
                errors.append("missing INCLUDE_ASM input: " + name + " -> " + target)
    for error in errors:
        print(error, file=sys.stderr)
    print("Repository structure:", "FAIL" if errors else "PASS")
    print("This does not compile game C, detect every fakematch, or replace fresh ROM/all-overlay comparison.")
    return int(bool(errors))


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as exc:
        print("repository check: " + str(exc), file=sys.stderr)
        raise SystemExit(1)
