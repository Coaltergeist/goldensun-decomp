# m4a source and historical assembly reference

The C engine in this directory is the Golden Sun port of the SAT-R/sa2 m4a
reconstruction, as credited in the project README. The Makefile selects old_agbcc
for this C code; the active assembly portions are selected by the game linker
scripts and INCLUDE_ASM directives.

`m4a0.s` is retained as a historical SA2 assembly comparison reference. It is
**not assembled or linked by the current Golden Sun build**. Its upstream include
paths (`asm/macros.inc`, `constants/gba_constants.inc`, and
`constants/m4a_constants.inc`) are intentionally retained and are not provided
by this checkout. Do not add dummy includes or wire this file into the build to
make the reference assemble. Use the original project's matching environment for
an independent comparison and verify any proposed port against Golden Sun bytes.

This file's presence is not an unresolved normal-build dependency. Preserve its
provenance and the existing contributor credits when changing library code.
