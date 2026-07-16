	.include "macros.inc"

	.section .data
	.global .L1

.L1:
	.incbin "overlays/rom_7bf5a8/orig.bin", 0x1888, (0x189c-0x1888)
