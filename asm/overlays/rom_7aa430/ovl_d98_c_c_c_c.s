	.include "macros.inc"

	.section .data
	.global .L291c
	.global .L2920
	.global .L2924

.L291c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x291c, (0x2920-0x291c)
.L2920:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2920, (0x2924-0x2920)
.L2924:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2924, (0x2928-0x2924)
