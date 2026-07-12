	.include "macros.inc"

	.section .data
	.global gOvl_020080c8
	.global MapEntrance_ARRAY_892__020080c8
gOvl_020080c8:
MapEntrance_ARRAY_892__020080c8:
	.incbin "overlays/rom_78dc80/orig.bin", 0xc8, (0x110-0xc8)
	.global gOvl_02008110
gOvl_02008110:
	.incbin "overlays/rom_78dc80/orig.bin", 0x110, (0x11c-0x110)
	.global gOvl_0200811c
gOvl_0200811c:
	.incbin "overlays/rom_78dc80/orig.bin", 0x11c, (0x134-0x11c)
	.global gOvl_02008134
gOvl_02008134:
	.incbin "overlays/rom_78dc80/orig.bin", 0x134
