# decomp.dev progress reporting

The first integration publishes an aggregate USA code report. It does not require
objdiff reference objects, a ROM in GitHub Actions, or the private GSDecomp
workspace. The public report has no per-unit, fuzzy-match, asset, or completion
measurements.

## Refresh after source changes

From the game checkout, with the reference ROM and installed production compilers
described in [INSTALL.md](INSTALL.md):

~~~sh
python3 tools/decomp_progress.py snapshot
python3 tools/decomp_progress.py export
~~~

The first command always runs fresh serial `make -j1 clean` and
`make -j1 compare`, then independently checks the ROM SHA1 and all 96 overlay
outputs. It preprocesses production C with the Makefile's per-file settings
(including the GCC 2.96/old_agbcc, Gaia and common2 exceptions), joins active
definitions to linked original addresses, and replaces `progress_snapshot.json`
only after verification succeeds. A failed operation preserves the previous
snapshot, which may now be stale. Logs stay under ignored
`.progress/verification-*/build.log`; don't edit or build concurrently.

Review and commit the updated snapshot together with the source changes.
Staging is not required to generate it: relevant nonignored untracked files and
referenced raw assembly are included in its fingerprint. Remember to force-add
new raw assembly when required by the existing ignore rules.

The exporter checks freshness and writes ignored `report.json`. For a check
without writing a report:

~~~sh
python3 tools/decomp_progress.py check
~~~

A source/header/assembly/linker/build/accounting change requires a new snapshot,
even if the number of matching functions stays the same. Documentation, workflow
and test-only edits do not require a snapshot refresh. Regenerate after a
toolchain update as well; the snapshot records the actual installed toolchain,
not a promise that every contributor has the same installation.

## What the percentage means

The denominator is the sum of fixed original byte spans for the 5,794 known
original functions: 5,741 Thumb and 53 ARM. This is a known-function census, not
a claim that every possible boundary or every executable byte has been found.

The numerator contains the original spans whose current linked implementation
has an active C definition and is not registered in `fakematch.txt`.
Assembly-backed functions, parked/unlinked C, and registered fakematches remain
outside the numerator. Registry absence does not prove source semantics; source
review and the project's no-new-fakematches policy remain necessary.

- Different overlays have separate identities despite reused names/addresses.
- Shared common modules count once, and compiler `call_via` support is excluded.
- ARM assembly stays in the denominator.
- Literal pools and alignment within the historical function span count with
  that span; unrelated data/assets and gaps do not.
- Renaming/moving a function and adding a helper do not create original functions.
- Missing linked identities or ambiguous C ownership stop snapshot generation.

The code-byte percentage differs from the README's Thumb function-count
percentage. The report also includes original-function counts across both modes.
No partial-match score is inferred from either count.

## Original byte-size provenance

`original_functions.json` fixes identity, mode, source and source hashes.
`original_function_sizes.json` adds the original byte spans and records their
provenance. The reference is
[gsret/goldensun at 0fa7b312199c10b96544e825be86cfc476493eb7](https://github.com/gsret/goldensun/commit/0fa7b312199c10b96544e825be86cfc476493eb7).

The baseline generator reconstructs that commit in a new ignored directory,
checks every recorded source hash, builds and verifies its ROM and all 96
overlays, then reads original ELF symbol sizes. It never checks out or modifies
the live source tree. Only metadata is committed; no reference ROM, extracted
data, objects, or historical source copies are added.

A baseline already ships with the repository. Regenerate only when reviewing
its provenance or an intentional census amendment; the historical Git revision
must be available locally:

~~~sh
python3 tools/decomp_progress.py baseline --output .progress/rebuilt-sizes.json
cmp original_function_sizes.json .progress/rebuilt-sizes.json
~~~

The default baseline destination is refused if it already exists. The assembler
version is recorded, so compare metadata intentionally when reproducing with
another tool version.

Reviewed historical corrections are explicit in the generator and baseline:

| Identity | Accounting decision |
| --- | --- |
| `_start` | Corrected the census address from `0x080000C0` to `0x080003C0`: the ELF and source put startup after the export table. The original function count is unchanged. |
| `overlay:rom_77dd1c:0200c560` | 12 bytes. Its historical end directive names the next function by mistake. |
| `rom:080a23f4` | 20 bytes. The historical source omits its end directive; the next function begins immediately after its return. |
| `rom:080008d4` / `rom:080008d8` | Count the first entry's 4-byte prefix separately, assigning their shared tail to the later entry. |
| `rom:08000b60` / `rom:08000b6c` | Likewise count a 12-byte prefix and assign the shared tail to the later entry. |

These are reporting corrections, not production assembly or symbol-size tricks.
Unexpected missing sizes or overlapping ranges are errors. The initial
accounted total is **1,289,450 bytes**.

## Snapshot trust and CI

`progress_snapshot.json` contains per-identity classifications, the source-input
fingerprint, baseline hash, verification metadata, and compiler/tool hashes.
The fingerprint includes source additions/deletions and production/accounting
inputs; it is independent of the Git index's staging state and commit SHA.
That avoids a self-referential snapshot commit. The generated snapshot and
report are excluded from their own input fingerprint.

CI needs the source checkout and metadata, not the ROM, installed game compiler,
or local build caches. It validates the fingerprint, census coverage, policy and
verification record before exporting. A stale snapshot fails the job and is not
uploaded. Tests use the runner's host GCC for a tiny preprocessing fixture.

This is **maintainer-generated accounting backed by a local verified build**.
CI checks its freshness and consistency; it does not independently rerun the
ROM comparison or authenticate a hand-edited snapshot. Review generated metadata
alongside the source. The local command verifies installed GCC binaries against
their manifest and records old_agbcc binaries/headers, which have no equivalent
manifest. Existing dirty compiler provenance is recorded rather than silently
represented as a clean compiler revision.

The workflow runs checks on PRs and pushes to `main`. Successful pushes to
`main` upload `report.json` as **`USA_report`**. Manual runs validate/export
without publishing, as decomp.dev discovers push-triggered runs. Existing
repository checks remain separate.

The report uses objdiff's version-2 JSON representation, with uint64 byte counts
encoded as strings. The custom exporter follows
[FE7J's summary-report approach](https://github.com/MokhaLeee/FireEmblem7J/blob/93c2ca706c749c8abe8b0672db9dce1c42485fab/.github/calcrom/gen-report.py).
See the [report schema](https://github.com/encounter/objdiff/blob/main/objdiff-core/protos/report.proto)
and [integration guide](https://decomp.wiki/en/tools/decomp-dev).

## Register after publishing the first report

After the maintainer commits/pushes the integration and the workflow succeeds:

1. Sign in through GitHub at [decomp.dev/manage/new](https://decomp.dev/manage/new).
2. Select `Coaltergeist/goldensun-decomp` using an account with repository admin access.
3. Enter **Golden Sun**, select **Game Boy Advance**, and use report version **USA**.
4. Confirm the displayed percentage and commit correspond to the published report.
5. Optionally install the [decomp.dev GitHub app](https://github.com/apps/decomp-dev)
   for faster updates and PR comments, then add a badge using the site's API browser.

Registration and the badge are intentionally pending the first published report.
Detailed unit views, subsystem categories and objdiff comparisons can be added
later without changing the original-identity accounting.
