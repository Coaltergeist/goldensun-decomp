	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_EPowerUp  @ 0x080cb7f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldr	r1, =0x782c
	mov	r0, #0x27
	sub	sp, #0x4c
	bl	galloc_iwram
	mov	r1, #0x80
	mov	r9, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r1, =0x60e
	str	r0, [sp, #0x24]
	mov	r0, #0x29
	bl	galloc_iwram
	ldr	r3, =iwram_3001e80
	str	r0, [sp, #0x18]
	ldr	r5, =0x7828
	ldr	r3, [r3]
	add	r5, r9
	str	r3, [sp, #0x14]
	mov	r0, #0
	str	r6, [r5]
	bl	AnimStart
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x77b8
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lcb880	@ 0x100c
	ldr	r6, =0x57
	strh	r3, [r2]
	ldr	r3, .Lcb884	@ 0x100
	sub	r2, #0x32
	strh	r3, [r2]
	mov	r0, r6
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #0
	ldr	r0, =_FILE_76
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.Lcb8bc
	cmp	r3, #1
	bgt	.Lcb8b2
	b	.Lcb8ac

	.align	2, 0
.Lcb880:
	.word	0x100c
.Lcb884:
	.word	0x100
	.pool

.Lcb8ac:
	cmp	r3, #0
	beq	.Lcb8b8
	b	.Lcb8cc
.Lcb8b2:
	cmp	r3, #2
	beq	.Lcb8c0
	b	.Lcb8cc
.Lcb8b8:
	ldr	r0, =_FILE_48
	b	.Lcb8ce
.Lcb8bc:
	mov	r0, r6
	b	.Lcb8ce
.Lcb8c0:
	ldr	r0, =_FILE_47
	b	.Lcb8ce

	.pool_aligned

.Lcb8cc:
	ldr	r0, =_FILE_46
.Lcb8ce:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	ldr	r5, =gBuffer
	mov	r1, #0
	mov	r8, r1
.Lcb8e6:
	mov	r3, #0
	str	r3, [r5, #4]
	bl	Random
	ldr	r3, =0xffff
	and	r3, r0
	str	r3, [r5]
	bl	Random
	ldr	r3, =0x1ff
	mov	r4, r8
	lsl	r2, r4, #1
	and	r3, r0
	mov	r1, #1
	add	r3, r2
	add	r8, r1
	str	r3, [r5, #8]
	mov	r2, r8
	neg	r3, r4
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x80
	bne	.Lcb8e6
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
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	ldr	r1, =0x7828
	add	r3, #0xb8
	add	r1, r9
	ldr	r3, [r3]
	ldr	r2, [r1]
	str	r3, [sp, #0x1c]
	ldr	r3, [r2, #0x18]
	add	r3, #1
	str	r3, [r2, #0x18]
	cmp	r3, #0
	bgt	.Lcb95a
	mov	r3, #1
	str	r3, [r2, #0x18]
.Lcb95a:
	ldr	r2, [r1]
	ldr	r3, [r2, #0x18]
	cmp	r3, #4
	ble	.Lcb966
	mov	r3, #4
	str	r3, [r2, #0x18]
.Lcb966:
	mov	r0, #0xd4
	bl	_PlaySound
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x14]
	mov	r4, sp
	add	r4, #0x40
	add	r1, #0xc
	add	r2, r9
	mov	r3, #0
	str	r4, [sp, #8]
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x10]
	mov	r10, r3
.Lcb982:
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	ldr	r1, [sp, #8]
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos3
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	mov	r4, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r4, r3
	lsl	r3, #8
	mov	r1, r10
	str	r3, [r2]
	cmp	r1, #0x31
	ble	.Lcb9b2
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, .Lcb9d4	@ 0x70
	sub	r3, r2
	ldr	r2, .Lcb9d8	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r1]
.Lcb9b2:
	mov	r4, r10
	cmp	r4, #0x10
	bne	.Lcba08
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #0x14
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, #0
	bl	SetBattleActorState
	b	.Lcba08

	.align	2, 0
.Lcb9d4:
	.word	0x70
.Lcb9d8:
	.word	0x1000
	.pool

.Lcba08:
	mov	r3, r10
	cmp	r3, #0x37
	bgt	.Lcbaf4
	lsr	r3, #31
	add	r3, r10
	asr	r3, #1
	mov	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.Lcba1e
	add	r0, #3
.Lcba1e:
	asr	r7, r0, #2
	mov	r11, r7
	mov	r4, r11
	lsl	r3, r4, #2
	mov	r1, r8
	mov	r2, #2
	sub	r7, r1, r3
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r3, =iwram_3001f0c
	ldr	r4, [sp, #8]
	lsl	r1, r7, #4
	ldr	r6, [r3]
	add	r1, r7
	ldr	r3, [r4, #4]
	mov	r2, #0x11
	mov	r4, #0x40
	lsl	r1, #6
	str	r2, [sp]
	str	r6, [sp, #0x20]
	add	r1, r9
	sub	r3, #0x40
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	mov	r2, #0x2f
	bl	_call_via_r6
	mov	r0, r10
	cmp	r0, #0
	bge	.Lcba66
	add	r0, #3
.Lcba66:
	mov	r1, #3
	asr	r0, #2
	bl	__modsi3
	mov	r7, r0
	lsl	r5, r7, #7
	ldr	r2, [sp, #8]
	add	r5, r7
	lsl	r5, #3
	mov	r1, #0x88
	ldr	r3, [r2, #4]
	lsl	r1, #5
	add	r5, r9
	mov	r4, #0x18
	add	r5, r1
	mov	r1, #0x2b
	str	r4, [sp]
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x24]
	sub	r3, #0x24
	mov	r1, r5
	mov	r2, #0x28
	bl	_call_via_r6
	mov	r0, #0x2f
	bl	gfree
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r3, =iwram_3001f0c
	mov	r4, r11
	ldr	r6, [r3]
	mov	r1, r8
	lsl	r3, r4, #2
	ldr	r2, [sp, #8]
	sub	r7, r1, r3
	lsl	r1, r7, #4
	ldr	r3, [r2, #4]
	add	r1, r7
	mov	r4, #0x11
	mov	r2, #0x40
	lsl	r1, #6
	str	r4, [sp]
	str	r2, [sp, #4]
	str	r6, [sp, #0x20]
	add	r1, r9
	sub	r3, #0x40
	ldr	r0, [sp, #0x24]
	bl	_call_via_r6
	ldr	r4, [sp, #8]
	ldr	r3, [r4, #4]
	mov	r1, #0x18
	mov	r2, #0x2b
	str	r1, [sp]
	str	r2, [sp, #4]
	sub	r3, #0x24
	ldr	r0, [sp, #0x24]
	mov	r1, r5
	mov	r2, #0x40
	bl	_call_via_r6
	mov	r0, #0x2f
	bl	gfree
.Lcbaf4:
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	bl	InitMatrixStack
	ldr	r1, [sp, #0xc]
	ldr	r0, [sp, #0x14]
	bl	MatrixSetLook
	ldr	r5, =gBuffer
	mov	r1, #0
	mov	r8, r1
	add	r7, sp, #0x28
	add	r6, sp, #0x34
.Lcbb14:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Lcbb96
	ldr	r0, [r5]
	bl	sin
	ldr	r3, [r5, #8]
	mul	r3, r0
	asr	r3, #4
	str	r3, [r7]
	ldr	r0, [r5]
	bl	cos
	ldr	r3, [r5, #8]
	mul	r3, r0
	asr	r3, #4
	neg	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r5, #4]
	str	r3, [r7, #4]
	mov	r2, #0x80
	ldr	r3, [r5]
	lsl	r2, #3
	add	r3, r2
	str	r3, [r5]
	mov	r4, #0xa0
	ldr	r3, [r5, #4]
	lsl	r4, #11
	add	r3, r4
	str	r3, [r5, #4]
	ldr	r3, [r5, #8]
	add	r3, #0x40
	str	r3, [r5, #8]
	mov	r1, r6
	mov	r0, r7
	bl	Func_80e3944
	ldr	r2, [r6]
	lsr	r3, r2, #31
	add	r2, r3
	asr	r2, #1
	str	r2, [r6]
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	mov	r1, r8
	ldr	r3, [r3, #0x18]
	mov	r0, #1
	and	r0, r1
	add	r0, r3
	lsl	r4, r0, #1
	ldr	r1, =Data_ede5c
	sub	r3, r4, #2
	ldrh	r1, [r1, r3]
	ldr	r3, [sp, #0x18]
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
.Lcbb96:
	mov	r1, #1
	add	r8, r1
	add	r3, #1
	mov	r2, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x20
	bne	.Lcbb14
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	cmp	r4, #0x38
	beq	.Lcbbc4
	b	.Lcb982
.Lcbbc4:
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	mov	r0, #0x29
	bl	gfree
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_EPowerUp
