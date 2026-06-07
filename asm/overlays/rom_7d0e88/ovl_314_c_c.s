	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L2ce0
	.global .L2cf8
	.global .L2ca0
	.global .L2ce0
	.global .L2cf8

.L2ca0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ca0, (0x2ce0-0x2ca0)
.L2ce0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ce0, (0x2cf8-0x2ce0)
.L2cf8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2cf8, (0x2d58-0x2cf8)
