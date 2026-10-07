# Building Golden Sun

The supported setup documented here is Ubuntu on x86-64 Linux, including WSL2.
On Windows, keep the checkout inside the WSL Linux filesystem. Run the commands
below in Bash. Use a checkout path without spaces. This public repository needs
no private workspace, private scripts or private history to build or run its tests.

## System requirements

~~~bash
set -euo pipefail
sudo apt update 2>&1 | tee output-apt-update.txt
sudo apt install build-essential binutils-arm-none-eabi python3 python3-venv git less 2>&1 | tee output-apt-install.txt
~~~

The build requires GNU Make 4.3+, Bash and Python 3.10+. Make enforces serial
execution, including when invoked with a larger job count. Compiler flags live
in config/toolchain.mk; the main Makefile contains the maintained build recipes.

## Clone and install the compilers

~~~bash
set -euo pipefail
git clone https://github.com/Coaltergeist/goldensun-decomp.git 2>&1 | tee output-clone-game.txt
git clone https://github.com/Coaltergeist/camelot-gcc.git 2>&1 | tee output-clone-compiler.txt
cd camelot-gcc
./build.sh gcc296 2>&1 | tee output-build-gcc296.txt
./install.sh ../goldensun-decomp gcc296 2>&1 | tee output-install-gcc296.txt
./build.sh agbcc 2>&1 | tee output-build-agbcc.txt
./install.sh ../goldensun-decomp agbcc 2>&1 | tee output-install-agbcc.txt
cd ../goldensun-decomp
~~~

Game C uses patched GCC 2.96. The stock m4a engine and most Flash library C use
`old_agbcc`. GCC 3.0 is not required. Installed compilers and headers live under
ignored `tools/gcc296/` and `tools/agbcc/`. Keep the compiler revision and installed
build manifests with your local verification record. Consult camelot-gcc's build
instructions if its own host prerequisites are missing.

An existing verified installation can instead be copied into those same two
locations, including all headers, support files and manifests. Use independent
copies that retain executable permissions; do not borrow another checkout's
objects, generated assets, baselines or output directories. Verify the new checkout
from empty build output before trusting it. The reference ROM is supplied separately.

## Reference ROM and verification

Place your legally obtained USA ROM at `baserom.gba` in the game checkout.
Its SHA1 must be `5c4695205413df7db52b9a184815a07783999971`.

~~~bash
set -euo pipefail
sha1sum baserom.gba 2>&1 | tee output-rom-hash.txt
make -j1 clean 2>&1 | tee output-clean.txt
make -j1 compare 2>&1 | tee output-verify.txt
~~~

Check the first hash against the value above. Verification must finish
successfully, including `build/usa/goldensun.gba: OK` and all 96 overlay comparisons.
Use serial builds. `make compare-rom` checks only the ROM.

The ROM is `build/usa/goldensun.gba`. Target objects, generated assembly, dependency
files, overlays and maps are under `build/usa/`; host utilities are under
`build/host/`. Extracted overlay originals are under `build/usa/reference/`.
ROMs, extracted assets, and generated build outputs must not be committed.

`make clean` removes only declared production/host outputs. It preserves candidate
builds, installed compilers, `expected/`, `.diff-baselines/`, `.progress/` and unknown
files. Preview its exact file list with:

~~~bash
set -euo pipefail
make clean-dry-run 2>&1 | tee output.txt
~~~

Old object targets such as `make src/math/vector.o` remain aliases to the current
object; they do not create files at the old paths. Use the real path printed by
`python3 -B tools/build_config.py query unit src/core/runtime/math/vector.c` for comparison tools.
Historical baselines retain their original paths; capture a new baseline after a
layout change and keep the old one as evidence.

## Build operations

Run from the checkout root:

~~~bash
set -euo pipefail
make build 2>&1 | tee output-build.txt
make verify 2>&1 | tee output-verify.txt
make build/usa/obj/src/core/runtime/math/vector.o 2>&1 | tee output-object.txt
make -n --debug=b build 2>&1 | tee output-plan.txt
python3 -B tools/build_config.py query commands src/core/runtime/math/vector.c 2>&1 | tee output-query.txt
~~~

The default operation compares the ROM and all 96 overlays. Ordinary builds
never rescore candidates or refresh progress metadata. Run clean separately
before a clean build. Do not operate on one checkout from two build processes.

Make reads catalog lists and discovered prerequisites from build/usa/inputs.mk.
That file is regenerated only when its contents change; all compilation,
linking and packing recipes remain in the maintained Makefile. A dry run may
refresh this dependency inventory but does not compile or link.

| Interface | Behavior |
| --- | --- |
| make, make compare, make verify | Serial ROM and all-overlay verification |
| make build | Build the ROM without comparing it |
| make compare-rom, make compare-overlays | Partial checks; neither alone is full acceptance |
| make clean, make clean-dry-run | Remove declared output, or preview the exact file list |
| make src/math/vector.o | Legacy alias to the catalog-owned object |
| make print-compile-contract SOURCE=... | Read-only six-line target-C compiler contract |
| make print-build-settings | Read-only resolved settings as JSON |

Catalog legacy_object and host legacy_binary entries identify retained aliases.
New tooling should use current catalog paths or the read-only query APIs.

Compiler overrides retain Make semantics, including
make GCC296_CFLAGS='...' TARGET. Inspect the result with
make print-compile-contract SOURCE=src/core/runtime/math/vector.c.
[Build configuration](config/README.md) explains the settings and exceptions.

## Optional function diff viewer

Install the tested asm-differ revision in its own Python environment:

~~~bash
set -euo pipefail
git clone https://github.com/simonlindholm/asm-differ tools/asm-differ 2>&1 | tee output-clone-differ.txt
git -C tools/asm-differ checkout 0dd09af8f8008f1f880327cf0aca3b26d2562ea2 2>&1 | tee output-differ-revision.txt
python3 -m venv tools/asm-differ/.venv 2>&1 | tee output-differ-venv.txt
tools/asm-differ/.venv/bin/python3 -m pip install ./tools/asm-differ 2>&1 | tee output-differ-install.txt
~~~

Before editing source, capture reference objects:

~~~bash
set -euo pipefail
python3 tools/create_diff_baseline.py 2>&1 | tee output-baseline.txt
~~~

This runs a fresh ROM/all-overlay comparison and copies the linked objects to
`expected/`. Do not edit or build concurrently. Use the baseline only after the
command succeeds; its schema-3 manifest.json records a schema-2 direct-Make
gate: serial clean/verify commands, ROM/all-overlay scope and Make's version/hash.
Historical references retain their original receipts and are never rewritten.
Logs are stored under `.diff-baselines/verification-*/build.log`.

Existing destinations are preserved. To capture another baseline:

~~~bash
set -euo pipefail
python3 tools/create_diff_baseline.py --output .diff-baselines/before-change 2>&1 | tee output-baseline.txt
export GOLDENSUN_EXPECTED_DIR=.diff-baselines/before-change
~~~

### Compare a function

From the game checkout, replace `FUNCTION` with its current symbol:

~~~bash
set -euo pipefail
bash ./run-diff.sh -mo FUNCTION --no-pager --format plain 2>&1 | tee output-diff.txt
~~~

`-m` rebuilds the current object serially; `-o` compares it with the saved
reference object. For interactive watching, use
`bash ./run-diff.sh -mwo FUNCTION` and press `q` to leave the pager.

For overlays, select the owning bank's map to disambiguate reused symbols:

~~~bash
set -euo pipefail
GOLDENSUN_DIFF_MAP=build/usa/overlays/rom_XXXXXX/overlay.map bash ./run-diff.sh -mo FUNCTION --no-pager --format plain 2>&1 | tee output-diff.txt
~~~

Use `-f build/usa/obj/src/maps/MAP.o` to select a known object directly. For a custom section,
add `--section .text.SECTION` using the name shown by
`arm-none-eabi-objdump -t OBJECT`. The reference must contain the same relative
object path. See [CONTRIBUTING.md](CONTRIBUTING.md) for final verification.

## Troubleshooting

| Symptom | Check or recovery |
| --- | --- |
| Compiler/header missing or permission denied | Install both compiler families inside WSL; retain executable modes and complete include directories. |
| ROM or overlay mismatch | Check the USA ROM hash, selected profile and compiler provenance; run a serial clean comparison. Do not replace references to conceal a mismatch. |
| Unknown TU or legacy path in a tool | Resolve the stable TU/current path through the catalog; an alias is a Make target, not a file to open. |
| Stale snapshot or scores | Use [the operation table](DECOMP_DEV.md#choosing-an-operation); ordinary builds do not refresh metadata. |
| Candidate declaration/companion conflict | Repair and review the draft in its current owning TU, then rerun scoring/finalization. Preserve the old evidence. |
| Baseline destination exists | Choose a new name; captures preserve existing reference directories. |
| Interrupted finalization | Inspect `.progress/finalize-*/` and any reported recovery conflicts before retrying. Do not overwrite concurrent edits with old backups. |
| Clean refuses a path | Inspect the reported tracked file or symlink. Do not bypass the guard with recursive deletion. |

After a compiler change, rebuild and reinstall it through camelot-gcc, then run
the full game comparison. If copying tools through Windows removes executable
permissions, rerun the compiler install script inside WSL.

Incremental builds track headers, assembly inputs, linker scripts, and compiler
settings. Include build logs and compiler revisions or manifests when reporting
a mismatch. If logging through `tee`, enable `set -o pipefail` so the pipeline
preserves failed exit statuses.

## Build regression tests

Source-only tests do not require the ROM or installed game compilers:

~~~bash
set -euo pipefail
python3 -B -m unittest discover -s tools/tests -v 2>&1 | tee output.txt
~~~

With the normal prerequisites installed, opt into the dependency, output-isolation,
failure/recovery and clean regression. It builds and mutates a disposable copy;
logs remain under .progress/build-integration-*.log. The test exercises direct
Make, including serial enforcement when -j is requested. No-op verification
preserves production outputs, dependency inventory and tool-stamp mtimes.

~~~bash
set -euo pipefail
RUN_BUILD_INTEGRATION=1 python3 -B -m unittest discover -s tools/tests -p test_build_integration.py -v 2>&1 | tee output.txt
~~~
