#!/usr/bin/env python3
"""Register parked C by owning TU and original identity; refresh the candidate index."""
import argparse
import copy
import json
from pathlib import Path
import sys
import tempfile

from candidate_catalog import PARKED, catalog, local, markdown_index, production_candidate_errors
from decomp_progress import load

ROOT = Path(__file__).resolve().parents[1]


def plan(root):
    root = Path(root)
    issues = production_candidate_errors(root)
    if issues:
        raise ValueError("; ".join(issues))
    snapshot = load(root / "progress_snapshot.json")
    manifests, originals = {}, {}
    for path in sorted((root / PARKED).rglob("candidates.json")):
        name = path.relative_to(root).as_posix()
        meta = load(local(root, name))
        if (not isinstance(meta, dict) or meta.get("schema") != 1
                or not isinstance(meta.get("functions"), dict)):
            raise ValueError("invalid candidate manifest: " + name)
        originals[name] = copy.deepcopy(meta)
        manifests[name] = meta

    for path in sorted((root / PARKED).rglob("*.c")):
        name = path.relative_to(root).as_posix()
        local(root, name)
        tu = path.parent.relative_to(root / PARKED).as_posix()
        source = "src/" + tu + ".c"
        unit = snapshot["units"].get(source)
        if unit is None:
            raise ValueError("no production TU for " + name + ": " + source)
        matches = [identity for identity, entry in unit["functions"].items()
                   if entry["name"] == path.stem]
        if len(matches) != 1:
            raise ValueError("no unique original function for " + name)
        identity = matches[0]
        if snapshot["functions"].get(identity) != "assembly":
            raise ValueError("candidate already landed or not assembly: " + name)
        manifest = path.with_name("candidates.json").relative_to(root).as_posix()
        meta = manifests.setdefault(manifest, dict(schema=1, source=source, functions={}))
        if meta.get("source") != source:
            raise ValueError("manifest source does not match its directory: " + manifest)
        if path.stem not in meta["functions"]:
            meta["functions"][path.stem] = dict(id=identity)

    # Validate the complete proposed collection before changing any files.
    units = catalog(root, manifests)
    changes = {name: json.dumps(meta, indent=2) + "\n"
               for name, meta in sorted(manifests.items()) if originals.get(name) != meta}
    index = PARKED + "INDEX.md"
    text = markdown_index(units)
    path = local(root, index)
    if not path.is_file() or path.read_text() != text:
        changes[index] = text
    return changes, units


def sync(root, check=False):
    root = Path(root)
    changes, units = plan(root)
    for name, text in changes.items():
        path = local(root, name)
        action = "update" if path.exists() else "create"
        if check:
            print("Would " + action + ": " + name)
            continue
        path.parent.mkdir(parents=True, exist_ok=True)
        temporary = None
        try:
            with tempfile.NamedTemporaryFile(mode="w", encoding="utf-8", dir=path.parent,
                                             prefix=".candidates-", delete=False) as out:
                temporary = Path(out.name)
                out.write(text)
            temporary.replace(path)
        finally:
            if temporary is not None and temporary.exists():
                temporary.unlink()
        print(action.capitalize() + "d: " + name)
    count = sum(len(unit["functions"]) for unit in units.values())
    print(f"Candidates: {count} functions in {len(units)} TUs")
    if not changes:
        print("Candidate metadata and index are up to date.")
    return int(check and bool(changes))


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--check", action="store_true", help="report pending changes without writing")
    args = ap.parse_args()
    try:
        return sync(ROOT, args.check)
    except (OSError, ValueError, KeyError, TypeError, AttributeError) as exc:
        print("candidate generation: " + str(exc), file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
