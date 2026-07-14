	.include "macros.inc"

	.section .data
	.global gOvl_02008108
	.global MapEntrance_ARRAY_904__02008108
gOvl_02008108:
MapEntrance_ARRAY_904__02008108:
	.incbin "overlays/rom_799998/orig.bin", 0x108, (0x180-0x108)
	.global gOvl_02008180
gOvl_02008180:
	.incbin "overlays/rom_799998/orig.bin", 0x180, (0x194-0x180)
	.global gOvl_02008194
gOvl_02008194:
	.incbin "overlays/rom_799998/orig.bin", 0x194, (0x1c4-0x194)
	.global gOvl_020081c4
gOvl_020081c4:
	.incbin "overlays/rom_799998/orig.bin", 0x1c4
