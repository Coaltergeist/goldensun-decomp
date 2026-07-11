<h1 align="center">Golden Sun</h1>

> :warning: **This project is in early stages and under active development.**
>
> _This project was created as a learning exercise and a personal challenge for exploring matching decompilation, reverse-engineering, and the GBA toolchain. Contributions and corrections from anyone more experienced are very welcome, but not expected._

This is a work-in-progress matching decompilation of Golden Sun (GBA, 2001).

It builds the following ROM:

* **goldensun.gba** `sha1: 5c4695205413df7db52b9a184815a07783999971` (USA)

## Current state

- :white_check_mark: Build verifies byte-identical at HEAD (`make compare-rom` → `goldensun.gba: OK`)
- **2,281 / 5,745 Thumb functions matched as C source (39.7%):** the 51 ARM-mode functions are handwritten assembly, not C-decompilation targets
- All assembly extracted, disassembled, and labeled; inherited from [gsret/goldensun](https://github.com/gsret/goldensun)
- Main-ROM and overlay banks structurally separated (97 overlay banks, 16 main-ROM banks)
- Canonical compiler identified and reproduced: **patched gcc-2.96** (arm-elf, Debian 20000731 dev snapshot; the dev branch between FSF gcc-2.95 and gcc-3.0), matching the early-GCC-3.0-family compiler Camelot used. The build uses [camelot-gcc](https://github.com/Coaltergeist/camelot-gcc), a separate repo that vendors and builds three compilers via `build.sh`/`install.sh` (mirroring the [pret/agbcc](https://github.com/pret/agbcc) pattern): the patched gcc-2.96 (the game's canonical compiler), gcc-3.0 (cross-check), and [pret/agbcc](https://github.com/pret/agbcc)'s `old_agbcc`; used only for the stock m4a audio engine (see below). See [INSTALL.md](INSTALL.md) for setup.
- **The stock m4a ("Sappy") audio engine is matched as C:** the ~50-function C portion of the audio bank ([`src/lib/m4a/`](src/lib/m4a/)) is ported from the [SAT-R/sa2](https://github.com/SAT-R/sa2) reverse-engineering and compiles byte-identically.

## Setting up the repo

See [INSTALL.md](INSTALL.md).

## Contributing

Contributions are welcome; the decomp is in its early stages and benefits from any matched function, no matter how small.

A function is matched when its `.c` file (in [`src/`](src/)) compiles to an object that's byte-identical to the corresponding original `.s` (in [`asm/`](asm/)). Verify your work with `make compare-rom` (which fails the build if the ROM SHA1 drifts).

Functions awaiting decompilation live under [`asm/`](asm/) in active assembly form, organized by bank (`asm/rom_<bank>/`) or overlay (`asm/overlays/rom_<addr>/`). Pick one, write its C in the parallel `src/` location, iterate against `./run-diff.sh -o <Func_XXXX>`, and submit. The [pret](https://github.com/pret) projects and [decomp.me](https://decomp.me) are the canonical references for the workflow.

### Layout

```
├── src/                 # Matched C + permanent .s glue (crt0, exports, imports)
│   ├── rom_c0/          #   Main ROM banks
│   ├── rom_9000/        #   ...
│   ├── overlays/        #   Per-overlay matched .c + glue .s
│   │   └── rom_XXXXXX/
|   ├── lib/             #   GBA libraries such as m4a or libagbflash
│   └── non_matching/    #   Parked .c that decompiles but doesn't byte-match
├── asm/                 # Active disassembly (.s files awaiting decompilation)
│   ├── rom_c0/          #   Decomp-target .s files per bank
│   ├── ...
│   └── overlays/        #   Per-overlay decomp-target .s
│       └── rom_XXXXXX/
├── data/                # Build-generated data (gitignored; produced from baserom.gba)
├── overlays/            # Overlay build outputs + per-overlay linker scripts (97 banks)
│   └── rom_XXXXXX/
│       ├── overlay.ld   #   Per-overlay linker script
│       ├── orig.bin     #   Uncompressed overlay (extracted from baserom)
│       └── overlay.lz   #   Compressed overlay binary (build output)
├── include/             # Assembler macros (.inc) and constants
├── tools/               # gcc-2.96 toolchain (installed via camelot-gcc), asm-differ wrapper
├── wram.sym             # IWRAM/EWRAM symbol address map (corpus names; hand-curated seed)
├── aliases.sym          # Merged symbol aliases
├── stage1.ld            # Stage-1 partial link of main ROM
├── goldensun.ld         # Final link (main ROM + linked-in overlay blobs)
└── Makefile
```

### Notable info

- Upstream disassembly: [gsret/goldensun](https://github.com/gsret/goldensun)
- Reference projects (contemporary GBA decomps):
    - [SAT-R/sa2](https://github.com/SAT-R/sa2): Sonic Advance 1 + 2 (same era, same Sappy audio engine)
    - [zeldaret/tmc](https://github.com/zeldaret/tmc): The Minish Cap (Sappy + GBA contemporary)
    - [pret/pokeemerald](https://github.com/pret/pokeemerald) and [pret/pokefirered](https://github.com/pret/pokefirered): the canonical GBA-decomp methodology references
- Useful tooling references:
    - [decomp.me](https://decomp.me): matching-decomp sandbox
    - [simonlindholm/asm-differ](https://github.com/simonlindholm/asm-differ): the diff harness bundled here
    - [simonlindholm/decomp-permuter](https://github.com/simonlindholm/decomp-permuter): random-mutation matcher for stuck functions

## Credits

This project builds on substantial prior work by others:

- **[gsret](https://github.com/gsret):** original disassembly ([gsret/goldensun](https://github.com/gsret/goldensun)) that is the foundation of this entire repo. Every `.s` file traces back to their labeling and structuring work.
- **FutureFractal:** extensive Ghidra annotation: named functions, typed globals, and a near-complete type catalog covering Camelot's engine internals. Also contributed the extensive [GS-headers](https://github.com/FutureFractal/GS-headers) repository
- **Tarpman:** compiler-reproduction analysis identifying the early GCC 3.0-family lineage of Camelot's toolchain, and the source-shape repro that pinned down the small-constant literal-pool fingerprint.
- **Karathan:** flag-set characterization (`-fcall-used-r4 -ffixed-r7`) that closed the compiler-identity gap.
- **[pret](https://github.com/pret):** a decade of GBA decomp methodology that this project applies directly, plus the [agbcc](https://github.com/pret/agbcc) compiler (its `old_agbcc` reproduces the stock m4a audio engine) and the install-script pattern that [camelot-gcc](https://github.com/Coaltergeist/camelot-gcc) mirrors.
- **[SAT-R/sa2](https://github.com/SAT-R/sa2) (Sonic Advance 2):** their reverse-engineering of the stock MKS4AGB ("Sappy") audio middleware is the direct source of this repo's ported [`src/lib/m4a/`](src/lib/m4a/) C; the prebuilt GBA audio engine is shared across both games.
- **[simonlindholm](https://github.com/simonlindholm):** [asm-differ](https://github.com/simonlindholm/asm-differ) and [decomp-permuter](https://github.com/simonlindholm/decomp-permuter); core matching-decomp infrastructure.
- **The decomp community at large:** sm64, oot, mm, the [pret](https://github.com/pret) Pokémon family, [zeldaret](https://github.com/zeldaret), [SAT-R](https://github.com/SAT-R), and many others have collectively built the body of techniques this project relies on.

If you've contributed and aren't listed here, please open an issue.
