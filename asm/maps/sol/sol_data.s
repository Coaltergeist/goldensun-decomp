	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm895_265c
	.global .Lm895_1fc0
	.global .Lm895_1fd8
	.global .Lm895_2050
	.global .Lm895_21b8
	.global .Lm895_22a8
	.global .Lm895_22d8
	.global .Lm895_22e4
	.global .Lm895_232c
	.global .Lm895_241c
	.global .Lm895_2524
	.global MapEntrance_ARRAY_895__02009cd4
	.global .Lm895_1d04
	.global .Lm895_1d64

MapEntrance_ARRAY_895__02009cd4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1cd4, (0x1d04-0x1cd4)
.Lm895_1d04:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d04, (0x1d64-0x1d04)
.Lm895_1d64:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d64, (0x1f14-0x1d64)
	.global gOvl_02009f14
gOvl_02009f14:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1f14, (0x1fc0-0x1f14)
.Lm895_1fc0:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fc0, (0x1fd8-0x1fc0)
.Lm895_1fd8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fd8, (0x2050-0x1fd8)
.Lm895_2050:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2050, (0x21b8-0x2050)
.Lm895_21b8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x21b8, (0x22a8-0x21b8)
.Lm895_22a8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22a8, (0x22d8-0x22a8)
.Lm895_22d8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22d8, (0x22e4-0x22d8)
.Lm895_22e4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22e4, (0x232c-0x22e4)
.Lm895_232c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x232c, (0x241c-0x232c)
.Lm895_241c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x241c, (0x2524-0x241c)
.Lm895_2524:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2524, (0x265c-0x2524)
.Lm895_265c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x265c

	.section .bss
	.global .Lm895_269c

	.lcomm	.Lm895_269c, 4
