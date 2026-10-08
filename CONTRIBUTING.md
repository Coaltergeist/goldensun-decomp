# Contributing

We welcome matching C, reverse-engineering findings, and cleanup of existing
fakematches. **New fakematches are not accepted.** A byte-identical build is
required, but source review must also establish that the C expresses the original
behavior.

## Source requirements

- Justify types, signedness, prototypes, memory access widths, and side effects
  from the original code and its callers.
- Do not force matches with register-pinned locals, empty assembly barriers,
  handwritten instruction substitutes, dummy accesses, artificial scheduling
  constructs, or misleading attributes. Hiding them in a helper or macro does
  not make them acceptable.
- Assembly for genuine hardware operations and ABI glue must preserve the
  required constraints and clobbers.
- Assembler-name declarations for data and literal-pool symbols, such as
  `extern unsigned char pool[] __asm__(".Lpool");`, are allowed. Symbol-only
  `.equ` definitions require evidenced absolute constants.
- Use the production compiler and catalog-assigned compiler profile. The Make
  compile-contract query exposes the same settings. Experimental
  compiler flags do not establish an accepted match.
- Preserve credits, source notices, and assembly evidence. Do not submit ROMs,
  extracted assets, generated objects, installed compilers, or local diff caches.

## Where changes belong

Resolve the owning TU through [the catalog](config/README.md#read-only-build-queries).
Main-ROM code follows its catalog owner under `src/core/` or directly under `src/`; overlay code
belongs in `src/maps/<name>.c`. Shared overlay implementations live in
`src/maps/common/` and compile once each, even when multiple overlays use them.
Preserve the linkers' placement and imports/exports. Put shared declarations in the
[owning header](include/README.md); keep unproven or incompatible local views
separate. Candidate directories come from the owning catalog unit.

Adding a TU requires explicit source/object ownership, a compiler profile, and
ordered linker inputs. Update the catalog and linker scripts together; a new C
file is not automatically discovered. Keep stable TU and original-function IDs
when relocating existing code. See [catalog editing](config/README.md#editing-and-validating).

Keep documentation focused on current usage, behavior and constraints. Record
change narratives in commits or pull requests. Code comments should explain
non-obvious behavior or requirements, rather than the history of an edit.

## Matching workflow

1. Follow [INSTALL.md](INSTALL.md) and capture verified reference objects
   **before editing**. Identify the function's owning translation unit and
   linker script; overlay symbols and execution addresses can repeat.
2. Replace the active `INCLUDE_ASM` in that TU with C.
3. Compare the whole affected object, including neighboring functions, sizes,
   data, symbols, and relocations. Do not refresh the reference to hide a mismatch.
4. Finalize the conversion with the pinned [objdiff CLI](DECOMP_DEV.md#candidate-scores):

   ~~~bash
   set -euo pipefail
   python3 tools/finalize_progress.py --objdiff /path/to/objdiff-cli 2>&1 | tee output.txt
   ~~~

   This verifies the ROM and all 96 overlays, reconciles landed candidates, and
   refreshes the progress reports. Include the resulting candidate changes,
   `progress_snapshot.json`, and `candidate_scores.json` in the PR. See
   [DECOMP_DEV.md](DECOMP_DEV.md#finalizing-production-changes) for options and recovery.

5. Run the repository checks:

   ~~~bash
   set -euo pipefail
   python3 tools/check_repository.py 2>&1 | tee output-structure.txt
   python3 -m unittest discover -s tools/tests -v 2>&1 | tee output-tests.txt
   python3 -B tools/decomp_progress.py check 2>&1 | tee output-freshness.txt
   ~~~

6. Describe the function's behavior, relevant source reasoning, compiler version,
   and validation in the pull request. Label unmatched investigations clearly.

## Unfinished candidates

Park unfinished C under the catalog's `candidate_directory`, named `<Function>.c`.
The directory follows current module ownership; the TU identity stays stable. See the
[candidate workflow](src/non_matching/README.md) for metadata and isolated
comparison commands. Keep one primary candidate per function and retain relevant
credits. Candidates do not receive matching credit.

## Existing fakematches

`fakematch.txt` records source concerns that still need cleanup. These functions
are not examples for new contributions. Remove a registry entry only after its
specific source concern is resolved and the output remains byte-identical.
Review callers when changing a shared macro or inline helper.

CI checks repository structure, reporting metadata, and tooling. It does not
replace the local ROM/all-overlay verification or semantic source review.
Preserve the notices listed in [ATTRIBUTION.md](ATTRIBUTION.md).
