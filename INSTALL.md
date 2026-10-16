# Building Golden Sun

The supported setup is Ubuntu on x86-64 Linux, including WSL2. On Windows, keep
the checkout inside the WSL Linux filesystem, in a path without spaces.

## System requirements

~~~bash
sudo apt update
sudo apt install build-essential binutils-arm-none-eabi python3 python3-venv git less
~~~

The build uses GNU Make, Bash and Python 3. The Makefile holds all compiler
settings and build recipes.

## Clone and install the compilers

~~~bash
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
`old_agbcc`. The compilers install into the ignored `tools/gcc296/` and
`tools/agbcc/` directories. See camelot-gcc's instructions if its own build
prerequisites are missing. You can instead copy a working installation into
those directories, keeping its headers, support files and executable permissions.

## Reference ROM and verification

Place your legally obtained USA ROM at `baserom.gba` in the game checkout.
Its SHA1 must be `5c4695205413df7db52b9a184815a07783999971`.

~~~bash
sha1sum baserom.gba
make clean && make compare
~~~

Verification succeeds when it prints `build/usa/goldensun.gba: OK` and
`All 96 overlays: OK`.

## Build output

`build/` holds only generated files, and `make clean` deletes it. ROMs,
extracted assets and build output must not be committed.

- `build/usa/goldensun.gba`: the built ROM.
- `build/usa/obj/`: target objects, generated assembly and dependency files,
  mirroring the source paths.
- `build/usa/overlays/` and `build/usa/reference/overlays/`: built overlays and
  the originals extracted from the ROM.
- `build/host/`: host utilities.

| Target | Behavior |
| --- | --- |
| `make`, `make compare` | Build and verify the ROM and all 96 overlays |
| `make compare-rom`, `make compare-overlays` | Partial checks; neither alone is full verification |
| `make build/usa/obj/PATH.o` | Build one object from `PATH.c` or `PATH.s` |
| `make clean` | Delete `build/` |
| `make print-compile-contract SOURCE=...` | Show the compiler and flags used for a C file |

The linker scripts under `linker/` name every object, so they define what gets
built. Most C uses the default GCC 2.96 flags; the Makefile lists the per-file
exceptions (Gaia, common2, and the m4a/Flash libraries on `old_agbcc`).

## Optional function diff viewer

Install the tested asm-differ revision in its own Python environment:

~~~bash
git clone https://github.com/simonlindholm/asm-differ tools/asm-differ
git -C tools/asm-differ checkout 0dd09af8f8008f1f880327cf0aca3b26d2562ea2
python3 -m venv tools/asm-differ/.venv
tools/asm-differ/.venv/bin/python3 -m pip install ./tools/asm-differ
~~~

Before editing source, capture reference objects:

~~~bash
python3 tools/create_diff_baseline.py
~~~

This runs `make clean && make compare` and, if it succeeds, copies the linked
objects to `expected/`. It never overwrites an existing baseline. To capture
another one under a new name:

~~~bash
python3 tools/create_diff_baseline.py --output .diff-baselines/before-change
export GOLDENSUN_EXPECTED_DIR=.diff-baselines/before-change
~~~

### Compare a function

From the game checkout, replace `FUNCTION` with its current symbol:

~~~bash
bash ./run-diff.sh -mo FUNCTION
~~~

`-m` rebuilds the current object; `-o` compares it with the saved reference
object. Add `-w` to watch for changes; press `q` to leave the pager.

Overlay symbols can repeat across banks, so select the owning bank's map:

~~~bash
GOLDENSUN_DIFF_MAP=build/usa/overlays/rom_XXXXXX/overlay.map bash ./run-diff.sh -mo FUNCTION
~~~

Use `-f build/usa/obj/src/maps/MAP.o` to select an object directly. For a custom
section, add `--section .text.SECTION` using the name shown by
`arm-none-eabi-objdump -t OBJECT`.

## Troubleshooting

| Symptom | Check |
| --- | --- |
| Compiler or header missing, or permission denied | Install both compilers inside WSL; keep executable permissions and complete include directories. |
| ROM or overlay mismatch | Check the ROM hash, the file's compiler flags and the compiler build; run `make clean && make compare`. Never replace references to hide a mismatch. |
| Baseline destination exists | Choose a new name; existing baselines are never overwritten. |

After a compiler change, reinstall it through camelot-gcc and run the full
comparison. If copying through Windows removed executable permissions, rerun the
compiler install script inside WSL. When reporting a mismatch, include the build
log and the compiler revision.
