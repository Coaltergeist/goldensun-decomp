# decomp.dev reports

[Golden Sun on decomp.dev](https://decomp.dev/Coaltergeist/goldensun-decomp)
shows original-byte progress, a translation-unit treemap, and function details.
See [PROGRESS.md](PROGRESS.md) for the baseline and counting rules.

## Reading the treemap

Each rectangle represents a current production TU. Its area is the total
original byte size of its known functions; shared modules count once. Source
links and function details use the current TU and symbol names.

Verified production C outside the fakematch registry contributes 100%.
Parked candidates contribute measured objdiff similarity; remaining functions
contribute 0%. TU and overall fuzzy scores weight each function by its original
byte size. A function occupying 1% of known code at 98% similarity contributes
0.98 percentage points.

Perfect-match counts remain limited to verified production C. Candidate scores,
even 100%, do not promote drafts. Similarity does not prove equivalent behavior.
Assets, unidentified code, and separate fully-linked measures are not reported.

## Finalizing production changes

Follow the [matching workflow](CONTRIBUTING.md#matching-workflow) to run
`tools/finalize_progress.py` with the pinned [objdiff CLI](#candidate-scores).
It verifies the ROM and all 96 overlays, retires candidates verified as clean
production C, updates manifests and the index, captures fresh reference objects,
rescores remaining candidates, and exports the report.

Run without concurrent edits or builds. Remaining drafts must compile with the
updated production TU; fix any reported declaration conflicts and rerun.
`--dry-run` previews the workflow without writes or builds; exact retirements
require a current verified snapshot.

Backups and logs are under `.progress/finalize-*/`. Ordinary failures and
interruptions restore previous candidate/report files, preserving production
edits. Conflicting edits or forced termination may require manual recovery from
those backups. Rerun successfully before submitting changes.

The commands below are also available for individual steps and candidate-only work.

## Updating the snapshot

Source, header, assembly, linker, build, accounting, or toolchain changes require
a fresh snapshot. From the checkout, with the ROM and compilers installed as
described in [INSTALL.md](INSTALL.md):

~~~sh
python3 tools/decomp_progress.py snapshot
~~~

This runs fresh serial ROM/all-96-overlay verification, then records function
classifications, TU ownership, source fingerprints, and tool provenance in
`progress_snapshot.json`. Do not edit or build concurrently. On failure the
previous snapshot is retained; logs are in
`.progress/verification-*/build.log`.

Include the generated snapshot with source changes. Documentation, workflow,
test-only changes, and parked candidates in `src/non_matching/` do not require
regeneration. Production sources must not include parked files.

## Candidate scores

Install the [objdiff CLI v3.8.1 release](https://github.com/encounter/objdiff/releases/tag/v3.8.1)
and follow the [candidate comparison setup](src/non_matching/README.md#compare-a-candidate)
for a verified reference. Then run:

~~~sh
python3 tools/score_candidates.py --expected .diff-baselines/candidates --objdiff /path/to/objdiff-cli
~~~

This compiles each candidate with its declared companions in its production TU,
checks the unchanged control, and scores only the replaced function using
objdiff's report settings. Original byte spans supply the report weights.
Temporary objects and diffs stay under `build/non_matching/`.

Unchanged compiler output and measured scores are reused by default. Every run
still preprocesses candidates, assembles their objects, and verifies each unchanged
control TU. Use `--full` to recompile and rescore all candidates. The local cache
index is `.progress/candidate-score-cache.json`; missing or damaged artifacts are
recomputed.

Include `candidate_scores.json` with candidate changes. Refresh it after changing
candidate C, context headers, manifests, or `progress_snapshot.json`. Failed
scoring retains the previous file; stale scores stop export. The CLI binary is
checked against the pinned release checksums.

Check freshness without a ROM, game compiler, or objdiff, or export locally:

~~~sh
python3 tools/decomp_progress.py check
python3 tools/decomp_progress.py export
~~~

`export` writes ignored `report.json`; console output shows overall measures.
The report uses the [objdiff version-2 schema](https://github.com/encounter/objdiff/blob/main/objdiff-core/protos/report.proto).

## CI

Pull requests, pushes to `main`, and manual workflow runs validate the snapshot
and generate the report. Only successful pushes to `main` upload
`report.json` as `USA_report` for decomp.dev.

CI checks both snapshots and candidate freshness without the ROM or game compiler.
It does not regenerate snapshots, rerun comparisons, or replace source review.
