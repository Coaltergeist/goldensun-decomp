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

	.section .mdata2, "aw", %progbits
	.global .Lm934_2234
	.global .Lm934_22c4
	.global .Lm934_239c
	.global .Lm934_1f6c
	.global .Lm934_1f9c
	.global .Lm934_2014
	.global .Lm934_2134

.Lm934_1f6c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f6c, (0x1f9c-0x1f6c)
.Lm934_1f9c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f9c, (0x2014-0x1f9c)
.Lm934_2014:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2014, (0x2134-0x2014)
.Lm934_2134:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2134, (0x21dc-0x2134)
	.global gOvl_0200a1dc
gOvl_0200a1dc:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x21dc, (0x2234-0x21dc)
.Lm934_2234:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2234, (0x22c4-0x2234)
.Lm934_22c4:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x22c4, (0x239c-0x22c4)
.Lm934_239c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x239c, (0x2414-0x239c)

	.section .mdata1, "aw", %progbits
	.global .Lm934_1f00
.Lm934_1f00:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f00, (0x1f60-0x1f00)
