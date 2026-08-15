	.include "macros.inc"

	.section .rodata
	.global GFX_AvoidRing

GFX_AvoidRing:
	.incrom 0x9c510, 0x9c610
