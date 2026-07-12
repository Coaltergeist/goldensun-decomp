	.include "macros.inc"

	.section .data
	.global gOvl_020080c0
	.global MapEntrance_ARRAY_893__020080c0
	.global MapEntrance_ARRAY_894__020080c0
gOvl_020080c0:
MapEntrance_ARRAY_893__020080c0:
MapEntrance_ARRAY_894__020080c0:
	.incbin "overlays/rom_78de18/orig.bin", 0xc0, (0x120-0xc0)
	.global gOvl_02008120
gOvl_02008120:
	.incbin "overlays/rom_78de18/orig.bin", 0x120, (0x130-0x120)
	.global gOvl_02008130
gOvl_02008130:
	.incbin "overlays/rom_78de18/orig.bin", 0x130, (0x148-0x130)
	.global gOvl_02008148
gOvl_02008148:
	.incbin "overlays/rom_78de18/orig.bin", 0x148
