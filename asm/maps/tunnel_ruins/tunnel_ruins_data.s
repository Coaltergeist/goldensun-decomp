	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm964_33ec
	.global .Lm964_340c
	.global .Lm964_3350
	.global .Lm964_31f0
	.global .Lm964_3230
	.global .Lm964_3248
	.global .Lm964_336c
	.global gScript_964__0200b3b8
	.global .Lm964_342c
	.global .Lm964_3474
	.global .Lm964_3654
	.global gScript_888__0200b81c
	.global gOvl_0200b85c
	.global gScript_925__0200b8f4
	.global .Lm964_3a74

.Lm964_31f0:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x31f0, (0x3230-0x31f0)
.Lm964_3230:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3230, (0x3248-0x3230)
.Lm964_3248:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3248, (0x3350-0x3248)
.Lm964_3350:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3350, (0x336c-0x3350)
.Lm964_336c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x336c, (0x33b8-0x336c)
gScript_964__0200b3b8:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33b8, (0x33ec-0x33b8)
.Lm964_33ec:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33ec, (0x340c-0x33ec)
.Lm964_340c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x340c, (0x342c-0x340c)
.Lm964_342c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x342c, (0x3474-0x342c)
.Lm964_3474:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3474, (0x3654-0x3474)
.Lm964_3654:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3654, (0x381c-0x3654)
gScript_888__0200b81c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x381c, (0x385c-0x381c)
gOvl_0200b85c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x385c, (0x38f4-0x385c)
gScript_925__0200b8f4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x38f4, (0x3a74-0x38f4)
.Lm964_3a74:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3a74, (0x3c0c-0x3a74)
.Lm964_3c0c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3c0c, (0x3ef4-0x3c0c)
.Lm964_3ef4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3ef4
