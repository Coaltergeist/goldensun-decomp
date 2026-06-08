	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_0200a6bc
	.global .L26be
	.global .L26c0

gOvl_0200a6bc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26bc, (0x26be-0x26bc)
.L26be:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26be, (0x26c0-0x26be)
.L26c0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26c0

	.section .bss
	.global .L26d0
	.global .L26e0
	.global .L2730
	.global .L3030

	.lcomm	.Lunused_26c8, 8
	.lcomm	.L26d0, 0x10
	.lcomm	.L26e0, 0x50
	.lcomm	.L2730, 0x900
	.lcomm	.L3030, 4
