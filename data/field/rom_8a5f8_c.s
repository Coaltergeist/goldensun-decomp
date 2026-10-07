	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global gMaps

gMaps:
	.incrom 0x9f1a8, 0x9f810
