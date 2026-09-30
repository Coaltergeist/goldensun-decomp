#!/usr/bin/env python3
"""Register parked C by owning TU and original identity; refresh the candidate index."""
import argparse
import copy
import json
import re
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


def retirement_plan(root, snapshot):
    """Retire only registered identities proven to be production C by a fresh snapshot.

    The caller verifies snapshot freshness. Headers and other evidence are retained;
    all proposed manifests and surviving candidates are validated before writing.
    """
    root = Path(root)
    manifests, changes, retired, identities = {}, {}, [], set()
    for path in sorted((root / PARKED).rglob("candidates.json")):
        manifest = path.relative_to(root).as_posix()
        original = load(local(root, manifest))
        meta = copy.deepcopy(original)
        if (not isinstance(meta, dict) or meta.get("schema") != 1
                or not isinstance(meta.get("functions"), dict) or not meta["functions"]):
            raise ValueError("invalid candidate manifest: " + manifest)
        directory = path.parent.relative_to(root).as_posix()
        source = "src/" + directory[len(PARKED):] + ".c"
        unit = snapshot["units"].get(source)
        if meta.get("source") != source or unit is None:
            raise ValueError("candidate owner changed or missing: " + manifest)
        landed = set()
        for name, entry in meta["functions"].items():
            if not re.fullmatch(r"[A-Za-z_]\w*", name) or not isinstance(entry, dict):
                raise ValueError("invalid candidate entry: " + manifest)
            identity = entry["id"]
            original_function = unit["functions"].get(identity)
            if (identity in identities or original_function is None
                    or original_function["name"] != name):
                raise ValueError("candidate identity/owner mismatch: " + name + " in " + source)
            identities.add(identity)
            requires = entry.get("requires", [])
            if not isinstance(requires, list) or any(
                    dep not in meta["functions"] or dep == name for dep in requires):
                raise ValueError("invalid companion requirement: " + name)
            status = snapshot["functions"].get(identity)
            if status == "c":
                candidate = directory + "/" + name + ".c"
                local(root, candidate)
                landed.add(name)
                changes[candidate] = None
                retired.append(dict(id=identity, source=source, candidate=candidate))
            elif status != "assembly":
                raise ValueError("candidate is not clean production C or assembly: " + identity)
        for name in landed:
            del meta["functions"][name]
        for entry in meta["functions"].values():
            if "requires" in entry:
                entry["requires"] = [dep for dep in entry["requires"] if dep not in landed]
        if meta["functions"]:
            manifests[manifest] = meta
            if meta != original:
                changes[manifest] = (json.dumps(meta, indent=2) + "\n").encode()
        else:
            changes[manifest] = None
    units = catalog(root, manifests, snapshot=snapshot,
                    retired=[row["candidate"] for row in retired])
    index = PARKED + "INDEX.md"
    changes[index] = markdown_index(units).encode()
    changes = {name: data for name, data in changes.items()
               if (local(root, name).read_bytes() if local(root, name).exists() else None) != data}
    return changes, retired


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
