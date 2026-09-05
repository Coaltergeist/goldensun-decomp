	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm912_4d8
	.global gOvl_02008318
	.global MapEntrance_ARRAY_912__02008318
gOvl_02008318:
MapEntrance_ARRAY_912__02008318:
	.incbin "overlays/rom_7a0010/orig.bin", 0x318, (0x498-0x318)
	.global gOvl_02008498
gOvl_02008498:
	.incbin "overlays/rom_7a0010/orig.bin", 0x498, (0x4d8-0x498)
.Lm912_4d8:
	.incbin "overlays/rom_7a0010/orig.bin", 0x4d8, (0x658-0x4d8)
	.global gOvl_02008658
gOvl_02008658:
	.incbin "overlays/rom_7a0010/orig.bin", 0x658
