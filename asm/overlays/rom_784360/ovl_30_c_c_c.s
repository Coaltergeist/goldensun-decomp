	.include "macros.inc"

.thumb_func_start OvlFunc_884_200a370
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_3001e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2392
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r5
	bl	__Func_800c598
.L2392:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a370

.thumb_func_start OvlFunc_884_200a39c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L23bc
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L23e6
.L23bc:
	lsl	r0, #10
	bl	__Func_8002322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L23e6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a39c

.thumb_func_start OvlFunc_884_200a3ec
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L240c
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L2438
.L240c:
	lsl	r0, #10
	bl	__Func_8002322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L2438:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a3ec

.thumb_func_start OvlFunc_884_200a440
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0x83
	sub	sp, #8
	mov	r11, r3
	bl	__Func_80f9080
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L2466:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_800c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L2514
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L249c	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L2514
	b	.L24a4

	.align	2, 0
.L249c:
	.word	0
	.pool

.L24a4:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_8003f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_3001b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L250c	@ 0xffffffc0
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L2514

	.align	2, 0
.L250c:
	.word	0xfffffc00
	.pool

.L2514:
	add	r7, #1
	cmp	r7, #1
	ble	.L2466
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_884_200a3ec
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	mov	r3, r10
	ldr	r1, [r3, #4]
	ldr	r0, [r1, #0x50]
	ldrb	r3, [r0, #9]
	and	r2, r3
	ldr	r3, =OvlFunc_884_200a39c
	orr	r2, r4
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r2, [r0, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a440

.thumb_func_start OvlFunc_884_200a564
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_8096fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a564

.thumb_func_start OvlFunc_884_200a574
	push	{lr}
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200a574

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
