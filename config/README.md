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
Make and the maintained linker scripts still control the build graph and link
order. No source paths have moved.

## Schema 1

- `modules.json` declares 19 main-ROM regions (including the header and final asset
  region), 96 overlays, three shared overlay modules and shared `call_via` support.
- Each module has a stable ID, its load/execution information and references to
  its linker sections. A null address means there is no single placement for that
  shared module. Overlay ROM offsets locate compressed storage; the declared
  overlay address is the load region's start, not every shared object's address.
- Each unit has a stable ID, current source/object paths, an owner, a compiler
  profile and a maintained/generated classification. Unit IDs retain their initial
  spelling after future path changes; original function IDs remain separate.
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
python3 -B tools/build_config.py query unit src/math/vector.c 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query unit asm/maps/common/common2.o 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query profile tu:src/battle_anim/moves/gaia 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query commands src/lib/m4a/m4a.c 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query module rom_1b70 2>&1 | tee output-query.txt
python3 -B tools/build_config.py query overlay rom_779188 2>&1 | tee output-query.txt
~~~

Unit/profile/command queries accept a current source, object, or stable TU ID.
Module/overlay queries return their object and artifact paths. Command output is
ordered argument arrays plus structured postprocessing, not a shell script.
Unknown or reference-only sources fail instead of inheriting a default profile.

`make -s --no-print-directory print-compile-contract SOURCE=src/math/vector.c`
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
command construction. build_compile.py runs production pipelines. Make still
owns scheduling, recursive linker dependencies and output locations. Per-profile
stamps hash effective arguments, selected driver/frontend/specs/assembler tools,
implementation and TU membership. No-op checks preserve stamp mtimes. A profile
change invalidates its consumers; moving a TU between profiles invalidates both
groups. C/assembler dependency files continue to track individual inputs.

Source/baseline fingerprints include configuration and executable build helpers.
Candidate caches also include the resolved TU profile and postprocessing. Compiler
provenance records the effective settings and selected tools, including overrides.
Do not edit a historical fingerprint to make an old reference appear current.

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
