	.include "macros.inc"

	.section .data
	.global gOvl_0200835c
	.global MapEntrance_ARRAY_919__0200835c
	.global .L3bc
	.global .L3ec
	.global MapEntrance_ARRAY_937__020084a0
	.global gOvl_020082d0
	.global MapEntrance_ARRAY_900__020082d0
gOvl_020082d0:
MapEntrance_ARRAY_900__020082d0:
	.incbin "overlays/rom_797740/orig.bin", 0x2d0, (0x348-0x2d0)
	.global gOvl_02008348
gOvl_02008348:
	.incbin "overlays/rom_797740/orig.bin", 0x348, (0x35c-0x348)
gOvl_0200835c:
MapEntrance_ARRAY_919__0200835c:
	.incbin "overlays/rom_797740/orig.bin", 0x35c, (0x3bc-0x35c)
.L3bc:
	.incbin "overlays/rom_797740/orig.bin", 0x3bc, (0x3ec-0x3bc)
.L3ec:
	.incbin "overlays/rom_797740/orig.bin", 0x3ec, (0x4a0-0x3ec)
MapEntrance_ARRAY_937__020084a0:
	.incbin "overlays/rom_797740/orig.bin", 0x4a0
