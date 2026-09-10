#!/usr/bin/env python3
"""Create new reference objects only after a fresh serial ROM/overlay comparison.

Existing destinations are never replaced. Run without concurrent edits/builds.
All logs and incomplete generations are retained under .diff-baselines/.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

from build_deps import linker_dependencies

ROOT = Path(__file__).resolve().parents[1]


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def source_fingerprint():
    paths = subprocess.check_output([
        "git", "--no-optional-locks", "ls-files", "-z", "--cached", "--others",
        "--exclude-standard"], cwd=ROOT).split(b"\0")
    digest = hashlib.sha256()
    for name in sorted(set(paths) - {b""}):
        p = ROOT / os.fsdecode(name)
        digest.update(name + b"\0")
        if p.is_symlink():
            digest.update(b"link:" + os.fsencode(os.readlink(p)))
        elif p.is_file():
            digest.update(str(p.stat().st_mode).encode() + bytes.fromhex(sha(p)))
        else:
            digest.update(b"missing")
    return digest.hexdigest()


def linked_objects():
    scripts = [Path("stage1.ld"), Path("goldensun.ld")]
    scripts += sorted(Path("overlays").glob("*/overlay.ld"))
    deps = set().union(*(linker_dependencies(p) for p in scripts))
    return sorted(p for p in deps if p.endswith(".o") and p.startswith(("src/", "asm/")))


def create(output):
    os.chdir(ROOT)
    output = ROOT / output
    # Restrict outputs to ignored project caches, including through symlinks.
    relative = output.resolve().relative_to(ROOT.resolve())
    if str(relative) != "expected" and (len(relative.parts) < 2 or relative.parts[0] != ".diff-baselines"):
        raise ValueError("output must be expected or .diff-baselines/<new-name>")
    if output.exists() or output.is_symlink():
        raise ValueError("destination exists; use a new .diff-baselines/<name> to preserve it")
    work = ROOT / ".diff-baselines"
    work.mkdir(exist_ok=True)
    run = Path(tempfile.mkdtemp(prefix="verification-", dir=work))
    print("Verification log:", run / "build.log", flush=True)
    before = source_fingerprint()
    with (run / "build.log").open("w") as log:
        for target in ("clean", "compare"):
            subprocess.run(["make", "-j1", target], stdout=log, stderr=subprocess.STDOUT, check=True)
    if source_fingerprint() != before:
        raise ValueError("sources changed during verification; nothing published")
    stamps = {str(p): sha(p) for p in Path(".build").glob("*.stamp")}
    objects = linked_objects()
    if not objects:
        raise ValueError("no linked objects found")
    stage = run / "objects"
    stage.mkdir()
    entries = {}
    for rel in objects:
        source = ROOT / rel
        source.resolve().relative_to(ROOT.resolve())
        dest = stage / rel
        dest.parent.mkdir(parents=True, exist_ok=True)
        entries[rel] = sha(source)
        shutil.copy2(source, dest)
        if sha(dest) != entries[rel]:
            raise ValueError("copy changed: " + rel)
    manifest = dict(schema=1, verified_at=datetime.now(timezone.utc).isoformat(),
        revision=subprocess.check_output(["git", "rev-parse", "HEAD"], text=True).strip(),
        dirty=bool(subprocess.check_output(["git", "status", "--porcelain"])),
        source_fingerprint=before, gate="make -j1 clean && make -j1 compare",
        reference_sha256=sha("baserom.gba"), rom_sha256=sha("goldensun.gba"),
        overlays={str(p): sha(p) for p in Path("overlays").glob("*/overlay.bin")},
        compiler_stamps={str(p): json.loads(p.read_text()) for p in Path(".build").glob("*.stamp")},
        objects=entries)
    (stage / "manifest.json").write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    if source_fingerprint() != before or any(sha(p) != h for p, h in stamps.items()):
        raise ValueError("sources or tool settings changed; nothing published")
    if any(sha(p) != h for p, h in entries.items()):
        raise ValueError("objects changed while copying; nothing published")
    # mkdir reserves a previously absent destination, so even an empty existing
    # cache cannot be overwritten. Publish files only after all checks succeed.
    output.parent.mkdir(parents=True, exist_ok=True)
    output.mkdir()
    try:
        # The manifest is the completion marker; publish it last.
        for child in sorted(stage.iterdir(), key=lambda p: p.name == "manifest.json"):
            child.rename(output / child.name)
    except BaseException:
        print("Incomplete publication; retain this directory for inspection:", output, file=sys.stderr)
        raise
    print("Verified baseline:", output)
    print("Objects:", len(entries), "Overlays:", len(manifest["overlays"]))
    print("This is a verified build snapshot, not proof of original C semantics.")


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--output", default="expected", help="expected or .diff-baselines/<new-name>")
    args = ap.parse_args()
    try:
        create(args.output)
    except (OSError, ValueError, subprocess.SubprocessError) as exc:
        print("diff baseline: " + str(exc), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
