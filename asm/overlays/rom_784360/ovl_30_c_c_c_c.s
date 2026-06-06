	.include "macros.inc"

.thumb_func_start OvlFunc_884_200a580
	push	{lr}
	mov	r0, #0xf
	bl	__Func_8092054
	bl	OvlFunc_884_200a334
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a580

.thumb_func_start OvlFunc_884_200a590
	push	{lr}
	mov	r0, #0x11
	bl	__Func_8092054
	bl	OvlFunc_884_200a334
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a590

.thumb_func_start OvlFunc_884_200a5a0
	push	{lr}
	mov	r0, #0x14
	bl	__Func_8092054
	bl	OvlFunc_884_200a370
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a5a0

.thumb_func_start OvlFunc_884_200a5b0
	push	{lr}
	mov	r0, #0xb0
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r0, =0x16d
	bl	__Func_8079358
	ldr	r0, =0x844
	bl	__Func_8079358
	ldr	r0, =0x845
	bl	__Func_8079358
	mov	r0, #0x28
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a5b0

	.section .data
	.global .L2874
	.global .L28e8
	.global .L2940
	.global .L2998
	.global .L29f0
	.global .L2a48
	.global .L2b2c
	.global .L2c00
	.global .L2c14
	.global .L2c90
	.global .L2cf8
	.global .L2d74
	.global .L2df0
	.global .L2e34
	.global .L2ef0
	.global .L2f50
	.global .L2f78
	.global .L3108
	.global .L3144
	.global .L3170
	.global .L3380
	.global .L3560
	.global .L37d0
	.global .L3938
	.global .L3a64
	.global .L3b30
	.global .L3b3c
	.global .L3cec
	.global .L3eb4
	.global .L2fa0

	.incbin "overlays/rom_784360/orig.bin", 0x2854, (0x2874-0x2854)
.L2874:
	.incbin "overlays/rom_784360/orig.bin", 0x2874, (0x28e8-0x2874)
.L28e8:
	.incbin "overlays/rom_784360/orig.bin", 0x28e8, (0x2940-0x28e8)
.L2940:
	.incbin "overlays/rom_784360/orig.bin", 0x2940, (0x2998-0x2940)
.L2998:
	.incbin "overlays/rom_784360/orig.bin", 0x2998, (0x29f0-0x2998)
.L29f0:
	.incbin "overlays/rom_784360/orig.bin", 0x29f0, (0x2a48-0x29f0)
.L2a48:
	.incbin "overlays/rom_784360/orig.bin", 0x2a48, (0x2b2c-0x2a48)
.L2b2c:
	.incbin "overlays/rom_784360/orig.bin", 0x2b2c, (0x2c00-0x2b2c)
.L2c00:
	.incbin "overlays/rom_784360/orig.bin", 0x2c00, (0x2c14-0x2c00)
.L2c14:
	.incbin "overlays/rom_784360/orig.bin", 0x2c14, (0x2c90-0x2c14)
.L2c90:
	.incbin "overlays/rom_784360/orig.bin", 0x2c90, (0x2cf8-0x2c90)
.L2cf8:
	.incbin "overlays/rom_784360/orig.bin", 0x2cf8, (0x2d74-0x2cf8)
.L2d74:
	.incbin "overlays/rom_784360/orig.bin", 0x2d74, (0x2df0-0x2d74)
.L2df0:
	.incbin "overlays/rom_784360/orig.bin", 0x2df0, (0x2e34-0x2df0)
.L2e34:
	.incbin "overlays/rom_784360/orig.bin", 0x2e34, (0x2ef0-0x2e34)
.L2ef0:
	.incbin "overlays/rom_784360/orig.bin", 0x2ef0, (0x2f50-0x2ef0)
.L2f50:
	.incbin "overlays/rom_784360/orig.bin", 0x2f50, (0x2f78-0x2f50)
.L2f78:
	.incbin "overlays/rom_784360/orig.bin", 0x2f78, (0x2fa0-0x2f78)
.L2fa0:
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
.L3938:
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
