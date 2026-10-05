# Building Golden Sun

The supported setup documented here is Ubuntu on x86-64 Linux, including WSL2.
On Windows, keep the checkout inside the WSL Linux filesystem. Run the commands
below in Bash.

## System requirements

~~~sh
sudo apt update
sudo apt install build-essential binutils-arm-none-eabi python3 python3-venv git less
~~~

The build requires GNU Make 4.3 or newer and Python 3.10 or newer.
Make enforces serial scheduling, including when invoked with -j.

## Clone and install the compilers

~~~sh
git clone https://github.com/Coaltergeist/goldensun-decomp.git
git clone https://github.com/Coaltergeist/camelot-gcc.git
cd camelot-gcc
./build.sh gcc296
./install.sh ../goldensun-decomp gcc296
./build.sh agbcc
./install.sh ../goldensun-decomp agbcc
cd ../goldensun-decomp
~~~

Game C uses patched GCC 2.96. The stock m4a engine and most Flash library C use
`old_agbcc`. GCC 3.0 is not required. Installed compilers and headers live under
ignored `tools/gcc296/` and `tools/agbcc/`.

## Reference ROM and verification

Place your legally obtained USA ROM at `baserom.gba` in the game checkout.
Its SHA1 must be `5c4695205413df7db52b9a184815a07783999971`.

~~~sh
set -o pipefail
sha1sum baserom.gba | tee output.txt
make -j1 clean 2>&1 | tee output.txt && make -j1 compare 2>&1 | tee output.txt
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
set -o pipefail
python3 -B tools/build_actions.py clean --dry-run 2>&1 | tee output.txt
~~~

Old object targets such as `make src/math/vector.o` remain aliases to the current
object; they do not create files at the old paths. Use the real path printed by
`python3 -B tools/build_config.py query unit src/math/vector.c` for comparison tools.
Historical baselines retain their original paths; capture a new baseline after a
layout change and keep the old one as evidence.

## Optional function diff viewer

Install the tested asm-differ revision in its own Python environment:

~~~sh
git clone https://github.com/simonlindholm/asm-differ tools/asm-differ
git -C tools/asm-differ checkout 0dd09af8f8008f1f880327cf0aca3b26d2562ea2
python3 -m venv tools/asm-differ/.venv
tools/asm-differ/.venv/bin/python3 -m pip install ./tools/asm-differ
~~~

Before editing source, capture reference objects:

~~~sh
python3 tools/create_diff_baseline.py
~~~

This runs a fresh ROM/all-overlay comparison and copies the linked objects to
`expected/`. Do not edit or build concurrently. Use the baseline only after the
command succeeds; its `manifest.json` records verification and tool provenance.
Logs are stored under `.diff-baselines/verification-*/build.log`.

Existing destinations are preserved. To capture another baseline:

~~~sh
python3 tools/create_diff_baseline.py --output .diff-baselines/before-change
export GOLDENSUN_EXPECTED_DIR=.diff-baselines/before-change
~~~

### Compare a function

From the game checkout, replace `FUNCTION` with its current symbol:

~~~sh
bash ./run-diff.sh -mo FUNCTION --no-pager --format plain
~~~

`-m` rebuilds the current object serially; `-o` compares it with the saved
reference object. For interactive watching, use
`bash ./run-diff.sh -mwo FUNCTION` and press `q` to leave the pager.

For overlays, select the owning bank's map to disambiguate reused symbols:

~~~sh
GOLDENSUN_DIFF_MAP=build/usa/overlays/rom_XXXXXX/overlay.map bash ./run-diff.sh -mo FUNCTION --no-pager --format plain
~~~

Use `-f build/usa/asm/maps/MAP.o` to select a known object directly. For a custom section,
add `--section .text.SECTION` using the name shown by
`arm-none-eabi-objdump -t OBJECT`. The reference must contain the same relative
object path. See [CONTRIBUTING.md](CONTRIBUTING.md) for final verification.

## Troubleshooting

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
set -o pipefail
python3 -B -m unittest discover -s tools/tests -v 2>&1 | tee output.txt
~~~

With the normal prerequisites installed, opt into the dependency, output-isolation,
failure/recovery and clean regression. It builds and mutates a disposable copy;
logs remain under `.progress/build-integration-*.log`.

~~~bash
set -o pipefail
RUN_BUILD_INTEGRATION=1 python3 -B -m unittest discover -s tools/tests -p test_build_integration.py -v 2>&1 | tee output.txt
~~~
