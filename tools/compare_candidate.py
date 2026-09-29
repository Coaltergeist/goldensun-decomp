#!/usr/bin/env python3
"""Compare parked C in its production TU without editing production files."""
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

from candidate_catalog import catalog, closure, collection_inputs, compose, local, markdown_index, production_candidate_errors
from candidate_build import (SourceRejected, sha, production_inputs, compiler_inputs,
                             contract, reference, compile_tu, comparison, disassembly_diff)

ROOT = Path(__file__).resolve().parents[1]


def input_state(root, unit):
    state = production_inputs(root)
    for path in [root / "baserom.gba", *(root / "overlays").glob("*/orig.bin")]:
        if path.is_file():
            state[path.relative_to(root).as_posix()] = sha(path)
    for name in collection_inputs(root, unit) + ["progress_snapshot.json"]:
        state[name] = sha(local(root, name))
    for path in (root / unit["directory"]).rglob("*.h"):
        state[path.relative_to(root).as_posix()] = sha(path)
    return state


def compare(root, unit, names, baseline):
    names = closure(unit, names)
    output_root = root / "build/non_matching"
    output_root.resolve().relative_to(root.resolve())
    output_root.mkdir(parents=True, exist_ok=True)
    run = Path(tempfile.mkdtemp(prefix=Path(unit["source"]).stem + "-", dir=output_root))
    report = dict(schema=1, source=unit["source"], functions=names, status="ERROR")
    status = 2
    try:
        before = input_state(root, unit)
        tools_before = compiler_inputs(root)
        expected, provenance = reference(root, baseline, unit["object"])
        reference_hash = sha(expected)
        manifest_hash = sha(Path(baseline) / "manifest.json")
        shutil.copyfile(expected, run / "expected.o")
        settings = contract(root, unit["source"])
        report.update(inputs=before, compilers=tools_before, compile_contract=settings,
                      reference=dict(object=unit["object"], sha256=reference_hash,
                                     verified_at=provenance.get("verified_at"),
                                     manifest_sha256=manifest_hash))
        source = local(root, unit["source"]).read_text()
        control, _, control_commands = compile_tu(
            root, unit["source"], '#line 1 "' + unit["source"] + '"\n' + source,
            run / "baseline", settings)
        report["control"] = comparison(run / "expected.o", control)
        if not report["control"]["exact"]:
            (run / "diff.txt").write_text(disassembly_diff(root, run / "expected.o", control))
            raise ValueError("unmodified temporary TU does not reproduce reference")
        actual, _, commands = compile_tu(root, unit["source"], compose(root, unit, names),
                                        run / "candidate", settings, names)
        report["commands"] = dict(control=control_commands, candidate=commands)
        report["comparison"] = comparison(run / "expected.o", actual)
        (run / "diff.txt").write_text(disassembly_diff(root, run / "expected.o", actual))
        status = 0 if report["comparison"]["exact"] else 1
        report["status"] = "EXACT" if status == 0 else "DIFF"
    except SourceRejected as exc:
        report.update(status="REJECTED", error=str(exc))
        status = 1
    except (OSError, ValueError, KeyError, subprocess.SubprocessError) as exc:
        report.update(status="ERROR", error=str(exc))
        status = 2
    finally:
        if "inputs" in report:
            try:
                if (before != input_state(root, unit) or tools_before != compiler_inputs(root)
                        or settings != contract(root, unit["source"])
                        or reference_hash != sha(expected)
                        or manifest_hash != sha(Path(baseline) / "manifest.json")):
                    report.update(status="ERROR", error="inputs changed during evaluation")
                    status = 2
            except (OSError, ValueError, KeyError, subprocess.SubprocessError) as exc:
                report.update(status="ERROR", error=str(exc))
                status = 2
        (run / "report.json").write_text(json.dumps(report, indent=2) + "\n")
    print(report["status"], unit["source"], ", ".join(names), "->", run)
    if report.get("error"):
        print(report["error"], file=sys.stderr)
    return status, run


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    choice = ap.add_mutually_exclusive_group(required=True)
    choice.add_argument("candidate", nargs="?")
    choice.add_argument("--list", action="store_true")
    choice.add_argument("--tu")
    choice.add_argument("--all", action="store_true")
    ap.add_argument("--markdown", action="store_true", help="render --list as Markdown")
    ap.add_argument("--expected", default=os.environ.get("GOLDENSUN_EXPECTED_DIR", "expected"))
    args = ap.parse_args()
    try:
        issues = production_candidate_errors(ROOT)
        if issues:
            raise ValueError("; ".join(issues))
        units = catalog(ROOT)
        if args.list:
            if args.markdown:
                print(markdown_index(units), end="")
                return 0
            for tu, unit in units.items():
                for entry in unit["functions"].values():
                    print(entry["candidate"] + (" — " + entry["notes"] if entry.get("notes") else ""))
            return 0
        baseline = Path(args.expected)
        if not baseline.is_absolute():
            baseline = ROOT / baseline
        jobs = []
        if args.candidate:
            target = Path(args.candidate)
            if target.is_absolute():
                target = target.relative_to(ROOT)
            matches = [(u, n) for u in units.values() for n, e in u["functions"].items()
                       if e["candidate"] == target.as_posix()]
            if len(matches) != 1:
                raise ValueError("unknown candidate: " + str(target))
            unit, name = matches[0]
            jobs.append((unit, [name]))
        else:
            chosen = units if args.all else {args.tu: units[args.tu]}
            for unit in chosen.values():
                groups = {tuple(closure(unit, [n])) for n in unit["functions"]}
                groups.add(tuple(sorted(unit["functions"])))
                jobs += [(unit, list(group)) for group in sorted(groups)]
        status = 0
        for unit, names in jobs:
            result, _ = compare(ROOT, unit, names, baseline)
            status = max(status, result)
        return status
    except (OSError, ValueError, KeyError, subprocess.SubprocessError) as exc:
        print("candidate comparison:", str(exc), file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
