	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_02009cac
	.global .Lm941_1cc0
	.global .Lm941_1cd8
	.global gOvl_02009dd4
	.global gOvl_02009c34
	.global MapEntrance_ARRAY_941__02009c34
	.global gScript_885__02009c34
gOvl_02009c34:
MapEntrance_ARRAY_941__02009c34:
gScript_885__02009c34:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1c34, (0x1cac-0x1c34)
gOvl_02009cac:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cac, (0x1cc0-0x1cac)
.Lm941_1cc0:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cc0, (0x1cd8-0x1cc0)
.Lm941_1cd8:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cd8, (0x1dd4-0x1cd8)
gOvl_02009dd4:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1dd4
