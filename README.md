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
- [Build, verification and metadata commands](DECOMP_DEV.md#choosing-an-operation)
- [Module ownership and compiler profiles](config/README.md)
- [Contributing and matching requirements](CONTRIBUTING.md)
- [Unfinished C candidates and comparison workflow](src/non_matching/README.md)
- [Progress accounting](PROGRESS.md) and [report generation](DECOMP_DEV.md)

The build uses patched GCC 2.96 from
[camelot-gcc](https://github.com/Coaltergeist/camelot-gcc), with `old_agbcc` for
the stock m4a audio engine and most Flash library C. Ninja schedules the build
through a Python facade; GNU Make remains a compatibility entry point and fallback. Full
verification compares the ROM and all 96 code overlays against the reference game.

Contributions are welcome, including matching C, reverse-engineering findings,
and cleanup of existing fakematches. **New fakematches are not accepted.**
See [CONTRIBUTING.md](CONTRIBUTING.md) for the source and verification requirements.

## Repository layout

| Path | Contents |
| --- | --- |
| `src/core/` | Startup, resident runtime code and the standalone RAM library |
| `src/<module>/` | Descriptive main-ROM modules, such as field_engine, field, ui, battle and battle_anim |
| `src/maps/*.c` | Map and other code overlays, one named translation unit per bank |
| `src/maps/common/` | The three shared overlay modules, compiled once each |
| `src/lib/` | GBA library code, including m4a and Flash support |
| `src/non_matching/` | Parked candidates and context headers, grouped by current TU ownership |
| `asm/core/`, `asm/<module>/`, `asm/maps/` | Active assembly fragments for the corresponding source TUs |
| `data/` and `exports/` | Maintained data assembly and exported symbols |
| `linker/` | Main-ROM and overlay linker scripts; address maps under `linker/symbols/` |
| `include/` | C headers, assembler macros and [shared type owners](include/README.md) |
| `config/` | Module ownership, compiler profiles and current path declarations |
| `tools/` | Build, comparison, and reporting tools |
| `build/` | Ignored objects, intermediates, generated assets, ROM and overlay products |

Source names describe their role; ROM offsets and overlay identities remain in the catalog.
Maintained standalone assembly belongs under src; included disassembly and assembly
import/export fragments remain under asm. Use
[the module catalog](config/README.md) to resolve a stable TU ID, current path or
legacy object alias. Catalog ownership preserves compile profiles and link order.
Original disassembly paths in `original_functions.json` are historical evidence;
current production paths come from `config/modules.json` and `progress_snapshot.json`.

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
