"""Catalog-owned source locations; original IDs and historical paths never change."""
import json
from functools import lru_cache
from pathlib import Path, PurePosixPath


def local(root, name):
    if (not isinstance(name, str) or not name or "\\" in name
            or PurePosixPath(name).is_absolute() or ".." in PurePosixPath(name).parts
            or PurePosixPath(name).as_posix() != name):
        raise ValueError("invalid repository path: " + str(name))
    root = Path(root).resolve()
    path = root / name
    path.resolve().relative_to(root)
    if any(p.is_symlink() for p in [path, *path.parents] if p.is_relative_to(root)):
        raise ValueError("symlink input: " + name)
    return path


@lru_cache(maxsize=16)
def _read(path, signature):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError("duplicate catalog key: " + key)
            result[key] = value
        return result
    return json.loads(path.read_text(), object_pairs_hook=unique)


def data(root):
    path = Path(root) / "config/modules.json"
    if not path.is_file():
        return {}
    local(root, "config/modules.json")
    s = path.stat()
    return _read(path, (s.st_ino, s.st_size, s.st_mtime_ns, s.st_ctime_ns))


def layout(root):
    value = data(root).get("paths", {})
    if value and value.get("schema") != 1:
        raise ValueError("unsupported source path schema")
    return value


def candidate_root(root):
    name = layout(root).get("candidate_root", "src/non_matching")
    local(root, name)
    if name in ("src", "asm", "include", "tools", "config", "build", "."):
        raise ValueError("candidate root overlaps maintained inputs")
    return name


def parked(root, name):
    parts = PurePosixPath(name).parts
    return "non_matching" in parts or PurePosixPath(name).is_relative_to(candidate_root(root))


def input_roots(root):
    names = layout(root).get("input_roots", ["src", "asm", "data", "include", "overlays", "exports", "file_table", "config", "linker"])
    for name in names:
        local(root, name)
        if name in (".", "build", ".git"):
            raise ValueError("invalid maintained input root")
    return names


def c_units(root):
    return [u for u in data(root).get("units", []) if u["source"].endswith(".c") and u.get("source_role") == "maintained"]


def candidate_owner(root, *, source=None, directory=None):
    matches = []
    base = candidate_root(root)
    for row in c_units(root):
        if source is not None and row["source"] != source:
            continue
        # Compatibility applies only to catalogs predating explicit directories.
        key = row.get("candidate_key", row["source"].removeprefix("src/")[:-2])
        candidate = row.get("candidate_directory", base + "/" + key)
        if directory is not None and candidate != directory:
            continue
        u = dict(row, candidate_key=key, candidate_directory=candidate)
        u.setdefault("assembly_directory", "asm/" + key)
        matches.append(u)
    if len(matches) != 1:
        raise ValueError("unknown or ambiguous candidate owner: " + str(source or directory))
    u = matches[0]
    for key in ("source", "candidate_directory", "assembly_directory"):
        local(root, u[key])
    if parked(root, u["source"]) or not PurePosixPath(u["candidate_directory"]).is_relative_to(candidate_root(root)):
        raise ValueError("candidate owner crosses production boundary")
    return u


def assembly(root, source, name):
    # A function name is resolved only inside its current owning TU, never across
    # overlays that can reuse both the name and the execution address.
    from candidate_catalog import sites
    matches = [m[2] for m in sites(local(root, source).read_text()) if Path(m[2]).stem == name]
    if len(matches) != 1 or not local(root, matches[0]).is_file():
        raise ValueError("expected one assembly inclusion: " + source + ":" + name)
    return matches[0]


def original_owner(root, identity, snapshot=None):
    snapshot = snapshot or json.loads((Path(root) / "progress_snapshot.json").read_text())
    found = [(source, unit, unit["functions"][identity]) for source, unit in snapshot["units"].items()
             if identity in unit["functions"]]
    if len(found) != 1:
        raise ValueError("missing or duplicate original identity: " + identity)
    source, unit, function = found[0]
    return dict(source=source, object=unit["object"], **function)
