	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global sHexDigits
	.global sPowersOfTen
	.global PAL_Sprites
	.global PAL_Ui

.align 2,0
PAL_Ui:
	.incrom 0x777c, 0x779c
PAL_Sprites:
	.incrom 0x779c, 0x795c
sHexDigits:
	.incrom 0x795c, 0x7970
sPowersOfTen:
	.incrom 0x7970, 0x7994
