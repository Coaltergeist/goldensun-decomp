	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm927_3a48
	.global .Lm927_3b20
	.global .Lm927_3c1c
	.global .Lm927_3d54
	.global .Lm927_36a0
	.global .Lm927_3790
	.global .Lm927_38b0
	.global .Lm927_3a30
	.global .Lm927_2ef8
	.global .Lm927_2f38
	.global gScript_884__0200af50
	.global .Lm927_3058
	.global .Lm927_30f4
	.global .Lm927_31e4
	.global .Lm927_3334
	.global .Lm927_34b4

.Lm927_2ef8:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2ef8, (0x2f38-0x2ef8)
.Lm927_2f38:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f38, (0x2f50-0x2f38)
gScript_884__0200af50:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f50, (0x3058-0x2f50)
.Lm927_3058:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3058, (0x3084-0x3058)
	.global gScript_927__0200b084
gScript_927__0200b084:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3084, (0x30f4-0x3084)
.Lm927_30f4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x30f4, (0x31e4-0x30f4)
.Lm927_31e4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x31e4, (0x3334-0x31e4)
.Lm927_3334:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3334, (0x34b4-0x3334)
.Lm927_34b4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x34b4, (0x35bc-0x34b4)
	.global gOvl_0200b5bc
gOvl_0200b5bc:
	.incbin "overlays/rom_7b4558/orig.bin", 0x35bc, (0x36a0-0x35bc)
.Lm927_36a0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x36a0, (0x3790-0x36a0)
.Lm927_3790:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3790, (0x38b0-0x3790)
.Lm927_38b0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x38b0, (0x3a30-0x38b0)
.Lm927_3a30:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a30, (0x3a48-0x3a30)
.Lm927_3a48:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a48, (0x3b20-0x3a48)
.Lm927_3b20:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3b20, (0x3c1c-0x3b20)
.Lm927_3c1c:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3c1c, (0x3d54-0x3c1c)
.Lm927_3d54:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3d54
