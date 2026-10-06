	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8024934  @ 0x08024934
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x174
	str	r2, [sp, #0x54]
	ldr	r5, =iwram_3001e8c
	ldr	r0, [r5]
	mov	r1, #1
	str	r0, [sp, #0x48]
	neg	r1, r1
	mov	r0, #0x80
	str	r1, [sp, #0x44]
	mov	r9, r1
	bl	AllocUploadSpriteGFX
	lsl	r0, #16
	asr	r0, #16
	mov	r3, #0x2a
	str	r0, [sp, #0x40]
	str	r3, [sp]
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	mov	r6, #6
	str	r0, [sp, #0x3c]
	mov	r1, #8
	mov	r2, #0xa
	mov	r3, #3
	mov	r0, #0x14
	str	r6, [sp]
	bl	CreateUIBox
	mov	r2, #0
	str	r0, [sp, #0x38]
	str	r2, [sp, #0x34]
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r0, [r3, #0x34]
	ldr	r1, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r11, r0
	mov	r10, r1
	str	r3, [sp, #0x30]
	str	r6, [sp]
	mov	r2, #0x11
	mov	r3, #9
	mov	r0, #0xd
	mov	r1, #0xb
	bl	CreateUIBox
	mov	r2, #0x9c
	lsl	r2, #1
	add	r2, sp
	ldr	r3, =0xfffffe00
	mov	r7, #0x80
	str	r0, [sp, #0x4c]
	str	r2, [sp, #0x1c]
	mov	r4, #0
	mov	r12, r3
	mov	r5, r2
	lsl	r7, #23
	mov	r6, #0
.L249be:
	lsl	r0, r4, #1
	str	r7, [r5, #4]
	str	r6, [r5, #8]
	ldr	r1, [sp, #0x4c]
	ldrh	r2, [r1, #0xc]
	ldr	r3, .L249fc	@ 0x1ff
	lsl	r2, #3
	ldrh	r1, [r5, #6]
	add	r2, #8
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xe]
	add	r0, r3
	lsl	r0, #3
	add	r0, #4
	add	r4, #1
	strb	r0, [r5, #4]
	add	r5, #0xc
	cmp	r4, #3
	ble	.L249be
	ldr	r3, =0xfffffc00
	ldr	r7, [sp, #0x1c]
	mov	r5, #8
	add	r6, sp, #0x60
	mov	r8, r3
	mov	r4, #3
	b	.L24a0c

	.align	2, 0
.L249fc:
	.word	0x1ff
	.pool

.L24a0c:
	mov	r0, #0x80
	str	r4, [sp, #4]
	bl	AllocUploadSpriteGFX
	mov	r1, #1
	neg	r1, r1
	stmia	r6!, {r0}
	bl	UploadSprite2
	ldr	r3, =0x3ff
	and	r0, r3
	ldrh	r3, [r5, r7]
	mov	r1, r8
	ldr	r4, [sp, #4]
	and	r3, r1
	orr	r3, r0
	sub	r4, #1
	strh	r3, [r5, r7]
	add	r5, #0xc
	cmp	r4, #0
	bge	.L24a0c
	b	.L24a3c

	.pool_aligned

.L24a3c:
	mov	r2, #0x8a
	lsl	r2, #1
	add	r2, sp
	mov	r8, r2
	mov	r0, r8
	bl	_Func_807977c
	str	r0, [sp, #0x50]
	mov	r7, #0
	mov	r3, r0
	sub	r3, #1
	str	r3, [sp, #0x14]
	cmp	r3, #0
	blt	.L24aa0
	mov	r0, sp
	add	r0, #0xf0
	mov	r5, r3
	str	r0, [sp, #0x20]
	add	r5, r8
.L24a62:
	ldrb	r6, [r5]
	mov	r0, r6
	bl	_GetSummonInfo
	ldr	r1, [sp, #0x54]
	add	r0, #4
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	mov	r4, #0
	cmp	r2, r3
	bhi	.L24a8a
.L24a78:
	add	r4, #1
	cmp	r4, #3
	bgt	.L24a8a
	add	r0, #1
	add	r1, #1
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	cmp	r2, r3
	bls	.L24a78
.L24a8a:
	cmp	r4, #4
	bne	.L24a98
	ldr	r2, [sp, #0x20]
	mov	r3, #0x20
	strb	r6, [r2, r7]
	strb	r3, [r5]
	add	r7, #1
.L24a98:
	sub	r5, #1
	cmp	r5, r8
	bge	.L24a62
	b	.L24aa6
.L24aa0:
	mov	r3, sp
	add	r3, #0xf0
	str	r3, [sp, #0x20]
.L24aa6:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	ble	.L24ac8
	ldr	r2, [sp, #0x20]
	add	r1, r7, r2
	ldr	r2, [sp, #0x50]
	mov	r0, r8
.L24ab4:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0x20
	beq	.L24ac2
	strb	r3, [r1]
	add	r7, #1
	add	r1, #1
.L24ac2:
	sub	r2, #1
	cmp	r2, #0
	bne	.L24ab4
.L24ac8:
	ldr	r0, [sp, #0x20]
	mov	r3, #0x20
	strb	r3, [r0, r7]
	mov	r1, #0xb4
	ldr	r3, [sp, #0x40]
	lsl	r1, #1
	mov	r2, r10
	add	r1, sp
	lsl	r2, #1
	lsl	r3, #16
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0xc]
.L24ae2:
	cmp	r11, r9
	bne	.L24aee
	ldr	r0, [sp, #0x44]
	cmp	r10, r0
	bne	.L24aee
	b	.L24d90
.L24aee:
	ldr	r1, [sp, #0x48]
	ldr	r2, =0xea6
	mov	r0, #1
	add	r3, r1, r2
	strb	r0, [r3]
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x44]
	ldrh	r0, [r1, #0xc]
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	str	r3, [sp]
	sub	r2, #2
	add	r1, #1
	mov	r3, #1
	add	r0, #1
	bl	Func_8022768
	bl	Func_8016738
	mov	r3, r11
	ldr	r1, [sp, #0x20]
	add	r3, r10
	ldrb	r0, [r1, r3]
	bl	_GetSummonInfo
	mov	r6, r0
	ldrh	r0, [r6]
	ldr	r3, =0x53a
	add	r5, sp, #0x70
	add	r0, r3
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_801965c
	mov	r2, #0
	ldr	r1, [sp, #0x3c]
	mov	r3, #4
	mov	r0, r5
	bl	Func_8017aa4
	mov	r3, #0
	mov	r2, r10
	str	r3, [sp, #0x34]
	str	r2, [sp, #0x44]
	mov	r1, #1
	mov	r2, #0
	add	r6, #4
.L24b54:
	ldrb	r3, [r6]
	add	r6, #1
	cmp	r3, #0
	beq	.L24b66
	ldr	r0, [sp, #0x34]
	mov	r3, r1
	lsl	r3, r2
	orr	r0, r3
	str	r0, [sp, #0x34]
.L24b66:
	add	r2, #1
	cmp	r2, #3
	ble	.L24b54
	cmp	r11, r9
	bne	.L24b72
	b	.L24d06
.L24b72:
	ldr	r0, [sp, #0x4c]
	bl	Func_8016498
	mov	r5, #0
	mov	r7, #0
	mov	r6, #1
.L24b7e:
	ldr	r2, =0x5001
	ldr	r0, [sp, #0x38]
	add	r1, r5, r2
	mov	r3, #0
	lsl	r2, r5, #1
	str	r7, [sp]
	bl	Func_8019000
	ldr	r3, [sp, #0x54]
	ldrb	r1, [r3, r5]
	mov	r2, r6
	add	r1, #0x30
	ldr	r0, [sp, #0x38]
	mov	r3, #0
	add	r5, #1
	str	r7, [sp]
	add	r6, #2
	bl	Func_8018efc
	cmp	r5, #3
	ble	.L24b7e
	ldr	r0, [sp, #0x20]
	mov	r1, r11
	ldrb	r6, [r0, r1]
	mov	r4, #0
	cmp	r6, #0x20
	bne	.L24bb6
	b	.L24ce8
.L24bb6:
	mov	r2, sp
	add	r2, #0x58
	str	r2, [sp, #8]
.L24bbc:
	mov	r0, r6
	str	r4, [sp, #4]
	bl	_GetSummonInfo
	str	r0, [sp, #0x24]
	mov	r1, r0
	ldr	r0, [sp, #0x54]
	add	r1, #4
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	mov	r7, #0
	ldr	r4, [sp, #4]
	cmp	r2, r3
	bhi	.L24bea
.L24bd8:
	add	r7, #1
	cmp	r7, #3
	bgt	.L24bea
	add	r1, #1
	add	r0, #1
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	cmp	r2, r3
	bls	.L24bd8
.L24bea:
	mov	r3, #4
	eor	r3, r7
	ldr	r2, [sp, #0x24]
	neg	r5, r3
	orr	r5, r3
	ldr	r0, .L24c28	@ 0x3fff
	ldrh	r3, [r2]
	mov	r1, #1
	and	r0, r3
	add	r2, sp, #0x60
	lsl	r3, r4, #2
	lsr	r5, #31
	add	r2, r3
	str	r1, [sp]
	ldr	r3, [sp, #8]
	sub	r5, r1, r5
	mov	r1, #0
	str	r4, [sp, #4]
	bl	LoadMoveIcon
	ldr	r4, [sp, #4]
	lsl	r3, r4, #1
	add	r1, r3, r4
	ldr	r2, [sp, #0x1c]
	mov	r8, r3
	lsl	r1, #2
	ldr	r3, .L24c2c	@ 0x3ff
	ldr	r0, [sp, #0x58]
	add	r1, #8
	and	r0, r3
	b	.L24c3c

	.align	2, 0
.L24c28:
	.word	0x3fff
.L24c2c:
	.word	0x3ff
	.pool

.L24c3c:
	ldrh	r3, [r2, r1]
	ldr	r2, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	ldr	r0, [sp, #0x1c]
	strh	r3, [r0, r1]
	cmp	r5, #0
	bne	.L24c54
	mov	r0, #2
	bl	SetTextColor
	ldr	r4, [sp, #4]
.L24c54:
	mov	r0, r6
	str	r4, [sp, #4]
	bl	_GetSummonInfo
	ldr	r3, =0x333
	ldr	r4, [sp, #4]
	ldrh	r0, [r0]
	ldr	r1, [sp, #0x4c]
	add	r0, r3
	mov	r2, #0x10
	lsl	r3, r4, #4
	bl	Func_801e7c0
	mov	r1, #0
	ldr	r6, [sp, #0x24]
	lsl	r3, r1, #1
	b	.L24c80

	.pool_aligned

.L24c80:
	mov	r5, r3
	ldr	r4, [sp, #4]
	mov	r7, #0
	mov	r9, r1
	add	r6, #4
	add	r5, #0xd
.L24c8c:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L24cbc
	ldr	r2, =0x5001
	mov	r3, r9
	add	r1, r7, r2
	str	r3, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r2, r5
	mov	r3, r8
	str	r4, [sp, #4]
	bl	Func_8019000
	ldrb	r1, [r6]
	mov	r0, r9
	add	r2, r5, #1
	str	r0, [sp]
	add	r1, #0x30
	ldr	r0, [sp, #0x4c]
	mov	r3, r8
	bl	Func_8018efc
	ldr	r4, [sp, #4]
	add	r5, #2
.L24cbc:
	add	r7, #1
	add	r6, #1
	cmp	r7, #3
	ble	.L24c8c
	mov	r0, #0xf
	str	r4, [sp, #4]
	bl	SetTextColor
	ldr	r4, [sp, #4]
	add	r3, sp, #0x5c
	mov	r1, #1
	strb	r1, [r3, r4]
	add	r4, #1
	cmp	r4, #3
	bgt	.L24d04
	mov	r2, r11
	ldr	r0, [sp, #0x20]
	add	r3, r2, r4
	ldrb	r6, [r0, r3]
	cmp	r6, #0x20
	beq	.L24ce8
	b	.L24bbc
.L24ce8:
	cmp	r4, #3
	bgt	.L24d04
	add	r2, sp, #0x174
	ldr	r0, =0xfffffee8
	add	r3, r4, r2
	add	r2, r3, r0
	mov	r3, #4
	mov	r1, #0
	sub	r4, r3, r4
.L24cfa:
	sub	r4, #1
	strb	r1, [r2]
	add	r2, #1
	cmp	r4, #0
	bne	.L24cfa
.L24d04:
	mov	r9, r11
.L24d06:
	ldr	r1, [sp, #0x50]
	cmp	r1, #4
	ble	.L24d60
	mov	r4, #0
	mov	r5, r1
	add	r5, #3
	b	.L24d50

	.pool_aligned

.L24d1c:
	ldr	r2, =0xf301
	mov	r3, r11
	add	r1, r4, r2
	cmp	r3, #0
	bge	.L24d28
	add	r3, #3
.L24d28:
	asr	r3, #2
	cmp	r4, r3
	bne	.L24d32
	ldr	r3, =0xf30b
	add	r1, r4, r3
.L24d32:
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #8]
	sub	r2, r0
	mov	r0, #0
	add	r2, r4
	str	r0, [sp]
	mov	r0, r3
	mov	r3, #1
	sub	r2, #2
	neg	r3, r3
	str	r4, [sp, #4]
	bl	Func_8019000
	ldr	r4, [sp, #4]
	add	r4, #1
.L24d50:
	mov	r3, r5
	cmp	r5, #0
	bge	.L24d5a
	ldr	r3, [sp, #0x50]
	add	r3, #6
.L24d5a:
	asr	r0, r3, #2
	cmp	r4, r0
	blt	.L24d1c
.L24d60:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x10]
	ldrh	r0, [r1, #0xc]
	ldr	r3, [sp, #0x4c]
	ldrh	r1, [r1, #0xe]
	add	r1, r2
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r0, #1
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	mov	r3, #1
	bl	Func_8022768
	ldr	r1, =0xea3
	ldr	r0, [sp, #0x48]
	mov	r2, #1
	add	r3, r0, r1
	add	r1, #3
	strb	r2, [r3]
	add	r3, r0, r1
	mov	r2, #0
	strb	r2, [r3]
.L24d90:
	ldr	r6, [sp, #0x1c]
	mov	r4, #0
	add	r5, sp, #0x5c
.L24d96:
	ldrb	r3, [r5]
	add	r5, #1
	cmp	r3, #0
	beq	.L24daa
	mov	r0, r6
	mov	r1, #0xf0
	str	r4, [sp, #4]
	bl	Func_8003dec
	ldr	r4, [sp, #4]
.L24daa:
	add	r4, #1
	add	r6, #0xc
	cmp	r4, #3
	ble	.L24d96
	ldr	r0, [sp, #0x4c]
	ldrh	r3, [r0, #0xc]
	lsl	r3, #3
	sub	r3, #2
	ldr	r1, [sp, #0x10]
	str	r3, [sp, #0x28]
	ldrh	r3, [r0, #0xe]
	add	r3, r1, r3
	lsl	r3, #3
	add	r3, #0x14
	ldr	r2, [sp, #0x18]
	str	r3, [sp, #0x2c]
	mov	r3, #0x80
	lsl	r3, #23
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r1, [sp, #0xc]
	lsr	r0, r1, #16
	ldr	r1, =Data_310a4
	bl	UploadSprite2
	ldr	r3, .L24e10	@ 0x3ff
	ldr	r2, [sp, #0x18]
	and	r0, r3
	ldrh	r3, [r2, #8]
	ldr	r2, .L24e14	@ 0xfffffc00
	ldr	r1, =iwram_3001e40
	and	r3, r2
	orr	r3, r0
	ldr	r0, [sp, #0x18]
	ldr	r2, [r1]
	strh	r3, [r0, #8]
	mov	r0, #4
	ldr	r3, [sp, #0x28]
	and	r2, r0
	ldr	r1, =0xfffc
	lsr	r2, #1
	add	r2, r3, r2
	add	r2, r1
	ldr	r3, .L24e18	@ 0x1ff
	ldr	r1, [sp, #0x18]
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L24e1c	@ 0xfffffe00
	and	r3, r1
	b	.L24e38

	.align	2, 0
.L24e10:
	.word	0x3ff
.L24e14:
	.word	0xfffffc00
.L24e18:
	.word	0x1ff
.L24e1c:
	.word	0xfffffe00
	.pool

.L24e38:
	orr	r3, r2
	ldr	r1, =iwram_3001e40
	ldr	r2, [sp, #0x18]
	strh	r3, [r2, #6]
	ldr	r3, [r1]
	ldr	r2, [sp, #0x2c]
	and	r3, r0
	lsr	r3, #2
	ldr	r0, [sp, #0x18]
	sub	r3, r2, r3
	add	r3, #0xf8
	strb	r3, [r0, #4]
	mov	r1, #0xf2
	ldr	r0, [sp, #0x18]
	bl	Func_8003dec
	ldr	r1, =iwram_3001e40
	ldr	r6, [r1]
	mov	r3, #8
	and	r6, r3
	mov	r5, #0
.L24e62:
	neg	r3, r6
	orr	r3, r6
	lsr	r3, #31
	mov	r2, r3
	mov	r3, #0xf
	sub	r2, r3, r2
	ldr	r0, [sp, #0x34]
	mov	r3, #1
	lsl	r3, r5
	and	r3, r0
	cmp	r3, #0
	bne	.L24e7c
	mov	r2, #0xf
.L24e7c:
	ldr	r1, [sp, #0x38]
	ldrh	r0, [r1, #0xc]
	lsl	r3, r5, #1
	ldrh	r1, [r1, #0xe]
	add	r0, r3
	str	r2, [sp]
	add	r0, #1
	add	r1, #1
	mov	r2, #2
	mov	r3, #1
	add	r5, #1
	bl	Func_8022768
	cmp	r5, #3
	ble	.L24e62
	ldr	r2, [sp, #0x50]
	cmp	r2, #4
	ble	.L24f48
	mov	r4, #0
	mov	r5, r2
	add	r5, #3
	b	.L24ef2
.L24ea8:
	ldr	r3, =0xf301
	ldr	r0, =iwram_3001e40
	add	r1, r4, r3
	ldr	r3, [r0]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L24eca
	mov	r3, r11
	cmp	r3, #0
	bge	.L24ec0
	add	r3, #3
.L24ec0:
	asr	r3, #2
	cmp	r4, r3
	bne	.L24eca
	ldr	r2, =0xf30b
	add	r1, r4, r2
.L24eca:
	ldr	r0, [sp, #0x4c]
	mov	r2, r5
	ldrh	r3, [r0, #8]
	cmp	r5, #0
	bge	.L24ed8
	ldr	r2, [sp, #0x50]
	add	r2, #6
.L24ed8:
	asr	r2, #2
	sub	r2, r3, r2
	add	r2, r4
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	ldr	r0, [sp, #0x4c]
	sub	r3, #1
	str	r4, [sp, #4]
	bl	Func_8019000
	ldr	r4, [sp, #4]
	add	r4, #1
.L24ef2:
	mov	r3, r5
	cmp	r5, #0
	bge	.L24efc
	ldr	r3, [sp, #0x50]
	add	r3, #6
.L24efc:
	asr	r2, r3, #2
	cmp	r4, r2
	blt	.L24ea8
	ldr	r0, [sp, #0x4c]
	ldrh	r3, [r0, #8]
	mov	r5, #1
	neg	r5, r5
	sub	r2, r3, r2
	mov	r1, #0
	str	r1, [sp]
	ldr	r0, [sp, #0x4c]
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf334
	bl	Func_8019000
	ldr	r3, [sp, #0x4c]
	ldrh	r2, [r3, #8]
	mov	r0, #0
	str	r0, [sp]
	sub	r2, #2
	mov	r0, r3
	ldr	r1, =0xf335
	mov	r3, r5
	bl	Func_8019000
	ldr	r2, [sp, #0x48]
	ldr	r3, =0xea3
	ldr	r0, [sp, #0x4c]
	add	r1, r2, r3
	ldrh	r3, [r0, #0xe]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L24f48:
	ldr	r3, =iwram_3001f34
	ldr	r2, [r3]
	mov	r1, r11
	mov	r3, r10
	str	r1, [r2, #0x34]
	str	r3, [r2, #0x30]
	ldr	r0, [sp, #0x30]
	str	r0, [r2, #0x38]
	ldr	r3, =gKeyPress
	ldr	r1, [r3]
	ldr	r3, =gKeyRepeat
	ldr	r0, [r3]
	mov	r3, r2
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24f84
	add	r2, #0xdc
	ldr	r3, [r2]
	mov	r0, #0
	mov	r1, #0
	cmp	r3, #0
	bne	.L24f80
	mov	r3, #0x78
	str	r3, [r2]
	mov	r0, #1
	mov	r1, #1
	b	.L24f84
.L24f80:
	sub	r3, #1
	str	r3, [r2]
.L24f84:
	mov	r3, r1
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L24f98
	mov	r3, r11
	ldr	r0, [sp, #0x20]
	add	r3, r10
	ldrb	r6, [r0, r3]
	b	.L25106
.L24f98:
	ldr	r3, =iwram_3001f34
	ldr	r3, [r3]
	ldr	r3, [r3, #0x4c]
	cmp	r3, #0
	beq	.L24faa
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L24fb6
.L24faa:
	mov	r0, #0x71
	mov	r6, #1
	bl	_PlaySound
	neg	r6, r6
	b	.L25106
.L24fb6:
	mov	r3, #0x80
	and	r3, r0
	cmp	r3, #0
	beq	.L24fe6
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #4
	beq	.L24fd8
	mov	r3, r11
	ldr	r0, [sp, #0x50]
	add	r3, r10
	cmp	r3, r0
	bne	.L24fdc
.L24fd8:
	mov	r1, #0
	mov	r10, r1
.L24fdc:
	mov	r3, r10
	mov	r2, r10
	lsl	r3, #1
	str	r2, [sp, #0x30]
	b	.L250fc
.L24fe6:
	mov	r3, #0x40
	and	r3, r0
	cmp	r3, #0
	beq	.L2502c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
	add	r10, r0
	mov	r1, r10
	cmp	r1, #0
	bge	.L25022
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bge	.L2500a
	ldr	r3, [sp, #0x50]
	add	r3, #2
.L2500a:
	asr	r3, #2
	lsl	r3, #2
	cmp	r11, r3
	bne	.L2501e
	ldr	r2, [sp, #0x50]
	mov	r0, r11
	sub	r3, r2, r0
	sub	r3, #1
	mov	r10, r3
	b	.L25022
.L2501e:
	mov	r1, #3
	mov	r10, r1
.L25022:
	mov	r3, r10
	mov	r2, r10
	lsl	r3, #1
	str	r2, [sp, #0x30]
	b	.L250fc
.L2502c:
	mov	r3, #0x10
	and	r3, r0
	cmp	r3, #0
	beq	.L2508a
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r3, r11
	ldr	r0, [sp, #0x50]
	add	r3, #4
	cmp	r3, r0
	blt	.L2505e
	mov	r1, r11
	cmp	r1, #0
	beq	.L250fe
	ldr	r3, [sp, #0x30]
	mov	r10, r3
	mov	r0, r10
	mov	r2, #0
	lsl	r0, #1
	mov	r11, r2
	str	r0, [sp, #0x10]
	b	.L250fe
.L2505e:
	mov	r11, r3
	ldr	r1, [sp, #0x30]
	ldr	r3, [sp, #0x14]
	mov	r10, r1
	cmp	r3, #0
	bge	.L2506e
	ldr	r3, [sp, #0x50]
	add	r3, #2
.L2506e:
	asr	r3, #2
	lsl	r3, #2
	cmp	r11, r3
	bne	.L250e0
	ldr	r2, [sp, #0x50]
	mov	r0, r11
	sub	r3, r2, r0
	sub	r3, #1
	ldr	r1, [sp, #0x30]
	mov	r10, r3
	cmp	r10, r1
	ble	.L250e8
	mov	r10, r1
	b	.L250f0
.L2508a:
	mov	r3, #0x20
	and	r3, r0
	cmp	r3, #0
	beq	.L250fe
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r3, r11
	cmp	r3, #0
	beq	.L250b4
	ldr	r1, [sp, #0x30]
	mov	r10, r1
	mov	r0, #4
	mov	r2, r10
	neg	r0, r0
	lsl	r2, #1
	add	r11, r0
	str	r2, [sp, #0x10]
	b	.L250fe
.L250b4:
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bge	.L250be
	ldr	r3, [sp, #0x50]
	add	r3, #2
.L250be:
	asr	r3, #2
	lsl	r3, #2
	mov	r11, r3
	ldr	r3, [sp, #0x30]
	mov	r0, r11
	mov	r10, r3
	cmp	r0, #0
	beq	.L250f0
	ldr	r1, [sp, #0x50]
	sub	r3, r1, r0
	sub	r3, #1
	ldr	r2, [sp, #0x30]
	mov	r10, r3
	cmp	r10, r2
	ble	.L250f8
	mov	r10, r2
	b	.L250f8
.L250e0:
	mov	r0, r10
	lsl	r0, #1
	str	r0, [sp, #0x10]
	b	.L250fe
.L250e8:
	mov	r1, r10
	lsl	r1, #1
	str	r1, [sp, #0x10]
	b	.L250fe
.L250f0:
	mov	r2, r10
	lsl	r2, #1
	str	r2, [sp, #0x10]
	b	.L250fe
.L250f8:
	mov	r3, r10
	lsl	r3, #1
.L250fc:
	str	r3, [sp, #0x10]
.L250fe:
	mov	r0, #1
	bl	WaitFrames
	b	.L24ae2
.L25106:
	mov	r0, #1
	bl	WaitFrames
	mov	r4, #3
	add	r5, sp, #0x60
.L25110:
	ldmia	r5!, {r0}
	str	r4, [sp, #4]
	bl	Func_8003f3c
	ldr	r4, [sp, #4]
	sub	r4, #1
	cmp	r4, #0
	bge	.L25110
	ldr	r1, [sp, #0xc]
	lsr	r0, r1, #16
	bl	Func_8003f3c
	mov	r1, #1
	ldr	r0, [sp, #0x38]
	bl	CloseUIBox
	mov	r1, #1
	ldr	r0, [sp, #0x3c]
	bl	CloseUIBox
	mov	r1, #1
	ldr	r0, [sp, #0x4c]
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r6
	add	sp, #0x174
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8024934
