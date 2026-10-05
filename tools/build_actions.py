"""Atomic build products and bounded clean; every path belongs to this checkout."""
import argparse
import hashlib
import os
from pathlib import Path
import shlex
import subprocess
import sys

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


def run(argv):
    print(shlex.join([str(a) for a in argv]), flush=True)
    subprocess.run(argv, check=True)


def atomic_output(root, output, command, map_output=None):
    names = [output] + ([map_output] if map_output else [])
    files = [checked(root, n) for n in names]
    temporaries = [checked(root, n + ".tmp") for n in names]
    for file in files:
        file.parent.mkdir(parents=True, exist_ok=True)
    try:
        run(command([str(file.relative_to(root)) for file in temporaries]))
        for temporary, file in zip(temporaries, files):
            temporary.replace(file)
    except BaseException:
        for file in files:
            file.unlink(missing_ok=True)
        raise
    finally:
        for temporary in temporaries:
            temporary.unlink(missing_ok=True)


def strings(root):
    temporary = paths.STRINGS + ".tmp"
    output_names = [paths.STRINGS + "/" + n for n in paths.STRING_FILES]
    temp_names = [temporary + "/" + n for n in paths.STRING_FILES]
    all_files = [checked(root, n) for n in [paths.STRING_STAMP, *output_names, *temp_names]]
    marker = all_files[0]
    marker.parent.mkdir(parents=True, exist_ok=True)
    checked(root, temporary).mkdir(parents=True, exist_ok=True)
    marker.unlink(missing_ok=True)
    try:
        run([paths.HOST + "/pack_strings", "-i", paths.STRINGS_TEXT, "-o", temporary])
        actual = {f.name for f in (root / temporary).iterdir()}
        if actual != set(paths.STRING_FILES):
            raise ValueError("string generator output set differs from the USA layout")
        assembly = root / temporary / "strings.s"
        assembly.write_text(assembly.read_text().replace(temporary + "/", paths.STRINGS + "/"))
        for name in paths.STRING_FILES:
            (root / temporary / name).replace(root / paths.STRINGS / name)
        marker.write_text("complete\n")
    except BaseException:
        for name in output_names:
            checked(root, name).unlink(missing_ok=True)
        raise
    finally:
        for name in temp_names:
            checked(root, name).unlink(missing_ok=True)
        try:
            (root / temporary).rmdir()
        except OSError:
            pass


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


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    subs = parser.add_subparsers(dest="action", required=True)
    cl = subs.add_parser("clean"); cl.add_argument("--dry-run", action="store_true")
    subs.add_parser("strings"); subs.add_parser("verify-rom")
    for name in ("link", "objcopy", "extract-overlay", "pack-overlay", "extract-strings"):
        sub = subs.add_parser(name); sub.add_argument("output"); sub.add_argument("input")
        sub.add_argument("options", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    try:
        os.chdir(ROOT)
        if args.action == "clean":
            files = clean(ROOT, args.dry_run)
            print(("Would remove " if args.dry_run else "Removed ") + str(len(files)) + " declared outputs")
            if args.dry_run:
                print("\n".join(files))
        elif args.action == "verify-rom":
            expected = (ROOT / "goldensun.sha1").read_text().split()[0]
            for name in ("baserom.gba", paths.ROM):
                if hashlib.sha1((ROOT / name).read_bytes()).hexdigest() != expected:
                    raise ValueError("ROM checksum mismatch: " + name)
            print(paths.ROM + ": OK")
        elif args.action == "strings":
            strings(ROOT)
        else:
            if args.output not in paths.owned_outputs(ROOT):
                raise ValueError("undeclared build output: " + args.output)
            if args.action == "link":
                if paths.link_targets(ROOT).get(args.output) != args.input:
                    raise ValueError("link output/script mismatch")
                split = args.options.index("--libraries")
                flags, libraries = args.options[:split], args.options[split + 1:]
                # GNU ld's ARM interworking decisions depend on input order:
                # load script objects before the overlay's -R symbol provider.
                atomic_output(ROOT, args.output, lambda t: ["arm-none-eabi-ld", *flags,
                              "-T", args.input, *libraries, "-Map", t[1], "-o", t[0]], str(Path(args.output).with_suffix(".map")))
            elif args.action == "objcopy":
                atomic_output(ROOT, args.output, lambda t: ["arm-none-eabi-objcopy", "-O", "binary", args.input, t[0]])
            elif args.action == "extract-overlay":
                atomic_output(ROOT, args.output, lambda t: [paths.HOST + "/unpack_overlay", "-r", args.input, *args.options, "-o", t[0]])
            elif args.action == "pack-overlay":
                atomic_output(ROOT, args.output, lambda t: [paths.HOST + "/pack_overlay", "-i", args.input, "-o", t[0]])
            else:
                atomic_output(ROOT, args.output, lambda t: [paths.HOST + "/unpack_strings", "-r", args.input, "-o", t[0]])
        return 0
    except (OSError, ValueError, KeyError, subprocess.SubprocessError) as exc:
        print("build outputs: " + str(exc), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
