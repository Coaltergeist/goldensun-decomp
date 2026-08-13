	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Flare  @ 0x080d9fc8
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
	ldr	r5, =0x7828
	mov	r8, r1
	ldr	r3, [r3]
	sub	sp, #0x14
	add	r5, r8
	str	r3, [sp, #0x10]
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lda028	@ 0x3f46
	strh	r3, [r2]
	ldr	r3, .Lda02c	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r0, =_FILE_b4
	mov	r1, r8
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r3, #3
	mov	r2, #7
	mov	r0, #0x2e
	mov	r1, #7
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r6, [r6, #0x1c]
	str	r6, [sp, #8]
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x7f
	ble	.Lda04a
	b	.Lda040

	.align	2, 0
.Lda028:
	.word	0x3f46
.Lda02c:
	.word	0x100e
	.pool

.Lda040:
	mov	r3, #0
	mov	r4, #1
	mov	r11, r3
	mov	r10, r4
	b	.Lda054
.Lda04a:
	mov	r1, #1
	mov	r0, #0x40
	neg	r1, r1
	mov	r11, r0
	mov	r10, r1
.Lda054:
	mov	r5, #0xe1
	mov	r2, #0
	lsl	r5, #7
	ldr	r6, =0xffffc000
	mov	r9, r2
	mov	r7, #0
	add	r5, r8
.Lda062:
	mov	r0, r6
	bl	sin
	lsl	r0, #5
	asr	r0, #16
	mov	r3, r10
	mul	r3, r0
	add	r3, r11
	add	r3, #0x14
	str	r3, [r5]
	mov	r0, r6
	bl	cos
	lsl	r0, #4
	asr	r0, #16
	mov	r4, #1
	add	r0, #0x28
	mov	r3, #0x80
	add	r9, r4
	str	r0, [r5, #4]
	lsl	r3, #5
	mov	r0, r9
	str	r7, [r5, #0x18]
	add	r6, r3
	sub	r7, #4
	add	r5, #0x1c
	cmp	r0, #9
	bne	.Lda062
	mov	r2, #0xef
	lsl	r2, #7
	mov	r3, #2
	add	r2, r8
	str	r3, [r2]
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	bne	.Lda0b6
	ldr	r2, =0x7784
	mov	r3, #0x4b
	b	.Lda0ba
.Lda0b6:
	ldr	r2, =0x7784
	mov	r3, #0x32
.Lda0ba:
	add	r2, r8
	str	r3, [r2]
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0x88
	bl	_PlaySound
	mov	r1, #0
	str	r1, [sp, #0xc]
.Lda0d2:
	ldr	r2, [sp, #0xc]
	cmp	r2, #0x18
	bne	.Lda0de
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Lda0de:
	mov	r6, #0xe1
	mov	r3, #0
	lsl	r6, #7
	mov	r9, r3
	add	r6, r8
.Lda0e8:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0x17
	bhi	.Lda194
	mov	r2, r3
	cmp	r3, #0
	bge	.Lda0f6
	add	r2, r3, #3
.Lda0f6:
	asr	r5, r2, #2
	ldr	r0, =Data_edeb2
	ldr	r2, =Data_ede9f
	lsl	r4, r5, #1
	ldrh	r1, [r0, r4]
	mov	r10, r4
	ldrb	r4, [r2, r5]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	ldr	r3, =Data_edeab
	ldrb	r0, [r3, r5]
	mov	r11, r3
	ldr	r3, [r6, #4]
	str	r4, [sp]
	ldr	r4, =Data_edea5
	add	r3, r0
	ldr	r7, =0x7828
	ldrb	r0, [r4, r5]
	add	r1, r8
	str	r0, [sp, #4]
	ldr	r4, [sp, #8]
	ldr	r0, [sp, #0x10]
	add	r7, r8
	bl	_call_via_r4
	ldr	r2, [r7]
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	beq	.Lda160
	ldr	r3, =Data_ede9f
	ldr	r0, =Data_edeb2
	ldrb	r4, [r3, r5]
	mov	r2, r10
	ldrh	r1, [r0, r2]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	mov	r3, r11
	ldrb	r0, [r3, r5]
	ldr	r3, [r6, #4]
	str	r4, [sp]
	ldr	r4, =Data_edea5
	add	r3, r0
	ldrb	r0, [r4, r5]
	add	r1, r8
	str	r0, [sp, #4]
	sub	r3, #0x10
	ldr	r0, [sp, #0x10]
	ldr	r4, [sp, #8]
	bl	_call_via_r4
	ldr	r2, [r7]
.Lda160:
	ldr	r3, [r2, #0x18]
	cmp	r3, #2
	bne	.Lda192
	ldr	r3, =Data_ede9f
	ldr	r0, =Data_edeb2
	ldrb	r4, [r3, r5]
	mov	r2, r10
	ldrh	r1, [r0, r2]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	mov	r3, r11
	ldrb	r0, [r3, r5]
	ldr	r3, [r6, #4]
	str	r4, [sp]
	ldr	r4, =Data_edea5
	add	r3, r0
	ldrb	r0, [r4, r5]
	sub	r3, #0x20
	str	r0, [sp, #4]
	add	r1, r8
	ldr	r0, [sp, #0x10]
	ldr	r4, [sp, #8]
	bl	_call_via_r4
.Lda192:
	ldr	r3, [r6, #0x18]
.Lda194:
	mov	r0, #1
	add	r9, r0
	add	r3, #1
	mov	r1, r9
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r1, #9
	bne	.Lda0e8
	mov	r2, #0
	mov	r9, r2
	ldr	r2, =0x7828
	mov	r4, r8
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lda1e6
	mov	r6, #0x24
	mov	r5, #0x10
.Lda1b8:
	ldr	r0, [sp, #0xc]
	cmp	r0, r5
	bne	.Lda1d2
	mov	r1, r8
	ldr	r3, [r1, r2]
	ldrsh	r0, [r3, r6]
	mov	r3, #0xc
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #5
	mov	r3, r9
	bl	SetBattleActorState
.Lda1d2:
	ldr	r2, =0x7828
	mov	r3, #1
	mov	r4, r8
	add	r9, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	add	r5, #8
	cmp	r9, r3
	bne	.Lda1b8
.Lda1e6:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r8
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	ldr	r0, [sp, #0xc]
	add	r0, #1
	str	r0, [sp, #0xc]
	cmp	r0, #0x50
	beq	.Lda204
	b	.Lda0d2
.Lda204:
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Flare
