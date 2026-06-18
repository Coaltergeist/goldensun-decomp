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
	.global .L590
	.global .L5b0
	.global .L610
	.global .L614
	.global .L616

	.lcomm	.Lunused_588, 8
	.lcomm	.L590, 0x20
	.lcomm	.L5b0, 0x60
	.lcomm	.L610, 4
	.lcomm	.L614, 2
	.lcomm	.L616, 2
