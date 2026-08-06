	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_0200835c
	.global MapEntrance_ARRAY_919__0200835c
	.global gOvl_0200844c
	.global gOvl_02008474
	.global gOvl_020084a4

gOvl_0200835c:
MapEntrance_ARRAY_919__0200835c:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x35c, (0x44c-0x35c)
gOvl_0200844c:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x44c, (0x474-0x44c)
gOvl_02008474:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x474, (0x4a4-0x474)
gOvl_020084a4:
	.incbin "overlays/rom_7a67d8/orig.bin", 0x4a4

	.section .bss
	.global .Lm919_590
	.global .Lm919_5b0
	.global .Lm919_610
	.global .Lm919_614
	.global .Lm919_616

	.lcomm	.Lm919_unused_588, 8
	.lcomm	.Lm919_590, 0x20
	.lcomm	.Lm919_5b0, 0x60
	.lcomm	.Lm919_610, 4
	.lcomm	.Lm919_614, 2
	.lcomm	.Lm919_616, 2
