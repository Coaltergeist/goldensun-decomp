# Contributing

We welcome matching C conversions, documented reverse-engineering findings, and
cleanup of existing fakematches. **We do not accept new fakematches.** Existing
entries in `fakematch.txt` are being de-hacked; their source is not a template for
new work. A matching ROM proves output equality, not that the C faithfully
expresses the original behavior.

## Source requirements

- Use behaviorally justified C, with types, signedness, prototypes, memory access
  widths, and side effects supported by the original code and its callers.
- Do not force a match with register-pinned locals, empty assembly barriers,
  handwritten instructions, dummy accesses, artificial scheduling constructs,
  or misleading type/function attributes. Moving such constructs into a macro
  or helper does not make the result acceptable.
- Genuine hardware operations and ABI glue (for example BIOS calls and required
  interworking) can require assembly. Preserve their real constraints and
  clobbers; explain new or changed low-level glue in the contribution.
- Use the production compiler and per-file settings from the Makefile. A match
  under experimental flags is a diagnostic result, not a finished conversion.
- Preserve existing credits and assembly evidence. Do not submit ROMs, extracted
  assets, generated objects, installed compilers, or local diff caches.

## Matching workflow

1. Follow [INSTALL.md](INSTALL.md), verify the baseline, and create reference
   objects **before editing**. Identify the function's current owning translation
   unit and linker script; overlay names and execution addresses can repeat.
2. Replace that function's active `INCLUDE_ASM` with C in its owning source.
   Many map functions share a consolidated `src/maps/<map>.c` translation unit.
   Avoid creating a duplicate definition in a new file that the linker never uses.
3. Iterate with asm-differ against the saved baseline object. Review the whole
   affected object, including neighboring functions, sizes, data and relocations;
   a visually clean function diff can hide a changed callee or literal pool.
4. Run a fresh serial full comparison from the project root:

   ```sh
   set -o pipefail
   (make -j1 clean && make -j1 compare) 2>&1 | tee output.txt
   ```

   Both the ROM checksum (`goldensun.gba: OK`) and every overlay comparison must
   succeed. Review compiler warnings and the command's exit status; the checksum
   line alone does not prove the later overlay checks passed.
5. Describe the original function, source reasoning, compiler revision and
   validation in your pull request. Include any remaining uncertainty. An
   unmatched but useful investigation can be discussed without representing it
   as a completed match.

For de-hacking, preserve byte-identical output while removing the actual source
concern. Review callers when changing shared macros or inline helpers. Remove a
registry row only after its specific concern is resolved; a byte match alone
cannot clear a semantic concern. Correcting an overlooked concern in existing
code is still appropriate accounting, not an exception for new fakematches.
