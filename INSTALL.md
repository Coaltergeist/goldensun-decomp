# Building Golden Sun

The verified setup is Ubuntu on x86-64 Linux, including WSL2. On Windows, keep
and build the checkout inside the WSL Linux filesystem. Other hosts have not
been validated by this guide; compiler host patches alone do not establish a
working macOS game build. Run these commands in Bash and use `set -o pipefail`
so logging does not hide a failed command.

## System requirements

```sh
set -o pipefail
sudo apt update 2>&1 | tee output.txt
sudo apt install build-essential binutils-arm-none-eabi python3 python3-venv git less 2>&1 | tee -a output.txt
```

The optional asm-differ setup below requires Python 3.9 or newer. The vendored
compiler builds use shipped generated parser/configure files; their normal build
does not require installing modern bison, flex or texinfo to regenerate them.

## Clone and install the compilers

```sh
git clone https://github.com/Coaltergeist/goldensun-decomp.git 2>&1 | tee -a output.txt
git clone https://github.com/Coaltergeist/camelot-gcc.git 2>&1 | tee -a output.txt
cd camelot-gcc
./build.sh gcc296 2>&1 | tee output.txt
./install.sh ../goldensun-decomp gcc296 2>&1 | tee -a output.txt
./build.sh agbcc 2>&1 | tee -a output.txt
./install.sh ../goldensun-decomp agbcc 2>&1 | tee -a output.txt
cd ../goldensun-decomp
```

GS1 uses patched GCC 2.96 for game C and `old_agbcc` for the stock m4a engine and
most Flash library C. GCC 3.0 is an optional research compiler, not needed for this
build. Installed binaries and headers live under ignored `tools/gcc296/` and
`tools/agbcc/`. Compiler revisions and manifests matter: retain their provenance
when reporting a mismatch. See the compiler repository's README for patch scope
and its independent regression corpus.

## Reference ROM and full verification

Place your legally obtained USA ROM at `baserom.gba` in the game checkout.
The required SHA1 is `5c4695205413df7db52b9a184815a07783999971`. The ROM supplies
extracted data as well as reference bytes and must never be committed.

```sh
sha1sum baserom.gba | tee output.txt
(make -j1 clean && make -j1 compare) 2>&1 | tee -a output.txt
```

Compare the first hash with the value above. The build must exit successfully,
print `goldensun.gba: OK`, and finish all 96 overlay comparisons without errors.
`make compare-rom` checks only the ROM; use `make compare` for complete validation.
Use serial game builds, including after pulling source or compiler changes.

## Install the optional function diff viewer

The following asm-differ revision was tested with this setup. Installing the local
package also installs its Python dependencies into the virtual environment used
by `run-diff.sh`.

```sh
git clone https://github.com/simonlindholm/asm-differ tools/asm-differ 2>&1 | tee output.txt
git -C tools/asm-differ checkout 0dd09af8f8008f1f880327cf0aca3b26d2562ea2 2>&1 | tee -a output.txt
python3 -m venv tools/asm-differ/.venv 2>&1 | tee -a output.txt
tools/asm-differ/.venv/bin/python3 -m pip install ./tools/asm-differ 2>&1 | tee -a output.txt
```

Before changing source, create the reference objects:

```sh
python3 tools/create_diff_baseline.py 2>&1 | tee output.txt
```

This independently runs a fresh serial ROM/all-overlay comparison and copies the
currently linked objects to `expected/`, preserving object paths. Its manifest
records source, tools, ROM, overlay and object hashes. Logs remain under ignored
`.diff-baselines/`. Do not edit or run another build during capture. A failed
verification does not publish a baseline, and an existing destination is refused.
Use a snapshot only after the command succeeds; `manifest.json` is written last
as its completion marker. An interrupted publication is retained for inspection.

To capture a later baseline without replacing earlier work, select a new name:

```sh
python3 tools/create_diff_baseline.py --output .diff-baselines/before-next-change 2>&1 | tee output.txt
export GOLDENSUN_EXPECTED_DIR=.diff-baselines/before-next-change
```

An existing historical cache is left intact. The generator captures objects in
the current link, not orphan per-function objects from earlier source layouts.
The snapshot reproduces verified machine output; it does not certify existing
fakematches as acceptable source. [New fakematches are not accepted](CONTRIBUTING.md).
Never refresh the reference just to make a candidate's diff disappear.

## Diff a function

From the game checkout, replacing `FUNCTION` with the actual symbol. Invoke the
wrapper with Bash because it is stored without an executable bit in Git:

```sh
bash ./run-diff.sh -mo FUNCTION --no-pager --format plain 2>&1 | tee output.txt
```

`-m` rebuilds the current object serially; `-o` compares objects. Object mode uses
`stage1.map` for ROM source ownership and a cached copy with GNU ld wrapped section
rows joined for asm-differ. Binary mode retains `goldensun.map`. For interactive
watching use `bash ./run-diff.sh -mwo FUNCTION 2>&1 | tee output.txt` and press `q` to
leave the pager. `-3` is a three-way **watch** mode, not a static output option.

For overlays, use the owning overlay's map so repeated names cannot select another
bank. For example, after substituting the bank and symbol:

```sh
GOLDENSUN_DIFF_MAP=overlays/rom_XXXXXX/overlay.map bash ./run-diff.sh -mo FUNCTION --no-pager --format plain 2>&1 | tee output.txt
```

You can bypass symbol-to-object map lookup with `-f asm/maps/MAP.o` for a known
owning object. For a function in a custom section, also pass `--section .text.SECTION` using
the actual section shown by `arm-none-eabi-objdump -t OBJECT | tee output.txt`.
The expected snapshot must contain that same relative object path.
The viewer helps diagnose differences; it is not a relocation/semantic proof or
an acceptance gate. Finish with the fresh full comparison in
[CONTRIBUTING.md](CONTRIBUTING.md).

## Incremental builds and troubleshooting

C headers, assembler include/incbin inputs, recursive linker scripts, and compiler,
binutils and flag fingerprints invalidate dependent outputs. Fingerprints live in
ignored `.build/`. Generated assembly does not take precedence over its C source.
After a toolchain change, rebuild and reinstall through `camelot-gcc` before running
the fresh game comparison. Preserve logs when reporting failures.

If installed tools lose executable permissions while being copied through Windows,
rerun the compiler install script inside WSL; it restores executable bits. A missing
asm-differ environment is reported by the wrapper with a pointer to this guide.

The public workflow regression checks can be run with
`python3 -m unittest discover -s tools/tests -v 2>&1 | tee output.txt`.
