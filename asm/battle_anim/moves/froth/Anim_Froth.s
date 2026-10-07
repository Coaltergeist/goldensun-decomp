	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Froth  @ 0x080d33c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r7}
	ldr	r1, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x24
	add	r1, r7
	str	r3, [sp, #0x14]
	str	r0, [r1]
	mov	r0, #1
	mov	r8, r1
	bl	AnimStart
	ldr	r0, =_FILE_cd
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r1, r5
	mov	r2, #0x80
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r0, r5
	mov	r1, r7
	bl	DecompressLZ
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, [r6, #0x1c]
	mov	r1, #7
	str	r2, [sp, #0xc]
	mov	r3, #0xf
	mov	r2, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld3460	@ 0xf0f
	mov	r4, r8
	strh	r3, [r2]
	ldr	r3, [r4]
	ldr	r6, [r6, #0x20]
	ldr	r0, [r3, #8]
	str	r6, [sp, #0x10]
	bl	_GetBattleActor
	ldr	r6, [r0]
	mov	r0, r8
	ldr	r3, [r0]
	ldr	r0, [r3, #8]
	bl	_Func_80b8530
	ldr	r3, [r6, #0xc]
	add	r3, r0
	mov	r9, r3
	mov	r3, #0xe1
	mov	r1, #0
	mov	r2, #0xff
	lsl	r3, #7
	mov	r8, r1
	mov	r10, r2
	add	r5, r7, r3
	b	.Ld3478

	.align	2, 0
.Ld3460:
	.word	0xf0f
	.pool

.Ld3478:
	ldr	r3, [r6, #8]
	mov	r4, r9
	str	r4, [r5, #4]
	str	r3, [r5]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x7f
	lsl	r0, #16
	asr	r0, #5
	str	r0, [r5, #0xc]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x10
	lsl	r3, #16
	asr	r3, #6
	str	r3, [r5, #0x10]
	bl	Random
	mov	r2, r10
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #16
	asr	r0, #5
	mov	r3, #1
	mov	r1, #1
	str	r0, [r5, #0x14]
	neg	r3, r3
	mov	r0, r8
	ldr	r4, =gBuffer
	add	r8, r1
	str	r3, [r5, #0x18]
	mov	r2, r8
	mov	r3, #0
	strb	r3, [r4, r0]
	add	r5, #0x1c
	cmp	r2, #0x1e
	bne	.Ld3478
	ldr	r4, =0x7828
	mov	r3, #0
	add	r2, r7, r4
	mov	r8, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld3512
	mov	r0, #0xe8
	lsl	r0, #7
	mov	r6, r2
	mov	r1, #0x24
	add	r5, r7, r0
.Ld34e8:
	ldr	r3, [r6]
	ldrsh	r0, [r3, r1]
	str	r1, [sp, #8]
	bl	_GetBattleActor
	ldr	r2, [r0]
	ldr	r3, [r2, #8]
	str	r3, [r5]
	mov	r3, #0
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r3, #1
	add	r8, r3
	ldr	r3, [r6]
	ldr	r1, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r1, #2
	add	r5, #0x1c
	cmp	r8, r3
	bne	.Ld34e8
.Ld3512:
	ldr	r4, =0x77ac
	ldr	r0, =0x77b0
	add	r3, r7, r4
	mov	r2, #0
	mov	r5, #0x90
	str	r2, [r3]
	lsl	r5, #3
	add	r3, r7, r0
	str	r2, [r3]
	mov	r1, r5
	ldr	r0, =Task_SpinCamera
	bl	StartTask
	mov	r1, #0xef
	lsl	r1, #7
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r7, r3
	mov	r3, #0x4b
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0xa4
	bl	_PlaySound
	ldr	r0, =0x7828
	add	r3, r7, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lee1c4
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r2, r3]
	mov	r4, #0
	mov	r11, r4
	cmp	r3, #0
	bne	.Ld3566
	b	.Ld37f4
.Ld3566:
	ldr	r3, =iwram_3001e80
	ldr	r6, [r3]
	mov	r3, r11
	sub	r3, #0x11
	cmp	r3, #0x2e
	bhi	.Ld357c
	ldr	r1, =0x77ac
	mov	r3, #0xc0
	add	r2, r7, r1
	lsl	r3, #1
	b	.Ld3582
.Ld357c:
	ldr	r3, =0x77ac
	add	r2, r7, r3
	mov	r3, #0
.Ld3582:
	str	r3, [r2]
	ldr	r0, =0x7828
	add	r5, r7, r0
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r4, =.Lee1c4
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r4, r3]
	sub	r3, #0x10
	mov	r10, r4
	cmp	r11, r3
	bne	.Ld35a2
	mov	r0, #0x84
	bl	_Func_80bd7dc
.Ld35a2:
	bl	InitMatrixStack
	mov	r1, r6
	add	r1, #0xc
	mov	r0, r6
	bl	MatrixSetLook
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	mov	r2, r10
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Ld35c4
	b	.Ld37ac
.Ld35c4:
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r10, r5
	mov	r9, r1
	add	r6, r7, r3
.Ld35ce:
	cmp	r11, r9
	ble	.Ld3634
	ldr	r4, =gBuffer
	mov	r0, r8
	ldrsb	r3, [r4, r0]
	cmp	r3, #0
	bne	.Ld3634
	add	r5, sp, #0x18
	mov	r0, r6
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #8]
	cmp	r3, #0x9f
	bgt	.Ld35f6
	mov	r3, #0xa0
	str	r3, [r5, #8]
.Ld35f6:
	ldr	r2, =0x31f
	cmp	r3, r2
	ble	.Ld35fe
	str	r2, [r5, #8]
.Ld35fe:
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	mov	r1, #0xc
	mov	r4, #0xc0
	str	r1, [sp]
	lsl	r4, #4
	mov	r1, #0x18
	sub	r2, #6
	sub	r3, #0xc
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x14]
	add	r1, r7, r4
	ldr	r4, [sp, #0xc]
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
.Ld3634:
	mov	r3, r9
	add	r3, #0x30
	cmp	r11, r3
	ble	.Ld3730
	ldr	r0, =gBuffer
	mov	r1, r8
	ldrsb	r3, [r0, r1]
	cmp	r3, #0
	bne	.Ld3730
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, r8
	ldr	r1, [r3, #0x14]
	bl	__modsi3
	lsl	r1, r0, #3
	sub	r1, r0
	lsl	r1, #2
	mov	r3, #0xe8
	lsl	r3, #7
	add	r1, r7, r1
	add	r1, r3
	ldr	r3, [r1]
	ldr	r2, [r6]
	sub	r3, r2
	ldr	r2, [r6, #0xc]
	asr	r3, #9
	add	r0, r2, r3
	str	r0, [r6, #0xc]
	ldr	r2, [r6, #4]
	ldr	r3, [r1, #4]
	sub	r3, r2
	ldr	r2, [r6, #0x10]
	asr	r3, #9
	add	r4, r2, r3
	str	r4, [r6, #0x10]
	ldr	r2, [r6, #8]
	ldr	r3, [r1, #8]
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	asr	r3, #9
	add	r1, r2, r3
	mov	r3, r9
	add	r3, #0x55
	str	r1, [r6, #0x14]
	cmp	r11, r3
	bge	.Ld36c2
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ld369e
	add	r2, #0x3f
.Ld369e:
	asr	r3, r2, #6
	str	r3, [r6, #0xc]
	lsl	r3, r4, #4
	sub	r3, r4
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ld36ae
	add	r2, #0x3f
.Ld36ae:
	asr	r3, r2, #6
	str	r3, [r6, #0x10]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ld36be
	add	r2, #0x3f
.Ld36be:
	asr	r3, r2, #6
	str	r3, [r6, #0x14]
.Ld36c2:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	bge	.Ld3730
	ldr	r4, =gBuffer
	mov	r3, #1
	mov	r0, r8
	strb	r3, [r4, r0]
	mov	r3, #0
	str	r3, [r6, #0x18]
	add	r5, sp, #0x18
	ldr	r3, [r5]
	str	r3, [r6]
	bl	Random
	ldr	r3, [r5, #4]
	mov	r2, #0x1f
	and	r2, r0
	add	r3, r2
	sub	r3, #0x10
	mov	r1, r10
	ldr	r5, [r1]
	str	r3, [r6, #4]
	mov	r0, r8
	ldr	r1, [r5, #0x14]
	bl	__modsi3
	mov	r3, r0
	lsl	r2, r3, #1
	add	r2, #0x24
	mov	r1, #4
	ldrsh	r0, [r5, r2]
	str	r1, [sp]
	mov	r2, #5
	mov	r1, #7
	bl	SetBattleActorState
	mov	r2, r10
	ldr	r5, [r2]
	mov	r0, r8
	ldr	r1, [r5, #0x14]
	bl	__modsi3
	lsl	r0, #1
	add	r0, #0x24
	ldrsh	r0, [r5, r0]
	mov	r1, #0
	bl	_SetBattleActorKnockback
	ldr	r4, =0x77a8
	mov	r0, #4
	add	r3, r7, r4
	str	r0, [r3]
	mov	r0, #0x84
	bl	_PlaySound
.Ld3730:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xf
	bhi	.Ld3790
	lsr	r0, r3, #31
	add	r0, r3, r0
	mov	r1, #3
	asr	r0, #1
	bl	__modsi3
	ldr	r2, [r6]
	ldr	r3, [r6, #4]
	mov	r1, r0
	mov	r4, #0x10
	mov	r0, #0x40
	lsl	r1, #10
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0xc]
	sub	r2, #0x10
	ldr	r0, [sp, #0x14]
	add	r1, r7, r1
	sub	r3, #0x38
	bl	_call_via_r4
	ldr	r0, [r6, #0x18]
	lsr	r3, r0, #31
	add	r0, r3
	mov	r1, #3
	asr	r0, #1
	bl	__modsi3
	ldr	r3, [r6, #4]
	mov	r1, r0
	mov	r4, #0x40
	mov	r0, #0x10
	lsl	r1, #10
	ldr	r2, [r6]
	sub	r3, #0x38
	str	r0, [sp]
	str	r4, [sp, #4]
	add	r1, r7, r1
	ldr	r0, [sp, #0x14]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
.Ld3790:
	mov	r4, r10
	ldr	r3, [r4]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lee1c4
	lsl	r3, #1
	mov	r1, #1
	ldrb	r3, [r2, r3]
	mov	r0, #2
	add	r8, r1
	add	r9, r0
	add	r6, #0x1c
	cmp	r8, r3
	beq	.Ld37ac
	b	.Ld35ce
.Ld37ac:
	ldr	r0, =0x7828
	add	r5, r7, r0
	ldr	r3, [r5]
	ldr	r1, [r3, #0x18]
	lsl	r1, #1
	add	r1, #2
	mov	r0, r1
	bl	UpdateScreenShake
	ldr	r1, =0x77b0
	add	r2, r7, r1
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Ld37cc
	mov	r3, #1
	str	r3, [r2]
.Ld37cc:
	bl	Func_80cd52c
	ldr	r3, =0x7824
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Lee1c4
	lsl	r3, #1
	add	r3, #1
	mov	r4, #1
	ldrb	r3, [r2, r3]
	add	r11, r4
	cmp	r11, r3
	beq	.Ld37f4
	b	.Ld3566
.Ld37f4:
	ldr	r0, =Task_SpinCamera
	bl	StopTask
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Froth

	.section .rodata
.Lee1c4:
	.incrom 0xee1c4, 0xee1ca
