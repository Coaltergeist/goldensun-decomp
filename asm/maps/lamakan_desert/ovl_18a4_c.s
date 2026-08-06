	.include "macros.inc"
	.include "gba.inc"

	.section .mdata3, "aw", %progbits
	.global gOvl_0200a6bc
	.global .Lm933_26be
	.global .Lm933_26c0

gOvl_0200a6bc:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26bc, (0x26be-0x26bc)
.Lm933_26be:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26be, (0x26c0-0x26be)
.Lm933_26c0:
	.incbin "overlays/rom_7bc690/orig.bin", 0x26c0

	.section .bss
	.global .Lm933_26d0
	.global .Lm933_26e0
	.global .Lm933_2730
	.global .Lm933_3030

	.lcomm	.Lm933_unused_26c8, 8
	.lcomm	.Lm933_26d0, 0x10
	.lcomm	.Lm933_26e0, 0x50
	.lcomm	.Lm933_2730, 0x900
	.lcomm	.Lm933_3030, 4
