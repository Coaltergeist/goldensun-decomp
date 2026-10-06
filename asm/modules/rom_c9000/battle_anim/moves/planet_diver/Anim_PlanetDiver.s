	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_PlanetDiver  @ 0x080ce034
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x3c
	str	r1, [sp, #0x24]
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	ldr	r2, [r6, #8]
	str	r2, [sp, #0x1c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r0, =_FILE_73
	bl	GetFile
	ldr	r1, [sp, #0x1c]
	bl	DecompressLZ
	ldr	r0, =_FILE_7d
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x24]
	mov	r0, r5
	bl	DecompressLZ
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r1, #7
	str	r3, [sp, #0x28]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x20]
	mov	r0, sp
	add	r0, #0x28
	str	r0, [sp, #8]
	str	r3, [r0, #4]
	ldr	r1, [sp, #0x24]
	mov	r2, #0xef
	lsl	r2, #7
	add	r3, r1, r2
	str	r5, [r3]
	ldr	r3, =0x7784
	add	r2, r1, r3
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r8, r0
	mov	r1, #0
	lsl	r2, #3
.Lce0e0:
	mov	r0, #1
	add	r8, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lce0e0
	ldr	r1, [sp, #0x24]
	ldr	r2, =0x7828
	add	r5, r1, r2
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r10, r0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r0, [r0]
	str	r0, [sp, #0x18]
	mov	r2, r10
	ldr	r3, [r2, #8]
	ldr	r0, =0xfff10000
	str	r0, [sp, #0x14]
	cmp	r3, #0
	bgt	.Lce11e
	mov	r1, #0xf0
	lsl	r1, #12
	str	r1, [sp, #0x14]
.Lce11e:
	ldr	r0, =0x7828
	ldr	r3, [sp, #0x24]
	mov	r1, sp
	add	r0, r3, r0
	add	r1, #0x30
	mov	r2, #0
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	mov	r11, r2
.Lce130:
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	mov	r2, r11
	cmp	r2, #0x11
	bgt	.Lce14c
	cmp	r2, #0
	bne	.Lce164
.Lce14c:
	ldr	r0, [sp, #0x10]
	ldr	r5, [sp, #0xc]
	ldr	r3, [r0]
	mov	r1, r5
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos3
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5]
.Lce164:
	mov	r3, r11
	sub	r3, #2
	cmp	r3, #1
	bhi	.Lce188
	ldr	r5, [sp, #0xc]
	mov	r1, #0x20
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x40
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	bl	_call_via_r4
.Lce188:
	mov	r2, r11
	sub	r2, #4
	cmp	r2, #0xb
	bhi	.Lce1ec
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	mov	r1, #0
	lsl	r3, #11
	mov	r8, r1
	add	r7, sp, #0x30
	mov	r9, r3
.Lce1a0:
	mov	r2, r8
	lsl	r6, r2, #12
	mov	r0, r6
	bl	sin
	mov	r3, r11
	mul	r3, r0
	ldr	r5, [r7]
	asr	r3, #16
	mov	r0, r6
	add	r5, r3
	bl	cos
	mov	r2, r11
	mul	r2, r0
	ldr	r3, [r7, #4]
	asr	r2, #16
	add	r3, r2
	mov	r0, r11
	mov	r2, #0x20
	ldr	r1, [sp, #0x24]
	sub	r3, r0
	str	r2, [sp]
	sub	r5, #0x10
	mov	r2, #0x40
	str	r2, [sp, #4]
	add	r1, r9
	mov	r2, r5
	sub	r3, #0x40
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bne	.Lce1a0
.Lce1ec:
	mov	r3, r11
	cmp	r3, #4
	bne	.Lce23a
	mov	r3, #0xa0
	mov	r0, r10
	lsl	r3, #13
	str	r3, [r0, #0x28]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x30]
	ldr	r3, =0xab85
	str	r3, [r0, #0x48]
	mov	r3, r10
	mov	r2, #0
	add	r3, #0x5a
	strb	r2, [r3]
	sub	r3, #2
	strb	r2, [r3]
	ldr	r3, [r0, #8]
	lsl	r1, r3, #1
	add	r1, r3
	ldr	r3, [r0, #0x10]
	bl	_Actor_TravelTo
	mov	r0, r10
	mov	r1, #2
	bl	_Actor_SetAnim
	ldr	r2, =0x77a8
	ldr	r1, [sp, #0x24]
	mov	r0, r11
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0x88
	bl	_PlaySound
.Lce23a:
	mov	r1, r11
	cmp	r1, #0x10
	bne	.Lce276
	ldr	r0, =_FILE_89
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	mov	r0, r5
	ldr	r1, [sp, #0x24]
	bl	DecompressLZ
	mov	r3, #0
	mov	r2, r10
	str	r3, [r2, #0x48]
	str	r3, [r2, #0x24]
	str	r3, [r2, #0x28]
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	str	r3, [r2, #0x10]
	bl	_Actor_Stop
.Lce276:
	mov	r1, r11
	cmp	r1, #0x11
	bgt	.Lce27e
	b	.Lce392
.Lce27e:
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	cmp	r2, #0
	ble	.Lce2f0
	ldr	r0, [sp, #0x14]
	ldr	r3, [r3, #8]
	add	r3, r0
	ldr	r0, =0xfff80000
	mov	r1, r10
	str	r3, [r1, #8]
	add	r3, r2, r0
	str	r3, [r1, #0xc]
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lce2c8
	ldr	r5, [sp, #0xc]
	mov	r1, #0x28
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x40
	sub	r2, #0x14
	sub	r3, #0x34
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x28]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r5]
	sub	r3, #8
	str	r3, [r5]
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	b	.Lce2f0
.Lce2c8:
	ldr	r5, [sp, #0xc]
	mov	r1, #0x28
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x40
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	sub	r2, #0x1a
	sub	r3, #0x34
	ldr	r4, [r0, #4]
	ldr	r1, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r5, #4]
	add	r3, #8
	str	r3, [r5, #4]
	mov	r1, r10
	ldr	r2, [r1, #0xc]
.Lce2f0:
	cmp	r2, #0
	bge	.Lce392
	mov	r3, #0
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r8, r3
	add	r3, sp, #0x30
	ldr	r7, =gBuffer
	mov	r9, r3
.Lce302:
	bl	Random
	ldr	r5, =0x3ff
	and	r5, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	mov	r0, r9
	and	r6, r3
	ldr	r3, [r0]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r3, [r0, #4]
	sub	r3, #0x18
	lsl	r3, #16
	str	r3, [r7, #4]
	mov	r0, r6
	bl	sin
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #8]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #7
	and	r3, r0
	mov	r1, #1
	mov	r2, #0x80
	add	r3, #0x20
	add	r8, r1
	lsl	r2, #1
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Lce302
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x77a8
	mov	r5, #8
	add	r3, r0, r1
	str	r5, [r3]
	mov	r0, #0x91
	bl	_Func_80bd7dc
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_SetBattleActorKnockback
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	mov	r2, #5
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #7
	mov	r3, #0
	str	r5, [sp]
	bl	SetBattleActorState
.Lce392:
	mov	r2, #0
	ldr	r6, =gBuffer
	mov	r8, r2
.Lce398:
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	ble	.Lce47a
	ldr	r2, [r6, #8]
	ldr	r3, [r6]
	add	r3, r2
	mov	r12, r3
	str	r3, [r6]
	ldr	r1, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r7, r3, r1
	lsl	r3, r2, #3
	sub	r3, r2
	sub	r0, r4, #1
	lsl	r3, #3
	str	r0, [r6, #0x18]
	str	r7, [r6, #4]
	cmp	r3, #0
	bge	.Lce3c0
	add	r3, #0x3f
.Lce3c0:
	asr	r3, #6
	str	r3, [r6, #8]
	lsl	r3, r1, #3
	sub	r3, r1
	lsl	r3, #3
	cmp	r3, #0
	bge	.Lce3d0
	add	r3, #0x3f
.Lce3d0:
	mov	r1, #0x80
	asr	r3, #6
	lsl	r1, #6
	mov	r2, #0xe0
	add	r3, r1
	lsl	r2, #15
	str	r3, [r6, #0x10]
	cmp	r7, r2
	ble	.Lce434
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Lce47a

	.pool_aligned

.Lce434:
	ldr	r3, =0x7effff
	cmp	r12, r3
	bhi	.Lce47a
	cmp	r7, #0
	blt	.Lce47a
	cmp	r0, #0
	bge	.Lce444
	add	r0, r4, #6
.Lce444:
	asr	r0, #3
	add	r0, #1
	lsl	r5, r0, #1
	ldr	r2, =Data_ede48
	mov	r1, r8
	sub	r3, r5, #2
	mov	r4, #1
	and	r4, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	mov	r3, r12
	add	r1, r2, r1
	asr	r2, r3, #16
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	asr	r3, r7, #16
	str	r0, [sp]
	sub	r3, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #8]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
.Lce47a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #1
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Lce398
	mov	r1, #0x10
	mov	r0, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r0, =0x7824
	ldr	r3, [sp, #0x24]
	add	r2, r3, r0
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	cmp	r2, #0x58
	beq	.Lce4b0
	b	.Lce130
.Lce4b0:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_PlanetDiver
