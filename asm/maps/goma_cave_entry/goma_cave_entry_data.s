	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_02009488
	.global gOvl_020092f8
	.global gOvl_02009358
	.global gOvl_02009368

	.incbin "overlays/rom_798dc4/orig.bin", 0x12e8, (0x12f8-0x12e8)
gOvl_020092f8:
	.incbin "overlays/rom_798dc4/orig.bin", 0x12f8, (0x1358-0x12f8)
gOvl_02009358:
	.incbin "overlays/rom_798dc4/orig.bin", 0x1358, (0x1368-0x1358)
gOvl_02009368:
	.incbin "overlays/rom_798dc4/orig.bin", 0x1368, (0x1488-0x1368)
gOvl_02009488:
	.incbin "overlays/rom_798dc4/orig.bin", 0x1488
