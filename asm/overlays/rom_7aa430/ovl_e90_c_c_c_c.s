	.include "macros.inc"

	.section .data
	.global .L2f4c
	.global gOvl_0200a928

gOvl_0200a928:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2928, (0x2bf8-0x2928)
	.global gOvl_0200abf8
gOvl_0200abf8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2bf8, (0x2c58-0x2bf8)
	.global gOvl_0200ac58
gOvl_0200ac58:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2c58, (0x2d60-0x2c58)
	.global gOvl_0200ad60
gOvl_0200ad60:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2d60, (0x2f4c-0x2d60)
.L2f4c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2f4c
