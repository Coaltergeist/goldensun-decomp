	.include "macros.inc"

	.section .data
	.global .L2f4c
	.global .L2928

.L2928:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2928, (0x2bf8-0x2928)
.L2bf8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2bf8, (0x2c58-0x2bf8)
.L2c58:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2c58, (0x2d60-0x2c58)
.L2d60:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2d60, (0x2f4c-0x2d60)
.L2f4c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2f4c
