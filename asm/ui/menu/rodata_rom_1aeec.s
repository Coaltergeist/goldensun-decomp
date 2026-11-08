	.include "macros.inc"

	.section .rodata.rom_1aeec_c_c
	.global GFX_MenuArrowCursor_R
	.global GFX_MenuArrowCursor_L
	.global GFX_MenuArrowCursor_R

GFX_MenuArrowCursor_L:
	.incrom 0x33ef8, 0x342f8
GFX_MenuArrowCursor_R:
	.incrom 0x342f8, 0x346f8
