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
- Use the production compiler and per-file Makefile settings. Experimental
  compiler flags do not establish an accepted match.
- Preserve credits, source notices, and assembly evidence. Do not submit ROMs,
  extracted assets, generated objects, installed compilers, or local diff caches.

## Matching workflow

1. Follow [INSTALL.md](INSTALL.md) and capture verified reference objects
   **before editing**. Identify the function's owning translation unit and
   linker script; overlay symbols and execution addresses can repeat.
2. Replace the active `INCLUDE_ASM` in that TU with C.
3. Compare the whole affected object, including neighboring functions, sizes,
   data, symbols, and relocations. Do not refresh the reference to hide a mismatch.
4. Verify the game and refresh its progress snapshot:

   ~~~sh
   python3 tools/decomp_progress.py snapshot
   ~~~

   This runs a fresh serial `make -j1 clean` and `make -j1 compare`, verifying
   the ROM and all 96 overlays. Include the generated `progress_snapshot.json`
   with source changes. See [DECOMP_DEV.md](DECOMP_DEV.md) for report commands
   and verification logs.
5. Run the repository checks:

   ~~~sh
   python3 tools/check_repository.py
   python3 -m unittest discover -s tools/tests -v
   ~~~

6. Describe the function's behavior, relevant source reasoning, compiler version,
   and validation in the pull request. Label unmatched investigations clearly.

## Existing fakematches

`fakematch.txt` records source concerns that still need cleanup. These functions
are not examples for new contributions. Remove a registry entry only after its
specific source concern is resolved and the output remains byte-identical.
Review callers when changing a shared macro or inline helper.

CI checks repository structure, reporting metadata, and tooling. It does not
replace the local ROM/all-overlay verification or semantic source review.
Preserve the notices listed in [ATTRIBUTION.md](ATTRIBUTION.md).
