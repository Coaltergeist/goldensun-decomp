"""Serial build facade. Ordinary operations never refresh candidate/progress data."""
import argparse
import os
from pathlib import Path
import shutil
import subprocess
import sys

from build_actions import clean
from configure_build import configure

ROOT = Path(__file__).resolve().parents[1]


def backend():
    value = os.environ.get("BUILD_BACKEND", "ninja")
    if value not in ("make", "ninja"): raise ValueError("unknown build backend: " + value)
    return value


def ninja():
    value = os.environ.get("NINJA", "ninja")
    path = shutil.which(value)
    if not path: raise ValueError("Ninja 1.10+ is required; install ninja-build or set NINJA to its executable")
    return path


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--backend", choices=("make", "ninja"), default=None)
    ap.add_argument("--verbose", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--explain", action="store_true")
    ap.add_argument("targets", nargs="*", default=["compare"])
    args = ap.parse_args()
    try:
        os.chdir(ROOT); selected = args.backend or backend(); targets = args.targets or ["compare"]
        if "clean" in targets:
            if targets != ["clean"]: raise ValueError("run clean separately from build targets")
            files = clean(ROOT, args.dry_run)
            print(("Would remove " if args.dry_run else "Removed ") + str(len(files)) + " declared outputs")
            return 0
        if selected == "make":
            command = ["make", "-j1", "BUILD_BACKEND=make"]
            if args.dry_run: command.append("-n")
            if args.explain: command.append("--debug=b")
            if targets[0] == "commands": command += ["-n", *targets[1:]]
            else: command += targets
        else:
            executable = ninja()
            graph = configure(ROOT)
            if targets == ["configure"]: print(graph); return 0
            command = [executable, "-f", graph, "-j1"]
            if targets[0] == "commands": command += ["-t", "commands", *targets[1:]]
            else:
                if args.verbose: command.append("-v")
                if args.dry_run: command.append("-n")
                if args.explain: command += ["-d", "explain"]
                command += targets
        return subprocess.run(command, cwd=ROOT).returncode
    except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as exc:
        print("build: " + str(exc), file=sys.stderr); return 1


if __name__ == "__main__": raise SystemExit(main())
