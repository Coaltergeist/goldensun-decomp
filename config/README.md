# Module ownership catalog

Run the read-only validator from the repository root:

~~~bash
set -o pipefail
python3 -B tools/module_catalog.py 2>&1 | tee output.txt
~~~

For the derived link inventory, including ordered section selectors and directives:

~~~bash
set -o pipefail
python3 -B tools/module_catalog.py --inventory 2>&1 | tee output.txt
~~~

The catalog owns current TU paths, profile assignments and module identities.
The shared build graph supplies Make and Ninja; maintained linker scripts control
link order. Maintained sources follow ROM-module ownership; generated products
use build/. See the repository layout in [README.md](../README.md).

## Schema 1

- `modules.json` declares 19 main-ROM regions (including the header and final asset
  region), 96 overlays, three shared overlay modules and shared `call_via` support.
- Each module has a stable ID, its load/execution information and references to
  its linker sections. A null address means there is no single placement for that
  shared module. Overlay ROM offsets locate compressed storage; the declared
  overlay address is the load region's start, not every shared object's address.
- Each unit has a stable ID, current source/object paths, an owner, a compiler
  profile and a maintained/generated classification. Unit IDs retain their initial
  spelling across path changes; original function IDs remain separate.
  `legacy_object` records the pre-isolation Make alias; it is not a current file.
  Host entries similarly retain `legacy_binary`.
- The 439 linked objects include 297 C compilations and 142 assembly compilations.
  The latter include one generated string-data assembly input.
- Reference-only m4a source is explicitly excluded. Headers and per-function
  assembly fragments are dependencies, not independently compiled units.

`compiler_profiles.json` is the versioned authority for ordered compiler,
preprocessor and assembler arguments, preprocessing methods, and trailing text
alignment. `modules.json` assigns each target TU a profile by stable identity.
The profiles are gcc296, gcc296-gaia, gcc296-common2, old-agbcc-m4a,
old-agbcc-flash, arm-assembly and host-c. The four host utilities are listed in
compiler_profiles.json, separately from the 439 target objects.

Gaia and common2 keep their aliasing/interworking exceptions. m4a uses signed-char
SDK declarations and old_agbcc at -O2; three Flash units use old_agbcc at -O.
Flash verification stays on normal GCC 2.96. Required ABI assignments are checked
by stable TU ID, so moving a source path does not change its profile.

## Read-only build queries

These commands need source/configuration files and Python/Make, but no ROM,
installed target compiler, generated assembly, object or configured build tree:

~~~bash
set -o pipefail
python3 -B tools/build_config.py query unit src/core/rom_1b70/math/vector.c 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query unit asm/maps/common/common2.o 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query profile tu:src/battle_anim/moves/gaia 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query commands src/lib/m4a/m4a.c 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query module rom_1b70 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query overlay rom_779188 2>&1 | tee output-query.txt
~~~

Unit/profile/command queries accept a current source/object, a recorded legacy
object alias, or a stable TU ID.
Module/overlay queries return their object and artifact paths. Command output is
ordered argument arrays plus structured postprocessing, not a shell script.
Unknown or reference-only sources fail instead of inheriting a default profile.

`make -s --no-print-directory print-compile-contract SOURCE=src/core/rom_1b70/math/vector.c`
remains the six-line target-C compatibility interface: family, GCC driver, GCC
flags, old_agbcc path, host-preprocessor flags, old_agbcc flags. Unused family
lines retain their former values. `print-build-settings` emits resolved variable
values as JSON. Both targets are read-only; keep stdout separate from diagnostics
when consuming either interface programmatically.

## Overrides and dependencies

GCC296_DIR and AGBCC_DIR keep their environment/command-line overrides. GCC296_CC,
GCC296_CFLAGS, GAIA_CFLAGS, COMMON2_CFLAGS, M4A_CPPFLAGS, M4A_CC1FLAGS,
AGBFLASH_CPPFLAGS and AGBFLASH_CC1FLAGS accept Make command-line overrides.
CC, CPPFLAGS and CFLAGS retain Make's host-tool behavior, including the existing
-MMD append rule. Source/object/tool-directory paths must remain whitespace-free.

A base GCC296_CFLAGS override feeds the Gaia/common2 derivations consistently in
both builds and queries. Override GAIA_CFLAGS or COMMON2_CFLAGS explicitly to
replace those derived settings. Research overrides do not establish matching
acceptance; use the complete verification workflow for accepted changes.

Recipes, candidate compilation and progress preprocessing share build_config.py's
command construction. build_compile.py runs production pipelines. build_graph.py
declares explicit edges, ordered argv, byproducts and recursive linker inputs;
its Make adapter and configure_build.py's Ninja adapter render scheduler syntax.
build.py refreshes Ninja configuration and enforces serial execution. build_paths.py
resolves artifacts and clean ownership; build_actions.py publishes generated/link
products and performs bounded clean. Per-profile
stamps hash effective arguments, selected driver/frontend/specs/assembler tools,
implementation and TU membership. No-op checks preserve stamp mtimes. A profile
change invalidates its consumers; moving a TU between profiles invalidates both
groups. Both backends check tool contents even when a binary is replaced without
changing its path or mtime. Ninja uses restat on these stamps and compiler edges with unchanged dependency
byproducts. Its merged depfile
keeps C headers plus assembler/include/incbin inputs, omits Make phony rules and
excludes intermediates produced by the same edge. Original C/GAS depfiles remain
available for the Make fallback. Multi-output edges declare generated assembly,
preprocessed input, strings and link maps explicitly.

Source/baseline fingerprints include configuration and executable build helpers.
Candidate caches also include the resolved TU profile and postprocessing. Compiler
provenance records the effective settings and selected tools, including overrides.
Do not edit a historical fingerprint to make an old reference appear current.

## Output layout and cleanup

| Location | Contents |
| --- | --- |
| build/usa/obj | Target objects, .s/.i intermediates and dependency files, grouped by catalog ownership |
| build/usa/overlays | Overlay ELF/bin/lz/map outputs |
| build/usa/reference | Extracted originals and strings.txt |
| build/usa/generated/strings | Packed strings and generated strings.s |
| build/usa/stamps | Effective profile and binutils fingerprints |
| build/usa | ROM, final ELF/map, stage1 object/map, tags and Ninja graph/settings/log/dependency database |
| build/host | Host utility objects, dependencies and executables |

All compiler/assembler/linker commands run from the checkout root. Maintained
assembly names generated inputs explicitly; no legacy file or symlink is needed.
The first-build graph discovers literal generated inputs before depfiles exist.
The USA string generator owns its complete 42-chunk output set; missing byproducts
trigger regeneration. Linker scripts retain section/input order and select real
catalog objects. Overlay -R symbol inputs must remain after -T script inputs.

Ordinary clean removes the declared files, then empty directories. It validates
paths before deletion and rejects symlinks and tracked outputs. Unknown files,
build/non_matching, build/permuter, installed compilers, references and verification
history survive. Compiler output m4a.s is generated under build/usa/obj/src/lib/m4a;
the maintained src/lib/m4a/m4a0.s remains source. New handwritten .s files are no
longer hidden by broad ignore rules.

Old Make object/host/link targets are compatibility aliases. Diff tools and
baselines use current paths, including build/usa inside a new reference directory.
Do not rewrite old receipts or copy old products back into source directories.

Ninja configuration is generated deterministically and written only when changed.
The action manifest stores argv arrays and resolved profile values; each generated
command checks its action signature before execution. Use build.py or the Make
facade before scheduling so current configuration is refreshed. All Ninja actions
use a depth-one pool, including when the engine is invoked with a larger job count.
Engine logs/databases may change during no-op verification; production outputs and
unchanged configuration/stamps retain their contents and mtimes.

New reference manifests and progress snapshots use schema 3 with a schema-1 gate
receipt identifying Make or Ninja, serial clean/verify commands, ROM plus all 96
overlays and executor version/hash. Historical schema-2 metadata accepts only its
original literal Make gate. Current input fingerprints still require a fresh
capture after build changes; accepting historical syntax does not waive freshness.

## Editing and validating

When adding a TU, update its module, source/object and profile entry, then run the
validator and repository tests. A new region or overlay also needs its linker
anchor and load/execution entry. Build and verify through the normal contribution
workflow before accepting production changes.

Link order has one editable owner: the linker scripts. The inventory derives
section bodies, selectors, padding/alignment and recursive includes in that order;
do not add a second manually maintained object-order list to the JSON. The parser
supports this repository's fixed-object scripts; it is not a general linker-script
interpreter. Review new linker syntax before relying on its inventory.

The validator requires neither a ROM nor generated objects. It does not build,
rewrite the catalog, update progress or prove byte equivalence. Changes to the
validator fall under the existing tooling fingerprint/finalization policy.
Configuration and build-helper changes require normal finalization before the
public snapshot and candidate scores become fresh again.

## Source paths and candidate migration

The schema-1 `paths` record declares maintained input roots, the candidate root
and linker scripts by build target. A C unit also records `candidate_key`,
`candidate_directory` and `assembly_directory`; its stable key and TU ID survive
renames. `baseline_scope` preserves the historical reference-object scope.
Look up paths through `source_paths.py` / `build_paths.py`, never by replacing a
source prefix. Original function IDs include their ROM/overlay/common domain.
Original disassembly paths in original_functions.json are immutable evidence.

`tools/migrate_layout.py` separates read-only planning from journaled application.
Supply JSON with `moves` (old/new maintained files), optional `objects`
(old/new build object paths) and optional `directories` (old/new catalog-owned
candidate and assembly directories). Declare empty directories explicitly so
future candidates use the new owner location. Directory declarations do not
recursively move files: include every existing child in `moves`, preserving its
relative name. Store plans in an ignored evidence directory.

~~~bash
set -o pipefail
python3 -B tools/migrate_layout.py plan --mapping .progress/layout-mapping.json --output .progress/layout-plan.json 2>&1 | tee .progress/layout-plan.log
python3 -B tools/migrate_layout.py apply --plan .progress/layout-plan.json 2>&1 | tee .progress/layout-apply.log
~~~

Review candidate IDs, owners, hashes, context headers, companion requirements,
author metadata and the complete write set before application. Both operations
reject escapes, duplicate destinations and incomplete ownership. Application
recomputes the plan and checks content, mode and timestamp preimages under the
finalizer lock. Its transaction backs up changed inputs, preserves concurrent
edits on rollback and records recovery state under .progress/layout-*.

The planner handles literal repository path references. Review relative includes,
assembly directives and any external consumers before accepting a new layout.
Candidate bodies/context headers and original function evidence must retain their
contents. A relocated snapshot describes current ownership but deliberately keeps
its old fingerprint: run the normal finalizer to produce fresh ROM/all-overlay,
reference, candidate-score and report verification. Historical run records and
review approvals must never be rewritten to satisfy a freshness check.
