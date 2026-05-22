# Building/Installing Golden Sun

This doc assumes you are somewhat familiar with using a terminal/command line.

## Before building

This project is designed to be built on Linux. On Windows, install WSL (Ubuntu) and follow the Linux instructions inside the WSL terminal.

### Install system requirements

#### On Linux (including WSL)

```bash
sudo apt update
sudo apt install build-essential binutils-arm-none-eabi python3 git
```

#### On MacOS

```bash
brew install arm-none-eabi-binutils python3 git
```

## Building

### 1. Clone the repo

```bash
git clone https://github.com/Coaltergeist/goldensun-decomp.git
cd goldensun-decomp
```

### 2. Install the build toolchain

The build uses [agbcc](https://github.com/pret/agbcc) (pret's GCC 2.95 ARM port). Clone it as a sibling directory and install into this repo:

```bash
cd ..
git clone https://github.com/pret/agbcc
cd agbcc
./build.sh
./install.sh ../goldensun-decomp
cd ../goldensun-decomp
```

This drops the toolchain binaries into `tools/agbcc/` inside the repo (gitignored, never committed).

### 3. Provide a reference ROM

The build needs your legally-obtained copy of the original ROM placed at the repo root as `baserom.gba`. It is used both as a build input (the data-extraction pipeline unpacks strings and overlay tables from it) and as the verification target for `make compare-rom`.

```bash
cp /path/to/your/golden_sun.gba ./baserom.gba
```

Target SHA1: `5c4695205413df7db52b9a184815a07783999971` (USA).

`baserom.gba` is gitignored and never committed.

### 4. Build the ROM

```bash
make
```

To speed up the build on multi-core machines, pass `-j<N>` where `N` is the number of cores. For example: `make -j8`.

### 5. Verify byte-identical match

```bash
make compare-rom
```

If the build matches the original ROM you'll see:

```
goldensun.gba: OK
```

If you modify the source code in a way that changes the compiled output, this will report `FAILED`.

## Diffing a function against the original

Install [asm-differ](https://github.com/simonlindholm/asm-differ) into the repo (gitignored, won't be committed):

```bash
git clone https://github.com/simonlindholm/asm-differ tools/asm-differ
```

Then use the wrapper:

```bash
./run-diff.sh -o <Func_XXXX>          # object-file mode, recommended
./run-diff.sh -o -w <Func_XXXX>       # watch mode: re-diff on file changes
./run-diff.sh -o -3 <Func_XXXX>       # static 3-column output (pipe-friendly)
```

Press `q` to exit the pager.

## Troubleshooting

### `agbcc` exec-bit lost on Windows checkout

If `make` fails with `Permission denied` on `tools/agbcc/bin/agbcc` or similar, restore the executable bit:

```bash
chmod +x tools/agbcc/bin/*
```

This commonly happens when checking out the repo from a Windows filesystem.

### Build fails after a `git pull`

Pull may have introduced new `.c` files alongside removed `.s` files. Run `make clean` then `make` to force a fresh build:

```bash
make clean && make
```
