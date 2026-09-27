# m4a audio engine

The C engine is a Golden Sun port of
[SAT-R/sa2's m4a reconstruction](https://github.com/SAT-R/sa2), compiled with
`old_agbcc`. Active assembly is selected by the game linker scripts and
`INCLUDE_ASM` directives.

`m4a0.s` is an upstream SA2 comparison reference, excluded from the Golden Sun
build. Its SA2-specific includes are not supplied by this checkout. Independent
comparisons require the upstream environment.

Preserve its provenance and the [project credits](../../../README.md#credits)
when modifying library code.
