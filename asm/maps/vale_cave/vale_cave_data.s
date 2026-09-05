	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm934_1e48
	.global ActorCmd_ARRAY_933__02009e88
	.global gScript_898__02009e88
	.global .Lm934_1ea0

.Lm934_1e48:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1e48, (0x1e88-0x1e48)
ActorCmd_ARRAY_933__02009e88:
gScript_898__02009e88:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1e88, (0x1ea0-0x1e88)
.Lm934_1ea0:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1ea0, (0x1f00-0x1ea0)

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
