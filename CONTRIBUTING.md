# Contributing

We welcome matching C, reverse-engineering findings, and cleanup of existing
fakematches. **New fakematches are not accepted.** A byte-identical build is
required, but source review must also establish that the C expresses the original
behavior.

## Source requirements

- Justify types, signedness, prototypes, memory access widths, and side effects
  from the original code and its callers.
- Do not force matches with register-pinned locals, empty assembly barriers,
  handwritten instruction substitutes, dummy accesses, artificial scheduling
  constructs, or misleading attributes. Hiding them in a helper or macro does
  not make them acceptable.
- Assembly for genuine hardware operations and ABI glue must preserve the
  required constraints and clobbers.
- Assembler-name declarations for data and literal-pool symbols, such as
  `extern unsigned char pool[] __asm__(".Lpool");`, are allowed. Symbol-only
  `.equ` definitions require evidenced absolute constants.
- Use the production compiler and the file's Makefile flags
  (`make print-compile-contract SOURCE=...`). Experimental compiler flags do not
  establish an accepted match.
- Preserve credits, source notices, and assembly evidence. Do not submit ROMs,
  extracted assets, generated objects, installed compilers, or local diff caches.

## Where changes belong

Main-ROM code lives under `src/core/` or `src/<module>/`; overlay code belongs
in `src/maps/<name>.c`. Shared overlay implementations live in
`src/maps/common/` and compile once each, even when multiple overlays use them.
Overlay symbols and execution addresses can repeat, so confirm the owning TU and
linker script before editing.

Put shared declarations in their owning header under `include/` instead of
copying them. Keep a partial or unproven struct view local until its fields,
widths and offsets are established.

A new C file is not discovered automatically. The linker scripts under `linker/`
name every object and own link order, so adding a TU means adding its
`build/usa/obj/<path>.o` input there. A file that needs non-default compiler
flags also needs a Makefile entry. Keep original function identities and byte
spans unchanged when moving existing code.

Code comments should explain non-obvious behavior or requirements, not the
history of an edit or how a match was found.

## Matching workflow

1. Follow [INSTALL.md](INSTALL.md), verify the baseline, and capture reference
   objects **before editing**.
2. Replace the function's active `INCLUDE_ASM` with C in its owning TU.
3. Iterate with asm-differ against the saved reference. Review the whole affected
   object, including neighboring functions, sizes, data and relocations; a clean
   function diff can hide a changed callee or literal pool.
4. Run a full comparison from the project root:

   ~~~bash
   make clean && make compare
   ~~~

   Both `build/usa/goldensun.gba: OK` and `All 96 overlays: OK` must appear.
5. Describe the function's behavior, relevant source reasoning and validation in
   the pull request. Label unmatched investigations clearly.

Pull requests do not need any generated files. Maintainers update the
[decomp.dev](https://decomp.dev/Coaltergeist/goldensun-decomp) progress report
after merging.

## Unfinished candidates

Park unfinished C under `src/non_matching/`, in the directory matching its owning
TU's path, named `<Function>.c`. Shared context for a directory goes in its
`context.h`. Parked C is never compiled into the ROM and does not count as a
match. Keep one candidate per function and retain relevant credits.

## Existing fakematches

`fakematch.txt` records source concerns that still need cleanup. These functions
are not examples for new contributions. Remove a registry entry only after its
specific source concern is resolved and the output remains byte-identical.
Review callers when changing a shared macro or inline helper.

Preserve the notices listed in [ATTRIBUTION.md](ATTRIBUTION.md).
