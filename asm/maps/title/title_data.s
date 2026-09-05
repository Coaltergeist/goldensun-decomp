	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_020085f8
	.global MapEntrance_ARRAY_879__020085f8
gOvl_020085f8:
MapEntrance_ARRAY_879__020085f8:
	.incbin "overlays/rom_779188/orig.bin", 0x5f8, (0x628-0x5f8)
	.global gOvl_02008628
gOvl_02008628:
	.incbin "overlays/rom_779188/orig.bin", 0x628, (0x62c-0x628)
	.global gOvl_0200862c
gOvl_0200862c:
	.incbin "overlays/rom_779188/orig.bin", 0x62c, (0x644-0x62c)
	.global gOvl_02008644
gOvl_02008644:
	.incbin "overlays/rom_779188/orig.bin", 0x644, (0x650-0x644)
.L650:
	.incbin "overlays/rom_779188/orig.bin", 0x650

	.section .bss

	.lcomm	.Lunused_658, 0x34
	.lcomm	.L68c, 4
	.lcomm	.Lunused_690, 0x10
	.lcomm	.L6a0, 0xc
