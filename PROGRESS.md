# Progress accounting

Progress is measured against **5,794 known original functions**: 5,741 Thumb and
53 ARM. Each function keeps a fixed original identity and byte span, independent
of its current name or source file.

## Baseline and classification

`original_functions.json` records identities and source hashes from
[the original disassembly](https://github.com/gsret/goldensun/commit/0fa7b312199c10b96544e825be86cfc476493eb7).
`original_function_sizes.json` records the corresponding byte spans and reviewed
size adjustments.

- ROM functions use load addresses; overlay functions use the overlay identity
  and execution address; shared modules use a module identity and offset.
- Shared implementations count once. Compiler `call_via` support is excluded.
- Current linked addresses and input objects identify the owning TU. Only an
  active C definition in that TU counts as C.
- Assembly, parked or unlinked C, and helpers without original identities do
  not increase the matched count.
- Registered fakematches are reported separately and excluded from matched
  progress on decomp.dev.
- Missing or ambiguous identities are errors. A newly discovered original
  function requires a reviewed baseline amendment with address and provenance.

The baseline covers known functions, not every possible code boundary or every
ROM byte. Byte spans include their original literal pools and alignment;
overlapping entry-point tails count once. Unrelated data and gaps are excluded.
The generated size metadata records exceptions for missing sizes and overlaps.

## Local function counts

After a fresh serial `make -j1 clean && make -j1 compare` (Ninja by default):

~~~sh
python3 tools/progress.py
python3 tools/progress.py --json /tmp/goldensun-functions.json
~~~

This reads existing linked artifacts and reports Thumb function counts plus
counts across both instruction modes. It does not run build verification.

## decomp.dev

The [public report](https://decomp.dev/Coaltergeist/goldensun-decomp) measures
matched **original bytes** across both ARM and Thumb, so its percentage differs
from a Thumb function-count percentage. Its TU and function views partition the
same baseline. Fuzzy progress also includes measured similarity from parked C
candidates, weighted by those original byte spans.

See [DECOMP_DEV.md](DECOMP_DEV.md) for snapshot generation and treemap scoring.
That snapshot uses preprocessed active C; the local function-count tool reads
lexical definitions, so conditional and macro-generated functions can require
closer comparison.

Neither report proves source semantics or detects every fakematch.
[Contribution requirements](CONTRIBUTING.md) apply regardless of the reported
percentage.

Build verification records the actual backend in schema-3 progress snapshots and
reference manifests. Use `--backend make` with the finalizer or reference-capture
command to select the Make fallback. Old schema-2 receipts remain historical
evidence; changing the backend helpers requires fresh finalization. Ordinary
`make`/`tools/build.py` operations do not refresh progress or candidate scores.
