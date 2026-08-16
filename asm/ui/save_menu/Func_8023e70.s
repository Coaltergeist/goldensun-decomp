	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8023e70  @ 0x08023e70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xe0
	str	r0, [sp, #0x4c]
	ldr	r5, =iwram_3001e8c
	mov	r3, #1
	ldr	r1, [r5]
	mov	r2, #0
	neg	r3, r3
	mov	r0, #0x80
	str	r1, [sp, #0x48]
	str	r2, [sp, #0x44]
	str	r3, [sp, #0x40]
	bl	AllocUploadSpriteGFX
	str	r0, [sp, #0x3c]
	mov	r0, #0xa8
	lsl	r0, #1
	bl	alloc_ewram
	ldr	r2, [sp, #0x40]
	mov	r1, #0
	mov	r3, #0x2a
	mov	r6, #0
	str	r0, [sp, #0x38]
	str	r1, [sp, #0x34]
	str	r2, [sp, #0x30]
	str	r3, [sp]
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #4
	mov	r0, #0
	str	r6, [sp, #0x28]
	str	r6, [sp, #0x20]
	str	r6, [sp, #0x50]
	str	r6, [sp, #0x1c]
	str	r6, [sp, #0x18]
	bl	CreateUIBox
	str	r0, [sp, #0x2c]
	mov	r0, #1
	bl	Func_801e3c8
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #9
	mov	r2, #9
	mov	r3, #0xb
	mov	r0, #0x15
	bl	CreateUIBox
	mov	r9, r0
	add	r5, #0xa8
	ldr	r3, [r5]
	ldr	r1, [r3, #0x34]
	ldr	r2, [r3, #0x30]
	ldr	r3, [r3, #0x38]
	mov	r11, r1
	mov	r10, r2
	str	r3, [sp, #0x24]
	ldr	r0, [sp, #0x4c]
	bl	_GetUnit
	add	r0, #0xf8
	mov	r7, #0
	mov	r8, r0
.L23efe:
	ldr	r1, [sp, #0x34]
	ldr	r2, [sp, #0x38]
	lsl	r3, r1, #2
	mov	r6, #0
	add	r5, r3, r2
.L23f08:
	mov	r1, r8
	mov	r2, #1
	ldr	r3, [r1, #0x10]
	lsl	r2, r6
	and	r3, r2
	cmp	r3, #0
	beq	.L23f24
	lsl	r3, r7, #8
	orr	r3, r6
	stmia	r5!, {r3}
	ldr	r2, [sp, #0x34]
	add	r2, #1
	str	r2, [sp, #0x34]
	b	.L23fba
.L23f24:
	mov	r1, r8
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	beq	.L23fba
	ldr	r2, [sp, #0x4c]
	mov	r0, #0
	cmp	r2, #7
	bls	.L23f38
	mov	r0, #1
.L23f38:
	bl	_Func_8077330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	mov	r1, #0
	add	r0, #8
	mov	r4, #0
	cmp	r1, r3
	bge	.L23f94
	ldrb	r3, [r0, #2]
	ldr	r2, [sp, #0x4c]
	cmp	r3, r2
	bne	.L23f64
	ldrb	r3, [r0]
	cmp	r3, r7
	bne	.L23f64
	ldrb	r3, [r0, #1]
	cmp	r3, r6
	beq	.L23f8e
.L23f64:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r0, r2
	ldr	r3, [r3]
	add	r1, #1
	cmp	r1, r3
	bge	.L23f92
	lsl	r4, r1, #2
	add	r2, r0, r4
	ldrb	r3, [r2, #2]
	mov	r12, r3
	ldr	r3, [sp, #0x4c]
	cmp	r12, r3
	bne	.L23f64
	ldrb	r3, [r2]
	cmp	r3, r7
	bne	.L23f64
	ldrb	r3, [r2, #1]
	cmp	r3, r6
	bne	.L23f64
	b	.L23f94
.L23f8e:
	mov	r4, #0
	b	.L23f94
.L23f92:
	lsl	r4, r1, #2
.L23f94:
	lsl	r2, r7, #8
	mov	r3, #0x80
	lsl	r3, #9
	orr	r2, r6
	orr	r2, r3
	str	r2, [r5]
	add	r3, r0, r4
	ldrb	r3, [r3, #3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.L23fb2
	lsl	r3, #17
	orr	r2, r3
	str	r2, [r5]
.L23fb2:
	ldr	r1, [sp, #0x34]
	add	r1, #1
	str	r1, [sp, #0x34]
	add	r5, #4
.L23fba:
	add	r6, #1
	cmp	r6, #0x13
	ble	.L23f08
	mov	r2, #4
	add	r7, #1
	add	r8, r2
	cmp	r7, #3
	ble	.L23efe
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x38]
	lsl	r2, r3, #2
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r2, r1]
	ldr	r3, [sp, #0x48]
	ldr	r1, =0xea3
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, sp
	add	r2, #0xd4
	str	r2, [sp, #4]
	ldr	r1, [sp, #0x48]
	ldr	r2, =0xea3
	mov	r3, sp
	add	r3, #0x54
	add	r2, r1, r2
	str	r3, [sp, #0xc]
	str	r2, [sp, #8]
.L23ff4:
	ldr	r3, [sp, #0x30]
	cmp	r11, r3
	bne	.L24008
	ldr	r1, [sp, #0x40]
	cmp	r10, r1
	bne	.L24008
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L24008
	b	.L24328
.L24008:
	mov	r3, r11
	ldr	r1, [sp, #0x38]
	add	r3, r10
	lsl	r3, #2
	ldr	r5, [r3, r1]
	ldr	r3, [sp, #0x48]
	ldr	r1, =0xea6
	mov	r2, #0
	str	r2, [sp, #0x28]
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r9
	ldrh	r0, [r2, #0xc]
	ldrh	r1, [r2, #0xe]
	ldr	r2, [sp, #0x40]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r3, #0xf
	add	r1, #1
	str	r3, [sp]
	add	r0, #1
	sub	r2, #2
	mov	r3, #1
	bl	Func_8022768
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	beq	.L24064
	ldr	r0, [sp, #0x2c]
	mov	r1, #1
	bl	CloseUIBox
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x1e
	mov	r3, #4
	bl	CreateUIBox
	str	r0, [sp, #0x2c]
	bl	Func_8016738
.L24064:
	ldr	r3, [sp, #0x34]
	mov	r2, #0
	str	r2, [sp, #0x1c]
	cmp	r3, #0
	bne	.L24070
	b	.L241a0
.L24070:
	bl	Func_80198dc
	mov	r1, #0
	str	r1, [sp, #0x18]
	ldr	r0, =iwram_3001f34
	ldr	r3, [r0]
	mov	r2, #0xe4
	ldr	r3, [r3, r2]
	ldr	r1, [sp, #0x1c]
	cmp	r3, r5
	bne	.L2408c
	mov	r2, #1
	str	r2, [sp, #0x18]
	b	.L240a2
.L2408c:
	add	r1, #1
	cmp	r1, #7
	bgt	.L240a2
	ldr	r3, [r0]
	lsl	r2, r1, #2
	add	r2, #0xe4
	ldr	r3, [r3, r2]
	cmp	r3, r5
	bne	.L2408c
	mov	r3, #1
	str	r3, [sp, #0x18]
.L240a2:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	beq	.L240ca
	ldr	r6, [sp, #0xc]
	mov	r2, #0x34
	ldr	r0, =0x8ef
	mov	r1, r6
	bl	Func_801965c
	ldr	r2, [sp, #0x44]
	cmp	r2, #0
	beq	.L241ac
	mov	r0, r2
	mov	r1, #1
	bl	CloseUIBox
	mov	r3, #0
	str	r3, [sp, #0x44]
	str	r3, [sp, #0x20]
	b	.L241ac
.L240ca:
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r5
	cmp	r3, #0
	beq	.L2414c
	mov	r0, #0xf8
	lsl	r0, #14
	and	r0, r5
	cmp	r0, #0
	beq	.L2411e
	lsr	r0, #17
	mov	r1, #5
	bl	Func_8019908
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	lsr	r3, #8
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0xff
	and	r5, r3
	ldr	r6, [sp, #0xc]
	ldr	r3, =0x666
	lsl	r0, #2
	add	r0, r5
	mov	r1, r6
	add	r0, r3
	mov	r2, #0x34
	bl	Func_801965c
	ldr	r1, [sp, #0x44]
	cmp	r1, #0
	beq	.L241ac
	mov	r0, r1
	mov	r1, #1
	bl	CloseUIBox
	mov	r2, #0
	str	r2, [sp, #0x44]
	str	r2, [sp, #0x20]
	b	.L241ac
.L2411e:
	add	r3, sp, #0x50
	str	r3, [sp]
	ldr	r1, [sp, #0x4c]
	mov	r2, r5
	ldr	r3, [sp, #0x20]
	ldr	r0, [sp, #0x44]
	bl	Func_8022b44
	ldr	r6, [sp, #0xc]
	str	r0, [sp, #0x44]
	mov	r1, r6
	ldr	r0, =0x899
	mov	r2, #0x34
	bl	Func_801965c
	mov	r3, #0xf0
	lsl	r3, #4
	and	r5, r3
	lsr	r3, r5, #8
	mov	r1, #1
	lsl	r1, r3
	str	r1, [sp, #0x28]
	b	.L241ac
.L2414c:
	add	r3, sp, #0x50
	mov	r2, r5
	str	r3, [sp]
	ldr	r1, [sp, #0x4c]
	ldr	r3, [sp, #0x20]
	ldr	r0, [sp, #0x44]
	bl	Func_8022b44
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	lsr	r3, #8
	str	r0, [sp, #0x44]
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0xff
	and	r5, r3
	lsl	r0, #2
	ldr	r3, =0x666
	ldr	r6, [sp, #0xc]
	add	r0, r5
	add	r0, r3
	mov	r1, r6
	mov	r2, #0x34
	bl	Func_801965c
	b	.L241ac

	.pool_aligned

.L241a0:
	ldr	r6, [sp, #0xc]
	ldr	r0, =0x8ed
	mov	r1, r6
	mov	r2, #0x34
	bl	Func_801965c
.L241ac:
	ldr	r2, [sp, #0x48]
	ldr	r3, =0xea6
	mov	r1, #0
	add	r5, r2, r3
	strb	r1, [r5]
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	bne	.L241e0
	mov	r3, #1
	strb	r3, [r5]
	ldr	r0, [sp, #0x2c]
	mov	r1, #1
	bl	CloseUIBox
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r0, #0
	mov	r3, #4
	mov	r1, #4
	mov	r2, #0x1e
	bl	CreateUIBox
	str	r0, [sp, #0x2c]
	add	r3, sp, #0x20
	ldrb	r3, [r3]
	strb	r3, [r5]
.L241e0:
	ldr	r1, [sp, #0x2c]
	mov	r2, #0
	mov	r0, r6
	mov	r3, #4
	bl	Func_8017aa4
	ldr	r2, [sp, #0x30]
	mov	r1, r10
	str	r1, [sp, #0x40]
	cmp	r11, r2
	beq	.L242ae
	mov	r0, r9
	bl	Func_8016498
	mov	r1, r11
	ldr	r2, [sp, #0x38]
	lsl	r3, r1, #2
	add	r3, r2
	mov	r1, #0x80
	ldr	r6, [r3]
	lsl	r1, #24
	mov	r7, #0
	cmp	r6, r1
	beq	.L242a8
	mov	r8, r3
.L24212:
	mov	r2, #0xf0
	lsl	r2, #4
	mov	r1, r6
	and	r1, r2
	ldr	r3, =0x5001
	lsr	r1, #8
	add	r1, r3
	mov	r2, #0
	lsl	r3, r7, #1
	mov	r0, r9
	str	r2, [sp]
	bl	Func_8019000
	mov	r3, #0xf8
	lsl	r3, #14
	and	r3, r6
	cmp	r3, #0
	beq	.L2423e
	mov	r0, #4
	bl	SetTextColor
	b	.L2424e
.L2423e:
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r6
	cmp	r3, #0
	beq	.L2424e
	mov	r0, #2
	bl	SetTextColor
.L2424e:
	mov	r1, #0xf0
	lsl	r1, #4
	mov	r3, r6
	and	r3, r1
	lsr	r3, #8
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0xff
	and	r3, r6
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x45f
	lsl	r5, r7, #4
	add	r0, r3
	mov	r1, r9
	mov	r2, #8
	mov	r3, r5
	bl	Func_801e7c0
	mov	r0, #0xf8
	lsl	r0, #14
	and	r0, r6
	cmp	r0, #0
	beq	.L2428c
	lsr	r0, #17
	mov	r1, #1
	mov	r2, r9
	mov	r3, #0x30
	str	r5, [sp]
	bl	Func_801e9d4
.L2428c:
	mov	r0, #0xf
	add	r7, #1
	bl	SetTextColor
	cmp	r7, #4
	bgt	.L242a8
	mov	r2, #4
	add	r8, r2
	mov	r3, r8
	mov	r1, #0x80
	ldr	r6, [r3]
	lsl	r1, #24
	cmp	r6, r1
	bne	.L24212
.L242a8:
	mov	r12, r11
	mov	r2, r12
	str	r2, [sp, #0x30]
.L242ae:
	ldr	r1, [sp, #0x34]
	cmp	r1, #5
	ble	.L242f8
	mov	r7, #0
	add	r1, #4
	mov	r8, r1
	b	.L242ea
.L242bc:
	ldr	r2, =0xf301
	mov	r0, r11
	mov	r1, #5
	add	r6, r7, r2
	bl	__divsi3
	cmp	r7, r0
	bne	.L242d0
	ldr	r3, =0xf30b
	add	r6, r7, r3
.L242d0:
	mov	r1, r9
	ldrh	r2, [r1, #8]
	sub	r2, r5
	add	r2, r7
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r9
	mov	r1, r6
	sub	r3, #1
	bl	Func_8019000
	add	r7, #1
.L242ea:
	mov	r0, r8
	mov	r1, #5
	bl	__divsi3
	mov	r5, r0
	cmp	r7, r5
	blt	.L242bc
.L242f8:
	mov	r1, r9
	ldrh	r0, [r1, #0xc]
	mov	r2, r10
	ldrh	r1, [r1, #0xe]
	lsl	r3, r2, #1
	add	r1, r3
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r3, #0xe
	add	r1, #1
	sub	r2, #2
	str	r3, [sp]
	add	r0, #1
	mov	r3, #1
	bl	Func_8022768
	ldr	r1, [sp, #8]
	mov	r3, #1
	strb	r3, [r1]
	ldr	r2, [sp, #0x48]
	ldr	r1, =0xea6
	add	r3, r2, r1
	mov	r2, #0
	strb	r2, [r3]
.L24328:
	ldr	r3, [sp, #0x34]
	cmp	r3, #5
	ble	.L24412
	mov	r7, #0
	add	r3, #4
	mov	r8, r3
	b	.L2438a
.L24336:
	ldr	r3, =gKeyHeld
	mov	r2, #0x80
	ldr	r3, [r3]
	ldr	r1, =0xf301
	lsl	r2, #1
	and	r3, r2
	add	r6, r7, r1
	cmp	r3, #0
	bne	.L24354
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L24364
.L24354:
	mov	r0, r11
	mov	r1, #5
	bl	__divsi3
	cmp	r7, r0
	bne	.L24364
	ldr	r2, =0xf30b
	add	r6, r7, r2
.L24364:
	mov	r3, r9
	mov	r1, #5
	mov	r0, r8
	ldrh	r5, [r3, #8]
	bl	__divsi3
	sub	r5, r0
	add	r5, r7
	mov	r1, #0
	sub	r5, #2
	mov	r3, #1
	str	r1, [sp]
	mov	r0, r9
	mov	r1, r6
	mov	r2, r5
	neg	r3, r3
	bl	Func_8019000
	add	r7, #1
.L2438a:
	mov	r0, r8
	mov	r1, #5
	bl	__divsi3
	cmp	r7, r0
	blt	.L24336
	ldr	r3, =gKeyHeld
	ldr	r5, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r5, r3
	cmp	r5, #0
	bne	.L243d0
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r3, #1
	sub	r2, r0
	sub	r2, #3
	mov	r0, r9
	ldr	r1, =0xf334
	neg	r3, r3
	str	r5, [sp]
	bl	Func_8019000
	mov	r1, r9
	ldrh	r2, [r1, #8]
	mov	r3, #1
	sub	r2, #2
	mov	r0, r9
	ldr	r1, =0xf335
	neg	r3, r3
	str	r5, [sp]
	bl	Func_8019000
	b	.L243fe
.L243d0:
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r1, #0
	sub	r2, r0
	mov	r3, #1
	sub	r2, #3
	str	r1, [sp]
	mov	r0, r9
	ldr	r1, =0xf011
	neg	r3, r3
	bl	Func_8019000
	mov	r3, r9
	ldrh	r2, [r3, #8]
	mov	r1, #0
	mov	r3, #1
	str	r1, [sp]
	sub	r2, #2
	mov	r0, r9
	ldr	r1, =0xf012
	neg	r3, r3
	bl	Func_8019000
.L243fe:
	mov	r2, r9
	ldrh	r3, [r2, #0xe]
	ldr	r1, [sp, #8]
	sub	r3, #1
	lsr	r3, #2
	mov	r2, #2
	lsl	r2, r3
	ldrb	r3, [r1]
	orr	r2, r3
	strb	r2, [r1]
.L24412:
	ldr	r3, =gKeyPress
	ldr	r1, [r3]
	ldr	r3, =gKeyRepeat
	ldr	r0, =iwram_3001f34
	ldr	r7, [r3]
	ldr	r3, =gKeyHeld
	ldr	r2, [r0]
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, r2
	add	r3, #0xd8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2444a
	add	r2, #0xdc
	ldr	r3, [r2]
	mov	r1, #0
	mov	r7, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.L24446
	mov	r3, #0x3c
	str	r3, [r2]
	mov	r7, #1
	mov	r1, #1
	b	.L2444a
.L24446:
	sub	r3, #1
	str	r3, [r2]
.L2444a:
	ldr	r2, [r0]
	ldr	r3, [r2, #0x4c]
	cmp	r3, #0
	beq	.L2445a
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L24466
.L2445a:
	mov	r0, #0x71
	mov	r6, #1
	bl	_PlaySound
	neg	r6, r6
	b	.L248a0
.L24466:
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.L2451c
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.L244d6
	mov	r3, r11
	add	r3, r10
	ldr	r1, [sp, #0x38]
	lsl	r3, #2
	ldr	r0, [r3, r1]
	mov	r6, #0xf8
	lsl	r6, #14
	mov	r5, r0
	and	r5, r6
	cmp	r5, #0
	bne	.L244a0
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.L244ce
	mov	r1, r11
	mov	r3, r10
	str	r1, [r2, #0x34]
	str	r3, [r2, #0x30]
	ldr	r1, [sp, #0x24]
	mov	r6, r0
	str	r1, [r2, #0x38]
	b	.L248a0
.L244a0:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.L244ce
	and	r5, r6
	bl	Func_8016738
	bl	Func_80198dc
	lsr	r0, r5, #17
	mov	r1, #5
	bl	Func_8019908
	mov	r2, #0x34
	ldr	r1, [sp, #0xc]
	ldr	r0, =0x898
	bl	Func_801965c
	mov	r2, #0
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x2c]
	mov	r3, #4
	bl	Func_8017aa4
.L244ce:
	mov	r0, #0x72
	bl	_PlaySound
	b	.L2451c
.L244d6:
	mov	r6, #1
	neg	r6, r6
	b	.L248a0

	.pool_aligned

.L2451c:
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	bne	.L24524
	b	.L24766
.L24524:
	mov	r3, #0x80
	and	r3, r7
	cmp	r3, #0
	beq	.L24550
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #5
	beq	.L24546
	mov	r3, r11
	ldr	r1, [sp, #0x34]
	add	r3, r10
	cmp	r3, r1
	bne	.L2454a
.L24546:
	mov	r2, #0
	mov	r10, r2
.L2454a:
	mov	r3, r10
	str	r3, [sp, #0x24]
	b	.L24766
.L24550:
	mov	r3, #0x40
	and	r3, r7
	cmp	r3, #0
	beq	.L24590
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0
	bge	.L2458a
	ldr	r0, [sp, #0x34]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r11, r3
	bne	.L24586
	ldr	r1, [sp, #0x34]
	mov	r2, r11
	sub	r3, r1, r2
	sub	r3, #1
	b	.L24588
.L24586:
	mov	r3, #4
.L24588:
	mov	r10, r3
.L2458a:
	mov	r1, r10
	str	r1, [sp, #0x24]
	b	.L24766
.L24590:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L24694
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.L24622
	ldr	r0, [sp, #0x50]
	mov	r5, #0
	cmp	r5, r0
	bge	.L245e6
.L245aa:
	ldr	r3, =iwram_3001e40
	ldr	r2, =0xf301
	ldr	r3, [r3]
	add	r1, r5, r2
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0xb
	bhi	.L245c8
	ldr	r3, [sp, #0x20]
	sub	r3, #1
	cmp	r5, r3
	bne	.L245c8
	ldr	r3, [sp, #0x20]
	ldr	r2, =0xf30a
	add	r1, r3, r2
.L245c8:
	ldr	r3, [sp, #0x44]
	ldrh	r2, [r3, #8]
	sub	r2, r0
	add	r2, r5
	mov	r3, #0
	str	r3, [sp]
	ldr	r0, [sp, #0x44]
	sub	r2, #2
	sub	r3, #1
	bl	Func_8019000
	ldr	r0, [sp, #0x50]
	add	r5, #1
	cmp	r5, r0
	blt	.L245aa
.L245e6:
	ldr	r1, [sp, #0x44]
	ldrh	r2, [r1, #8]
	mov	r3, #0
	sub	r2, r0
	str	r3, [sp]
	mov	r0, r1
	sub	r2, #3
	ldr	r1, =0xf334
	sub	r3, #1
	bl	Func_8019000
	ldr	r1, [sp, #0x44]
	ldrh	r2, [r1, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r1
	sub	r2, #2
	ldr	r1, =0xf335
	sub	r3, #1
	bl	Func_8019000
	ldr	r1, [sp, #0x44]
	ldrh	r2, [r1, #0xe]
	ldr	r1, [sp, #8]
	lsr	r2, #2
	mov	r3, #2
	lsl	r3, r2
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
.L24622:
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	bne	.L24642
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	beq	.L24644
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.L2463a
	mov	r0, r3
	bl	Func_80164ac
.L2463a:
	mov	r1, #1
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x1c]
	b	.L24766
.L24642:
	ldr	r0, [sp, #0x50]
.L24644:
	ldr	r2, [sp, #0x20]
	cmp	r2, r0
	ble	.L2464c
	str	r0, [sp, #0x20]
.L2464c:
	ldr	r3, [sp, #0x20]
	cmp	r3, #0
	bne	.L24654
	b	.L24766
.L24654:
	mov	r3, #0x10
	and	r3, r7
	cmp	r3, #0
	beq	.L24672
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r1, [sp, #0x20]
	ldr	r3, [sp, #0x50]
	add	r1, #1
	str	r1, [sp, #0x20]
	cmp	r1, r3
	ble	.L2468e
	mov	r2, #1
	b	.L2468c
.L24672:
	mov	r3, #0x20
	and	r3, r7
	cmp	r3, #0
	beq	.L24766
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r1, [sp, #0x20]
	sub	r1, #1
	str	r1, [sp, #0x20]
	cmp	r1, #0
	bgt	.L2468e
	ldr	r2, [sp, #0x50]
.L2468c:
	str	r2, [sp, #0x20]
.L2468e:
	mov	r3, #1
	str	r3, [sp, #0x1c]
	b	.L24766
.L24694:
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	beq	.L246b0
	ldr	r2, [sp, #0x44]
	cmp	r2, #0
	beq	.L246a6
	mov	r0, r2
	bl	Func_80164ac
.L246a6:
	mov	r3, #0
	mov	r1, #1
	str	r3, [sp, #0x20]
	str	r1, [sp, #0x1c]
	b	.L24766
.L246b0:
	mov	r3, #0x10
	and	r3, r7
	cmp	r3, #0
	beq	.L24708
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r3, r11
	ldr	r2, [sp, #0x34]
	add	r3, #5
	cmp	r3, r2
	blt	.L246dc
	mov	r3, r11
	cmp	r3, #0
	beq	.L24766
	ldr	r2, [sp, #0x24]
	mov	r1, #0
	mov	r11, r1
	mov	r10, r2
	b	.L24766
.L246dc:
	ldr	r0, [sp, #0x34]
	mov	r11, r3
	ldr	r3, [sp, #0x24]
	sub	r0, #1
	mov	r1, #5
	mov	r10, r3
	bl	__divsi3
	lsl	r3, r0, #2
	add	r3, r0
	cmp	r11, r3
	bne	.L24766
	ldr	r1, [sp, #0x34]
	mov	r2, r11
	sub	r3, r1, r2
	sub	r3, #1
	mov	r10, r3
	ldr	r3, [sp, #0x24]
	cmp	r10, r3
	ble	.L24766
	mov	r10, r3
	b	.L24766
.L24708:
	mov	r3, #0x20
	and	r3, r7
	cmp	r3, #0
	beq	.L24766
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r1, r11
	cmp	r1, #0
	beq	.L24740
	mov	r2, #5
	ldr	r3, [sp, #0x24]
	neg	r2, r2
	add	r11, r2
	mov	r10, r3
	b	.L24766

	.pool_aligned

.L24740:
	ldr	r0, [sp, #0x34]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	lsl	r3, r0, #2
	ldr	r1, [sp, #0x24]
	add	r3, r0
	mov	r11, r3
	mov	r10, r1
	cmp	r3, #0
	beq	.L24766
	ldr	r2, [sp, #0x34]
	sub	r3, r2, r3
	sub	r3, #1
	mov	r10, r3
	cmp	r10, r1
	ble	.L24766
	mov	r10, r1
.L24766:
	mov	r1, r9
	ldrh	r3, [r1, #0xc]
	lsl	r3, #3
	mov	r2, r10
	sub	r3, #2
	str	r3, [sp, #0x10]
	lsl	r3, r2, #1
	ldrh	r2, [r1, #0xe]
	add	r3, r2
	lsl	r3, #3
	add	r3, #0x14
	ldr	r1, [sp, #4]
	str	r3, [sp, #0x14]
	mov	r3, #0x80
	lsl	r3, #23
	mov	r2, #0
	str	r3, [r1, #4]
	str	r2, [r1, #8]
	ldr	r0, [sp, #0x3c]
	ldr	r1, =Data_310a4
	bl	UploadSprite2
	ldr	r3, .L247c8	@ 0x3ff
	ldr	r1, [sp, #4]
	and	r0, r3
	ldr	r2, .L247cc	@ 0xfffffc00
	ldrh	r3, [r1, #8]
	ldr	r6, =iwram_3001e40
	and	r3, r2
	orr	r3, r0
	mov	r2, r1
	strh	r3, [r2, #8]
	ldr	r2, [r6]
	mov	r5, #4
	ldr	r3, [sp, #0x10]
	and	r2, r5
	ldr	r1, =0xfffa
	lsr	r2, #1
	add	r2, r3, r2
	add	r2, r1
	ldr	r3, .L247d0	@ 0x1ff
	ldr	r1, [sp, #4]
	and	r2, r3
	ldrh	r3, [r1, #6]
	ldr	r1, .L247d4	@ 0xfffffe00
	and	r3, r1
	orr	r3, r2
	b	.L247e4

	.align	2, 0
.L247c8:
	.word	0x3ff
.L247cc:
	.word	0xfffffc00
.L247d0:
	.word	0x1ff
.L247d4:
	.word	0xfffffe00
	.pool

.L247e4:
	ldr	r2, [sp, #4]
	strh	r3, [r2, #6]
	ldr	r3, [r6]
	ldr	r1, [sp, #0x14]
	and	r3, r5
	lsr	r3, #2
	sub	r3, r1, r3
	add	r3, #0xf8
	strb	r3, [r2, #4]
	ldr	r2, [sp, #0x34]
	cmp	r2, #0
	beq	.L24804
	ldr	r0, [sp, #4]
	mov	r1, #0xf2
	bl	Func_8003dec
.L24804:
	ldr	r3, =iwram_3001e90
	ldr	r3, [r3]
	ldrh	r2, [r3, #0xc]
	ldr	r6, [r6]
	ldr	r7, [r3]
	mov	r3, #2
	and	r3, r2
	and	r6, r5
	cmp	r3, #0
	beq	.L24858
	mov	r5, #0
.L2481a:
	neg	r3, r6
	orr	r3, r6
	lsr	r3, #31
	mov	r2, r3
	mov	r3, #0xf
	sub	r2, r3, r2
	ldr	r1, [sp, #0x28]
	mov	r3, #1
	lsl	r3, r5
	and	r3, r1
	cmp	r3, #0
	bne	.L24834
	mov	r2, #0xf
.L24834:
	ldr	r3, =.L373e7
	ldrh	r0, [r7, #0xc]
	ldrb	r3, [r3, r5]
	add	r0, r3
	ldr	r3, =.L373eb
	ldrh	r1, [r7, #0xe]
	ldrb	r3, [r3, r5]
	add	r1, r3
	str	r2, [sp]
	add	r0, #1
	add	r1, #1
	mov	r2, #2
	mov	r3, #2
	add	r5, #1
	bl	Func_8022768
	cmp	r5, #3
	ble	.L2481a
.L24858:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L2487e
	ldr	r5, =.L37308
	mov	r2, #0x20
	mov	r1, r5
	ldr	r6, =Func_8001af8
	ldr	r0, =0x6006500
	bl	_call_via_r6
	ldr	r0, =0x6006520
	mov	r1, r5
	mov	r2, #0x20
	bl	_call_via_r6
	b	.L24896
.L2487e:
	ldr	r3, =Func_80008d8
	mov	r1, #0x20
	ldr	r2, =0x44444444
	ldr	r0, =0x6006500
	bl	_call_via_r3
	ldr	r3, =Func_8001af8
	ldr	r0, =0x6006520
	ldr	r1, =.L37308
	mov	r2, #0x20
	bl	_call_via_r3
.L24896:
	mov	r0, #1
	bl	WaitFrames
	bl	.L23ff4
.L248a0:
	ldr	r3, =iwram_3001e90
	ldr	r1, [r3]
	ldrh	r2, [r1, #0xc]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L248c4
	ldr	r3, [r1]
	ldrh	r0, [r3, #0xc]
	ldrh	r1, [r3, #0xe]
	mov	r3, #0xf
	str	r3, [sp]
	add	r0, #1
	add	r1, #1
	mov	r2, #4
	mov	r3, #4
	bl	Func_8022768
.L248c4:
	ldr	r0, [sp, #0x3c]
	bl	Func_8003f3c
	mov	r1, #1
	ldr	r0, [sp, #0x2c]
	bl	CloseUIBox
	mov	r1, #1
	ldr	r0, [sp, #0x44]
	bl	CloseUIBox
	mov	r1, #1
	mov	r0, r9
	bl	CloseUIBox
	bl	Func_801e318
	mov	r0, #0
	bl	Func_801e3c8
	ldr	r0, [sp, #0x38]
	bl	free
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r6
	add	sp, #0xe0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8023e70
