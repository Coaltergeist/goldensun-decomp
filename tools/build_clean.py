"""Validate owned outputs and remove only declared regenerable files."""
import argparse
from pathlib import Path
import subprocess
import build_paths as paths

ROOT = Path(__file__).resolve().parents[1]

def checked(root, name):
    path = Path(name)
    if path.is_absolute() or ".." in path.parts or not str(path).startswith((paths.TARGET + "/", paths.HOST + "/")):
        raise ValueError("not an owned build path: " + str(name))
    target = root / path
    target.resolve().relative_to(root.resolve())
    for part in [target, *target.parents]:
        if part == root:
            break
        if part.is_symlink():
            raise ValueError("symlink build output: " + str(part))
    return target


def clean(root, dry_run=False):
    names = paths.owned_outputs(root)
    # Validate the whole set before deleting anything.
    files = [checked(root, n) for n in names]
    query = subprocess.run(["git", "--no-optional-locks", "ls-files", "-z", "--", paths.TARGET, paths.HOST],
                           cwd=root, capture_output=True, text=True)
    if query.returncode and (root / ".git").exists():
        raise ValueError("cannot check tracked files before cleaning")
    tracked = set(query.stdout.split("\0")) if query.returncode == 0 else set()
    conflict = tracked.intersection(names)
    if conflict:
        raise ValueError("refusing to remove tracked files: " + ", ".join(sorted(conflict)))
    for file in files:
        if file.is_dir():
            raise ValueError("expected output file, found directory: " + str(file))
    removed = [str(f.relative_to(root)) for f in files if f.exists()]
    if not dry_run:
        for file in files:
            file.unlink(missing_ok=True)
        parents = {q for f in files for q in f.parents if q.is_relative_to(root / "build") and q != root / "build"}
        for folder in sorted(parents, key=lambda q: len(q.parts), reverse=True):
            try:
                folder.rmdir()
            except OSError:
                pass  # Unknown files and directories are preserved.
    return removed


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    removed = clean(ROOT, args.dry_run)
    print(("Would remove " if args.dry_run else "Removed ") + str(len(removed)) + " declared outputs")
    if args.dry_run:
        print("\n".join(removed))
