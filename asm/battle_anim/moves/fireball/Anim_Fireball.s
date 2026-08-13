	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Fireball  @ 0x080da6cc
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
	sub	sp, #0x38
	str	r3, [sp, #0x20]
	mov	r3, r2
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	ldr	r2, [r2, #8]
	ldr	r3, =0x7828
	str	r2, [sp, #0x14]
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	ldr	r3, [r0, #4]
	cmp	r3, #1
	bne	.Lda710
	mov	r0, #1
	bl	AnimStart
	b	.Lda716

	.pool_aligned

.Lda710:
	mov	r0, #0
	bl	AnimStart
.Lda716:
	ldr	r0, =_FILE_b4
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x14]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x24
	ldr	r5, =0x7828
	str	r2, [sp, #0xc]
	str	r3, [r2, #4]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lda794	@ 0x1010
	add	r5, r9
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r8, r0
	ldr	r0, [r3, #8]
	bl	_Func_80b8530
	mov	r5, r8
	ldr	r3, [r5, #0xc]
	add	r3, r0
	mov	r1, #0x7f
	mov	r0, #0
	str	r3, [sp, #0x10]
	ldr	r7, =gBuffer
	mov	r10, r0
	mov	r11, r1
	b	.Lda7b0

	.align	2, 0
.Lda794:
	.word	0x1010
	.pool

.Lda7b0:
	bl	Random
	mov	r6, r0
	bl	Random
	mov	r2, r11
	mov	r5, r0
	mov	r0, r6
	and	r5, r2
	bl	sin
	add	r5, #0x7f
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	bl	Random
	mov	r3, r11
	and	r0, r3
	sub	r0, #0x10
	lsl	r0, #16
	asr	r0, #6
	str	r0, [r7, #0x10]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0x14]
	mov	r5, r8
	ldr	r3, [r5, #8]
	str	r3, [r7]
	ldr	r0, [sp, #0x10]
	str	r0, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, #1
	str	r3, [r7, #8]
	add	r10, r1
	mov	r3, #1
	neg	r3, r3
	mov	r2, r10
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r2, #0x40
	bne	.Lda7b0
	ldr	r3, =0x77ac
	mov	r2, #0
	add	r3, r9
	str	r2, [r3]
	ldr	r3, =0x77b0
	mov	r5, #0x90
	add	r3, r9
	lsl	r5, #3
	str	r2, [r3]
	mov	r1, r5
	ldr	r0, =Task_SpinCamera
	bl	StartTask
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r3, #0
	str	r3, [sp, #0x1c]
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, =.Leea41
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	mov	r5, #0x84
	lsr	r3, #1
	neg	r5, r5
	cmp	r3, r5
	bne	.Lda85e
	b	.Ldab06
.Lda85e:
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x7828
	add	r0, #0xc
	add	r1, r9
	str	r0, [sp, #8]
	mov	r11, r1
.Lda86a:
	ldr	r3, [sp, #0x1c]
	sub	r3, #0x11
	cmp	r3, #0x3e
	bhi	.Lda87c
	ldr	r2, =0x77ac
	mov	r3, #0x80
	add	r2, r9
	lsl	r3, #1
	b	.Lda882
.Lda87c:
	ldr	r2, =0x77ac
	mov	r3, #0
	add	r2, r9
.Lda882:
	str	r3, [r2]
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	ldr	r6, =.Leea41
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r6, r3]
	ldr	r2, [sp, #0x1c]
	lsr	r3, #1
	add	r3, #0x6c
	cmp	r2, r3
	bne	.Lda8a0
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Lda8a0:
	mov	r2, #0
	mov	r3, #0x64
	mov	r0, #0
	mov	r1, #0
	bl	_Func_80c0cec
	bl	InitMatrixStack
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #8]
	bl	MatrixSetLook
	mov	r3, #0
	mov	r10, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r6, r3]
	mov	r2, r6
	cmp	r3, #0
	bne	.Lda8ca
	b	.Ldaa5c
.Lda8ca:
	ldr	r6, =gBuffer
.Lda8cc:
	mov	r5, r10
	lsr	r3, r5, #31
	add	r3, r10
	asr	r3, #1
	mov	r8, r3
	ldr	r0, [sp, #0x1c]
	mov	r7, r8
	add	r7, #0x30
	cmp	r0, r8
	ble	.Lda978
	mov	r1, #1
	ldr	r3, [r6, #0x18]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lda974
	add	r5, sp, #0x2c
	mov	r0, r6
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #8]
	cmp	r3, #0x9f
	bgt	.Lda904
	mov	r3, #0xa0
	str	r3, [r5, #8]
.Lda904:
	ldr	r2, =0x31f
	cmp	r3, r2
	ble	.Lda90e
	str	r2, [r5, #8]
	mov	r3, r2
.Lda90e:
	mov	r2, r3
	sub	r2, #0xa0
	cmp	r2, #0
	bge	.Lda918
	add	r2, #0x3f
.Lda918:
	asr	r2, #6
	mov	r3, #0xa
	sub	r4, r3, r2
	mov	r7, r8
	ldr	r3, [sp, #0x1c]
	mov	r2, #4
	add	r7, #0x30
	mov	r12, r2
	cmp	r3, r7
	blt	.Lda930
	mov	r0, #0
	mov	r12, r0
.Lda930:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x14]
	lsr	r3, r4, #31
	add	r1, r2, r1
	add	r3, r4, r3
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0xc]
	mov	r5, r12
	sub	r3, r4
	ldr	r4, [r5, r0]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	str	r3, [r6]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
	b	.Lda978
.Lda974:
	mov	r7, r8
	add	r7, #0x30
.Lda978:
	ldr	r1, [sp, #0x1c]
	cmp	r1, r7
	ble	.Ldaa46
	mov	r2, #1
	ldr	r3, [r6, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Ldaa46
	mov	r3, r11
	ldr	r5, [r3]
	mov	r0, r10
	ldr	r1, [r5, #0x14]
	bl	__modsi3
	lsl	r0, #1
	add	r0, #0x24
	ldrsh	r0, [r5, r0]
	bl	_GetBattleActor
	ldr	r1, [r0]
	ldr	r2, [r6]
	ldr	r3, [r1, #8]
	sub	r3, r2
	ldr	r2, [r6, #0xc]
	asr	r3, #9
	add	r0, r2, r3
	str	r0, [r6, #0xc]
	ldr	r2, [r6, #4]
	ldr	r3, [r1, #0xc]
	sub	r3, r2
	ldr	r2, [r6, #0x10]
	asr	r3, #9
	add	r4, r2, r3
	str	r4, [r6, #0x10]
	ldr	r2, [r6, #8]
	ldr	r3, [r1, #0x10]
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	asr	r3, #9
	add	r1, r2, r3
	str	r1, [r6, #0x14]
	mov	r3, r8
	ldr	r2, [sp, #0x1c]
	add	r3, #0x55
	cmp	r2, r3
	bge	.Ldaa04
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Lda9e0
	add	r2, #0x3f
.Lda9e0:
	asr	r3, r2, #6
	str	r3, [r6, #0xc]
	lsl	r3, r4, #4
	sub	r3, r4
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Lda9f0
	add	r2, #0x3f
.Lda9f0:
	asr	r3, r2, #6
	str	r3, [r6, #0x10]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ldaa00
	add	r2, #0x3f
.Ldaa00:
	asr	r3, r2, #6
	str	r3, [r6, #0x14]
.Ldaa04:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	bge	.Ldaa46
	mov	r3, #0
	str	r3, [r6, #0x18]
	add	r2, sp, #0x2c
	ldr	r3, [r2]
	str	r3, [r6]
	ldr	r3, [r2, #4]
	mov	r0, #0x88
	str	r3, [r6, #4]
	bl	_PlaySound
	mov	r3, r11
	ldr	r5, [r3]
	mov	r0, r10
	ldr	r1, [r5, #0x14]
	bl	__modsi3
	mov	r3, r0
	lsl	r2, r3, #1
	add	r2, #0x24
	ldrsh	r0, [r5, r2]
	mov	r2, #4
	str	r2, [sp]
	mov	r1, #0xa
	mov	r2, #5
	bl	SetBattleActorState
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r9
	str	r3, [r2]
.Ldaa46:
	mov	r5, r11
	ldr	r3, [r5]
	mov	r2, #1
	add	r10, r2
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Leea41
	ldrb	r3, [r2, r3]
	add	r6, #0x1c
	cmp	r10, r3
	beq	.Ldaa5c
	b	.Lda8cc
.Ldaa5c:
	mov	r1, r11
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ldaac2
	ldr	r6, =gBuffer
.Ldaa6e:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xb
	bhi	.Ldaab0
	lsr	r4, r3, #31
	add	r4, r3, r4
	asr	r4, #1
	ldr	r2, =.Leea56
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leea44
	ldrb	r5, [r3, r4]
	ldr	r2, [r6]
	lsr	r3, r5, #1
	sub	r2, r3
	ldr	r3, =.Leea50
	ldrb	r0, [r3, r4]
	ldr	r3, [r6, #4]
	str	r5, [sp]
	add	r3, r0
	ldr	r0, =.Leea4a
	ldrb	r0, [r0, r4]
	ldr	r5, [sp, #0xc]
	str	r0, [sp, #4]
	sub	r3, #0x38
	add	r1, r9
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
	ldr	r2, =.Leea41
.Ldaab0:
	mov	r1, r11
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	add	r6, #0x1c
	cmp	r10, r3
	bne	.Ldaa6e
.Ldaac2:
	ldr	r2, =0x77b0
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Ldaad0
	mov	r3, #1
	str	r3, [r2]
.Ldaad0:
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x1c]
	add	r2, #1
	str	r2, [sp, #0x1c]
	mov	r5, r11
	ldr	r3, [r5]
	ldr	r2, =.Leea41
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	ldr	r0, [sp, #0x1c]
	lsr	r3, #1
	add	r3, #0x84
	cmp	r0, r3
	beq	.Ldab06
	b	.Lda86a
.Ldab06:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r0, =Task_SpinCamera
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Fireball

	.section .rodata
.Leea41:
	.incrom 0xeea41, 0xeea44
.Leea44:
	.incrom 0xeea44, 0xeea4a
.Leea4a:
	.incrom 0xeea4a, 0xeea50
.Leea50:
	.incrom 0xeea50, 0xeea56
.Leea56:
	.incrom 0xeea56, 0xeea62
