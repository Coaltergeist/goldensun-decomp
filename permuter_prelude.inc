/* ARM/Thumb asm prelude for decomp-permuter (replaces the default MIPS
 * prelude.inc). Pulls in the project's assembler macros and maps the
 * permuter's `glabel <name>` convention onto our `.thumb_func_start`. */
	.include "macros.inc"
	.include "gba.inc"

	.macro glabel label
	.thumb_func_start \label
	.endm
