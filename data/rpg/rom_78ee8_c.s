	.include "macros.inc"

	.section .rodata
	.global gPCIDs

gPCIDs:
	.incrom 0x7b690, 0x7b6a8
