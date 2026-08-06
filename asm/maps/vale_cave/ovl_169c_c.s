	.include "macros.inc"

	.section .mdata3, "aw", %progbits
	.global .Lm934_2414
	.global .Lm934_2420
	.global .Lm934_2450
	.global .Lm934_2624

.Lm934_2414:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2414, (0x2420-0x2414)
.Lm934_2420:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2420, (0x2450-0x2420)
.Lm934_2450:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2450, (0x2624-0x2450)
.Lm934_2624:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2624
