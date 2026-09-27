# Progress accounting

Run serial `make clean && make compare`, then `python3 tools/progress.py`.
Use `--json report.json` for a per-function report. The report reads existing
linked artifacts; it does not run or replace the ROM/overlay gate.

`original_functions.json` fixes the denominator to known function starts in the
pre-decompilation snapshot identified by its full Git revision. Reproduce the
metadata with `python3 tools/original_functions.py --output /tmp/original.json`
and compare it with the checked-in file. The manifest stores original source
paths and SHA256 hashes for provenance, not disassembly contents.

Identities use the ROM load address, the overlay ROM identity plus execution
address, or a shared common-module identity plus offset. Shared implementations
count once; equally named functions in different overlays remain separate.
The compiler's `call_via` macro expansions are support code and excluded. ARM
functions are inventoried separately from the Thumb C denominator.

Current linked symbol addresses join those identities to current C definitions.
Renaming a function or moving its source does not change its identity. A new
inline helper, macro, or parked source does not add an original function. C that
is listed in `fakematch.txt` is reported separately from other C; the latter label
means unregistered, not a proof of original source semantics or absence of every
possible matching trick. Missing original addresses are errors, not silently
removed from the denominator.

The known baseline is 5,741 Thumb and 53 ARM functions. It is not a claim that
all possible boundaries have been discovered. A newly discovered original
function needs a reviewed manifest amendment with address and provenance;
adding arbitrary C definitions must never grow the denominator. The earlier
README's 2,914/5,749 came from source/assembly inventory and is superseded by this
address-based accounting. These counts therefore describe different populations.

The fakematch registry lists original-function callers of scaffolded macros and
inline helpers, as well as explicit non-asm concerns. Shared hardware intrinsics
are not inherently fakematches. A successful object match or ROM comparison alone
does not remove an entry: the source concern must also be resolved.

New fakematches are not accepted. Existing registered functions are active cleanup
debt, not a precedent for new contributions. Finding an overlooked concern in
existing code may require a registry correction; adding that record is accounting,
not permission to introduce a new fakematch. See [CONTRIBUTING.md](CONTRIBUTING.md).

## decomp.dev summary reports

See [DECOMP_DEV.md](DECOMP_DEV.md) for fixed original byte sizes and the
ROM-free publication workflow. Before committing relevant source changes, run
`python3 tools/decomp_progress.py snapshot`; it includes the fresh serial full
comparison and writes the metadata snapshot only on success.
`python3 tools/decomp_progress.py export` validates its freshness and generates
`report.json` for decomp.dev. This is a different format from this document's
legacy `tools/progress.py --json` per-function inventory.

The published byte numerator excludes registered fakematches; its denominator
includes both instruction modes. Shared code is counted once. Historical size
corrections and the corrected `_start` address are documented in the integration
guide. The snapshot uses preprocessed active C and linked ownership; the legacy
reporter uses lexical C definitions, so conditional or macro-generated definitions
can require closer comparison.
