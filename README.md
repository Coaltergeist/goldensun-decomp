<h1 align="center">Golden Sun</h1>

A work-in-progress matching decompilation of Golden Sun (GBA, 2001), based on
[gsret's disassembly](https://github.com/gsret/goldensun).

**Target:** USA `goldensun.gba`, SHA1
`5c4695205413df7db52b9a184815a07783999971`.

## Progress

[![Functions matched](https://decomp.dev/Coaltergeist/goldensun-decomp.svg?mode=shield&measure=matched_functions_percent&label=functions%20matched)](https://decomp.dev/Coaltergeist/goldensun-decomp)
[![Code bytes matched](https://decomp.dev/Coaltergeist/goldensun-decomp.svg?mode=shield&measure=matched_code_percent&label=code%20bytes%20matched)](https://decomp.dev/Coaltergeist/goldensun-decomp)

Each rectangle represents a translation unit, sized by original code bytes and
colored by matching progress. Click the treemap for unit and function details.

[![Golden Sun matching progress by translation unit](https://decomp.dev/Coaltergeist/goldensun-decomp.svg?mode=overview)](https://decomp.dev/Coaltergeist/goldensun-decomp)

## Getting started

- [Build and diff setup](INSTALL.md)
- [Contributing and matching requirements](CONTRIBUTING.md)
- [Unfinished C candidates and comparison workflow](src/non_matching/README.md)
- [Progress accounting](PROGRESS.md) and [report generation](DECOMP_DEV.md)

The build uses patched GCC 2.96 from
[camelot-gcc](https://github.com/Coaltergeist/camelot-gcc), with `old_agbcc` for
the stock m4a audio engine and most Flash library C. Full verification compares
the ROM and all 96 code overlays against the reference game.

Contributions are welcome, including matching C, reverse-engineering findings,
and cleanup of existing fakematches. **New fakematches are not accepted.**
See [CONTRIBUTING.md](CONTRIBUTING.md) for the source and verification requirements.

## Repository layout

| Path | Contents |
| --- | --- |
| `src/` | Game C and assembly, organized by subsystem |
| `src/maps/` | One translation unit per code overlay, plus shared modules |
| `src/lib/` | GBA library code, including m4a and Flash support |
| `src/non_matching/` | Unfinished C candidates, organized by TU |
| `asm/` | Active disassembly, included from the corresponding source TUs |
| `data/` | Data assembly and generated build outputs |
| `overlays/` | Per-overlay linker scripts and generated overlay files |
| `include/` | C headers and assembler macros |
| `tools/` | Build, comparison, and reporting tools |
| `*.sym` | Symbol address maps |
| `stage1.ld` / `goldensun.ld` | Main-ROM partial and final link scripts |

## References

- [decomp.me](https://decomp.me): function-matching sandbox.
- [asm-differ](https://github.com/simonlindholm/asm-differ) and
  [decomp-permuter](https://github.com/simonlindholm/decomp-permuter): comparison
  and matching tools.
- [SAT-R/sa2](https://github.com/SAT-R/sa2),
  [zeldaret/tmc](https://github.com/zeldaret/tmc),
  [pret/pokeemerald](https://github.com/pret/pokeemerald), and
  [pret/pokefirered](https://github.com/pret/pokefirered): related GBA projects.

## Credits

- **[gsret](https://github.com/gsret):** the original Golden Sun disassembly.
- **FutureFractal:** Ghidra annotations, function and global names, and
  [GS-headers](https://github.com/FutureFractal/GS-headers).
- **Tarpman:** compiler-reproduction and source-shape analysis.
- **Karathan:** compiler flag characterization, including
  `-fcall-used-r4 -ffixed-r7`.
- **[pret](https://github.com/pret):** GBA decompilation methodology and
  [agbcc](https://github.com/pret/agbcc), including `old_agbcc` and the compiler
  installation pattern used by camelot-gcc.
- **[SAT-R/sa2](https://github.com/SAT-R/sa2):** the m4a ("Sappy") reconstruction
  used by this project's [audio-engine C port](src/lib/m4a/).
- **[simonlindholm](https://github.com/simonlindholm):** asm-differ and
  decomp-permuter.
- **The wider decompilation community:** the techniques and tooling developed
  through sm64, oot, mm, pret, zeldaret, SAT-R, and other projects.

For credit corrections, please open an issue. See
[ATTRIBUTION.md](ATTRIBUTION.md) for component notices.
