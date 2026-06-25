	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global DistSquared

DistSquared:
	.incrom 0x7994, 0x79b0
