	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a8114  @ 0x080a8114
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0x28
	mov	r0, #0
	ldr	r7, [r3]
	mov	r10, r0
	str	r0, [sp, #0x1c]
	mov	r8, r0
	sub	r0, #1
	bl	_GetNumDjinn
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	str	r3, [sp, #0xc]
	mov	r3, #5
	str	r3, [sp]
	mov	r0, r7
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x1e
	add	r0, #0x2c
	bl	Func_80a10d0
	ldr	r0, =Func_80a19a0
	bl	StopTask
	ldr	r0, =0x242
	ldr	r1, .La8184	@ 0x68
	mov	r2, #3
	add	r3, r7, r0
.La8162:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La8162
	mov	r1, #0
	mov	r0, #0xa
	str	r1, [sp, #0x10]
	neg	r0, r0
	mov	r1, #0x58
	bl	Func_80a1ac0
	ldr	r2, =0x21a
	add	r2, r7, r2
	str	r2, [sp, #8]
	b	.La8406

	.align	2, 0
.La8184:
	.word	0x68
	.pool

.La8198:
	ldr	r3, [sp, #8]
	ldrb	r0, [r3]
	bl	_GetUnit
	ldr	r2, [sp, #8]
	ldr	r0, [r7, #0x24]
	ldrb	r1, [r2]
	mov	r2, #1
	bl	Func_80a8604
	mov	r3, #0x20
	ldr	r0, [sp, #8]
	add	r3, sp
	mov	r11, r3
	ldrb	r2, [r0]
	mov	r1, #1
	mov	r0, r11
	bl	Func_80a8b10
	lsl	r0, #24
	mov	r1, #0
	lsr	r2, r0, #24
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x18]
	cmp	r0, #0
	bne	.La81f2
	mov	r3, #1
	str	r3, [sp, #0x18]
	b	.La81f6
.La81d2:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, #1
	str	r0, [sp, #0x10]
	str	r0, [sp, #0x1c]
	b	.La8406
.La81e0:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r2, #1
	mov	r1, #1
	neg	r2, r2
	str	r1, [sp, #0x10]
	str	r2, [sp, #0x1c]
	b	.La8406
.La81f2:
	mov	r3, #1
	str	r3, [sp, #0x14]
.La81f6:
	mov	r0, #1
	mov	r9, r0
	b	.La83f8
.La81fc:
	mov	r1, r9
	cmp	r1, #0
	beq	.La82ba
	mov	r2, #0
	ldr	r0, [sp, #0x18]
	mov	r9, r2
	mov	r2, r10
	add	r2, #2
	lsl	r3, r0, #24
	asr	r1, r3, #24
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	mov	r10, r2
	cmp	r2, #0
	bne	.La8256
	mov	r2, r8
	add	r0, r2, r1
	bl	__modsi3
	mov	r8, r0
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bne	.La8286
	ldr	r5, =0xb06
	mov	r6, #0x18
	neg	r6, r6
	ldr	r1, [r7, #0x24]
	mov	r0, r5
	mov	r2, #0x50
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r1, [r7, #0x24]
	add	r0, r5, #1
	mov	r2, #0
	mov	r3, r6
	bl	_Func_801e7c0
	b	.La8286
.La8256:
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	ldr	r0, [sp, #0xc]
	cmp	r0, #0
	beq	.La827a
	mov	r2, r8
	add	r2, #8
	mov	r3, r2
	cmp	r2, #0
	bge	.La8270
	mov	r3, r8
	add	r3, #0xf
.La8270:
	asr	r3, #3
	lsl	r3, #3
	sub	r2, r3
	mov	r8, r2
	b	.La8286
.La827a:
	mov	r0, r8
	add	r0, #7
	mov	r1, #7
	bl	__modsi3
	mov	r8, r0
.La8286:
	mov	r1, r8
	mov	r2, r11
	mov	r3, #0
	mov	r0, r10
	bl	Func_80a847c
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r10
	cmp	r1, #0
	bne	.La82b0
	ldr	r0, [r7, #0x2c]
	mov	r1, r8
	mov	r2, r11
	bl	Func_80a8508
	b	.La82ba
.La82b0:
	ldr	r0, [r7, #0x2c]
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	bl	Func_80a8578
.La82ba:
	ldr	r2, [r7, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r2, r10
	cmp	r2, #0
	bne	.La82d6
	mov	r3, r8
	lsl	r1, r3, #4
	mov	r0, #0xa
	add	r1, #0x58
	neg	r0, r0
	bl	Func_80a1a40
	b	.La82f4
.La82d6:
	mov	r0, r8
	cmp	r0, #3
	bgt	.La82e8
	lsl	r1, r0, #3
	add	r1, #0x30
	mov	r0, #0x18
	bl	Func_80a1a40
	b	.La82f4
.La82e8:
	mov	r2, r8
	lsl	r1, r2, #3
	add	r1, #0x50
	mov	r0, #0x30
	bl	Func_80a1a40
.La82f4:
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, =gKeyRepeat
	ldr	r2, [r5]
	mov	r3, #0xf0
	and	r2, r3
	cmp	r2, #0
	beq	.La8312
	mov	r0, r10
	mov	r1, r8
	mov	r2, r11
	mov	r3, #1
	bl	Func_80a847c
.La8312:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La8320
	b	.La81d2
.La8320:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La832c
	b	.La81e0
.La832c:
	ldr	r2, [r5]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.La8346
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	mov	r3, #1
	neg	r0, r0
	mov	r9, r3
	add	r8, r0
.La8346:
	ldr	r2, [r5]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.La835c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	mov	r9, r1
	add	r8, r1
.La835c:
	ldr	r2, [r5]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La8372
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r9, r2
	add	r10, r2
.La8372:
	ldr	r2, [r5]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.La838c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	mov	r3, #1
	neg	r0, r0
	mov	r9, r3
	add	r10, r0
.La838c:
	ldr	r3, [r5]
	mov	r6, #0x80
	lsl	r6, #1
	and	r3, r6
	cmp	r3, #0
	bne	.La83a4
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La83f8
.La83a4:
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r3, [r5]
	and	r3, r6
	mov	r0, #0x1c
	ldrsb	r0, [r7, r0]
	cmp	r3, #0
	beq	.La83ba
	add	r0, #1
	b	.La83bc
.La83ba:
	sub	r0, #1
.La83bc:
	ldr	r1, =0x219
	add	r3, r7, r1
	ldrb	r1, [r3]
	add	r0, r1
	bl	__modsi3
	mov	r3, #0x82
	lsl	r2, r0, #1
	lsl	r3, #2
	add	r2, r3
	ldrh	r3, [r7, r2]
	str	r3, [r7, #8]
	ldr	r1, [sp, #8]
	ldrh	r3, [r7, r2]
	strb	r3, [r1]
	strb	r0, [r7, #0x1c]
	mov	r0, r7
	ldrh	r1, [r7, r2]
	bl	Func_80a1804
	b	.La8406

	.pool_aligned

.La83f8:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La8406
	b	.La81fc
.La8406:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.La841a
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La841a
	b	.La8198
.La841a:
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	mov	r3, #0x60
	ldr	r0, [r7, #0x24]
	mov	r2, #0x38
	str	r3, [sp]
	mov	r1, #0x40
	mov	r3, #0xe0
	bl	_Func_80164d4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	ldr	r1, =0x242
	ldr	r3, .La844c	@ 0x80
	mov	r2, #3
	add	r0, r7, r1
	b	.La8458

	.align	2, 0
.La844c:
	.word	0x80
	.pool

.La8458:
	sub	r2, #1
	strh	r3, [r0]
	sub	r0, #2
	cmp	r2, #0
	bge	.La8458
	bl	Func_80a9d84
	ldr	r0, [sp, #0x1c]
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a8114

