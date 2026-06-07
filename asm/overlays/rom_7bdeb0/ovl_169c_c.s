	.include "macros.inc"

	.section .data
	.global .L2414
	.global .L2420
	.global .L2450
	.global .L2624

.L2414:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2414, (0x2420-0x2414)
.L2420:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2420, (0x2450-0x2420)
.L2450:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2450, (0x2624-0x2450)
.L2624:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2624
