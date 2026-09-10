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
