# Unfinished C candidates

This tree mirrors `asm/`: `battle_anim/moves/kirin/Anim_Kirin.c` targets
`asm/battle_anim/moves/kirin/Anim_Kirin.s` in `src/battle_anim/moves/kirin.c`.
Browse the [candidate index](INDEX.md).

Candidates are drafts, excluded from the game build and matching progress.
Their behavior and types still need review; compilation alone is not validation.
Each TU has a `candidates.json` identifying its original functions. Optional
`context` headers supply shared declarations; `requires` lists companion
candidates that must be evaluated together.

## Compare a candidate

Follow [INSTALL.md](../../INSTALL.md), then capture a verified reference before
changing production code. Use a new directory name for each capture:

~~~sh
python3 tools/create_diff_baseline.py --output .diff-baselines/candidates
export GOLDENSUN_EXPECTED_DIR=.diff-baselines/candidates
python3 tools/compare_candidate.py src/non_matching/battle_anim/moves/kirin/Anim_Kirin.c
~~~

The helper copies the production TU into a unique `build/non_matching/` run,
substitutes the selected C, and uses the TU's production compiler settings.
It first checks that the unchanged TU reproduces the reference object.
Generated TUs, diagnostics, `diff.txt`, and `report.json` stay in that ignored run.

~~~sh
python3 tools/compare_candidate.py --list
python3 tools/compare_candidate.py --tu battle_anim/moves/kirin
python3 tools/compare_candidate.py --all
~~~

TU and collection modes compare candidates individually and together.
`--expected PATH` overrides the reference directory. Capture a fresh reference
when production inputs or compilers change; candidate-only edits can reuse it.

- **EXACT** (exit 0): allocated sections, bytes, symbol metadata, and relocations match.
- **DIFF / REJECTED** (exit 1): object differences or a source-policy violation.
- **ERROR** (exit 2): invalid reference, context, or compilation; no match result.

An exact comparison still needs source review and full ROM/overlay verification.
Follow [CONTRIBUTING.md](../../CONTRIBUTING.md) to move accepted C into its
production TU, then remove the parked copy and its manifest entry.
Regenerate the index after changing the collection:

~~~sh
python3 tools/compare_candidate.py --list --markdown > src/non_matching/INDEX.md
~~~
