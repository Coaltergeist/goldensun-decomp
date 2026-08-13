	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Spire  @ 0x080e2538
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
	sub	sp, #0x38
	str	r1, [sp, #0x1c]
	ldr	r2, =0x7828
	ldr	r3, [r3]
	add	r1, r2
	str	r3, [sp, #0x18]
	str	r0, [r1]
	mov	r0, #1
	mov	r8, r1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le25a0	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Le25a4	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r1, [sp, #0x1c]
	ldr	r0, =_FILE_8a
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r3, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r10, r3
	mov	r0, #0x2e
	mov	r3, #3
	bl	BuildDraw2DFuncEx
	ldr	r5, [r5, #0x1c]
	str	r5, [sp, #0x14]
	mov	r4, r8
	ldr	r3, [r4]
	add	r6, sp, #0x2c
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	b	.Le25b8

	.align	2, 0
.Le25a0:
	.word	0x100
.Le25a4:
	.word	0
	.pool

.Le25b8:
	bl	GetBattleActorPos2
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, [r2, #0x14]
	lsl	r3, #1
	add	r5, sp, #0x20
	add	r3, #0x22
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	GetBattleActorPos2
	ldr	r1, [r6]
	ldr	r3, [r5]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	mov	r3, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r1
	lsl	r3, #8
	str	r1, [r6]
	str	r3, [r2]
	ldr	r0, [sp, #0x1c]
	mov	r1, #0xef
	lsl	r1, #7
	add	r3, r0, r1
	mov	r2, r10
	str	r2, [r3]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r4, r8
	ldr	r3, [r4]
	ldr	r2, =.Leecfc
	ldr	r3, [r3, #0x18]
	ldrb	r2, [r2, r3]
	mov	r0, #0
	str	r2, [sp, #0x10]
	mov	r9, r0
	cmp	r2, #0
	beq	.Le26b2
	ldr	r4, [sp, #0x1c]
	mov	r0, #0xe1
	lsl	r0, #7
	ldr	r1, =0xffc00000
	mov	r2, #0
	add	r3, r4, r0
.Le2628:
	str	r1, [r3, #4]
	str	r2, [r3, #0x10]
	mov	r4, #1
	ldr	r0, [sp, #0x10]
	add	r9, r4
	add	r3, #0x1c
	cmp	r9, r0
	bne	.Le2628
	mov	r1, #0
	mov	r9, r1
	cmp	r0, #0
	beq	.Le26b2
	ldr	r2, =.Leecb2
	mov	r7, #0
	mov	r10, r2
.Le2646:
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x8c
	mov	r4, r9
	mul	r4, r3
	ldr	r0, =gBuffer
	mov	r3, r4
	add	r3, r7, r3
	mov	r6, r10
	add	r5, r3, r0
.Le265a:
	ldr	r2, =.Leecf2
	mov	r1, r9
	ldrsb	r2, [r2, r1]
	ldrb	r3, [r6]
	add	r3, r2
	lsl	r3, #16
	str	r3, [r5]
	ldrb	r3, [r6, #1]
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	mov	r1, #0x60
	bl	__umodsi3
	sub	r0, #0x30
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x20
	neg	r3, r3
	lsl	r3, #11
	str	r3, [r5, #0x10]
	mov	r2, #1
	mov	r3, #0x20
	str	r3, [r5, #8]
	add	r8, r2
	mov	r3, #0
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r6, #2
	add	r5, #0x1c
	cmp	r3, #0x15
	bne	.Le265a
	mov	r4, #0xe0
	ldr	r0, [sp, #0x10]
	lsl	r4, #1
	add	r9, r2
	add	r7, r4
	cmp	r9, r0
	bne	.Le2646
.Le26b2:
	ldr	r2, [sp, #0x10]
	mov	r1, #0
	sub	r2, #1
	mov	r11, r1
	str	r2, [sp, #0xc]
	ldr	r1, =.Leecf7
	mov	r4, #0x50
	ldrb	r3, [r1, r2]
	neg	r4, r4
	cmp	r3, r4
	bne	.Le26ca
	b	.Le2890
.Le26ca:
	ldrb	r3, [r1, r2]
	add	r3, #0x30
	cmp	r11, r3
	bne	.Le26d8
	mov	r0, #0x84
	bl	_Func_80bd7dc
.Le26d8:
	ldr	r1, [sp, #0x10]
	mov	r0, #0
	mov	r9, r0
	cmp	r1, #0
	bne	.Le26e4
	b	.Le2862
.Le26e4:
	ldr	r2, [sp, #0x1c]
	mov	r3, #0xe1
	lsl	r3, #7
	add	r2, r3
	mov	r10, r2
.Le26ee:
	ldr	r5, =.Leecf7
	mov	r4, r9
	ldrb	r3, [r5, r4]
	mov	r2, r3
	add	r2, #0x12
	cmp	r11, r2
	bne	.Le2710
	mov	r0, #0x86
	bl	_PlaySound
	ldr	r1, =0x77a8
	ldr	r0, [sp, #0x1c]
	mov	r3, #4
	add	r2, r0, r1
	str	r3, [r2]
	mov	r2, r9
	ldrb	r3, [r5, r2]
.Le2710:
	add	r3, #0x12
	cmp	r11, r3
	blt	.Le27c0
	mov	r4, r9
	lsl	r4, #2
	mov	r3, #0
	str	r4, [sp, #8]
	mov	r8, r3
.Le2720:
	ldr	r3, [sp, #8]
	add	r3, r9
	lsl	r3, #2
	add	r3, r9
	add	r3, r8
	lsl	r2, r3, #3
	sub	r2, r3
	ldr	r0, =gBuffer
	lsl	r2, #2
	add	r7, r2, r0
	mov	r1, #5
	mov	r0, r8
	bl	__modsi3
	lsl	r5, r0, #1
	add	r5, r0
	mov	r1, #0x60
	ldr	r0, [r7, #0x18]
	bl	__divsi3
	mov	r1, #3
	bl	__modsi3
	ldr	r2, =.Leed1e
	add	r5, r0
	lsl	r3, r5, #1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	ldr	r3, =0x83c
	add	r1, r2, r1
	add	r1, r3
	ldr	r3, =.Leecff
	ldrb	r6, [r3, r5]
	mov	r4, #2
	ldrsh	r2, [r7, r4]
	lsr	r3, r6, #1
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldr	r0, =.Leed0e
	ldrb	r4, [r0, r5]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r4, [sp, #4]
	str	r6, [sp]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, r7
	mov	r1, #0x40
	bl	Func_80e3908
	ldr	r3, [r7, #0x18]
	ldr	r2, [r7, #8]
	add	r3, r2
	str	r3, [r7, #0x18]
	cmp	r2, #1
	ble	.Le27a8
	mov	r3, #1
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	beq	.Le27a8
	sub	r3, r2, #1
	str	r3, [r7, #8]
.Le27a8:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x15
	bne	.Le2720
	ldr	r5, =.Leecf7
	mov	r4, r9
	ldrb	r3, [r5, r4]
	add	r3, #0x12
	cmp	r11, r3
	bge	.Le2812
	b	.Le27c2
.Le27c0:
	ldr	r5, =.Leecf7
.Le27c2:
	mov	r0, r9
	ldrb	r3, [r5, r0]
	cmp	r11, r3
	blt	.Le27e8
	ldr	r3, =.Leecf2
	mov	r4, r10
	ldrsb	r2, [r3, r0]
	mov	r1, #6
	ldrsh	r3, [r4, r1]
	mov	r1, #0x22
	str	r1, [sp]
	mov	r1, #0x3e
	str	r1, [sp, #4]
	add	r2, #0x2f
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x1c]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
.Le27e8:
	mov	r0, r10
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #0x10]
	mov	r1, r9
	add	r3, r2
	str	r3, [r0, #4]
	ldrb	r3, [r5, r1]
	cmp	r11, r3
	ble	.Le2802
	mov	r4, #0x80
	lsl	r4, #9
	add	r3, r2, r4
	str	r3, [r0, #0x10]
.Le2802:
	mov	r0, r10
	mov	r2, #0xc8
	ldr	r3, [r0, #4]
	lsl	r2, #14
	cmp	r3, r2
	ble	.Le2810
	str	r2, [r0, #4]
.Le2810:
	ldr	r5, =.Leecf7
.Le2812:
	mov	r1, r9
	ldrb	r3, [r5, r1]
	add	r3, #0x12
	cmp	r11, r3
	bne	.Le2852
	ldr	r3, =0x7828
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0x14]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.Le2852
	ldr	r0, =0x7828
	mov	r6, #0x24
	add	r5, r4, r0
.Le2832:
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
	bne	.Le2832
.Le2852:
	mov	r4, #1
	ldr	r0, [sp, #0x10]
	mov	r3, #0x1c
	add	r9, r4
	add	r10, r3
	cmp	r9, r0
	beq	.Le2862
	b	.Le26ee
.Le2862:
	mov	r0, #2
	mov	r1, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r3, =0x7824
	ldr	r1, [sp, #0x1c]
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =.Leecf7
	ldr	r2, [sp, #0xc]
	ldrb	r3, [r1, r2]
	mov	r4, #1
	add	r11, r4
	add	r3, #0x50
	cmp	r11, r3
	beq	.Le2890
	b	.Le26ca
.Le2890:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
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
.func_end Anim_Spire

	.section .rodata
.Leecb2:
	.incrom 0xeecb2, 0xeecf2
.Leecf2:
	.incrom 0xeecf2, 0xeecf7
.Leecf7:
	.incrom 0xeecf7, 0xeecfc
.Leecfc:
	.incrom 0xeecfc, 0xeecff
.Leecff:
	.incrom 0xeecff, 0xeed0e
.Leed0e:
	.incrom 0xeed0e, 0xeed1e
.Leed1e:
	.incrom 0xeed1e, 0xeed3e
