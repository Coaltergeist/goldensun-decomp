	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Ray  @ 0x080db264
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
	sub	sp, #0x2c
	str	r3, [sp, #0x20]
	ldr	r5, =0x7828
	mov	r10, r1
	ldr	r2, [r2, #8]
	add	r5, r10
	str	r2, [sp, #0x18]
	str	r0, [r5]
	mov	r0, #1
	bl	Func_80cdb24
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	bne	.Ldb2b0
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldb2a0	@ 0x80
	b	.Ldb2b4

	.align	2, 0
.Ldb2a0:
	.word	0x80
	.pool

.Ldb2b0:
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldb2ec	@ 0x100
.Ldb2b4:
	strh	r3, [r2]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	ldr	r1, =0x60e
	add	r2, #0x24
	b	.Ldb2fc

	.align	2, 0
.Ldb2ec:
	.word	0x100
	.pool

.Ldb2fc:
	str	r2, [sp, #0xc]
	ldr	r0, =_FILE_c4
	str	r3, [r2, #4]
	add	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0
	mov	r3, #0
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x18]
	bl	LoadVFXFile
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r2, #0x18]
	cmp	r3, #2
	bne	.Ldb338
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Ldb330
	ldr	r2, =REG_BG2X
	ldr	r3, =0xfffff000
	b	.Ldb342
.Ldb330:
	ldr	r2, =REG_BG2X
	mov	r3, #0x80
	lsl	r3, #5
	b	.Ldb342
.Ldb338:
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Ldb344
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff8000
.Ldb342:
	str	r3, [r2]
.Ldb344:
	mov	r3, #0
	ldr	r7, =gBuffer
	mov	r8, r3
.Ldb34a:
	bl	Random
	ldr	r6, =0x3ff
	mov	r1, #0x80
	lsl	r1, #1
	and	r6, r0
	add	r6, r1
	bl	Random
	ldr	r5, =0x7fff
	mov	r3, #0x80
	ldr	r2, =0xffffc000
	lsl	r3, #7
	str	r3, [r7]
	and	r5, r0
	mov	r3, #0xe0
	add	r5, r2
	lsl	r3, #7
	str	r3, [r7, #4]
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	asr	r3, #16
	str	r3, [r7, #8]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #16
	str	r3, [r7, #0x14]
	mov	r3, #0
	str	r3, [r7, #0x18]
	mov	r1, #0x80
	mov	r3, #1
	add	r8, r3
	lsl	r1, #3
	add	r7, #0x1c
	cmp	r8, r1
	bne	.Ldb34a
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	str	r3, [r2]
	add	r1, #0x80
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0x8a
	bl	_PlaySound
	mov	r2, #0
	str	r2, [sp, #0x1c]
.Ldb3c6:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0x14
	bne	.Ldb3d2
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Ldb3d2:
	ldr	r1, [sp, #0x1c]
	cmp	r1, #0xf
	ble	.Ldb3da
	b	.Ldb55a
.Ldb3da:
	mov	r0, r1
	mov	r1, #5
	bl	__modsi3
	cmp	r0, #2
	bne	.Ldb3f4
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #0x20]
	lsl	r1, #7
	ldr	r2, =0x10101010
	bl	_call_via_r3
.Ldb3f4:
	ldr	r3, [sp, #0x1c]
	mov	r2, #0
	lsl	r3, #11
	str	r2, [sp, #0x14]
	str	r3, [sp, #8]
.Ldb3fe:
	mov	r1, #0
	ldr	r2, [sp, #8]
	str	r1, [sp, #0x10]
	mov	r1, #0x80
	lsl	r1, #7
	add	r3, r2, r1
	ldr	r2, [sp, #0x14]
	mov	r5, r2
	mul	r5, r3
	mov	r0, r5
	bl	sin
	ldr	r1, [sp, #0x1c]
	mov	r3, #0x20
	sub	r3, r1
	mul	r3, r0
	asr	r3, #16
	add	r3, #0x40
	mov	r0, r5
	mov	r9, r3
	bl	cos
	ldr	r3, =0x7828
	add	r3, r10
	lsl	r0, #3
	ldr	r3, [r3]
	asr	r0, #16
	neg	r0, r0
	ldr	r3, [r3, #0x18]
	mov	r6, r0
	sub	r6, #8
	cmp	r3, #0
	bne	.Ldb47a
	bl	Random
	mov	r3, #3
	and	r0, r3
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r5, r3, #4
	sub	r5, r3
	ldr	r2, =0x60e
	lsl	r5, #6
	add	r5, r10
	add	r5, r2
	bl	Random
	mov	r2, #7
	and	r2, r0
	mov	r3, #0x18
	add	r2, r9
	str	r3, [sp]
	mov	r3, #0x78
	str	r3, [sp, #4]
	sub	r2, #0x10
	ldr	r4, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	mov	r1, r5
	mov	r3, r6
	bl	_call_via_r4
	b	.Ldb4bc
.Ldb47a:
	bl	Random
	mov	r3, #3
	and	r0, r3
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r5, r3, #4
	sub	r5, r3
	lsl	r5, #6
	ldr	r3, =0x60e
	add	r5, r10
	add	r5, r3
	bl	Random
	ldr	r3, [sp, #0x14]
	mov	r1, #1
	and	r1, r3
	mov	r3, #0x18
	str	r3, [sp]
	mov	r2, #7
	mov	r3, #0x78
	and	r2, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #0xc]
	lsl	r1, #2
	add	r2, r9
	ldr	r4, [r1, r3]
	sub	r2, #0x10
	ldr	r0, [sp, #0x20]
	mov	r1, r5
	mov	r3, r6
	bl	_call_via_r4
.Ldb4bc:
	mov	r3, r6
	add	r3, #0x70
	mov	r1, #0
	lsl	r3, #16
	ldr	r7, =gBuffer
	mov	r8, r1
	mov	r11, r3
.Ldb4ca:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Ldb538
	bl	Random
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Random
	ldr	r5, =0x7fff
	ldr	r2, =0xffffc000
	mov	r1, r9
	and	r5, r0
	lsl	r3, r1, #16
	add	r5, r2
	mov	r2, r11
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r0, r5
	bl	sin
	add	r6, #0x80
	mov	r3, r6
	mul	r3, r0
	asr	r3, #9
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
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Leeadc
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r1, r3]
	ldr	r2, [sp, #0x10]
	cmp	r2, r3
	beq	.Ldb546
.Ldb538:
	mov	r3, #1
	mov	r1, #0x80
	add	r8, r3
	lsl	r1, #3
	add	r7, #0x1c
	cmp	r8, r1
	bne	.Ldb4ca
.Ldb546:
	ldr	r2, [sp, #0x14]
	add	r2, #1
	str	r2, [sp, #0x14]
	cmp	r2, #4
	beq	.Ldb552
	b	.Ldb3fe
.Ldb552:
	ldr	r2, =0x77a8
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
.Ldb55a:
	mov	r3, #0
	ldr	r5, =gBuffer
	mov	r8, r3
.Ldb560:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Ldb5ca
	sub	r3, #1
	str	r3, [r5, #0x18]
	mov	r1, #0x3c
	mov	r0, r5
	ldr	r2, =0xfffff800
	bl	Func_80e3908
	mov	r1, #0xf0
	ldr	r3, [r5, #4]
	lsl	r1, #15
	cmp	r3, r1
	ble	.Ldb58c
	ldr	r3, [r5, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5, #0x10]
	b	.Ldb5ca
.Ldb58c:
	ldr	r2, [r5]
	ldr	r1, =0x7effff
	cmp	r2, r1
	bhi	.Ldb5ca
	cmp	r3, #0
	blt	.Ldb5ca
	ldr	r0, [r5, #0x18]
	asr	r6, r2, #16
	asr	r7, r3, #16
	cmp	r0, #0
	bge	.Ldb5a4
	add	r0, #7
.Ldb5a4:
	asr	r0, #3
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x18]
	add	r1, r2, r1
	lsr	r2, r0, #31
	add	r2, r0, r2
	asr	r2, #1
	sub	r3, r7, r0
	str	r0, [sp]
	str	r4, [sp, #4]
	sub	r2, r6, r2
	ldr	r4, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
.Ldb5ca:
	mov	r3, #1
	mov	r1, #0x80
	add	r8, r3
	lsl	r1, #3
	add	r5, #0x1c
	cmp	r8, r1
	bne	.Ldb560
	ldr	r3, [sp, #0x1c]
	sub	r3, #4
	cmp	r3, #0x5b
	bhi	.Ldb622
	mov	r2, #0
	mov	r8, r2
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ldb622
	mov	r6, #0x24
	mov	r5, #4
.Ldb5f4:
	ldr	r3, [sp, #0x1c]
	cmp	r3, r5
	bne	.Ldb60e
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldrsh	r0, [r3, r6]
	mov	r3, #0xa
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	SetBattleActorState
.Ldb60e:
	ldr	r2, =0x7828
	mov	r3, #1
	mov	r1, r10
	add	r8, r3
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	add	r5, #4
	cmp	r8, r3
	bne	.Ldb5f4
.Ldb622:
	mov	r0, #2
	mov	r1, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x1c]
	add	r2, #1
	str	r2, [sp, #0x1c]
	cmp	r2, #0x40
	beq	.Ldb648
	b	.Ldb3c6
.Ldb648:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Ray

	.section .rodata
.Leeadc:
	.incrom 0xeeadc, 0xeeae2
