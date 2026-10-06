	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Annihilation  @ 0x080e90a8
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
	sub	sp, #0x58
	str	r3, [sp, #0x24]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x20]
	sub	r2, #0x6c
	ldr	r5, =0x7828
	mov	r11, r1
	ldr	r2, [r2]
	add	r5, r11
	str	r2, [sp, #0x1c]
	ldr	r7, =gBuffer
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r0, =_FILE_96
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, r7
	ldr	r0, =_FILE_63
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0
	ldr	r1, [sp, #0x20]
	ldr	r0, =_FILE_73
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #4
	mov	r3, #0
	bl	_Func_80b82c4
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	mov	r5, #0xe1
	mov	r2, #0
	lsl	r5, #7
	ldr	r6, [r0]
	mov	r8, r2
	mov	r7, #0xff
	add	r5, r11
.Le912e:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Random
	and	r0, r7
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x7f
	ldr	r3, [r5]
	lsl	r0, #12
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Le9168
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Le9168:
	mov	r3, r8
	cmp	r3, #0
	bge	.Le9170
	add	r3, #3
.Le9170:
	asr	r3, #2
	lsl	r3, #1
	add	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	add	r5, #0x1c
	cmp	r0, #0x40
	bne	.Le912e
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r2, sp
	add	r2, #0x40
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0x18]
	bl	GetBattleActorPos2
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	str	r3, [r2]
	mov	r3, #0
	mov	r9, r3
	ldr	r1, [sp, #0x1c]
	ldr	r2, =0x7828
	ldr	r3, =0xffffaf00
	mov	r0, sp
	add	r0, #0x4c
	add	r1, #0xc
	add	r2, r11
	add	r3, r11
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x14]
	str	r3, [sp, #8]
.Le91d2:
	mov	r0, r9
	cmp	r0, #8
	bne	.Le91de
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le91de:
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	beq	.Le91f4
	mov	r2, r9
	cmp	r2, #8
	bne	.Le91f4
	mov	r0, #0xd4
	bl	_PlaySound
.Le91f4:
	ldr	r5, =0x7828
	add	r5, r11
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos2
	mov	r3, r9
	sub	r3, #6
	cmp	r3, #5
	bhi	.Le92ae
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le9222
	mov	r3, #3
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	b	.Le9232
.Le9222:
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	BuildDraw2DFuncEx
.Le9232:
	ldr	r3, =gPtrs
	ldr	r0, [sp, #0x14]
	add	r3, #0xb8
	ldr	r4, [r3]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	str	r4, [sp, #0x28]
	cmp	r3, #0
	bne	.Le928c
	ldr	r2, [sp, #0x4c]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r1, #0x30
	ldr	r3, [sp, #0x50]
	asr	r2, #1
	str	r1, [sp]
	mov	r1, #0x48
	str	r1, [sp, #4]
	sub	r2, #0x18
	sub	r3, #0x18
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #8]
	bl	_call_via_r4
	b	.Le92a8

	.pool_aligned

.Le928c:
	ldr	r2, [sp, #0x4c]
	lsr	r3, r2, #31
	add	r2, r3
	mov	r1, #0x30
	ldr	r3, [sp, #0x50]
	str	r1, [sp]
	mov	r1, #0x48
	str	r1, [sp, #4]
	asr	r2, #1
	sub	r3, #0x18
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #8]
	bl	_call_via_r4
.Le92a8:
	mov	r0, #0x2e
	bl	gfree
.Le92ae:
	mov	r2, r9
	sub	r2, #0x10
	cmp	r2, #0x1f
	bhi	.Le9328
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r5, r3, #1
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	cmp	r5, #2
	ble	.Le92da
	mov	r5, #2
.Le92da:
	ldr	r1, [sp, #0x14]
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r2, #0
	cmp	r3, #0
	beq	.Le92ea
	mov	r2, #0x96
	lsl	r2, #6
.Le92ea:
	lsl	r1, r5, #1
	add	r1, r5
	lsl	r1, #3
	add	r1, r5
	lsl	r1, #7
	ldr	r3, [sp, #0x18]
	add	r1, r2, r1
	ldr	r2, =gBuffer
	add	r1, r2
	ldr	r2, [r3]
	ldr	r0, [sp, #0x18]
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r0, #0x28
	str	r0, [sp]
	asr	r2, #1
	mov	r0, #0x50
	str	r0, [sp, #4]
	sub	r2, #0x14
	sub	r3, #0x30
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	ldr	r0, =0x2710
	bl	Unk_080D655C
	mov	r0, #0x2e
	bl	gfree
.Le9328:
	mov	r1, r9
	cmp	r1, #8
	bne	.Le933e
	ldr	r3, =0x3f3f3f3f
	add	r0, sp, #0x30
	str	r3, [r0]
	ldr	r1, [sp, #0x24]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Le933e:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0xc]
	bl	MatrixSetLook
	mov	r2, r9
	cmp	r2, #3
	ble	.Le93e8
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	add	r1, sp, #0x28
	ldr	r0, [r3, #4]
	mov	r10, r1
	bl	BuildDraw2DFuncs
	mov	r7, #0xe1
	mov	r2, #0
	lsl	r7, #7
	mov	r8, r2
	add	r6, sp, #0x34
	add	r7, r11
.Le936a:
	ldr	r5, [r7, #0x18]
	cmp	r5, #0
	ble	.Le93d0
	mov	r1, r6
	mov	r0, r7
	bl	Func_80e3944
	ldr	r2, [r6]
	asr	r2, #1
	str	r2, [r6]
	ldr	r0, [sp, #0x18]
	ldr	r3, [r6, #4]
	ldr	r1, [r0, #4]
	add	r3, r1
	mov	r1, r8
	lsr	r4, r1, #31
	asr	r5, #3
	add	r4, r8
	add	r5, #2
	mov	r1, #1
	asr	r4, #1
	sub	r3, #0x70
	and	r4, r1
	lsl	r1, r5, #1
	str	r3, [r6, #4]
	ldr	r0, =Data_ede48
	str	r1, [sp, #4]
	sub	r1, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0x20]
	add	r1, r0, r1
	lsr	r0, r5, #31
	add	r0, r5, r0
	str	r5, [sp]
	asr	r0, #1
	sub	r2, r0
	lsl	r4, #2
	mov	r0, r10
	sub	r3, r5
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	ldr	r2, =0xfffffc00
	bl	Func_80e38b8
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.Le93d0:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r7, #0x1c
	cmp	r2, #0x40
	bne	.Le936a
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
.Le93e8:
	mov	r3, r9
	cmp	r3, #8
	bne	.Le9404
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_SetBattleActorKnockback
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r11
	str	r3, [r2]
.Le9404:
	mov	r2, r9
	cmp	r2, #6
	bne	.Le9422
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	mov	r2, #1
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xa
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Le9422:
	mov	r2, r9
	cmp	r2, #0xe
	bne	.Le9440
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	mov	r2, #1
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xa
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Le9440:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0xd8
	ldr	r2, [sp, #8]
	mov	r0, #1
	lsl	r3, #4
	add	r9, r0
	add	r2, r3
	mov	r1, r9
	str	r2, [sp, #8]
	cmp	r1, #0x40
	beq	.Le9470
	b	.Le91d2
.Le9470:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Annihilation
