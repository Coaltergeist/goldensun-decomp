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

The catalog is an inventory, not a replacement build graph. Make and the maintained
linker scripts still control the build. No source paths have moved.

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

The compiler profile names describe the current Make rules: gcc296,
gcc296-gaia, gcc296-common2, old-agbcc-m4a, old-agbcc-flash and arm-assembly.
The validator's adapter checks those current rules' source assignments. Exact
commands remain in Make and its print-compile-contract query until the dedicated
compiler-profile migration. Host utilities are outside the target-object catalog.

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
The new config directory must join input fingerprints before build/acceptance
tools start consuming its settings in the later profile/path migration.
