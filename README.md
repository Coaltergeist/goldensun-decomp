<h1 align="center">Golden Sun</h1>

> :warning: **This project is in early stages and under active development.**

This is a work-in-progress matching decompilation of Golden Sun (GBA, 2001).

It builds the following ROM:

* **goldensun.gba** `sha1: 5c4695205413df7db52b9a184815a07783999971` (USA)

## Current state

- :white_check_mark: Build verifies byte-identical at HEAD (`make compare-rom` → `goldensun.gba: OK`)
- **215 / 5,774 functions matched as C source (3.7%)**
- All assembly extracted, disassembled, and labeled — inherited from [gsret/goldensun](https://github.com/gsret/goldensun)
- Main-ROM and overlay banks structurally separated (97 overlay banks, 16 main-ROM banks)
- Canonical compiler identified as **stock GCC 3.0** (arm-agb-elf, ~June 2001) — the original Camelot toolchain. Production build is mid-swap onto it. See [COMPILER_NOTES.md](COMPILER_NOTES.md) for the reproduction recipe and flag set.

## Setting up the repo

See [INSTALL.md](INSTALL.md).

## Contributing

Contributions are welcome — the decomp is in its early stages and benefits from any matched function, no matter how small.

A function is matched when a `.c` file at the same path level as its `.s` compiles back to a byte-identical object. Verify your work with `make compare-rom` (which fails the build if the ROM SHA1 drifts).

Functions awaiting decompilation live under their bank's `nonmatchings/` subdirectory in active assembly form. Pick one, write its C, iterate against `./run-diff.sh -o <Func_XXXX>`, and submit. The [pret](https://github.com/pret) projects and [decomp.me](https://decomp.me) are the canonical references for the workflow.

### Layout

```
├── rom_c0/             # Main ROM banks (one directory per address-region)
│   ├── src/            #   Matching C + active .s files
│   │   └── nonmatchings/   #   .s files whose C hasn't been written yet (or fails to match)
│   └── data/           #   .s files for bank data
├── rom_9000/           # Additional main-ROM banks
├── rom_15000/
├── ...
├── overlays/           # Overlay banks (97 of them; map-specific code/data)
│   └── rom_XXXXXX/
│       ├── ovl_XX.s         #  Active code .s
│       ├── overlay.ld       #  Per-bank linker script
│       └── nonmatchings/
├── include/            # Assembler macros (.inc) and constants
├── tools/              # agbcc toolchain, asm-differ wrapper
├── wram.sym            # IWRAM/EWRAM symbol address map
├── stage1.ld           # Main linker script (stage 1; overlays linked per-bank)
└── Makefile
```

### Notable info

- Upstream disassembly: [gsret/goldensun](https://github.com/gsret/goldensun)
- Reference projects (contemporary GBA decomps):
    - [SAT-R/sa2](https://github.com/SAT-R/sa2) — Sonic Advance 1 + 2 (same era, same Sappy audio engine)
    - [zeldaret/tmc](https://github.com/zeldaret/tmc) — The Minish Cap (Sappy + GBA contemporary)
    - [pret/pokeemerald](https://github.com/pret/pokeemerald) and [pret/pokefirered](https://github.com/pret/pokefirered) — the canonical GBA-decomp methodology references
- Useful tooling references:
    - [decomp.me](https://decomp.me) — matching-decomp sandbox
    - [simonlindholm/asm-differ](https://github.com/simonlindholm/asm-differ) — the diff harness bundled here
    - [simonlindholm/decomp-permuter](https://github.com/simonlindholm/decomp-permuter) — random-mutation matcher for stuck functions

## Credits

This project builds on substantial prior work by others:

- **[gsret](https://github.com/gsret)** — original disassembly ([gsret/goldensun](https://github.com/gsret/goldensun)) that is the foundation of this entire repo. Every `.s` file traces back to their labeling and structuring work.
- **FutureFractal** — extensive Ghidra annotation: named functions, typed globals, and a near-complete type catalog covering Camelot's engine internals.
- **Tarpman** — compiler-reproduction analysis identifying the stock GCC 3.0 (arm-agb-elf) lineage of Camelot's toolchain.
- **Karathan** — flag-set characterization (`-fcall-used-r4 -ffixed-r7`) that closed the compiler-identity gap.
- **[pret](https://github.com/pret)** — the [agbcc](https://github.com/pret/agbcc) toolchain bundled here, asm-differ tooling, and a decade of GBA decomp methodology that this project applies directly.
- **[simonlindholm](https://github.com/simonlindholm)** — [asm-differ](https://github.com/simonlindholm/asm-differ) and [decomp-permuter](https://github.com/simonlindholm/decomp-permuter); core matching-decomp infrastructure.
- **The decomp community at large** — sm64, oot, mm, the [pret](https://github.com/pret) Pokémon family, [zeldaret](https://github.com/zeldaret), [SAT-R](https://github.com/SAT-R), and many others have collectively built the body of techniques this project relies on.

If you've contributed and aren't listed here, please open an issue.
