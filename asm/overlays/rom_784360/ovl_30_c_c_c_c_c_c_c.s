	.include "macros.inc"

.thumb_func_start OvlFunc_884_200a5b0
	push	{lr}
	mov	r0, #0xb0
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x16d
	bl	__SetFlag
	ldr	r0, =0x844
	bl	__SetFlag
	ldr	r0, =0x845
	bl	__SetFlag
	mov	r0, #0x28
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a5b0

	.section .data
	.global gScript_884__0200a874
	.global gScript_923__0200a874
	.global gScript_884__0200a8e8
	.global gScript_884__0200a940
	.global gScript_884__0200a998
	.global gScript_884__0200a9f0
	.global gScript_884__0200aa48
	.global gScript_884__0200ab2c
	.global gScript_884__0200ac00
	.global gScript_884__0200ac14
	.global gScript_884__0200ac90
	.global gScript_884__0200acf8
	.global gScript_884__0200ad74
	.global gScript_953__0200ad74
	.global gScript_884__0200adf0
	.global gScript_884__0200ae34
	.global gScript_911__0200ae34
	.global gScript_884__0200aef0
	.global gScript_884__0200af50
	.global gScript_884__0200af78
	.global .L3108
	.global .L3144
	.global .L3170
	.global .L3380
	.global .L3560
	.global .L37d0
	.global gOvl_0200b938
	.global .L3a64
	.global .L3b30
	.global .L3b3c
	.global .L3cec
	.global .L3eb4
	.global gOvl_0200afa0

	.incbin "overlays/rom_784360/orig.bin", 0x2854, (0x2874-0x2854)
gScript_884__0200a874:
gScript_923__0200a874:
	.incbin "overlays/rom_784360/orig.bin", 0x2874, (0x28e8-0x2874)
gScript_884__0200a8e8:
	.incbin "overlays/rom_784360/orig.bin", 0x28e8, (0x2940-0x28e8)
gScript_884__0200a940:
	.incbin "overlays/rom_784360/orig.bin", 0x2940, (0x2998-0x2940)
gScript_884__0200a998:
	.incbin "overlays/rom_784360/orig.bin", 0x2998, (0x29f0-0x2998)
gScript_884__0200a9f0:
	.incbin "overlays/rom_784360/orig.bin", 0x29f0, (0x2a48-0x29f0)
gScript_884__0200aa48:
	.incbin "overlays/rom_784360/orig.bin", 0x2a48, (0x2b2c-0x2a48)
gScript_884__0200ab2c:
	.incbin "overlays/rom_784360/orig.bin", 0x2b2c, (0x2c00-0x2b2c)
gScript_884__0200ac00:
	.incbin "overlays/rom_784360/orig.bin", 0x2c00, (0x2c14-0x2c00)
gScript_884__0200ac14:
	.incbin "overlays/rom_784360/orig.bin", 0x2c14, (0x2c90-0x2c14)
gScript_884__0200ac90:
	.incbin "overlays/rom_784360/orig.bin", 0x2c90, (0x2cf8-0x2c90)
gScript_884__0200acf8:
	.incbin "overlays/rom_784360/orig.bin", 0x2cf8, (0x2d74-0x2cf8)
gScript_884__0200ad74:
gScript_953__0200ad74:
	.incbin "overlays/rom_784360/orig.bin", 0x2d74, (0x2df0-0x2d74)
gScript_884__0200adf0:
	.incbin "overlays/rom_784360/orig.bin", 0x2df0, (0x2e34-0x2df0)
gScript_884__0200ae34:
gScript_911__0200ae34:
	.incbin "overlays/rom_784360/orig.bin", 0x2e34, (0x2ef0-0x2e34)
gScript_884__0200aef0:
	.incbin "overlays/rom_784360/orig.bin", 0x2ef0, (0x2f50-0x2ef0)
gScript_884__0200af50:
	.incbin "overlays/rom_784360/orig.bin", 0x2f50, (0x2f78-0x2f50)
gScript_884__0200af78:
	.incbin "overlays/rom_784360/orig.bin", 0x2f78, (0x2fa0-0x2f78)
gOvl_0200afa0:
	.incbin "overlays/rom_784360/orig.bin", 0x2fa0, (0x3108-0x2fa0)
.L3108:
	.incbin "overlays/rom_784360/orig.bin", 0x3108, (0x3144-0x3108)
.L3144:
	.incbin "overlays/rom_784360/orig.bin", 0x3144, (0x3170-0x3144)
.L3170:
	.incbin "overlays/rom_784360/orig.bin", 0x3170, (0x3380-0x3170)
.L3380:
	.incbin "overlays/rom_784360/orig.bin", 0x3380, (0x3560-0x3380)
.L3560:
	.incbin "overlays/rom_784360/orig.bin", 0x3560, (0x37d0-0x3560)
.L37d0:
	.incbin "overlays/rom_784360/orig.bin", 0x37d0, (0x3938-0x37d0)
gOvl_0200b938:
	.incbin "overlays/rom_784360/orig.bin", 0x3938, (0x3a64-0x3938)
.L3a64:
	.incbin "overlays/rom_784360/orig.bin", 0x3a64, (0x3b30-0x3a64)
.L3b30:
	.incbin "overlays/rom_784360/orig.bin", 0x3b30, (0x3b3c-0x3b30)
.L3b3c:
	.incbin "overlays/rom_784360/orig.bin", 0x3b3c, (0x3cec-0x3b3c)
.L3cec:
	.incbin "overlays/rom_784360/orig.bin", 0x3cec, (0x3eb4-0x3cec)
.L3eb4:
	.incbin "overlays/rom_784360/orig.bin", 0x3eb4
