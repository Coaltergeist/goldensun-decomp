# decomp.dev reports

[Golden Sun on decomp.dev](https://decomp.dev/Coaltergeist/goldensun-decomp)
shows original-byte progress, a translation-unit treemap, and function details.
See [PROGRESS.md](PROGRESS.md) for the baseline and counting rules.

## Reading the treemap

Each rectangle represents a current production TU. Its area is the total
original byte size of its known functions; shared modules count once. Source
links and function details use the current TU and symbol names.

Functions count as **100%** when implemented in C and absent from the fakematch
registry, and **0%** otherwise. A TU's score is the byte-weighted average of its
functions. These scores populate the report's `fuzzy_match_percent` field for
display; partially matching instructions receive no credit.

Green indicates that all known function bytes in the TU qualify under this
policy. Assets, unidentified code, and separate "fully linked" completion
measurements are outside this report's scope.

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
and test-only changes do not require regeneration.

Check freshness without a ROM or game compiler, or export the report locally:

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

CI checks snapshot freshness and consistency without the ROM or game compiler.
It does not regenerate the snapshot, rerun the game comparison, or replace
source review.
