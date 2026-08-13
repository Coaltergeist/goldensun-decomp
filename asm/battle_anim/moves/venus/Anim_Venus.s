	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Venus  @ 0x080e0564
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
	ldr	r3, [r3]
	sub	sp, #0x28
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r5, #8]
	add	r3, r9
	str	r2, [sp, #0x14]
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le05d0	@ 0x1010
	mov	r6, #2
	strh	r3, [r2]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r5, #0x1c]
	ldr	r5, [r5, #0x20]
	str	r3, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #0x1c]
	bl	LoadVFXFile
	ldr	r0, =_FILE_94
	mov	r1, r9
	mov	r2, #1
	b	.Le05e8

	.align	2, 0
.Le05d0:
	.word	0x1010
	.pool

.Le05e8:
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0xbe
	lsl	r1, #2
	ldr	r0, =_FILE_6f
	add	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r6, [r3]
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	mov	r5, #0xe1
	bl	StartTask
	lsl	r5, #7
	mov	r4, #0
	mov	r10, r4
	mov	r7, #0x3f
	add	r5, r9
	mov	r6, #0x68
.Le0626:
	bl	Random
	and	r0, r7
	str	r0, [r5]
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	str	r6, [r5, #4]
	add	r5, #0x1c
	cmp	r1, #0x20
	bne	.Le0626
	mov	r2, #0
	mov	r10, r2
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	neg	r1, r1
	lsl	r2, #2
.Le064a:
	mov	r4, #1
	add	r10, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r10, r2
	bne	.Le064a
	mov	r0, #0x8d
	bl	_PlaySound
	mov	r0, #0x80
	mov	r7, #0
	lsl	r0, #8
	str	r7, [sp, #0x20]
	str	r0, [sp, #0x10]
.Le0666:
	ldr	r1, [sp, #0x20]
	cmp	r1, #0x4f
	bgt	.Le06a4
	ldr	r0, [sp, #0x10]
	bl	sin
	lsl	r5, r0, #1
	add	r5, r0
	ldr	r0, [sp, #0x10]
	bl	cos
	ldr	r3, [sp, #0x20]
	lsl	r2, r3, #1
	mov	r3, #0x40
	sub	r3, r2
	mul	r3, r0
	lsl	r5, #3
	mov	r2, #0x14
	asr	r5, #16
	asr	r3, #16
	add	r5, #0x16
	str	r2, [sp]
	mov	r2, #0x26
	str	r2, [sp, #4]
	add	r3, #0x1d
	ldr	r0, [sp, #0x24]
	mov	r1, r9
	mov	r2, r5
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Le06a4:
	ldr	r7, [sp, #0x20]
	cmp	r7, #0x38
	bne	.Le06b0
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Le06b0:
	mov	r2, #0xe1
	mov	r0, #0
	lsl	r2, #7
	mov	r1, #0x10
	add	r2, r9
	str	r0, [sp, #0xc]
	mov	r10, r0
	mov	r11, r1
	mov	r8, r2
.Le06c2:
	ldr	r3, [sp, #0x20]
	cmp	r3, r11
	blt	.Le07b6
	mov	r4, r8
	mov	r1, #0x22
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	str	r1, [sp]
	mov	r1, #0x41
	str	r1, [sp, #4]
	mov	r1, #0x9e
	lsl	r1, #4
	sub	r2, #0x11
	sub	r3, #0x20
	ldr	r0, [sp, #0x24]
	add	r1, r9
	ldr	r7, [sp, #0x18]
	bl	_call_via_r7
	ldr	r0, [sp, #0x20]
	cmp	r0, r11
	bne	.Le07ae
	ldr	r1, [sp, #0xc]
	ldr	r2, =gBuffer
	mov	r4, #0
	add	r7, r1, r2
.Le06f6:
	str	r4, [sp, #8]
	bl	Random
	ldr	r6, =0x7fff
	mov	r3, #0x80
	lsl	r3, #7
	and	r6, r0
	add	r6, r3
	bl	Random
	mov	r1, r8
	ldr	r3, [r1]
	lsl	r3, #16
	str	r3, [r7]
	ldr	r5, =0x1ff
	ldr	r3, [r1, #4]
	and	r5, r0
	add	r3, #0x10
	mov	r0, #0x80
	lsl	r3, #16
	lsl	r0, #1
	add	r5, r0
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
	cmp	r4, #0x10
	bne	.Le06f6
	mov	r3, #1
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.Le0766
	mov	r0, #0x85
	bl	_PlaySound
.Le0766:
	ldr	r2, =0x77a8
	mov	r3, #4
	add	r2, r9
	str	r3, [r2]
	ldr	r3, =0x7828
	mov	r7, r9
	ldr	r3, [r7, r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Le07ae
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Le0782:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r4
	mov	r1, #7
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
	bne	.Le0782
.Le07ae:
	mov	r4, r8
	ldr	r3, [r4, #4]
	sub	r3, #0xc
	str	r3, [r4, #4]
.Le07b6:
	ldr	r1, [sp, #0xc]
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #2
	add	r10, r3
	mov	r7, #4
	mov	r0, #0x1c
	add	r1, r2
	mov	r4, r10
	add	r11, r7
	add	r8, r0
	str	r1, [sp, #0xc]
	cmp	r4, #0xa
	beq	.Le07d4
	b	.Le06c2
.Le07d4:
	mov	r7, #0
	ldr	r5, =gBuffer
	ldr	r6, =Data_ede48
	mov	r10, r7
.Le07dc:
	mov	r1, #1
	ldr	r0, [r5, #0x18]
	neg	r1, r1
	cmp	r0, r1
	beq	.Le082a
	cmp	r0, #0
	bge	.Le07ec
	add	r0, #0xf
.Le07ec:
	asr	r0, #4
	add	r0, #2
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x14]
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
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3e
	lsl	r2, #6
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le082a:
	mov	r7, #1
	mov	r0, #0x80
	add	r10, r7
	lsl	r0, #2
	add	r5, #0x1c
	cmp	r10, r0
	bne	.Le07dc
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
	ldr	r2, =0xfffff800
	ldr	r1, [sp, #0x10]
	ldr	r3, [sp, #0x20]
	add	r1, r2
	add	r3, #1
	str	r1, [sp, #0x10]
	str	r3, [sp, #0x20]
	cmp	r3, #0x60
	beq	.Le0866
	b	.Le0666
.Le0866:
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
.func_end Anim_Venus
