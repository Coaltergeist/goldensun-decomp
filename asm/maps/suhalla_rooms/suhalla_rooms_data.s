	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm962_1090
	.global .Lm962_11ec
	.global .Lm962_e08
	.global .Lm962_f28

	.global MapEntrance_ARRAY_962__02008c3c
MapEntrance_ARRAY_962__02008c3c:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xc3c, (0xda4-0xc3c)
	.global gOvl_02008da4
gOvl_02008da4:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xda4, (0xdd4-0xda4)
	.global gOvl_02008dd4
gOvl_02008dd4:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xdd4, (0xe08-0xdd4)
.Lm962_e08:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xe08, (0xf28-0xe08)
.Lm962_f28:
	.incbin "overlays/rom_7ec19c/orig.bin", 0xf28, (0x1090-0xf28)
.Lm962_1090:
	.incbin "overlays/rom_7ec19c/orig.bin", 0x1090, (0x11ec-0x1090)
.Lm962_11ec:
	.incbin "overlays/rom_7ec19c/orig.bin", 0x11ec
