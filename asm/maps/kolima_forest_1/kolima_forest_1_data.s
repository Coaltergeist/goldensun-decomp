	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gScript_911__0200ae20
	.global gScript_913__0200ae20
	.global gScript_953__0200ae20
	.global gScript_913__0200ae54
	.global gScript_913__0200ae88
	.global gScript_913__0200aebc
	.global gScript_913__0200af48
	.global gScript_913__0200af6c
	.global gScript_913__0200afc8
	.global gScript_913__0200b024
	.global gScript_913__0200b2d0
	.global .Lm913_2d68
	.global .Lm913_2da8
	.global .Lm913_2dc0
	.global gOvl_0200b06c

.Lm913_2d68:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2d68, (0x2da8-0x2d68)
.Lm913_2da8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2da8, (0x2dc0-0x2da8)
.Lm913_2dc0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2dc0, (0x2e20-0x2dc0)
gScript_911__0200ae20:
gScript_913__0200ae20:
gScript_953__0200ae20:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e20, (0x2e54-0x2e20)
gScript_913__0200ae54:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e54, (0x2e88-0x2e54)
gScript_913__0200ae88:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e88, (0x2ebc-0x2e88)
gScript_913__0200aebc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2ebc, (0x2f48-0x2ebc)
gScript_913__0200af48:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f48, (0x2f6c-0x2f48)
gScript_913__0200af6c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f6c, (0x2fc8-0x2f6c)
gScript_913__0200afc8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2fc8, (0x3024-0x2fc8)
gScript_913__0200b024:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3024, (0x306c-0x3024)
gOvl_0200b06c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x306c, (0x30cc-0x306c)
	.global gOvl_0200b0cc
gOvl_0200b0cc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30cc, (0x30e4-0x30cc)
	.global gOvl_0200b0e4
gOvl_0200b0e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30e4, (0x3294-0x30e4)
	.global gOvl_0200b294
gOvl_0200b294:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3294, (0x32d0-0x3294)
gScript_913__0200b2d0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32d0, (0x32e4-0x32d0)
	.global gScript_913__0200b2e4
gScript_913__0200b2e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32e4, (0x3308-0x32e4)
	.global gScript_913__0200b308
gScript_913__0200b308:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3308

	.section .bss
	.global .Lm913_3384
	.global .Lm913_3388
	.global .Lm913_338c
	.global .Lm913_3390
	.global .Lm913_3394
	.global .Lm913_3398
	.global .Lm913_3390

	.lcomm	.Lm913_3384, 4
	.lcomm	.Lm913_3388, 4
	.lcomm	.Lm913_338c, 4
	.lcomm	.Lm913_3390, 4
	.lcomm	.Lm913_3394, 4
	.lcomm	.Lm913_3398, 4
