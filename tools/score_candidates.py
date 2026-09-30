#!/usr/bin/env python3
"""Compile parked candidates and capture objdiff scores for decomp.dev."""
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

from candidate_build import (compiler_inputs, compile_tu, comparison, contract,
                             reference, sha)
from candidate_catalog import catalog, closure, compose, local
from candidate_cache import CandidateCache, tool_identity
from candidate_scores import (CONFIG, POLICY, RELEASE_HASHES, SCORES, VERSION,
                              candidate_inputs, function_score, percent, validate_scores)
from decomp_progress import (ROOT, SNAPSHOT, BASELINE, digest, fingerprint, load,
                             metadata, source_inputs, validate_snapshot, write_json)


def scorer(path):
    binary = shutil.which(path)
    if binary is None:
        raise ValueError("install objdiff-cli v" + VERSION + " or pass --objdiff PATH")
    binary = str(Path(binary).resolve())
    checksum = sha(binary)
    if checksum not in RELEASE_HASHES:
        raise ValueError("objdiff must be an official v" + VERSION + " CLI release binary")
    version = subprocess.check_output([binary, "--version"], text=True, timeout=30).split()[-1]
    if version != VERSION:
        raise ValueError("unexpected objdiff version: " + version)
    return binary, dict(version=version, sha256=checksum, config=CONFIG)


def check_compilers(snapshot, compilers):
    verified = snapshot["verification"]["toolchain"]["binaries_and_headers"]
    for name, checksum in compilers.items():
        key = name.removeprefix("host:")
        if key == "arm-none-eabi-objdump":
            continue
        if verified.get(key) != checksum:
            raise ValueError("compiler differs from progress snapshot: " + name)


def capture(root, baseline, binary, output, *, full=False):
    manifest, sizes = metadata(root)
    snapshot = load(root / SNAPSHOT)
    production = source_inputs(root)
    validate_snapshot(manifest, sizes, snapshot, production, digest(root / BASELINE))
    units = catalog(root)
    inputs = candidate_inputs(root)
    snapshot_hash = digest(root / SNAPSHOT)
    compilers = compiler_inputs(root)
    check_compilers(snapshot, compilers)
    binary, info = scorer(binary)
    saved = dict(schema=1, policy=POLICY, scorer=info, progress_sha256=snapshot_hash,
                 candidate_fingerprint=fingerprint(inputs), functions={})
    work = root / "build/non_matching"
    work.mkdir(parents=True, exist_ok=True)
    run = Path(tempfile.mkdtemp(prefix="scores-", dir=work))
    print("Scoring artifacts:", run, flush=True)
    cache = CandidateCache(root, run, full=full)
    contracts, references, toolchains = {}, {}, {}
    baseline_hash = sha(baseline / "manifest.json")
    for index, (tu, unit) in enumerate(units.items(), 1):
        folder = run / tu
        folder.mkdir(parents=True)
        original, _ = reference(root, baseline, unit["object"])
        original_hash = sha(original)
        if snapshot["verification"]["artifacts"].get(unit["object"]) != original_hash:
            raise ValueError("reference differs from progress snapshot: " + unit["object"])
        references[original] = original_hash
        expected = folder / "expected.o"
        shutil.copyfile(original, expected)
        settings = contract(root, unit["source"])
        contracts[unit["source"]] = settings
        tools = tool_identity(root, settings)
        toolchains[unit["source"]] = tools
        text = local(root, unit["source"]).read_text()
        control, _, _ = compile_tu(root, unit["source"], text, folder / "control", settings)
        if not comparison(expected, control)["exact"]:
            raise ValueError("unchanged TU does not reproduce reference: " + unit["source"])
        groups = {}
        for name, entry in sorted(unit["functions"].items()):
            names = tuple(closure(unit, [name]))
            if names not in groups:
                directory = folder / ("candidate-" + str(len(groups)))
                actual, _, _ = compile_tu(root, unit["source"], compose(root, unit, names),
                                          directory, settings, names, cache=cache, tools=tools)
                actual_hash = sha(actual)
                key = cache.key("scores", dict(source=unit["source"],
                    identities={n: unit["functions"][n]["id"] for n in names},
                    reference=original_hash, actual=actual_hash, scorer=info))
                previous = cache.get(key)
                scores = None
                if previous:
                    try:
                        scores = json.loads(previous[1])
                        if set(scores) != set(names):
                            raise ValueError("cached score coverage changed")
                        for row in scores.values():
                            percent(row["fuzzy_match_percent"])
                            if any(type(row[k]) is not int or row[k] <= 0
                                   for k in ("target_size", "candidate_size")):
                                raise ValueError("invalid cached function size")
                    except (OSError, ValueError, KeyError, TypeError):
                        scores = None
                if scores is None:
                    diff_path = directory / "objdiff.json"
                    argv = [binary, "diff", "-1", str(expected), "-2", str(actual),
                            "-o", str(diff_path)]
                    for option in CONFIG:
                        argv += ["-c", option]
                    result = subprocess.run(argv, cwd=root, capture_output=True, text=True, timeout=120)
                    (directory / "objdiff.log").write_text(result.stdout + result.stderr)
                    if result.returncode:
                        raise ValueError("objdiff failed; see " + str(directory / "objdiff.log"))
                    diff = load(diff_path)
                    scores = {n: function_score(diff, n) for n in names}
                    del diff
                    cache.stats["scores_measured"] += 1
                else:
                    (directory / "objdiff.log").write_text("Reused measured scores: " + str(previous[0]) + "\n")
                    cache.stats["scores_reused"] += 1
                score_path = directory / "function_scores.json"
                write_json(score_path, scores)
                cache.remember(key, score_path)
                groups[names] = (scores, actual_hash)
            scores, actual_hash = groups[names]
            saved["functions"][entry["id"]] = dict(
                source=unit["source"], name=name, candidate=entry["candidate"],
                evaluated_with=list(names), reference_sha256=original_hash,
                object_sha256=actual_hash, **scores[name])
        print(f"[{index}/{len(units)}] {tu}: {len(unit['functions'])} scored", flush=True)
    if (source_inputs(root) != production or candidate_inputs(root) != inputs
            or digest(root / SNAPSHOT) != snapshot_hash or compiler_inputs(root) != compilers
            or sha(binary) != info["sha256"] or sha(baseline / "manifest.json") != baseline_hash
            or any(sha(p) != h for p, h in references.items())
            or any(contract(root, source) != settings for source, settings in contracts.items())
            or any(tool_identity(root, contracts[source]) != tools for source, tools in toolchains.items())):
        raise ValueError("inputs changed during scoring; previous scores retained")
    validate_scores(root, snapshot, saved, units)
    write_json(run / "candidate_scores.json", saved)
    cache.publish()
    write_json(output, saved)
    print("Reuse:", cache.stats, flush=True)
    print("Scores:", output, "Functions:", len(saved["functions"]), flush=True)
    return saved


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--expected", default=os.environ.get("GOLDENSUN_EXPECTED_DIR", "expected"))
    ap.add_argument("--objdiff", default=os.environ.get("OBJDIFF", "objdiff-cli"))
    ap.add_argument("--full", action="store_true", help="recompile and rescore every candidate without cache reuse")
    args = ap.parse_args()
    try:
        baseline = Path(args.expected)
        if not baseline.is_absolute():
            baseline = ROOT / baseline
        capture(ROOT, baseline, args.objdiff, ROOT / SCORES, full=args.full)
    except (OSError, ValueError, KeyError, TypeError, IndexError, subprocess.SubprocessError) as exc:
        print("candidate scoring:", str(exc), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
