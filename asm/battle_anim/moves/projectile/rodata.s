	.include "macros.inc"

	.section .rodata
	.global .Leebe9
	.global .Leebec
	.global gVFX_SlashHit_LongDims
	.global gVFX_SlashHit_ShortDims
	.global .Leec36
	.global .Leec3d
	.global gVFX_SlashHit_Offsets
	.global .Leec52
.Leebe9:
	.incrom 0xeebe9, 0xeebec
.Leebec:
	.incrom 0xeebec, 0xeec28
gVFX_SlashHit_LongDims:
	.incrom 0xeec28, 0xeec2f
gVFX_SlashHit_ShortDims:
	.incrom 0xeec2f, 0xeec36
.Leec36:
	.incrom 0xeec36, 0xeec3d
.Leec3d:
	.incrom 0xeec3d, 0xeec44
gVFX_SlashHit_Offsets:
	.incrom 0xeec44, 0xeec52
.Leec52:
	.incrom 0xeec52, 0xeec5a
