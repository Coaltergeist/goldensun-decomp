	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Plasma  @ 0x080d41a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001eec
	mov	r3, r5
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	ldr	r2, [r5, #8]
	add	r6, r1, r3
	str	r2, [sp, #0x1c]
	str	r0, [r6]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld4210	@ 0x1010
	mov	r1, #7
	strh	r3, [r2]
	mov	r0, #0x2e
	mov	r3, #3
	mov	r2, #7
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r5, #0x1c]
	str	r3, [sp, #0x2c]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r3, [r5, #0x20]
	mov	r5, sp
	add	r5, #0x2c
	str	r5, [sp, #0xc]
	str	r3, [r5, #4]
	ldr	r1, [sp, #0x28]
	ldr	r0, =_FILE_d1
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Ld4224

	.align	2, 0
.Ld4210:
	.word	0x1010
	.pool

.Ld4224:
	mov	r3, #0
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	bl	LoadVFXFile
	ldr	r3, [r6]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	beq	.Ld424c
	ldr	r0, =_FILE_60
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ld424c:
	mov	r7, #0
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r8, r7
	mov	r1, #0
	lsl	r2, #3
.Ld4258:
	mov	r0, #1
	add	r8, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld4258
	ldr	r1, [sp, #0x28]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r5, =0x7784
	add	r2, r1, r3
	mov	r3, #2
	str	r3, [r2]
	add	r2, r1, r5
	mov	r3, #0x32
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r0, =0x7828
	ldr	r7, [sp, #0x28]
	add	r3, r7, r0
	ldr	r3, [r3]
	ldr	r2, =.Lee25e
	ldr	r3, [r3, #0x18]
	ldrb	r2, [r2, r3]
	str	r2, [sp, #0x18]
	ldr	r5, [sp, #0x18]
	lsl	r2, #3
	mov	r7, #0x30
	mov	r1, #0
	sub	r3, r2, r5
	neg	r7, r7
	mov	r11, r1
	str	r2, [sp, #8]
	cmp	r3, r7
	bne	.Ld42a8
	b	.Ld45b6
.Ld42a8:
	ldr	r1, =0x7828
	ldr	r0, [sp, #0x28]
	add	r1, r0, r1
	str	r1, [sp, #0x14]
.Ld42b0:
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	bne	.Ld42ee
	mov	r3, r11
	cmp	r3, #0x3f
	bgt	.Ld42ee
	ldr	r3, =iwram_3001e80
	mov	r2, #0x80
	mov	r5, r11
	ldr	r1, [r3]
	lsl	r2, #1
	cmp	r5, #0x37
	ble	.Ld42d8
	mov	r7, r11
	mov	r3, #0xb0
	lsl	r2, r7, #3
	lsl	r3, #2
	sub	r2, r3, r2
.Ld42d8:
	ldr	r0, [sp, #0x14]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld42e8
	ldrh	r3, [r1, #0x36]
	sub	r3, r2
	b	.Ld42ec
.Ld42e8:
	ldrh	r3, [r1, #0x36]
	add	r3, r2
.Ld42ec:
	strh	r3, [r1, #0x36]
.Ld42ee:
	mov	r1, r11
	cmp	r1, #0x20
	bne	.Ld42fa
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Ld42fa:
	ldr	r3, [sp, #0x18]
	mov	r2, #0
	str	r2, [sp, #0x20]
	cmp	r3, #0
	bne	.Ld4306
	b	.Ld44b0
.Ld4306:
	ldr	r7, [sp, #0x20]
	lsl	r5, r7, #3
	cmp	r11, r5
	bne	.Ld4322
	mov	r0, #0x86
	bl	_PlaySound
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	ldr	r2, =0x10101010
	bl	_call_via_r3
.Ld4322:
	add	r0, r5, #4
	mov	r10, r0
	cmp	r11, r5
	bge	.Ld432c
	b	.Ld445e
.Ld432c:
	mov	r3, r5
	add	r3, #9
	cmp	r11, r3
	blt	.Ld4336
	b	.Ld445e
.Ld4336:
	add	r3, r5, #1
	add	r6, r5, #2
	cmp	r11, r3
	blt	.Ld436a
	cmp	r11, r6
	bge	.Ld4372
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r2, [r3, #4]
	ldr	r7, [sp, #0x20]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r0, =.Lee250
	add	r3, r7, r3
	ldrb	r2, [r0, r3]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r3, #0x70
	str	r3, [sp, #4]
	sub	r2, #0x18
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	mov	r3, #0
	bl	_call_via_r4
.Ld436a:
	add	r1, r5, #4
	mov	r10, r1
	cmp	r11, r6
	blt	.Ld445e
.Ld4372:
	add	r5, #4
	mov	r10, r5
	cmp	r11, r10
	bge	.Ld43a8
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r2, [r3, #4]
	ldr	r5, [sp, #0x20]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r7, =.Lee250
	add	r3, r5, r3
	ldrb	r2, [r7, r3]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r3, #0x70
	str	r3, [sp, #4]
	mov	r5, #0xa8
	ldr	r3, [sp, #0x28]
	lsl	r5, #5
	add	r1, r3, r5
	sub	r2, #0x18
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	mov	r3, #0
	bl	_call_via_r4
.Ld43a8:
	cmp	r11, r6
	bne	.Ld445e
	ldr	r1, [sp, #0x28]
	ldr	r2, =0x7828
	mov	r7, #0
	str	r7, [sp, #0x10]
	mov	r0, #0
	add	r1, r2
	ldr	r7, =gBuffer
	mov	r8, r0
	mov	r9, r1
.Ld43be:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Ld443a
	bl	Random
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Random
	ldr	r5, =0x7fff
	ldr	r3, =0xffffc000
	and	r5, r0
	mov	r0, r9
	add	r5, r3
	ldr	r3, [r0]
	ldr	r2, [r3, #4]
	ldr	r1, [sp, #0x20]
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r2, =.Lee250
	add	r3, r1, r3
	ldrb	r3, [r2, r3]
	lsl	r3, #16
	str	r3, [r7]
	mov	r3, #0xd0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	sin
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #7
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	mov	r5, r9
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Lee244
	lsl	r3, #2
	ldrh	r3, [r1, r3]
	ldr	r0, [sp, #0x10]
	cmp	r0, r3
	beq	.Ld444a
.Ld443a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Ld43be
	ldr	r1, =.Lee244
.Ld444a:
	ldr	r3, [sp, #0x28]
	ldr	r7, [sp, #0x14]
	ldr	r5, =0x77a8
	add	r2, r3, r5
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, #2
	ldrh	r3, [r1, r3]
	str	r3, [r2]
.Ld445e:
	cmp	r11, r10
	bne	.Ld44a2
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x28]
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld44a2
	ldr	r2, =0x7828
	mov	r6, #0x24
	add	r5, r1, r2
.Ld4478:
	ldr	r3, [r5]
	mov	r1, #1
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r8
	mov	r1, #7
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r6, #2
	cmp	r8, r3
	bne	.Ld4478
.Ld44a2:
	ldr	r3, [sp, #0x20]
	ldr	r5, [sp, #0x18]
	add	r3, #1
	str	r3, [sp, #0x20]
	cmp	r3, r5
	beq	.Ld44b0
	b	.Ld4306
.Ld44b0:
	mov	r7, #0
	ldr	r6, =gBuffer
	mov	r8, r7
.Ld44b6:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Ld457a
	sub	r3, #1
	mov	r2, #0x80
	mov	r0, r6
	lsl	r2, #5
	str	r3, [r6, #0x18]
	mov	r1, #0x3c
	bl	Func_80e3908
	mov	r0, #0xd0
	ldr	r2, [r6, #4]
	lsl	r0, #15
	cmp	r2, r0
	ble	.Ld452c
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Ld457a

	.pool_aligned

.Ld452c:
	ldr	r3, [r6]
	asr	r7, r3, #16
	cmp	r3, #0
	blt	.Ld457a
	cmp	r7, #0x77
	bgt	.Ld457a
	cmp	r2, #0
	blt	.Ld457a
	ldr	r0, [r6, #0x18]
	asr	r2, #16
	mov	r12, r2
	cmp	r0, #0
	bge	.Ld4548
	add	r0, #7
.Ld4548:
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
	add	r1, r2, r1
	lsr	r2, r0, #31
	add	r2, r0, r2
	asr	r2, #1
	sub	r2, r7, r2
	mov	r7, r12
	str	r0, [sp]
	sub	r3, r7, r0
	str	r5, [sp, #4]
	ldr	r0, [sp, #0xc]
	lsl	r4, #2
	ldr	r4, [r4, r0]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
.Ld457a:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r6, #0x1c
	cmp	r8, r2
	bne	.Ld44b6
	mov	r1, #0x10
	mov	r0, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r5, =0x7824
	ldr	r3, [sp, #0x28]
	add	r2, r3, r5
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0x18]
	mov	r7, #1
	sub	r3, r0, r1
	add	r11, r7
	add	r3, #0x30
	cmp	r11, r3
	beq	.Ld45b6
	b	.Ld42b0
.Ld45b6:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Plasma

	.section .rodata
.Lee244:
	.incrom 0xee244, 0xee250
.Lee250:
	.incrom 0xee250, 0xee25e
.Lee25e:
	.incrom 0xee25e, 0xee262
