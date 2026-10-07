	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_HelmSplitter  @ 0x080e698c
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
	ldr	r6, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x24
	mov	r9, r1
	str	r3, [sp, #0xc]
	add	r6, r9
	str	r0, [r6]
	mov	r0, #0
	ldr	r5, [r2, #8]
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le69f8	@ 0x100
	ldr	r0, =_FILE_73
	strh	r3, [r2]
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_61
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0xfa
	lsl	r1, #6
	mov	r2, #1
	ldr	r0, =_FILE_6d
	add	r1, r9
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, [r6]
	add	r1, sp, #0x10
	ldr	r0, [r3, #4]
	bl	BuildDraw2DFuncs
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	b	.Le6a14

	.align	2, 0
.Le69f8:
	.word	0x100
	.pool

.Le6a14:
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r2, #0
	mov	r8, r2
	ldr	r3, =ewram_2010018
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #3
.Le6a36:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Le6a36
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r6, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r0, [r0]
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r3, r2
	mov	r8, r0
	lsl	r0, r3, #2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #4
	mov	r10, r2
	bl	__divsi3
	mov	r4, r8
	ldr	r3, [r4, #0x10]
	mov	r5, r0
	ldr	r0, [r6, #0x10]
	sub	r3, r0
	mov	r8, r0
	lsl	r0, r3, #2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #4
	bl	__divsi3
	add	r10, r5
	add	r8, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_8000948
	bl	_call_via_r2
	mov	r1, #0x14
	lsl	r0, #8
	bl	__divsi3
	mov	r3, r6
	mov	r2, #1
	add	r3, #0x58
	str	r0, [r6, #0x34]
	str	r0, [r6, #0x30]
	strb	r2, [r3]
	mov	r3, #0xe0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldr	r3, =0xdeb8
	str	r3, [r6, #0x48]
	mov	r3, r6
	mov	r1, #0
	add	r3, #0x5a
	str	r1, [r6, #0x44]
	mov	r0, r6
	strb	r2, [r3]
	bl	_Actor_Stop
	mov	r1, r10
	mov	r2, #0
	mov	r3, r8
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r1, #2
	mov	r0, r6
	bl	_Actor_SetAnim
	ldr	r3, =0x7828
	mov	r1, #0
	add	r2, sp, #0x18
	add	r3, r9
	str	r1, [sp, #8]
	mov	r11, r2
	mov	r10, r3
.Le6af4:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, r11
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos3
	mov	r6, r11
	ldr	r2, [r6]
	mov	r3, #0x50
	sub	r3, r2
	ldr	r1, =REG_BG2X
	lsl	r3, #8
	str	r3, [r1]
	ldr	r2, [sp, #8]
	sub	r2, #8
	cmp	r2, #0xf
	bhi	.Le6b8e
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r5, r3, #1
	cmp	r5, #6
	ble	.Le6b22
	mov	r5, #6
.Le6b22:
	mov	r0, r10
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le6b5c
	ldr	r2, =.Leee02
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leee10
	ldrsb	r2, [r3, r5]
	ldr	r3, =.Leee17
	mov	r4, r11
	ldr	r0, [r4, #4]
	ldrsb	r3, [r3, r5]
	add	r3, r0
	ldr	r0, =.Leedf4
	ldrb	r0, [r0, r5]
	str	r0, [sp]
	ldr	r0, =.Leedfb
	ldrb	r0, [r0, r5]
	add	r1, r9
	str	r0, [sp, #4]
	add	r2, #0x1e
	sub	r3, #0x3c
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
	b	.Le6b8e
.Le6b5c:
	ldr	r2, =.Leee02
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leee10
	ldrsb	r2, [r3, r5]
	ldr	r3, =.Leedf4
	ldrb	r4, [r3, r5]
	ldr	r3, =.Leee17
	mov	r6, r11
	ldr	r0, [r6, #4]
	ldrsb	r3, [r3, r5]
	str	r4, [sp]
	add	r3, r0
	ldr	r0, =.Leedfb
	neg	r2, r2
	ldrb	r0, [r0, r5]
	sub	r2, r4
	str	r0, [sp, #4]
	add	r1, r9
	add	r2, #0x6c
	sub	r3, #0x3c
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
.Le6b8e:
	ldr	r0, [sp, #8]
	cmp	r0, #0x12
	bne	.Le6c26
	mov	r0, #0x86
	bl	_Func_80bd7dc
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, #0
	bl	SetBattleActorState
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #6
	mov	r6, #0x24
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	mov	r0, #0
	str	r3, [r2]
	ldr	r7, =gBuffer
	mov	r8, r0
.Le6bcc:
	bl	Random
	mov	r5, #0x3f
	mov	r1, #0x80
	lsl	r1, #1
	and	r5, r0
	add	r5, r1
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r7]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r6
	bl	sin
	mov	r3, r5
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r2, #1
	add	r3, #0x10
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le6bcc
.Le6c26:
	mov	r4, #0
	ldr	r5, =gBuffer
	mov	r8, r4
.Le6c2c:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Le6c9c
	sub	r3, #1
	str	r3, [r5, #0x18]
	mov	r0, r5
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e3908
	mov	r6, #0xd0
	ldr	r3, [r5, #4]
	lsl	r6, #15
	cmp	r3, r6
	ble	.Le6c58
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5, #0x10]
	b	.Le6c9c
.Le6c58:
	ldr	r2, [r5]
	ldr	r0, =0x7effff
	cmp	r2, r0
	bhi	.Le6c9c
	cmp	r3, #0
	blt	.Le6c9c
	ldr	r0, [sp, #8]
	add	r0, r8
	asr	r6, r2, #16
	asr	r7, r3, #16
	cmp	r0, #0
	bge	.Le6c72
	add	r0, #3
.Le6c72:
	mov	r1, #6
	asr	r0, #2
	bl	__modsi3
	mov	r1, r0
	lsl	r1, #8
	mov	r2, #0xfa
	lsl	r2, #6
	add	r1, r9
	mov	r0, #0x10
	add	r1, r2
	mov	r3, r7
	mov	r2, r6
	str	r0, [sp]
	str	r0, [sp, #4]
	sub	r2, #8
	sub	r3, #8
	ldr	r4, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	bl	_call_via_r4
.Le6c9c:
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	add	r5, #0x1c
	cmp	r4, #0x80
	bne	.Le6c2c
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
	ldr	r6, [sp, #8]
	add	r6, #1
	str	r6, [sp, #8]
	cmp	r6, #0x46
	beq	.Le6cce
	b	.Le6af4
.Le6cce:
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
.func_end Anim_HelmSplitter
