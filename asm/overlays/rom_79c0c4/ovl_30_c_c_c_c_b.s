	.include "macros.inc"

	.section .data
	.global .L6b0
	.global gOvl_02008598
	.global MapEntrance_ARRAY_908__02008598
gOvl_02008598:
MapEntrance_ARRAY_908__02008598:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x598, (0x688-0x598)
	.global gOvl_02008688
gOvl_02008688:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x688, (0x6b0-0x688)
.L6b0:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x6b0, (0x8f0-0x6b0)
	.global gOvl_020088f0
gOvl_020088f0:
	.incbin "overlays/rom_79c0c4/orig.bin", 0x8f0
