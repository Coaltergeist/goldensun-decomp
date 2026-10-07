	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Jupiter  @ 0x080e01e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x28
	str	r3, [sp, #0x1c]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r3, r9
	str	r2, [sp, #0x18]
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r3, .Le0250	@ 0x1010
	ldr	r2, =REG_BLDALPHA
	strh	r3, [r2]
	mov	r2, sp
	add	r2, #0x20
	mov	r1, r2
	mov	r0, #0
	str	r2, [sp, #0x14]
	bl	BuildDraw2DFuncs
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_90
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0xc8
	lsl	r1, #2
	ldr	r0, =_FILE_89
	add	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	b	.Le026c

	.align	2, 0
.Le0250:
	.word	0x1010
	.pool

.Le026c:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	mov	r5, #0xe1
	bl	StartTask
	lsl	r5, #7
	mov	r3, #0
	mov	r10, r3
	mov	r6, #0x3f
	add	r5, r9
.Le0294:
	bl	Random
	and	r0, r6
	add	r0, #0x40
	str	r0, [r5]
	bl	Random
	mov	r7, #1
	and	r0, r6
	sub	r0, #0x50
	add	r10, r7
	str	r0, [r5, #4]
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0x20
	bne	.Le0294
	mov	r1, #0
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r10, r1
	lsl	r2, #2
	sub	r1, #1
.Le02c0:
	mov	r7, #1
	add	r10, r7
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Le02c0
	mov	r0, #0xab
	bl	_PlaySound
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	str	r1, [sp, #0x10]
	mov	r11, r0
.Le02dc:
	mov	r2, r11
	cmp	r2, #0x38
	bne	.Le02e8
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Le02e8:
	mov	r3, r11
	cmp	r3, #0x5f
	bgt	.Le0326
	ldr	r0, [sp, #0x10]
	bl	sin
	mov	r7, r11
	lsl	r3, r7, #1
	mov	r5, #0x40
	sub	r5, r3
	mov	r6, r5
	mul	r6, r0
	ldr	r0, [sp, #0x10]
	bl	cos
	mov	r3, r5
	mul	r3, r0
	mov	r2, #0x14
	asr	r6, #17
	asr	r3, #16
	add	r6, #0x56
	str	r2, [sp]
	mov	r2, #0x28
	str	r2, [sp, #4]
	add	r3, #0x1c
	ldr	r4, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	mov	r1, r9
	mov	r2, r6
	bl	_call_via_r4
.Le0326:
	mov	r1, #0xe1
	mov	r0, #0
	lsl	r1, #7
	add	r1, r9
	str	r0, [sp, #0xc]
	mov	r10, r0
	mov	r8, r1
.Le0334:
	mov	r2, r10
	lsl	r3, r2, #2
	add	r3, #8
	cmp	r11, r3
	blt	.Le0422
	mov	r7, r8
	ldr	r3, [r7, #4]
	cmp	r3, #0x5f
	bgt	.Le0422
	mov	r1, #0x28
	ldr	r2, [r7]
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	mov	r1, #0xc8
	lsl	r1, #2
	sub	r3, #0x20
	sub	r2, #0x14
	ldr	r4, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	add	r1, r9
	bl	_call_via_r4
	ldr	r3, [r7]
	sub	r3, #6
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0xc
	str	r3, [r7, #4]
	cmp	r3, #0x5f
	ble	.Le0422
	ldr	r0, [sp, #0xc]
	ldr	r1, =gBuffer
	mov	r4, #0
	add	r7, r0, r1
.Le037a:
	str	r4, [sp, #8]
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Random
	ldr	r5, =0x1ff
	and	r5, r0
	mov	r0, r8
	ldr	r3, [r0]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r3, [r0, #4]
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #1
	str	r3, [r7, #4]
	mov	r0, r6
	add	r5, r2
	bl	sin
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	ldr	r4, [sp, #8]
	and	r3, r0
	add	r3, #0x20
	add	r4, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x20
	bne	.Le037a
	mov	r0, #0x85
	bl	_PlaySound
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	str	r3, [r2]
	ldr	r3, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Le0422
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Le03f6:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r4
	mov	r2, #5
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #2
	cmp	r4, r3
	bne	.Le03f6
.Le0422:
	ldr	r1, [sp, #0xc]
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #2
	add	r10, r3
	mov	r0, #0x1c
	add	r1, r2
	mov	r7, r10
	add	r8, r0
	str	r1, [sp, #0xc]
	cmp	r7, #8
	beq	.Le043c
	b	.Le0334
.Le043c:
	mov	r0, #0
	ldr	r5, =gBuffer
	ldr	r6, =Data_ede48
	mov	r10, r0
.Le0444:
	mov	r1, #1
	ldr	r0, [r5, #0x18]
	neg	r1, r1
	cmp	r0, r1
	beq	.Le0494
	cmp	r0, #0
	bge	.Le0454
	add	r0, #0xf
.Le0454:
	asr	r0, #4
	add	r0, #1
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x18]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x14]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3e
	lsl	r2, #6
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le0494:
	mov	r1, #1
	mov	r2, #0x80
	add	r10, r1
	lsl	r2, #2
	add	r5, #0x1c
	cmp	r10, r2
	bne	.Le0444
	mov	r1, #4
	mov	r0, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r7, =0xfffff800
	ldr	r3, [sp, #0x10]
	mov	r0, #1
	add	r11, r0
	add	r3, r7
	mov	r1, r11
	str	r3, [sp, #0x10]
	cmp	r1, #0x60
	beq	.Le04d0
	b	.Le02dc
.Le04d0:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Jupiter
