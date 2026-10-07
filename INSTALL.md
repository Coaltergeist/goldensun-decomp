# Building Golden Sun

The supported setup documented here is Ubuntu on x86-64 Linux, including WSL2.
On Windows, keep the checkout inside the WSL Linux filesystem. Run the commands
below in Bash. Use a checkout path without spaces. This public repository needs
no private workspace, private scripts or private history to build or run its tests.

## System requirements

~~~bash
set -euo pipefail
sudo apt update 2>&1 | tee output-apt-update.txt
sudo apt install build-essential binutils-arm-none-eabi ninja-build python3 python3-venv git less 2>&1 | tee output-apt-install.txt
~~~

The build requires Ninja 1.10+, GNU Make 4.3+ and Python 3.10+.
The supported front ends enforce serial scheduling; Ninja edges also share a
pool of depth one. `make` uses Ninja by default. `make BUILD_BACKEND=make` selects
the retained Make scheduler. Both use the same graph, profiles and output paths.
Set NINJA to an executable path when Ninja is not on PATH.

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
python3 -B tools/build_actions.py clean --dry-run 2>&1 | tee output.txt
~~~

Old object targets such as `make src/math/vector.o` remain aliases to the current
object; they do not create files at the old paths. Use the real path printed by
`python3 -B tools/build_config.py query unit src/core/runtime/math/vector.c` for comparison tools.
Historical baselines retain their original paths; capture a new baseline after a
layout change and keep the old one as evidence.

## Build operations

Run from the checkout root. The Python facade regenerates configuration before
scheduling work; use it or Make for builds so changed settings and newly generated
input dependencies are discovered. The generated Ninja file is for diagnostics,
not a separate configuration entry point. No Rust toolchain is required.

~~~bash
set -euo pipefail
python3 -B tools/build.py configure 2>&1 | tee output.txt
python3 -B tools/build.py build 2>&1 | tee output.txt
python3 -B tools/build.py verify 2>&1 | tee output.txt
python3 -B tools/build.py build/usa/obj/src/core/runtime/math/vector.o 2>&1 | tee output.txt
python3 -B tools/build.py --dry-run --explain build 2>&1 | tee output.txt
python3 -B tools/build.py commands build/usa/obj/src/core/runtime/math/vector.o 2>&1 | tee output.txt
python3 -B tools/build_config.py query commands src/core/runtime/math/vector.c 2>&1 | tee output.txt
~~~

`build` produces the ROM; `verify` (also `compare`, the default) checks the ROM and
all 96 overlays. `commands` prints scheduled wrapper commands; the read-only
profile query prints the underlying compiler argument arrays. `--verbose` and
`--explain` show scheduling details. Ordinary builds never rescore candidates or
refresh progress metadata. Run clean as a separate operation before a clean build.

For fallback scheduling, use `python3 -B tools/build.py --backend make verify` or
`make BUILD_BACKEND=make compare`. Do not run both backends concurrently in one
checkout. They share output paths; comparisons between backends need independent
clean copies. Switching to the Make fallback does not require Ninja.

Compiler flag overrides retain the documented Make interface, including
`make GCC296_CFLAGS='...' TARGET`; the resolved values reach either backend.
Use `make print-compile-contract SOURCE=src/core/runtime/math/vector.c` to inspect the six-line
compatibility contract. [Build configuration](config/README.md) lists overrides.

## Make compatibility

| Interface | Supported behavior |
| --- | --- |
| `make`, `make compare`, `make verify` | Serial ROM and all-overlay verification, using Ninja by default |
| `make build` | Build the ROM without comparing it |
| `make compare-rom`, `make compare-overlays` | Explicit partial checks; neither alone is full acceptance |
| `make clean` | Remove declared production/host output; preserve the state listed above |
| `make src/math/vector.o` | Legacy object alias to the catalog-owned current object |
| `make BUILD_BACKEND=make compare` | Make fallback using the shared graph |
| `make print-compile-contract SOURCE=...` | Read-only six-line target-C compiler contract |
| `make print-build-settings` | Read-only resolved settings as JSON |

Catalog `legacy_object` and host `legacy_binary` entries identify retained aliases.
New tooling should use current catalog paths or the read-only query APIs. Both
backends are serial; avoid running clean and build together or operating on the
same checkout from two processes.

The facade, legacy aliases and Make scheduler remain supported. Retiring any of
them requires a separate reviewed change: migrate its documented/external callers,
retain a supported per-TU compile query, update tests and contributor instructions,
and repeat clean-build/object/ROM/all-overlay acceptance. There is no automatic
retirement date. The shared graph keeps scheduler behavior testable without adding
a Rust dependency.

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
command succeeds; its schema-3 `manifest.json` records the actual backend,
serial clean/verify commands, ROM/all-overlay scope and build-engine fingerprint.
Use `--backend make` to capture a Make reference. Historical schema-2 references
retain their original Make receipts and are never rewritten.
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
| Ninja missing | Install `ninja-build`, set `NINJA` to its executable, or explicitly select the Make fallback. |
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
logs remain under `.progress/build-integration-*.log`. It tests the default Ninja
backend. Set `BUILD_BACKEND=make` to exercise the fallback with the same matrix.
Ninja log/dependency database bookkeeping may change during a no-op verification;
compiled/generated products, configured settings and content stamps must not.

~~~bash
set -euo pipefail
RUN_BUILD_INTEGRATION=1 python3 -B -m unittest discover -s tools/tests -p test_build_integration.py -v 2>&1 | tee output.txt
~~~
