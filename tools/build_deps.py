#!/usr/bin/env python3
"""Dependency and command fingerprints compatible with the legacy target tools."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys


def write_changed(path, text):
    path = Path(path)
    if path.exists() and path.read_text() == text:
        return
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(path.name + ".tmp")
    temporary.write_text(text)
    temporary.replace(path)


def linker_dependencies(script, seen=None):
    seen = set() if seen is None else seen
    script = Path(script)
    if script in seen:
        return set()
    seen.add(script)
    text = re.sub(r"/\*.*?\*/|//[^\n]*|#[^\n]*", "", script.read_text(), flags=re.S)
    deps = {str(script)} | set(re.findall(r"[A-Za-z0-9_./-]+\.o\b", text))
    for quoted, bare in re.findall(r'\bINCLUDE\s+(?:"([^"]+)"|([^\s;]+))', text):
        deps.update(linker_dependencies(quoted or bare, seen))
    return deps


def c_dependencies(target, command):
    result = subprocess.run(command, text=True, capture_output=True, check=True)
    # GCC 2.96 supports -M but not every modern dependency-output option.
    rhs = result.stdout.split(":", 1)[1].replace("\\\n", " ").strip()
    # Missing former includes must trigger compilation, not prevent make from
    # discovering that the edited source no longer includes them.
    deps = rhs.split()
    if any(any(c in d for c in " #:$") for d in deps):
        raise ValueError("unsupported dependency filename")
    text = target + ": " + " ".join(deps) + "\n"
    text += "".join(d + ":\n" for d in deps)
    write_changed(Path(target).with_suffix(".c.d"), text)


def stamp(path, tools, values):
    hashes = {}
    for tool in tools:
        resolved = shutil.which(tool)
        if resolved is None:
            raise ValueError("missing build tool: " + tool)
        hashes[tool] = hashlib.sha256(Path(resolved).read_bytes()).hexdigest()
    for name in ("Makefile", "tools/build_deps.py"):
        hashes[name] = hashlib.sha256(Path(name).read_bytes()).hexdigest()
    write_changed(path, json.dumps({"tools": hashes, "values": values}, sort_keys=True, indent=2) + "\n")


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    subs = ap.add_subparsers(dest="mode", required=True)
    ld = subs.add_parser("linker")
    ld.add_argument("targets", nargs="+")
    dep = subs.add_parser("c")
    dep.add_argument("target")
    dep.add_argument("command", nargs=argparse.REMAINDER)
    ph = subs.add_parser("phony")
    ph.add_argument("path")
    st = subs.add_parser("stamp")
    st.add_argument("path")
    st.add_argument("--tool", action="append", default=[])
    st.add_argument("--value", action="append", default=[])
    args = ap.parse_args()
    try:
        if args.mode == "linker":
            # Make substitutes the separator with newlines before eval.
            for target in args.targets:
                print(target + ": " + " ".join(sorted(linker_dependencies(Path(target).with_suffix(".ld")))) + "|")
        elif args.mode == "phony":
            path = Path(args.path)
            text = path.read_text()
            target, rhs = text.split(":", 1)
            # GAS includes .file debug names (e.g. save.c) in -MD output even
            # though they were never opened. After successful assembly genuine
            # .include/.incbin inputs exist; retain those and the actual .s.
            deps = [d for d in rhs.replace("\\\n", " ").split() if Path(d).exists()]
            text = target + ": " + " ".join(deps) + "\n"
            write_changed(path, text + "".join(d + ":\n" for d in deps))
        elif args.mode == "c":
            c_dependencies(args.target, args.command)
        else:
            stamp(args.path, args.tool, args.value)
    except (OSError, ValueError, IndexError, subprocess.CalledProcessError) as exc:
        print("build dependencies: " + str(exc), file=sys.stderr)
        if getattr(exc, "stderr", None):
            print(exc.stderr, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
