	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm925_3c50
	.global .Lm925_39d4
	.global gOvl_0200b938

gOvl_0200b938:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3938, (0x39c8-0x3938)
	.global gOvl_0200b9c8
gOvl_0200b9c8:
	.incbin "overlays/rom_7b0400/orig.bin", 0x39c8, (0x39d4-0x39c8)
.Lm925_39d4:
	.incbin "overlays/rom_7b0400/orig.bin", 0x39d4, (0x3be4-0x39d4)
	.global gOvl_0200bbe4
gOvl_0200bbe4:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3be4, (0x3c50-0x3be4)
.Lm925_3c50:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3c50, (0x3c54-0x3c50)
	.global gScript_925__0200bc54
gScript_925__0200bc54:
	.incbin "overlays/rom_7b0400/orig.bin", 0x3c54
