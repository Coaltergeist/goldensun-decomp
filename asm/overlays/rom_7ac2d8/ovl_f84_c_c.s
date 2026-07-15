	.include "macros.inc"

	.section .data
	.global .L6010
	.global .L603a
	.global .L608e

.L6010:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6010, (0x603a-0x6010)
.L603a:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x603a, (0x6064-0x603a)
	.global .L6064
.L6064:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x6064, (0x608e-0x6064)
.L608e:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x608e, (0x60b8-0x608e)
