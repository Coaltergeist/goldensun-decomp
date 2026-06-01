<h1 align="center">Golden Sun</h1>

> :warning: **This project is in early stages and under active development.**
>
> _This project was created as a learning exercise and a personal challenge for exploring matching decompilation, reverse-engineering, and the GBA toolchain. Contributions and corrections from anyone more experienced are very welcome, but not expected._

This is a work-in-progress matching decompilation of Golden Sun (GBA, 2001).

It builds the following ROM:

* **goldensun.gba** `sha1: 5c4695205413df7db52b9a184815a07783999971` (USA)

## Current state

- :white_check_mark: Build verifies byte-identical at HEAD (`make compare-rom` → `goldensun.gba: OK`)
- **364 / 5,742 Thumb functions matched as C source (6.3%):** the 51 ARM-mode functions are handwritten assembly, not C-decompilation targets
- All assembly extracted, disassembled, and labeled; inherited from [gsret/goldensun](https://github.com/gsret/goldensun)
- Main-ROM and overlay banks structurally separated (97 overlay banks, 16 main-ROM banks)
- Canonical compiler identified and reproduced: **patched gcc-2.96** (arm-elf, Debian 20000731 dev snapshot; the dev branch between FSF gcc-2.95 and gcc-3.0), matching the early-GCC-3.0-family compiler Camelot used. The build uses [camelot-gcc](https://github.com/Coaltergeist/camelot-gcc), a separate repo containing the vendored patched GCC source, `build-296.sh`, and `install-296.sh` (mirrors the [pret/agbcc](https://github.com/pret/agbcc) pattern). pret's agbcc is no longer used. See [INSTALL.md](INSTALL.md) for setup.
- **Community symbol annotations are integrated as soft aliases:** function and global symbols can be referenced by either the corpus name (`Func_4458`, `iwram_1cb4`) or a curated name (`Random`, `gRNGState`, `REG_DISPCNT`, `add_djinni`) interchangeably. See [Annotations](#annotations) below.

## Annotations

Multiple community sources contribute curated function and global symbol names, all merged into a single auto-generated linker-script file:

- **[`aliases.sym`](aliases.sym):** ~14,800 symbol aliases. Sources, in collision priority order:
    1. **[`wram.sym`](wram.sym)"** hand-curated seed (~255 entries).
    2. **FutureFractal's Ghidra project:** ~13,490 IWRAM/EWRAM globals + ~819 ROM-space function aliases (e.g. `gRNGState = 0x03001cb4;`, `Random = Func_4458;`). Dominant source.
    3. **[gs_headers](https://github.com/SBird1337/gs_headers):** ~97 entries from community C headers' Doxygen `@address{AGFE,...}` tags (e.g. `REG_DISPCNT = 0x04000000;`, `CreateTask = Func_145a8;`).
    4. **Broken Seal community doc:** ~124 ROM-space function aliases distilled from the [GS1 Documentation](https://docs.google.com/document/d/1CiioR7fp-E1kbTCK0QaJ_Yv93o-zQk4XWUpA0aV9Kxk/edit).

`aliases.sym` is the only file INCLUDEd from [`stage1.ld`](stage1.ld). The corpus symbols (`Func_XXXX`, `iwram_XXXX`, `ewram_XXXX`) remain authoritative for tooling that locates code by symbol grep, but contributors writing new matched `.c` may reference either spelling. The linker resolves both to the same address.

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
├── lib/                 # Shared assembly (call_via.s)
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
- **FutureFractal:** extensive Ghidra annotation: named functions, typed globals, and a near-complete type catalog covering Camelot's engine internals.
- **Tarpman:** compiler-reproduction analysis identifying the early GCC 3.0-family lineage of Camelot's toolchain, and the source-shape repro that pinned down the small-constant literal-pool fingerprint.
- **Karathan:** flag-set characterization (`-fcall-used-r4 -ffixed-r7`) that closed the compiler-identity gap.
- **[pret](https://github.com/pret):** a decade of GBA decomp methodology that this project applies directly, plus the [agbcc](https://github.com/pret/agbcc) install-script pattern that [camelot-gcc](https://github.com/Coaltergeist/camelot-gcc) mirrors.
- **[simonlindholm](https://github.com/simonlindholm):** [asm-differ](https://github.com/simonlindholm/asm-differ) and [decomp-permuter](https://github.com/simonlindholm/decomp-permuter); core matching-decomp infrastructure.
- **The decomp community at large:** sm64, oot, mm, the [pret](https://github.com/pret) Pokémon family, [zeldaret](https://github.com/zeldaret), [SAT-R](https://github.com/SAT-R), and many others have collectively built the body of techniques this project relies on.

If you've contributed and aren't listed here, please open an issue.
