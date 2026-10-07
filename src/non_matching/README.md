# Unfinished C candidates

The catalog declares each TU's candidate directory. For example,
`modules/rom_c9000/battle_anim/moves/kirin/Anim_Kirin.c` targets
`asm/modules/rom_c9000/battle_anim/moves/kirin/Anim_Kirin.s` in
`src/modules/rom_c9000/battle_anim/moves/kirin.c`.
Browse the [candidate index](INDEX.md). Query the production TU with
`tools/build_config.py query unit` to find its `candidate_directory`; do not
construct a path from an old TU spelling. The examples below run from the
repository root; the first example above is relative to `src/non_matching/`.

Candidates are drafts, excluded from the game build and perfect-match progress.
Their behavior and types still need review; compilation alone is not validation.
Each TU has a `candidates.json` identifying its original functions. Optional
`context` headers supply shared declarations; `requires` lists companion
candidates that must be evaluated together.

## Add a candidate

Save `<Function>.c` under its catalog-declared candidate directory, then run from
the checkout:

~~~bash
set -o pipefail
python3 -B tools/generate_candidates.py 2>&1 | tee output-candidates.txt
~~~

This creates missing manifests, adds entries to existing ones, and refreshes
`INDEX.md`. IDs come from the function's owning TU in `progress_snapshot.json`.
Existing metadata is preserved; invalid or stale entries stop generation.
Use `--check` to preview pending changes without writing. Add `context` or
`requires` manually when needed; generation does not compile or score candidates.

## Compare a candidate

Follow [INSTALL.md](../../INSTALL.md), then capture a verified reference before
changing production code. Use a new directory name for each capture:

~~~bash
set -o pipefail
python3 -B tools/create_diff_baseline.py --output .diff-baselines/candidates 2>&1 | tee output-candidates.txt
export GOLDENSUN_EXPECTED_DIR=.diff-baselines/candidates
python3 -B tools/compare_candidate.py src/non_matching/modules/rom_c9000/battle_anim/moves/kirin/Anim_Kirin.c 2>&1 | tee output-candidates.txt
~~~

The helper copies the production TU into a unique `build/non_matching/` run,
substitutes the selected C, and uses the TU's production compiler settings.
It first checks that the unchanged TU reproduces the reference object.
Generated TUs, diagnostics, `diff.txt`, and `report.json` stay in that ignored run.

~~~bash
set -o pipefail
python3 -B tools/compare_candidate.py --list 2>&1 | tee output-candidates.txt
python3 -B tools/compare_candidate.py --tu battle_anim/moves/kirin 2>&1 | tee output-candidates.txt
python3 -B tools/compare_candidate.py --all 2>&1 | tee output-candidates.txt
~~~

TU keys such as `battle_anim/moves/kirin` remain stable when directories move.
TU and collection modes compare candidates individually and together.
`--expected PATH` overrides the reference directory. Capture a fresh reference
when production inputs or compilers change; candidate-only edits can reuse it.

- **EXACT** (exit 0): allocated sections, bytes, symbol metadata, and relocations match.
- **DIFF / REJECTED** (exit 1): object differences or a source-policy violation.
- **ERROR** (exit 2): invalid reference, context, or compilation; no match result.

An exact comparison still needs source review and full ROM/overlay verification.
Follow [CONTRIBUTING.md](../../CONTRIBUTING.md#matching-workflow) to move accepted
C into production and finalize the change. Leave registered drafts and manifests
in place for the finalizer to reconcile.

## Fuzzy progress

After adding or changing candidates, refresh the measured scores:

~~~bash
set -o pipefail
python3 -B tools/score_candidates.py --objdiff /path/to/objdiff-cli 2>&1 | tee output-candidates.txt
python3 -B tools/decomp_progress.py check 2>&1 | tee output-candidates.txt
~~~

The scorer uses `GOLDENSUN_EXPECTED_DIR` or `--expected` as above. Commit the
generated `candidate_scores.json` with candidate changes. See
[DECOMP_DEV.md](../../DECOMP_DEV.md#candidate-scores) for the pinned objdiff release
and original-byte weighting. Scores do not change perfect-match counts.
