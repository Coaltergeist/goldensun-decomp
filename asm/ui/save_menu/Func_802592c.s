	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_802592c  @ 0x0802592c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x12c
	str	r1, [sp, #0x48]
	str	r2, [sp, #0x44]
	ldr	r5, =iwram_3001e8c
	mov	r6, r0
	ldr	r0, [r5]
	mov	r1, #1
	str	r0, [sp, #0x40]
	neg	r1, r1
	mov	r0, #0x80
	str	r1, [sp, #0x38]
	mov	r9, r1
	bl	AllocUploadSpriteGFX
	str	r0, [sp, #0x34]
	mov	r0, r6
	bl	_GetUnit
	mov	r3, #0x2a
	str	r0, [sp, #0x30]
	str	r3, [sp]
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	mov	r2, #5
	str	r0, [sp, #0x2c]
	str	r2, [sp, #0x28]
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r0, [r3, #0x34]
	str	r0, [sp, #0x3c]
	ldr	r1, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r10, r1
	str	r3, [sp, #0x24]
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #0x15
	mov	r3, #0xb
	mov	r0, #9
	mov	r1, #9
	bl	CreateUIBox
	mov	r2, sp
	add	r2, #0x50
	ldr	r3, =0xfffffe00
	mov	r6, #0x80
	str	r2, [sp, #0xc]
	mov	r11, r0
	mov	r7, #0
	mov	r12, r3
	mov	r4, r2
	lsl	r6, #23
	mov	r5, #0
.L259ac:
	lsl	r0, r7, #1
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	mov	r1, r11
	ldrh	r2, [r1, #0xc]
	ldr	r3, .L259ec	@ 0x1ff
	lsl	r2, #3
	ldrh	r1, [r4, #6]
	add	r2, #8
	and	r2, r3
	mov	r3, r12
	and	r3, r1
	orr	r3, r2
	mov	r2, r11
	strh	r3, [r4, #6]
	ldrh	r3, [r2, #0xe]
	add	r0, r3
	lsl	r0, #3
	add	r0, #4
	add	r7, #1
	strb	r0, [r4, #4]
	add	r4, #0xc
	cmp	r7, #4
	ble	.L259ac
	mov	r3, sp
	add	r3, #0x8c
	ldr	r0, =0xfffffc00
	str	r3, [sp, #8]
	ldr	r6, [sp, #0xc]
	str	r3, [sp, #4]
	mov	r5, #8
	b	.L259fc

	.align	2, 0
.L259ec:
	.word	0x1ff
	.pool

.L259fc:
	mov	r8, r0
	mov	r7, #4
.L25a00:
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	ldr	r2, [sp, #4]
	stmia	r2!, {r0}
	mov	r1, r2
	str	r1, [sp, #4]
	mov	r1, #1
	neg	r1, r1
	bl	UploadSprite2
	ldr	r3, =0x3ff
	and	r0, r3
	ldrh	r3, [r5, r6]
	mov	r1, r8
	and	r3, r1
	orr	r3, r0
	sub	r7, #1
	strh	r3, [r5, r6]
	add	r5, #0xc
	cmp	r7, #0
	bge	.L25a00
	ldr	r5, =0xf018
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #2
	bl	Func_80251d4
	mov	r0, r5
	ldr	r1, =0x201
	bl	Func_80251d4
	add	r5, #1
	mov	r1, #0x84
	lsl	r1, #2
	mov	r0, r5
	b	.L25a58

	.pool_aligned

.L25a58:
	bl	Func_80251d4
	ldr	r1, =0x211
	mov	r0, r5
	bl	Func_80251d4
	mov	r2, #0x90
	lsl	r2, #1
	mov	r3, r10
	add	r2, sp
	lsl	r3, #1
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x14]
.L25a72:
	ldr	r0, [sp, #0x3c]
	cmp	r0, r9
	bne	.L25a80
	ldr	r1, [sp, #0x38]
	cmp	r10, r1
	bne	.L25a80
	b	.L25cd6
.L25a80:
	ldr	r3, [sp, #0x40]
	ldr	r0, =0xea6
	add	r2, r3, r0
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [sp, #0x38]
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r11
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	str	r3, [sp]
	add	r0, #1
	add	r1, #1
	sub	r2, #2
	mov	r3, #1
	bl	Func_8022768
	bl	Func_8016738
	ldr	r0, [sp, #0x44]
	cmp	r0, #0
	beq	.L25ae4
	ldr	r3, [sp, #0x3c]
	ldr	r1, [sp, #0x48]
	add	r3, r10
	lsl	r3, #1
	ldrh	r3, [r3, r1]
	ldr	r0, .L25ad4	@ 0x3fff
	and	r0, r3
	ldr	r3, =0x53a
	add	r5, sp, #0xa0
	add	r0, r3
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_801965c
	b	.L25af0

	.align	2, 0
.L25ad4:
	.word	0x3fff
	.pool

.L25ae4:
	add	r5, sp, #0xa0
	ldr	r0, =0x8e7
	mov	r1, r5
	mov	r2, #0x34
	bl	Func_801965c
.L25af0:
	mov	r2, #0
	mov	r3, #4
	mov	r0, r5
	ldr	r1, [sp, #0x2c]
	bl	Func_8017aa4
	ldr	r3, [sp, #0x3c]
	mov	r2, r10
	str	r2, [sp, #0x38]
	cmp	r3, r9
	bne	.L25b08
	b	.L25c5c
.L25b08:
	mov	r0, r11
	bl	Func_8016498
	ldr	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x48]
	lsl	r3, r0, #1
	ldrh	r5, [r3, r1]
	mov	r7, #0
	cmp	r5, #0
	bne	.L25b1e
	b	.L25c56
.L25b1e:
	mov	r2, sp
	add	r2, #0x4c
	str	r2, [sp, #0x10]
.L25b24:
	mov	r0, r5
	bl	_GetMoveInfo
	mov	r8, r0
	mov	r0, #0
	str	r0, [sp]
	lsl	r3, r7, #1
	mov	r0, r11
	ldr	r1, =0xf01f
	mov	r2, #0xb
	mov	r9, r3
	bl	Func_8019000
	mov	r1, #0
	str	r1, [sp]
	mov	r0, r11
	ldr	r1, =0xf01e
	mov	r2, #0xc
	mov	r3, r9
	bl	Func_8019000
	ldr	r3, [sp, #8]
	ldr	r0, =0x3fff
	lsl	r2, r7, #2
	add	r2, r3, r2
	mov	r3, #1
	and	r0, r5
	str	r3, [sp]
	mov	r1, #0
	ldr	r3, [sp, #0x10]
	bl	LoadMoveIcon
	mov	r0, r9
	add	r1, r0, r7
	ldr	r2, [sp, #0xc]
	ldr	r3, .L25b94	@ 0x3ff
	lsl	r1, #2
	ldr	r0, [sp, #0x4c]
	add	r1, #8
	and	r0, r3
	ldrh	r3, [r2, r1]
	ldr	r2, .L25b98	@ 0xfffffc00
	and	r3, r2
	orr	r3, r0
	ldr	r0, [sp, #0xc]
	strh	r3, [r0, r1]
	mov	r1, r8
	ldrb	r2, [r1, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.L25bac
	mov	r0, #4
	bl	SetTextColor
	b	.L25bd4

	.align	2, 0
.L25b94:
	.word	0x3ff
.L25b98:
	.word	0xfffffc00
	.pool

.L25bac:
	ldr	r1, [sp, #0x30]
	mov	r3, r8
	ldrb	r2, [r3, #9]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	cmp	r2, r3
	ble	.L25bc2
	mov	r0, #2
	bl	SetTextColor
	b	.L25bd4
.L25bc2:
	ldr	r2, [sp, #0x30]
	ldr	r0, =0x13d
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L25bd4
	mov	r0, #9
	bl	SetTextColor
.L25bd4:
	ldr	r1, [sp, #0x40]
	ldr	r2, =0xea7
	ldr	r0, =0x333
	add	r6, r1, r2
	add	r0, r5, r0
	mov	r3, #5
	lsl	r5, r7, #4
	strb	r3, [r6]
	mov	r1, r11
	mov	r2, #0x10
	mov	r3, r5
	bl	Func_801e7c0
	mov	r3, r8
	ldrb	r0, [r3, #9]
	mov	r1, #2
	mov	r3, #0x68
	mov	r2, r11
	str	r5, [sp]
	bl	Func_801e9d4
	mov	r0, #0xf
	bl	SetTextColor
	mov	r3, #0xf
	mov	r0, r8
	strb	r3, [r6]
	ldrb	r3, [r0, #2]
	cmp	r3, #4
	beq	.L25c24
	ldr	r2, =0x5001
	mov	r1, r3
	mov	r3, #0
	add	r1, r2
	str	r3, [sp]
	mov	r0, r11
	mov	r2, #0xf
	mov	r3, r9
	bl	Func_8019000
.L25c24:
	mov	r0, r8
	ldrb	r3, [r0, #8]
	cmp	r3, #0xff
	bne	.L25c30
	mov	r3, #0xb
	b	.L25c32
.L25c30:
	sub	r3, #1
.L25c32:
	mov	r1, #0
	str	r1, [sp]
	mov	r0, r11
	mov	r1, #0x10
	mov	r2, r9
	add	r7, #1
	bl	Func_80218dc
	cmp	r7, #4
	bgt	.L25c56
	ldr	r2, [sp, #0x3c]
	ldr	r0, [sp, #0x48]
	add	r3, r2, r7
	lsl	r3, #1
	ldrh	r5, [r3, r0]
	cmp	r5, #0
	beq	.L25c56
	b	.L25b24
.L25c56:
	ldr	r1, [sp, #0x3c]
	str	r7, [sp, #0x28]
	mov	r9, r1
.L25c5c:
	ldr	r2, [sp, #0x44]
	cmp	r2, #5
	ble	.L25ca6
	mov	r7, #0
	add	r2, #4
	mov	r8, r2
	b	.L25c98
.L25c6a:
	ldr	r3, =0xf301
	ldr	r0, [sp, #0x3c]
	mov	r1, #5
	add	r6, r7, r3
	bl	__divsi3
	cmp	r7, r0
	bne	.L25c7e
	ldr	r0, =0xf30b
	add	r6, r7, r0
.L25c7e:
	mov	r1, r11
	ldrh	r2, [r1, #8]
	sub	r2, r5
	add	r2, r7
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r11
	mov	r1, r6
	sub	r3, #1
	bl	Func_8019000
	add	r7, #1
.L25c98:
	mov	r0, r8
	mov	r1, #5
	bl	__divsi3
	mov	r5, r0
	cmp	r7, r5
	blt	.L25c6a
.L25ca6:
	mov	r1, r11
	ldrh	r0, [r1, #0xc]
	ldr	r2, [sp, #0x14]
	ldrh	r1, [r1, #0xe]
	mov	r3, r11
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
	ldr	r0, [sp, #0x40]
	mov	r3, #1
	add	r2, r0, r1
	strb	r3, [r2]
	ldr	r2, =0xea6
	add	r3, r0, r2
	mov	r0, #0
	strb	r0, [r3]
.L25cd6:
	ldr	r1, [sp, #0x44]
	cmp	r1, #5
	ble	.L25d98
	mov	r7, #0
	add	r1, #4
	mov	r8, r1
	b	.L25d48

	.pool_aligned

.L25d04:
	ldr	r0, =iwram_3001e40
	ldr	r2, =0xf301
	ldr	r3, [r0]
	add	r6, r7, r2
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L25d24
	ldr	r0, [sp, #0x3c]
	mov	r1, #5
	bl	__divsi3
	cmp	r7, r0
	bne	.L25d24
	ldr	r1, =0xf30b
	add	r6, r7, r1
.L25d24:
	mov	r2, r11
	mov	r1, #5
	mov	r0, r8
	ldrh	r5, [r2, #8]
	bl	__divsi3
	sub	r5, r0
	add	r5, r7
	mov	r3, #0
	sub	r5, #2
	str	r3, [sp]
	mov	r0, r11
	mov	r1, r6
	mov	r2, r5
	sub	r3, #1
	bl	Func_8019000
	add	r7, #1
.L25d48:
	mov	r0, r8
	mov	r1, #5
	bl	__divsi3
	cmp	r7, r0
	blt	.L25d04
	mov	r1, r11
	ldrh	r2, [r1, #8]
	mov	r5, #1
	neg	r5, r5
	sub	r2, r0
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r11
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf334
	bl	Func_8019000
	mov	r0, r11
	ldrh	r2, [r0, #8]
	mov	r1, #0
	str	r1, [sp]
	sub	r2, #2
	ldr	r1, =0xf335
	mov	r3, r5
	bl	Func_8019000
	ldr	r2, [sp, #0x40]
	ldr	r3, =0xea3
	mov	r0, r11
	add	r1, r2, r3
	ldrh	r3, [r0, #0xe]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L25d98:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0
	ble	.L25db2
	ldr	r5, [sp, #0xc]
	mov	r7, r1
.L25da2:
	mov	r0, r5
	mov	r1, #0xf0
	sub	r7, #1
	bl	Func_8003dec
	add	r5, #0xc
	cmp	r7, #0
	bne	.L25da2
.L25db2:
	mov	r2, r11
	ldrh	r3, [r2, #0xc]
	lsl	r3, #3
	sub	r3, #4
	ldr	r0, [sp, #0x14]
	str	r3, [sp, #0x1c]
	ldrh	r3, [r2, #0xe]
	add	r3, r0, r3
	lsl	r3, #3
	add	r3, #0x14
	ldr	r1, [sp, #0x18]
	str	r3, [sp, #0x20]
	mov	r3, #0x80
	lsl	r3, #23
	mov	r2, #0
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [sp, #0x34]
	ldr	r1, =Data_310a4
	bl	UploadSprite2
	ldr	r3, .L25e10	@ 0x3ff
	ldr	r1, [sp, #0x18]
	and	r0, r3
	ldr	r2, .L25e14	@ 0xfffffc00
	ldrh	r3, [r1, #8]
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r0, #4
	and	r2, r0
	ldr	r1, [sp, #0x1c]
	ldr	r3, =0xfffc
	lsr	r2, #1
	add	r2, r1, r2
	add	r2, r3
	ldr	r1, [sp, #0x18]
	ldr	r3, .L25e18	@ 0x1ff
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L25e1c	@ 0xfffffe00
	and	r3, r1
	b	.L25e40

	.align	2, 0
.L25e10:
	.word	0x3ff
.L25e14:
	.word	0xfffffc00
.L25e18:
	.word	0x1ff
.L25e1c:
	.word	0xfffffe00
	.pool

.L25e40:
	orr	r3, r2
	ldr	r1, =iwram_3001e40
	ldr	r2, [sp, #0x18]
	strh	r3, [r2, #6]
	ldr	r3, [r1]
	ldr	r2, [sp, #0x20]
	and	r3, r0
	lsr	r3, #2
	sub	r3, r2, r3
	ldr	r0, [sp, #0x18]
	add	r3, #0xf8
	strb	r3, [r0, #4]
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	beq	.L25e66
	ldr	r0, [sp, #0x18]
	mov	r1, #0xf2
	bl	Func_8003dec
.L25e66:
	ldr	r3, =iwram_3001f34
	ldr	r2, [sp, #0x3c]
	ldr	r1, [r3]
	mov	r3, r10
	str	r2, [r1, #0x34]
	str	r3, [r1, #0x30]
	ldr	r0, [sp, #0x24]
	str	r0, [r1, #0x38]
	ldr	r0, =gKeyPress
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L25eaa
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	beq	.L25ea4
	ldr	r6, [sp, #0x3c]
	ldr	r2, [sp, #0x48]
	add	r6, r10
	lsl	r3, r6, #1
	ldrh	r0, [r3, r2]
	bl	_GetMoveInfo
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L25ea2
	b	.L2602a
.L25ea2:
	b	.L25ec6
.L25ea4:
	mov	r6, #1
	neg	r6, r6
	b	.L2602a
.L25eaa:
	ldr	r3, [r1, #0x4c]
	cmp	r3, #0
	beq	.L25eba
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L25ec6
.L25eba:
	mov	r0, #0x71
	mov	r6, #1
	bl	_PlaySound
	neg	r6, r6
	b	.L2602a
.L25ec6:
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	bne	.L25ece
	b	.L26022
.L25ece:
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L25f04
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	cmp	r1, #5
	beq	.L25ef4
	ldr	r3, [sp, #0x3c]
	ldr	r2, [sp, #0x44]
	add	r3, r10
	cmp	r3, r2
	bne	.L25ef8
.L25ef4:
	mov	r3, #0
	mov	r10, r3
.L25ef8:
	mov	r1, r10
	mov	r0, r10
	lsl	r1, #1
	str	r0, [sp, #0x24]
	str	r1, [sp, #0x14]
	b	.L26022
.L25f04:
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L25f4e
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L25f42
	ldr	r0, [sp, #0x44]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, [sp, #0x3c]
	cmp	r0, r3
	bne	.L25f3e
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r0
	sub	r3, #1
	mov	r10, r3
	b	.L25f42
.L25f3e:
	mov	r2, #4
	mov	r10, r2
.L25f42:
	mov	r0, r10
	mov	r3, r10
	lsl	r0, #1
	str	r3, [sp, #0x24]
	str	r0, [sp, #0x14]
	b	.L26022
.L25f4e:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L25fae
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	ldr	r3, [sp, #0x3c]
	ldr	r1, [sp, #0x44]
	add	r3, #5
	cmp	r3, r1
	blt	.L25f82
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0
	beq	.L26022
	ldr	r0, [sp, #0x24]
	mov	r10, r0
	mov	r1, r10
	mov	r3, #0
	lsl	r1, #1
	str	r3, [sp, #0x3c]
	str	r1, [sp, #0x14]
	b	.L26022
.L25f82:
	ldr	r0, [sp, #0x44]
	ldr	r2, [sp, #0x24]
	sub	r0, #1
	mov	r1, #5
	str	r3, [sp, #0x3c]
	mov	r10, r2
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, [sp, #0x3c]
	cmp	r0, r3
	bne	.L26004
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r0
	sub	r3, #1
	ldr	r2, [sp, #0x24]
	mov	r10, r3
	cmp	r10, r2
	ble	.L2600c
	mov	r10, r2
	b	.L2601c
.L25fae:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L26022
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0
	beq	.L25fd8
	ldr	r1, [sp, #0x24]
	mov	r10, r1
	mov	r2, r10
	sub	r0, #5
	lsl	r2, #1
	str	r0, [sp, #0x3c]
	str	r2, [sp, #0x14]
	b	.L26022
.L25fd8:
	ldr	r0, [sp, #0x44]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	str	r3, [sp, #0x3c]
	ldr	r0, [sp, #0x3c]
	ldr	r3, [sp, #0x24]
	mov	r10, r3
	cmp	r0, #0
	beq	.L26014
	ldr	r1, [sp, #0x44]
	sub	r3, r1, r0
	sub	r3, #1
	ldr	r2, [sp, #0x24]
	mov	r10, r3
	cmp	r10, r2
	ble	.L2601c
	mov	r10, r2
	b	.L2601c
.L26004:
	mov	r0, r10
	lsl	r0, #1
	str	r0, [sp, #0x14]
	b	.L26022
.L2600c:
	mov	r1, r10
	lsl	r1, #1
	str	r1, [sp, #0x14]
	b	.L26022
.L26014:
	mov	r2, r10
	lsl	r2, #1
	str	r2, [sp, #0x14]
	b	.L26022
.L2601c:
	mov	r3, r10
	lsl	r3, #1
	str	r3, [sp, #0x14]
.L26022:
	mov	r0, #1
	bl	WaitFrames
	b	.L25a72
.L2602a:
	ldr	r0, [sp, #0x2c]
	mov	r1, #1
	bl	CloseUIBox
	mov	r0, r11
	mov	r1, #1
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, [sp, #8]
	mov	r7, #4
.L26044:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	Func_8003f3c
	cmp	r7, #0
	bge	.L26044
	ldr	r0, [sp, #0x34]
	bl	Func_8003f3c
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r6
	add	sp, #0x12c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_802592c
