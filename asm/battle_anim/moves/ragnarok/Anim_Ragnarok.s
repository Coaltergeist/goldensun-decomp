	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Ragnarok  @ 0x080e94b8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	mov	r5, r0
	ldmia	r3!, {r0}
	ldr	r3, [r3]
	sub	sp, #0x34
	str	r3, [sp, #0x28]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x20]
	mov	r11, r0
	ldr	r0, [r5, #8]
	bl	_GetBattleActor
	ldr	r6, =0x7828
	ldr	r0, [r0]
	mov	r3, #1
	add	r6, r11
	str	r0, [sp, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #1
	str	r5, [r6]
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le9534	@ 0x1010
	strh	r3, [r2]
	ldr	r3, [r6]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x2c
	str	r1, [sp, #0x18]
	bl	BuildDraw2DFuncs
	mov	r1, #2
	ldr	r0, [sp, #0x1c]
	bl	_Actor_SetAnim
	mov	r1, #0x30
	ldr	r0, [sp, #0x1c]
	bl	_Actor_SetAnimSpeed
	ldr	r0, =_FILE_55
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0x80
	lsl	r1, #6
	ldr	r0, =_FILE_7d
	add	r1, r11
	mov	r2, #1
	mov	r3, #0
	b	.Le954c

	.align	2, 0
.Le9534:
	.word	0x1010
	.pool

.Le954c:
	bl	LoadVFXFile
	mov	r2, #0
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x20]
	mov	r3, #0
	bl	LoadVFXFile
	mov	r2, #0
	str	r2, [sp, #0x24]
	mov	r9, r2
	mov	r8, r11
.Le9564:
	mov	r7, #0xe1
	mov	r3, #0
	lsl	r7, #7
	mov	r10, r3
	add	r7, r8
.Le956e:
	mov	r0, r10
	lsl	r6, r0, #1
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	str	r3, [r7]
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r1, r10
	neg	r3, r3
	str	r3, [r7, #4]
	lsr	r3, r1, #31
	add	r3, r10
	asr	r3, #1
	mov	r2, #1
	add	r3, #0x19
	add	r10, r2
	str	r3, [r7, #0x18]
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Le956e
	mov	r1, r9
	lsl	r3, r1, #3
	sub	r3, r1
	ldr	r2, =gBuffer
	mov	r0, #0
	lsl	r3, #2
	mov	r10, r0
	add	r7, r3, r2
.Le95be:
	bl	Random
	ldr	r5, =0x1ff
	and	r5, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r0, [sp, #0x24]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.Leef06
	add	r3, r0, r3
	ldrb	r3, [r1, r3]
	lsl	r3, #16
	str	r3, [r7]
	mov	r3, #0xb0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r6
	bl	sin
	add	r5, #0x20
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
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
	add	r3, #0x20
	str	r3, [r7, #0x18]
	mov	r2, #1
	mov	r3, #0xaa
	add	r10, r2
	lsl	r3, #1
	add	r7, #0x1c
	cmp	r10, r3
	bne	.Le95be
	ldr	r1, [sp, #0x24]
	mov	r0, #0xe0
	lsl	r0, #1
	add	r1, #1
	add	r9, r3
	add	r8, r0
	str	r1, [sp, #0x24]
	cmp	r1, #3
	bne	.Le9564
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r2, #0
	mov	r9, r2
.Le965c:
	mov	r3, r9
	cmp	r3, #4
	bne	.Le9668
	mov	r0, #0xd4
	bl	_PlaySound
.Le9668:
	mov	r0, r9
	cmp	r0, #8
	bne	.Le9674
	ldr	r3, =0x77a8
	add	r3, r11
	str	r0, [r3]
.Le9674:
	mov	r1, r9
	cmp	r1, #0x12
	bne	.Le9680
	mov	r0, #0x91
	bl	_PlaySound
.Le9680:
	mov	r2, r9
	cmp	r2, #0x28
	bne	.Le968c
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le968c:
	mov	r3, r9
	cmp	r3, #0x27
	bgt	.Le9724
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r1, #0x80
	cmp	r3, #1
	bne	.Le96ce
	mov	r0, r9
	cmp	r0, #9
	bgt	.Le96b8
	lsl	r3, r0, #2
	add	r3, r9
	lsl	r3, #1
	mov	r2, r3
	lsl	r3, r0, #4
	mov	r5, r3
	sub	r2, #8
	sub	r5, #0x80
	b	.Le96fe
.Le96b8:
	mov	r2, r9
	cmp	r2, #0x14
	ble	.Le96ca
	mov	r0, r9
	lsl	r3, r0, #1
	mov	r5, r3
	add	r2, #0x3e
	sub	r5, #0x18
	b	.Le96fe
.Le96ca:
	mov	r2, #0x52
	b	.Le96fc
.Le96ce:
	mov	r2, r9
	cmp	r2, #9
	bgt	.Le96e6
	lsl	r3, r2, #2
	add	r3, r9
	lsl	r3, #1
	mov	r0, r9
	sub	r2, r1, r3
	lsl	r3, r0, #4
	mov	r5, r3
	sub	r5, #0x80
	b	.Le96fe
.Le96e6:
	mov	r2, r9
	cmp	r2, #0x14
	ble	.Le96fa
	mov	r3, #0x3a
	mov	r0, r9
	sub	r2, r3, r2
	lsl	r3, r0, #1
	mov	r5, r3
	sub	r5, #0x18
	b	.Le96fe
.Le96fa:
	mov	r2, #0x26
.Le96fc:
	mov	r5, #0x10
.Le96fe:
	mov	r3, r5
	add	r3, #0x80
	cmp	r3, #0x68
	ble	.Le970c
	sub	r3, r1, r5
	mov	r1, r3
	sub	r1, #0x18
.Le970c:
	cmp	r1, #0
	ble	.Le9724
	mov	r3, #0x40
	str	r3, [sp]
	str	r1, [sp, #4]
	sub	r2, #0x20
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x28]
	mov	r1, r11
	mov	r3, r5
	bl	_call_via_r4
.Le9724:
	mov	r1, r9
	cmp	r1, #0x10
	ble	.Le9730
	ldr	r0, =_FILE_c0
	bl	BlendVFXPaletteFile
.Le9730:
	mov	r2, #0
	mov	r3, #0x16
	mov	r0, #0x10
	mov	r1, r11
	str	r2, [sp, #0x24]
	str	r3, [sp, #0x14]
	str	r2, [sp, #0x10]
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
.Le9742:
	ldr	r2, [sp, #0x24]
	ldr	r3, [sp, #0xc]
	lsl	r1, r2, #3
	cmp	r9, r3
	bne	.Le9754
	ldr	r2, =0x77a8
	mov	r3, #0xc
	add	r2, r11
	str	r3, [r2]
.Le9754:
	ldr	r0, [sp, #0xc]
	cmp	r9, r0
	blt	.Le980c
	mov	r3, r1
	add	r3, #0x12
	cmp	r9, r3
	bge	.Le9790
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, [sp, #0x24]
	ldr	r1, =.Leef06
	add	r3, r2, r3
	ldrb	r2, [r1, r3]
	mov	r3, #0x20
	mov	r1, #0x80
	str	r3, [sp]
	lsl	r1, #6
	mov	r3, #0x40
	str	r3, [sp, #4]
	sub	r2, #0x10
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x28]
	add	r1, r11
	mov	r3, #0x38
	bl	_call_via_r4
.Le9790:
	ldr	r0, =.Leef0c
	ldr	r1, [sp, #8]
	mov	r2, #0xe1
	mov	r3, #0
	lsl	r2, #7
	mov	r10, r3
	mov	r8, r0
	add	r5, r1, r2
.Le97a0:
	mov	r3, #6
	ldrsh	r7, [r5, r3]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, [sp, #0x24]
	mov	r0, #2
	ldrsh	r1, [r5, r0]
	ldr	r0, =.Leef06
	add	r3, r2, r3
	ldrb	r3, [r0, r3]
	ldr	r0, [r5, #0x18]
	add	r6, r1, r3
	cmp	r0, #0x11
	bhi	.Le97f2
	mov	r1, #3
	bl	__divsi3
	mov	r2, r8
	ldrb	r1, [r2, r0]
	mov	r3, #0x80
	lsl	r1, #11
	lsl	r3, #6
	mov	r0, #0x20
	add	r1, r11
	add	r1, r3
	str	r0, [sp]
	mov	r2, r6
	mov	r0, #0x40
	mov	r3, r7
	str	r0, [sp, #4]
	sub	r2, #0x10
	add	r3, #0x38
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	ldr	r0, [r5, #0x18]
.Le97f2:
	cmp	r0, #0
	ble	.Le97fa
	sub	r3, r0, #1
	b	.Le97fe
.Le97fa:
	mov	r3, #1
	neg	r3, r3
.Le97fe:
	str	r3, [r5, #0x18]
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r5, #0x1c
	cmp	r1, #0xc
	bne	.Le97a0
.Le980c:
	ldr	r3, [sp, #0xc]
	add	r3, #5
	cmp	r9, r3
	ble	.Le98e2
	mov	r2, #0
	ldr	r7, [sp, #0x10]
	mov	r10, r2
.Le981a:
	lsl	r3, r7, #4
	add	r3, r7, r3
	lsl	r3, #2
	add	r3, r10
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r3, =gBuffer
	lsl	r2, #2
	add	r6, r2, r3
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Le98d6
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x40
	lsl	r2, #5
	bl	Func_80e3908
	ldr	r3, [r6, #0x18]
	mov	r0, #0xd8
	ldr	r1, [r6, #4]
	sub	r3, #1
	lsl	r0, #15
	str	r3, [r6, #0x18]
	cmp	r1, r0
	ble	.Le9888
	ldr	r3, [r6, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Le98d6

	.pool_aligned

.Le9888:
	ldr	r0, [r6]
	ldr	r2, =0x7effff
	cmp	r0, r2
	bhi	.Le98d6
	cmp	r1, #0
	blt	.Le98d6
	asr	r1, #16
	mov	r8, r1
	asr	r6, r0, #16
	mov	r1, #5
	mov	r0, r3
	bl	__divsi3
	add	r0, #1
	lsl	r5, r0, #1
	mov	r3, r10
	ldr	r2, =Data_ede48
	mov	r4, #1
	and	r4, r3
	sub	r3, r5, #2
	ldrh	r1, [r2, r3]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	sub	r6, r3
	mov	r3, r8
	ldr	r2, [sp, #0x20]
	sub	r3, r0
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r4, #2
	add	r1, r2, r1
	ldr	r4, [r4, r0]
	mov	r2, r6
	ldr	r0, [sp, #0x28]
	mov	r8, r3
	bl	_call_via_r4
.Le98d6:
	mov	r1, #1
	mov	r2, #0x80
	add	r10, r1
	lsl	r2, #1
	cmp	r10, r2
	bne	.Le981a
.Le98e2:
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r0, r11
	mov	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Le992e
	ldr	r1, [sp, #0x14]
	mov	r6, #0x24
	mov	r8, r1
.Le98f8:
	cmp	r9, r8
	bne	.Le991c
	mov	r3, r11
	add	r5, r3, r2
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r10
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r1, #4
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
.Le991c:
	ldr	r2, =0x7828
	mov	r3, #1
	mov	r0, r11
	add	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r10, r3
	bne	.Le98f8
.Le992e:
	ldr	r1, [sp, #0x14]
	ldr	r2, [sp, #0x10]
	add	r1, #8
	add	r2, #5
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #8]
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	mov	r1, #0xe0
	ldr	r2, [sp, #0x24]
	lsl	r1, #1
	add	r3, #8
	add	r0, r1
	add	r2, #1
	str	r3, [sp, #0xc]
	str	r0, [sp, #8]
	str	r2, [sp, #0x24]
	cmp	r2, #2
	beq	.Le9956
	b	.Le9742
.Le9956:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r3, =0x7824
	mov	r5, #1
	add	r3, r11
	str	r5, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #0x50
	beq	.Le997c
	b	.Le965c
.Le997c:
	ldr	r0, [sp, #0x1c]
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
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
.func_end Anim_Ragnarok

	.section .rodata
.Leef06:
	.incrom 0xeef06, 0xeef0c
.Leef0c:
	.incrom 0xeef0c, 0xeef12
