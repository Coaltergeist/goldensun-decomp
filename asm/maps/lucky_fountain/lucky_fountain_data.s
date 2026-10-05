	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global Events_GameBuildings
	.global Events_TolbiSpring
	.global .Lm951_1fc0
	.global gLuckyFountainPrizes
	.global .Lm951_200c
	.global .Lm951_2018
	.global .Lm951_1aec
	.global .Lm951_1cfc
	.global gOvl_02009a08
	.global MapEntrance_ARRAY_951__02009a08
gOvl_02009a08:
MapEntrance_ARRAY_951__02009a08:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1a08, (0x1ac8-0x1a08)
	.global gOvl_02009ac8
gOvl_02009ac8:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1ac8, (0x1aec-0x1ac8)
.Lm951_1aec:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1aec, (0x1cfc-0x1aec)
.Lm951_1cfc:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1cfc, (0x1e1c-0x1cfc)
Events_GameBuildings:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1e1c, (0x1f30-0x1e1c)
Events_TolbiSpring:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1f30, (0x1fc0-0x1f30)
.Lm951_1fc0:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1fc0, (0x1fd0-0x1fc0)
gLuckyFountainPrizes:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x1fd0, (0x200c-0x1fd0)
.Lm951_200c:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x200c, (0x2018-0x200c)
.Lm951_2018:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x2018, (0x2054-0x2018)
.Lm951_2054:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x2054, (0x2057-0x2054)
.Lm951_2057:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x2057, (0x205a-0x2057)
.Lm951_205a:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x205a, (0x205e-0x205a)
.Lm951_205e:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x205e, (0x2062-0x205e)
.Lm951_2062:
	.incbin "build/usa/reference/overlays/rom_7d6418/orig.bin", 0x2062

	.section .bss

	.lcomm	.Lm951_2070, 0x50
	.lcomm	.Lm951_20c0, 0x10
	.lcomm	.Lm951_20d0, 0x60
	.lcomm	.Lm951_2130, 4
	.lcomm	.Lm951_2134, 4
	.lcomm	.Lm951_2138, 4
