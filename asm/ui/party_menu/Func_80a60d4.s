	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a60d4  @ 0x080a60d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r0, [sp, #0x1c]
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r1, #0x1e
	ldrsb	r1, [r7, r1]
	mov	r0, #0x1c
	ldrsb	r0, [r7, r0]
	mov	r3, #0
	mov	r2, #1
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
	str	r3, [sp, #8]
	mov	r10, r0
	add	r1, sp, #0x10
	mov	r0, #0x9a
	ldrb	r1, [r1]
	lsl	r0, #2
	add	r3, r7, r0
	strb	r1, [r3]
	ldr	r3, [sp, #0x1c]
	mov	r2, r10
	lsl	r2, #1
	ldrh	r0, [r2, r3]
	bl	_GetUnit
	mov	r5, r7
	mov	r3, #0xa
	add	r5, #0x20
	str	r0, [sp, #0xc]
	str	r3, [sp]
	mov	r6, #2
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #3
	mov	r3, #0x11
	str	r6, [sp, #4]
	bl	Func_80a10d0
	cmp	r0, #0
	beq	.La613e
	ldr	r1, [r5]
	mov	r0, r7
	bl	Func_80a33d4
.La613e:
	mov	r5, r7
	mov	r3, #4
	add	r5, #0x28
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #0xd
	mov	r3, #0x11
	str	r6, [sp, #4]
	bl	Func_80a10d0
	cmp	r0, #0
	beq	.La6174
	ldr	r0, [sp, #0x10]
	ldr	r2, [r5]
	mov	r1, #0
	str	r0, [sp]
	mov	r3, #0
	mov	r0, #2
	bl	_Func_801eb64
	mov	r1, #0x87
	lsl	r1, #2
	add	r3, r7, r1
	str	r0, [r3]
	mov	r3, #0xd
	strb	r3, [r0, #5]
.La6174:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r2, r7
	mov	r11, r2
	b	.La6338

	.pool_aligned

.La6184:
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	beq	.La6230
	mov	r0, #0
	str	r0, [sp, #0x14]
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x18]
	add	r0, r10
	bl	__modsi3
	mov	r10, r0
	mov	r1, r10
	ldr	r5, [sp, #0x1c]
	lsl	r1, #1
	mov	r8, r1
	add	r5, r8
	ldrh	r0, [r5]
	ldr	r6, [r7, #0x24]
	bl	_GetUnit
	str	r0, [sp, #0xc]
	ldrh	r0, [r5]
	bl	Func_80a6384
	mov	r2, #0
	mov	r3, #0
	ldrh	r1, [r5]
	mov	r0, r6
	bl	Func_80a112c
	ldrh	r1, [r5]
	ldr	r0, [r7, #0x28]
	bl	Func_80a6614
	ldrh	r1, [r5]
	mov	r0, r7
	bl	Func_80a1804
	mov	r0, #0xa5
	lsl	r0, #1
	ldr	r1, =0x1e
	mov	r9, r8
	mov	r2, #3
	add	r3, r7, r0
.La61dc:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La61dc
	mov	r3, #0xa2
	lsl	r3, #1
	ldr	r2, =0x1a
	add	r3, r9
	strh	r2, [r7, r3]
	ldr	r0, =0x151
	bl	_GetFlag
	cmp	r0, #0
	bne	.La6228
	ldr	r1, [sp, #8]
	cmp	r1, #0
	bne	.La6228
	b	.La6210

	.pool_aligned

.La6210:
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	ldr	r0, [r7, #0x2c]
	bl	Func_80a23c0
	mov	r2, #1
	str	r2, [sp, #8]
	b	.La6236
.La6228:
	ldr	r0, =0x151
	bl	_ClearFlag
	b	.La6236
.La6230:
	mov	r3, r10
	lsl	r3, #1
	mov	r8, r3
.La6236:
	mov	r0, r8
	add	r0, r10
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La627a
	mov	r0, #0x86
	lsl	r0, #2
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La6272
	mov	r0, #0x70
	bl	_PlaySound
	ldr	r2, [sp, #0x1c]
	mov	r1, r8
	ldrh	r1, [r1, r2]
	str	r1, [sp, #0x10]
	b	.La634c
.La6272:
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r1, =gKeyPress
.La627a:
	ldr	r0, =gKeyPress
	ldr	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	and	r3, r0
	cmp	r3, #0
	bne	.La6294
	ldr	r3, [r1]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La62ec
.La6294:
	ldr	r3, [sp, #0x1c]
	mov	r2, r8
	ldrh	r2, [r2, r3]
	str	r2, [sp, #0x10]
	ldr	r3, [r1]
	and	r3, r0
	cmp	r3, #0
	beq	.La62ac
	mov	r3, #1
	mov	r0, r11
	strb	r3, [r0]
	b	.La62b2
.La62ac:
	mov	r3, #2
	mov	r1, r11
	strb	r3, [r1]
.La62b2:
	mov	r0, #0x40
	bl	alloc_iwram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, [sp, #0xc]
	mov	r2, #1
	bl	Func_80a68ec
	mov	r5, r0
	lsl	r5, #24
	lsr	r5, #24
	lsl	r5, #24
	mov	r0, r6
	asr	r5, #24
	bl	free
	cmp	r5, #0
	bne	.La62e4
	mov	r2, r11
	strb	r5, [r2]
	mov	r0, #0x72
	bl	_PlaySound
	b	.La62ec
.La62e4:
	mov	r0, #0x70
	bl	_PlaySound
	b	.La634c
.La62ec:
	ldr	r0, =gKeyPress
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La6306
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x10]
	b	.La634c
.La6306:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La6322
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	str	r3, [sp, #0x14]
	add	r10, r2
.La6322:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La6338
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	str	r0, [sp, #0x14]
	add	r10, r0
.La6338:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La6346
	b	.La6184
.La6346:
	mov	r1, r10
	lsl	r1, #1
	mov	r8, r1
.La634c:
	mov	r2, r10
	strb	r2, [r7, #0x1c]
	ldr	r0, [sp, #0x1c]
	mov	r3, r8
	ldr	r1, =0x21a
	ldrh	r2, [r3, r0]
	add	r3, r7, r1
	str	r2, [r7, #8]
	strb	r2, [r3]
	ldr	r0, [sp, #0x10]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a60d4

