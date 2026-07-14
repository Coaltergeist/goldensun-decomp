	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_StatDown  @ 0x080d9ae8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x64
	str	r1, [sp, #0x34]
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r1}
	str	r1, [sp, #0x30]
	ldr	r2, =0x7828
	ldr	r3, [r3]
	str	r3, [sp, #0x2c]
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r3, .Ld9b2c	@ 0x100
	ldr	r2, =REG_BG2PA
	strh	r3, [r2]
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	bne	.Ld9b40
	ldr	r0, =_FILE_9c
	ldr	r1, [sp, #0x30]
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Ld9b4c

	.align	2, 0
.Ld9b2c:
	.word	0x100
	.pool

.Ld9b40:
	ldr	r0, =_FILE_9b
	ldr	r1, [sp, #0x30]
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
.Ld9b4c:
	ldr	r5, [sp, #0x34]
	cmp	r5, #0
	beq	.Ld9b5c
	ldr	r0, [sp, #0x34]
	cmp	r0, #1
	bne	.Ld9b5c
	ldr	r0, =_FILE_b7
	b	.Ld9b5e
.Ld9b5c:
	ldr	r0, =_FILE_bb
.Ld9b5e:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #0x96
	ldr	r2, [sp, #0x30]
	lsl	r3, #6
	add	r1, r2, r3
	ldr	r0, =_FILE_9d
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r0, #0xae
	mov	r5, #1
	lsl	r0, #2
	mov	r9, r5
	mov	r14, r0
	mov	r4, #0x39
.Ld9b8e:
	ldr	r3, [sp, #0x30]
	mov	r2, #0x96
	mov	r1, #0
	lsl	r2, #6
	str	r1, [sp, #0x24]
	add	r1, r3, r2
	add	r3, r0, r3
	mov	r12, r4
	add	r3, r2
.Ld9ba0:
	ldrb	r2, [r1]
	add	r1, #1
	cmp	r2, r12
	ble	.Ld9baa
	mov	r2, r12
.Ld9baa:
	cmp	r2, #0
	bge	.Ld9bb0
	mov	r2, #0
.Ld9bb0:
	strb	r2, [r3]
	ldr	r5, [sp, #0x24]
	add	r5, #1
	add	r3, #1
	str	r5, [sp, #0x24]
	cmp	r5, r14
	bne	.Ld9ba0
	mov	r2, #1
	mov	r1, #0xae
	add	r9, r2
	lsl	r1, #2
	mov	r3, r9
	add	r0, r1
	sub	r4, #7
	cmp	r3, #8
	bne	.Ld9b8e
	ldr	r5, [sp, #0x30]
	ldr	r0, =0x7828
	add	r3, r5, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld9bec
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	mov	r1, #0x70
	neg	r1, r1
	str	r3, [r2]
	str	r1, [sp, #0x20]
	b	.Ld9bf4
.Ld9bec:
	ldr	r2, =REG_BG2X
	mov	r3, #0
	str	r3, [r2]
	str	r3, [sp, #0x20]
.Ld9bf4:
	mov	r2, #0
	ldr	r5, =gBuffer
	mov	r9, r2
	mov	r7, #0xc0
.Ld9bfc:
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	mov	r3, #0
	str	r3, [r5]
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	bne	.Ld9c42
	mov	r2, #0x1f
	mov	r0, r9
	and	r2, r0
	cmp	r2, #0
	bge	.Ld9c1c
	add	r2, #3
.Ld9c1c:
	asr	r2, #2
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =0xfff60000
	lsl	r3, #17
	add	r3, r1
	str	r3, [r5, #4]
	mov	r3, r9
	cmp	r3, #0
	bge	.Ld9c32
	add	r3, #3
.Ld9c32:
	asr	r3, #2
	lsl	r3, #2
	mov	r2, r9
	sub	r3, r2, r3
	ldr	r0, =0xfffe0000
	lsl	r3, #17
	add	r3, r0
	b	.Ld9c72
.Ld9c42:
	mov	r2, #0x1f
	mov	r1, r9
	and	r2, r1
	cmp	r2, #0
	bge	.Ld9c4e
	add	r2, #3
.Ld9c4e:
	asr	r2, #2
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =0xfff60000
	lsl	r3, #17
	add	r3, r2
	str	r3, [r5, #4]
	mov	r3, r9
	cmp	r3, #0
	bge	.Ld9c64
	add	r3, #3
.Ld9c64:
	asr	r3, #2
	lsl	r3, #2
	mov	r0, r9
	sub	r3, r0, r3
	ldr	r1, =0xfff00000
	lsl	r3, #19
	add	r3, r1
.Ld9c72:
	str	r3, [r5, #8]
	ldr	r2, [sp, #0x30]
	ldr	r0, =0x7828
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld9c88
	mov	r3, #0x80
	lsl	r3, #10
	b	.Ld9c8a
.Ld9c88:
	ldr	r3, =0xfffe0000
.Ld9c8a:
	str	r3, [r5, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r7
	mul	r3, r0
	mov	r1, #0x80
	lsl	r1, #9
	asr	r3, #6
	add	r3, r1
	str	r3, [r5, #0x10]
	mov	r0, r6
	bl	sin
	mov	r3, r7
	mul	r3, r0
	asr	r3, #6
	str	r3, [r5, #0x14]
	bl	Random
	mov	r3, #0xff
	and	r3, r0
	str	r3, [r5, #0x18]
	mov	r2, #1
	mov	r3, #0x80
	add	r9, r2
	lsl	r3, #2
	add	r5, #0x1c
	cmp	r9, r3
	bne	.Ld9bfc
	ldr	r0, [sp, #0x30]
	ldr	r1, =0x7828
	add	r5, r0, r1
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x38
	ldr	r0, [r3, #4]
	mov	r1, r2
	str	r2, [sp, #0x1c]
	bl	BuildDraw2DFuncs
	mov	r0, #0xef
	ldr	r3, [sp, #0x30]
	lsl	r0, #7
	add	r2, r3, r0
	mov	r3, #2
	str	r3, [r2]
	ldr	r1, [sp, #0x30]
	ldr	r3, =0x7784
	add	r2, r1, r3
	mov	r3, #0x32
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0
	str	r0, [sp, #0x28]
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x40
	lsl	r3, #2
	neg	r1, r1
	cmp	r3, r1
	bne	.Ld9d10
	b	.Ld9f82
.Ld9d10:
	ldr	r3, =iwram_3001e80
	ldr	r2, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	cmp	r2, #0x48
	bne	.Ld9d22
	mov	r0, #0
	bl	_Func_80bd7dc
.Ld9d22:
	mov	r3, #0
	str	r3, [sp, #0x24]
	ldr	r2, =0x7828
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld9d34
	b	.Ld9f58
.Ld9d34:
	ldr	r0, [sp, #0x28]
	ldr	r3, [sp, #0x18]
	sub	r0, #0x18
	ldr	r1, [sp, #0x28]
	add	r3, #0xc
	mov	r5, #0
	str	r0, [sp, #0xc]
	str	r3, [sp, #0x14]
	str	r5, [sp, #8]
	mov	r8, r1
.Ld9d48:
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x24]
	ldr	r2, [r0, r2]
	lsl	r3, r1, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	ldr	r6, [r0]
	mov	r0, r8
	cmp	r0, #0
	bgt	.Ld9d62
	b	.Ld9f2c
.Ld9d62:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	bl	MatrixSetLook
	ldr	r3, [r6, #8]
	add	r5, sp, #0x40
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	InitMatrixStack
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	bl	MatrixSetLook
	mov	r0, r5
	bl	MatrixTranslatev
	mov	r3, #0
	add	r0, sp, #0x58
	add	r5, sp, #0x4c
	str	r3, [r0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	ldr	r1, [sp, #0x20]
	ldr	r2, [r5, #4]
	add	r6, r3, r1
	ldr	r3, [sp, #0x34]
	mov	r10, r2
	cmp	r3, #0
	bne	.Ld9e2c
	mov	r0, r8
	cmp	r0, #0x1a
	bgt	.Ld9e68
	cmp	r0, #0
	bge	.Ld9dbe
	add	r0, #3
.Ld9dbe:
	mov	r1, #7
	asr	r0, #2
	bl	__modsi3
	lsl	r1, r0, #4
	sub	r1, r0
	ldr	r2, [sp, #0x30]
	mov	r0, #0x18
	lsl	r1, #6
	add	r1, r2, r1
	mov	r3, r10
	mov	r2, r6
	str	r0, [sp]
	mov	r0, #0x28
	str	r0, [sp, #4]
	sub	r2, #0xc
	sub	r3, #0x14
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	b	.Ld9e68

	.pool_aligned

.Ld9e2c:
	mov	r3, r8
	cmp	r3, #0x17
	bgt	.Ld9e68
	mov	r0, r8
	cmp	r3, #0
	bge	.Ld9e3a
	add	r0, #3
.Ld9e3a:
	mov	r1, #6
	asr	r0, #2
	bl	__modsi3
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #3
	add	r1, r0
	ldr	r0, [sp, #0x30]
	lsl	r1, #6
	add	r1, r0, r1
	mov	r0, #0x28
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x1c]
	mov	r2, r6
	mov	r3, r10
	ldr	r4, [r0, #4]
	sub	r2, #0x14
	sub	r3, #0x14
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Ld9e68:
	mov	r1, r8
	cmp	r1, #0x18
	bne	.Ld9e74
	mov	r0, #0x8f
	bl	_PlaySound
.Ld9e74:
	ldr	r2, [sp, #0xc]
	cmp	r2, #0x24
	bhi	.Ld9f2c
	mov	r3, r8
	mov	r1, #0
	cmp	r3, #0x1c
	ble	.Ld9e94
	mov	r3, r2
	cmp	r2, #0
	bge	.Ld9e8c
	mov	r3, r8
	sub	r3, #0x15
.Ld9e8c:
	asr	r1, r3, #2
	cmp	r1, #7
	ble	.Ld9e94
	mov	r1, #7
.Ld9e94:
	mov	r3, #0xae
	lsl	r3, #2
	mov	r2, r1
	mul	r2, r3
	mov	r11, r5
	ldr	r3, [sp, #8]
	ldr	r5, =gBuffer
	mov	r0, #0
	str	r2, [sp, #0x10]
	mov	r9, r0
	add	r7, r3, r5
.Ld9eaa:
	mov	r3, r9
	cmp	r3, #0
	bge	.Ld9eb2
	add	r3, #3
.Ld9eb2:
	asr	r3, #2
	mov	r0, r9
	lsl	r3, #2
	sub	r3, r0, r3
	lsl	r2, r3, #1
	add	r6, r2, r3
	ldr	r3, [r7, #0x18]
	mov	r1, r8
	add	r0, r3, r1
	cmp	r0, #0
	bge	.Ld9eca
	add	r0, #7
.Ld9eca:
	mov	r1, #3
	asr	r0, #3
	bl	__modsi3
	mov	r1, r11
	mov	r5, r0
	mov	r0, r7
	bl	Func_80e3944
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r0, [sp, #0x20]
	ldr	r1, [r2, #4]
	add	r5, r6, r5
	ldr	r2, =.Leea08
	add	r6, r3, r0
	lsl	r3, r5, #1
	mov	r10, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x30]
	add	r1, r2, r1
	add	r1, r3, r1
	ldr	r3, =.Leea20
	ldrb	r3, [r3, r5]
	str	r3, [sp]
	ldr	r3, =.Leea2c
	mov	r0, #0x96
	ldrb	r3, [r3, r5]
	lsl	r0, #6
	add	r1, r0
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x2c]
	mov	r2, r6
	mov	r3, r10
	bl	_call_via_r4
	mov	r0, r7
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e38b8
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	add	r7, #0x1c
	cmp	r2, #0x18
	bne	.Ld9eaa
.Ld9f2c:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #0x24]
	mov	r1, #0xe0
	mov	r5, #4
	lsl	r1, #2
	sub	r3, #4
	neg	r5, r5
	add	r0, r1
	add	r2, #1
	str	r2, [sp, #0x24]
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	add	r8, r5
	ldr	r2, =0x7828
	ldr	r5, [sp, #0x30]
	ldr	r3, [r5, r2]
	ldr	r0, [sp, #0x24]
	ldr	r3, [r3, #0x14]
	cmp	r0, r3
	beq	.Ld9f58
	b	.Ld9d48
.Ld9f58:
	ldr	r1, [sp, #0x30]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, [sp, #0x28]
	ldr	r0, [sp, #0x30]
	add	r5, #1
	ldr	r1, =0x7828
	str	r5, [sp, #0x28]
	add	r3, r0, r1
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #2
	add	r3, #0x40
	cmp	r5, r3
	beq	.Ld9f82
	b	.Ld9d10
.Ld9f82:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_StatDown

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
	bl	Func_80d6888
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

.section .text.after_da24c, "ax", %progbits

.thumb_func_start Anim_Quake  @ 0x080da2ac
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
	sub	sp, #0x74
	str	r3, [sp, #0x48]
	sub	r2, #0x6c
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2]
	add	r3, r9
	str	r2, [sp, #0x38]
	str	r0, [r3]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lda314	@ 0x100
	mov	r1, #0xf0
	strh	r3, [r2]
	ldr	r3, .Lda318	@ 0
	add	r2, #0x30
	lsl	r1, #5
	strh	r3, [r2]
	ldr	r0, =_FILE_8b
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0x80
	ldr	r3, =Func_8001af8
	lsl	r2, #8
	ldr	r0, =gBuffer
	ldr	r1, =0x6008000
	bl	_call_via_r3
	ldr	r3, =gBuffer
	mov	r2, #7
	mov	r5, #0
	mov	r12, r2
	mov	r7, #0
	mov	r14, r3
	b	.Lda338

	.align	2, 0
.Lda314:
	.word	0x100
.Lda318:
	.word	0
	.pool

.Lda338:
	mov	r4, r5
	add	r4, #0x60
	mov	r3, r4
	mov	r6, r12
	and	r3, r6
	lsl	r3, #3
	mov	r8, r3
	add	r3, r7, r5
	lsl	r3, #3
	mov	r2, r9
	mov	r0, #0
	add	r1, r3, r2
.Lda350:
	mov	r3, r0
	add	r3, #0x20
	mov	r2, r3
	mov	r6, r12
	and	r2, r6
	cmp	r3, #0
	bge	.Lda360
	add	r3, #7
.Lda360:
	asr	r3, #3
	lsl	r3, #6
	add	r3, r2, r3
	mov	r6, r8
	add	r2, r3, r6
	mov	r3, r4
	cmp	r3, #0
	bge	.Lda372
	add	r3, #7
.Lda372:
	asr	r3, #3
	lsl	r3, #11
	add	r3, r2, r3
	mov	r2, r14
	ldrb	r3, [r3, r2]
	add	r0, #1
	strb	r3, [r1]
	add	r1, #1
	cmp	r0, #0x28
	bne	.Lda350
	add	r5, #1
	add	r7, #4
	cmp	r5, #0x10
	bne	.Lda338
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lda3a8
	ldr	r3, =0xffff9000
	ldr	r2, =REG_BG2X
	str	r3, [r2]
	mov	r3, #0x70
	neg	r3, r3
	str	r3, [sp, #0x34]
	b	.Lda3ac
.Lda3a8:
	mov	r4, #0
	str	r4, [sp, #0x34]
.Lda3ac:
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x3c]
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lda3ea
	ldr	r3, =0x7828
	ldr	r2, =0x7098
	add	r3, r9
	ldr	r1, [r3]
	mov	r0, #0
	add	r2, r9
.Lda3de:
	str	r0, [r2]
	ldr	r3, [r1, #0x14]
	add	r4, #1
	add	r2, #0x1c
	cmp	r4, r3
	bne	.Lda3de
.Lda3ea:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r9
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r6, sp
	add	r6, #0x64
	str	r6, [sp, #0x30]
	ldr	r3, =Data_eda88
	mov	r2, r6
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, =0x77a8
	mov	r3, #0x80
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x8d
	bl	_PlaySound
	mov	r6, #0
	ldr	r3, =0x7828
	str	r6, [sp, #0x44]
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, [r3, #0x18]
	ldr	r1, =.Leea38
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lda440
	b	.Lda67a
.Lda440:
	ldr	r0, [sp, #0x38]
	ldr	r1, =0x7828
	add	r0, #0xc
	add	r1, r9
	str	r0, [sp, #0x1c]
	str	r1, [sp, #0x2c]
.Lda44c:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x1c]
	bl	MatrixSetLook
	ldr	r2, [sp, #0x2c]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	ldr	r4, =.Leea38
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r4, r3]
	ldr	r6, [sp, #0x44]
	sub	r3, #0x10
	cmp	r6, r3
	bne	.Lda474
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Lda474:
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0x10
	str	r0, [sp, #0x40]
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x10]
	str	r0, [sp, #0xc]
.Lda484:
	ldr	r4, [sp, #0x44]
	mov	r3, #0x1f
	and	r3, r4
	ldr	r6, [sp, #0x10]
	add	r3, #0x20
	cmp	r3, r6
	bne	.Lda49c
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r0, r1]
	add	r3, #0x20
	str	r3, [r0, r1]
.Lda49c:
	ldr	r2, [sp, #0x44]
	ldr	r3, [sp, #0x10]
	cmp	r2, r3
	bge	.Lda4a6
	b	.Lda5ae
.Lda4a6:
	ldr	r6, =0x7828
	add	r6, r9
	ldr	r3, [r6]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r4, =.Leea38
	add	r3, #1
	ldrb	r3, [r4, r3]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x44]
	add	r3, r0, r3
	cmp	r1, r3
	bge	.Lda5ae
	sub	r0, r1, r0
	lsl	r0, #10
	bl	sin
	ldr	r2, [sp, #0xc]
	ldr	r4, [sp, #0x30]
	ldr	r3, [r2, r4]
	mul	r3, r0
	asr	r5, r3, #16
	cmp	r5, #0
	bge	.Lda4da
	neg	r5, r5
.Lda4da:
	mov	r3, #0x70
	mov	r1, #0xf0
	sub	r3, r5
	mov	r0, #0x28
	lsl	r1, #5
	str	r3, [sp, #0x28]
	str	r0, [sp]
	ldr	r2, [sp, #0x18]
	ldr	r4, [sp, #0x3c]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x48]
	add	r1, r9
	bl	_call_via_r4
	mov	r0, #0x28
	mov	r2, #0x10
	mov	r3, #0x60
	sub	r3, r5
	str	r0, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x3c]
	ldr	r0, [sp, #0x48]
	mov	r1, r9
	ldr	r2, [sp, #0x18]
	bl	_call_via_r4
	ldr	r3, [r6]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lda5ae
	ldr	r2, [sp, #0x18]
	mov	r0, #0x4c
	ldr	r1, [sp, #0x14]
	add	r0, sp
	add	r2, #0x28
	mov	r10, r0
	mov	r3, #0x24
	str	r1, [sp, #0x24]
	str	r2, [sp, #0x20]
	mov	r7, r6
	mov	r8, r3
	add	r6, sp, #0x58
	mov	r11, r10
.Lda532:
	ldr	r3, [r7]
	mov	r1, r8
	ldrsh	r0, [r3, r1]
	str	r4, [sp, #8]
	bl	_GetBattleActor
	ldr	r5, [r0]
	ldr	r3, [r5, #8]
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, r11
	str	r3, [r6, #8]
	mov	r0, r6
	bl	Func_80e3944
	mov	r0, r11
	ldr	r3, [r0]
	ldr	r1, [sp, #0x34]
	add	r2, r3, r1
	str	r2, [r0]
	ldr	r3, [sp, #0x24]
	add	r3, #8
	ldr	r4, [sp, #8]
	cmp	r2, r3
	blt	.Lda582
	ldr	r3, [sp, #0x20]
	cmp	r2, r3
	bgt	.Lda582
	mov	r0, r10
	ldr	r3, [r0, #4]
	ldr	r1, [sp, #0x28]
	cmp	r3, r1
	blt	.Lda582
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	str	r3, [r5, #0x48]
.Lda582:
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.Lda5a0
	ldr	r3, [r7]
	mov	r2, r8
	ldrsh	r0, [r3, r2]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	str	r4, [sp, #8]
	bl	Func_80d6888
	ldr	r4, [sp, #8]
.Lda5a0:
	ldr	r3, [r7]
	ldr	r3, [r3, #0x14]
	mov	r2, #2
	add	r4, #1
	add	r8, r2
	cmp	r4, r3
	bne	.Lda532
.Lda5ae:
	ldr	r3, [sp, #0x14]
	ldr	r4, [sp, #0x18]
	ldr	r6, [sp, #0x10]
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x40]
	add	r3, #0x28
	add	r4, #0x28
	add	r6, #4
	add	r0, #4
	add	r1, #1
	str	r3, [sp, #0x14]
	str	r4, [sp, #0x18]
	str	r6, [sp, #0x10]
	str	r0, [sp, #0xc]
	str	r1, [sp, #0x40]
	cmp	r1, #3
	beq	.Lda5d2
	b	.Lda484
.Lda5d2:
	ldr	r2, =0x7828
	mov	r6, r9
	ldr	r3, [r6, r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lda636
	mov	r6, #0xe1
	lsl	r6, #7
	add	r6, r9
	mov	r7, #0x24
.Lda5e8:
	mov	r0, r9
	add	r5, r0, r2
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	str	r4, [sp, #8]
	bl	_GetBattleActor
	ldr	r3, [r6, #0x18]
	ldr	r0, [r0]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	bne	.Lda624
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bgt	.Lda624
	ldr	r3, [r0, #0x28]
	cmp	r3, #0
	bge	.Lda624
	mov	r3, #1
	str	r3, [r6, #0x18]
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #5
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r4
	mov	r2, #5
	bl	Func_80d6888
	ldr	r4, [sp, #8]
.Lda624:
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	add	r4, #1
	add	r6, #0x1c
	add	r7, #2
	cmp	r4, r3
	bne	.Lda5e8
.Lda636:
	ldr	r1, [sp, #0x2c]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =.Leea38
	add	r3, #2
	ldrb	r1, [r2, r3]
	mov	r0, r1
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [sp, #0x44]
	add	r3, #1
	str	r3, [sp, #0x44]
	ldr	r4, [sp, #0x2c]
	ldr	r3, [r4]
	ldr	r2, [r3, #0x18]
	ldr	r6, =.Leea38
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r6, r3]
	ldr	r0, [sp, #0x44]
	cmp	r0, r3
	beq	.Lda67a
	b	.Lda44c
.Lda67a:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x74
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Quake

.thumb_func_start Anim_Fireball  @ 0x080da6cc
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
	sub	sp, #0x38
	str	r3, [sp, #0x20]
	mov	r3, r2
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	ldr	r2, [r2, #8]
	ldr	r3, =0x7828
	str	r2, [sp, #0x14]
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	ldr	r3, [r0, #4]
	cmp	r3, #1
	bne	.Lda710
	mov	r0, #1
	bl	AnimStart
	b	.Lda716

	.pool_aligned

.Lda710:
	mov	r0, #0
	bl	AnimStart
.Lda716:
	ldr	r0, =_FILE_b4
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x14]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x24
	ldr	r5, =0x7828
	str	r2, [sp, #0xc]
	str	r3, [r2, #4]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lda794	@ 0x1010
	add	r5, r9
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r8, r0
	ldr	r0, [r3, #8]
	bl	_Func_80b8530
	mov	r5, r8
	ldr	r3, [r5, #0xc]
	add	r3, r0
	mov	r1, #0x7f
	mov	r0, #0
	str	r3, [sp, #0x10]
	ldr	r7, =gBuffer
	mov	r10, r0
	mov	r11, r1
	b	.Lda7b0

	.align	2, 0
.Lda794:
	.word	0x1010
	.pool

.Lda7b0:
	bl	Random
	mov	r6, r0
	bl	Random
	mov	r2, r11
	mov	r5, r0
	mov	r0, r6
	and	r5, r2
	bl	sin
	add	r5, #0x7f
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	bl	Random
	mov	r3, r11
	and	r0, r3
	sub	r0, #0x10
	lsl	r0, #16
	asr	r0, #6
	str	r0, [r7, #0x10]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0x14]
	mov	r5, r8
	ldr	r3, [r5, #8]
	str	r3, [r7]
	ldr	r0, [sp, #0x10]
	str	r0, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, #1
	str	r3, [r7, #8]
	add	r10, r1
	mov	r3, #1
	neg	r3, r3
	mov	r2, r10
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r2, #0x40
	bne	.Lda7b0
	ldr	r3, =0x77ac
	mov	r2, #0
	add	r3, r9
	str	r2, [r3]
	ldr	r3, =0x77b0
	mov	r5, #0x90
	add	r3, r9
	lsl	r5, #3
	str	r2, [r3]
	mov	r1, r5
	ldr	r0, =Task_SpinCamera
	bl	StartTask
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	str	r3, [r2]
	mov	r1, r5
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r3, #0
	str	r3, [sp, #0x1c]
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r2, =.Leea41
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	mov	r5, #0x84
	lsr	r3, #1
	neg	r5, r5
	cmp	r3, r5
	bne	.Lda85e
	b	.Ldab06
.Lda85e:
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x7828
	add	r0, #0xc
	add	r1, r9
	str	r0, [sp, #8]
	mov	r11, r1
.Lda86a:
	ldr	r3, [sp, #0x1c]
	sub	r3, #0x11
	cmp	r3, #0x3e
	bhi	.Lda87c
	ldr	r2, =0x77ac
	mov	r3, #0x80
	add	r2, r9
	lsl	r3, #1
	b	.Lda882
.Lda87c:
	ldr	r2, =0x77ac
	mov	r3, #0
	add	r2, r9
.Lda882:
	str	r3, [r2]
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r3, [r5]
	ldr	r6, =.Leea41
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r6, r3]
	ldr	r2, [sp, #0x1c]
	lsr	r3, #1
	add	r3, #0x6c
	cmp	r2, r3
	bne	.Lda8a0
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Lda8a0:
	mov	r2, #0
	mov	r3, #0x64
	mov	r0, #0
	mov	r1, #0
	bl	_Func_80c0cec
	bl	InitMatrixStack
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #8]
	bl	MatrixSetLook
	mov	r3, #0
	mov	r10, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r6, r3]
	mov	r2, r6
	cmp	r3, #0
	bne	.Lda8ca
	b	.Ldaa5c
.Lda8ca:
	ldr	r6, =gBuffer
.Lda8cc:
	mov	r5, r10
	lsr	r3, r5, #31
	add	r3, r10
	asr	r3, #1
	mov	r8, r3
	ldr	r0, [sp, #0x1c]
	mov	r7, r8
	add	r7, #0x30
	cmp	r0, r8
	ble	.Lda978
	mov	r1, #1
	ldr	r3, [r6, #0x18]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lda974
	add	r5, sp, #0x2c
	mov	r0, r6
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #8]
	cmp	r3, #0x9f
	bgt	.Lda904
	mov	r3, #0xa0
	str	r3, [r5, #8]
.Lda904:
	ldr	r2, =0x31f
	cmp	r3, r2
	ble	.Lda90e
	str	r2, [r5, #8]
	mov	r3, r2
.Lda90e:
	mov	r2, r3
	sub	r2, #0xa0
	cmp	r2, #0
	bge	.Lda918
	add	r2, #0x3f
.Lda918:
	asr	r2, #6
	mov	r3, #0xa
	sub	r4, r3, r2
	mov	r7, r8
	ldr	r3, [sp, #0x1c]
	mov	r2, #4
	add	r7, #0x30
	mov	r12, r2
	cmp	r3, r7
	blt	.Lda930
	mov	r0, #0
	mov	r12, r0
.Lda930:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x14]
	lsr	r3, r4, #31
	add	r1, r2, r1
	add	r3, r4, r3
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0xc]
	mov	r5, r12
	sub	r3, r4
	ldr	r4, [r5, r0]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	str	r3, [r6]
	ldr	r2, [r6, #0x10]
	ldr	r3, [r6, #4]
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
	b	.Lda978
.Lda974:
	mov	r7, r8
	add	r7, #0x30
.Lda978:
	ldr	r1, [sp, #0x1c]
	cmp	r1, r7
	ble	.Ldaa46
	mov	r2, #1
	ldr	r3, [r6, #0x18]
	neg	r2, r2
	cmp	r3, r2
	bne	.Ldaa46
	mov	r3, r11
	ldr	r5, [r3]
	mov	r0, r10
	ldr	r1, [r5, #0x14]
	bl	__modsi3
	lsl	r0, #1
	add	r0, #0x24
	ldrsh	r0, [r5, r0]
	bl	_GetBattleActor
	ldr	r1, [r0]
	ldr	r2, [r6]
	ldr	r3, [r1, #8]
	sub	r3, r2
	ldr	r2, [r6, #0xc]
	asr	r3, #9
	add	r0, r2, r3
	str	r0, [r6, #0xc]
	ldr	r2, [r6, #4]
	ldr	r3, [r1, #0xc]
	sub	r3, r2
	ldr	r2, [r6, #0x10]
	asr	r3, #9
	add	r4, r2, r3
	str	r4, [r6, #0x10]
	ldr	r2, [r6, #8]
	ldr	r3, [r1, #0x10]
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	asr	r3, #9
	add	r1, r2, r3
	str	r1, [r6, #0x14]
	mov	r3, r8
	ldr	r2, [sp, #0x1c]
	add	r3, #0x55
	cmp	r2, r3
	bge	.Ldaa04
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Lda9e0
	add	r2, #0x3f
.Lda9e0:
	asr	r3, r2, #6
	str	r3, [r6, #0xc]
	lsl	r3, r4, #4
	sub	r3, r4
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Lda9f0
	add	r2, #0x3f
.Lda9f0:
	asr	r3, r2, #6
	str	r3, [r6, #0x10]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r2, r3, #2
	cmp	r2, #0
	bge	.Ldaa00
	add	r2, #0x3f
.Ldaa00:
	asr	r3, r2, #6
	str	r3, [r6, #0x14]
.Ldaa04:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	bge	.Ldaa46
	mov	r3, #0
	str	r3, [r6, #0x18]
	add	r2, sp, #0x2c
	ldr	r3, [r2]
	str	r3, [r6]
	ldr	r3, [r2, #4]
	mov	r0, #0x88
	str	r3, [r6, #4]
	bl	_PlaySound
	mov	r3, r11
	ldr	r5, [r3]
	mov	r0, r10
	ldr	r1, [r5, #0x14]
	bl	__modsi3
	mov	r3, r0
	lsl	r2, r3, #1
	add	r2, #0x24
	ldrsh	r0, [r5, r2]
	mov	r2, #4
	str	r2, [sp]
	mov	r1, #0xa
	mov	r2, #5
	bl	Func_80d6888
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r9
	str	r3, [r2]
.Ldaa46:
	mov	r5, r11
	ldr	r3, [r5]
	mov	r2, #1
	add	r10, r2
	ldr	r3, [r3, #0x18]
	ldr	r2, =.Leea41
	ldrb	r3, [r2, r3]
	add	r6, #0x1c
	cmp	r10, r3
	beq	.Ldaa5c
	b	.Lda8cc
.Ldaa5c:
	mov	r1, r11
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ldaac2
	ldr	r6, =gBuffer
.Ldaa6e:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xb
	bhi	.Ldaab0
	lsr	r4, r3, #31
	add	r4, r3, r4
	asr	r4, #1
	ldr	r2, =.Leea56
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leea44
	ldrb	r5, [r3, r4]
	ldr	r2, [r6]
	lsr	r3, r5, #1
	sub	r2, r3
	ldr	r3, =.Leea50
	ldrb	r0, [r3, r4]
	ldr	r3, [r6, #4]
	str	r5, [sp]
	add	r3, r0
	ldr	r0, =.Leea4a
	ldrb	r0, [r0, r4]
	ldr	r5, [sp, #0xc]
	str	r0, [sp, #4]
	sub	r3, #0x38
	add	r1, r9
	ldr	r4, [r5, #4]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
	ldr	r2, =.Leea41
.Ldaab0:
	mov	r1, r11
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	add	r6, #0x1c
	cmp	r10, r3
	bne	.Ldaa6e
.Ldaac2:
	ldr	r2, =0x77b0
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Ldaad0
	mov	r3, #1
	str	r3, [r2]
.Ldaad0:
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
	ldr	r2, [sp, #0x1c]
	add	r2, #1
	str	r2, [sp, #0x1c]
	mov	r5, r11
	ldr	r3, [r5]
	ldr	r2, =.Leea41
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	ldr	r0, [sp, #0x1c]
	lsr	r3, #1
	add	r3, #0x84
	cmp	r0, r3
	beq	.Ldab06
	b	.Lda86a
.Ldab06:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r0, =Task_SpinCamera
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
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
.func_end Anim_Fireball

.thumb_func_start Anim_Frost  @ 0x080dab74
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
	sub	sp, #0x60
	str	r1, [sp, #0x30]
	ldr	r3, [r3]
	str	r3, [sp, #0x2c]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x24]
	ldr	r2, =0x7828
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldabdc	@ 0x100
	strh	r3, [r2]
	ldr	r1, [sp, #0x30]
	ldr	r0, =_FILE_b8
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r0, =_FILE_ba
	ldr	r1, [sp, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, sp
	add	r3, #0x34
	mov	r0, #0
	mov	r1, r3
	str	r3, [sp, #0x20]
	bl	BuildDraw2DFuncs
	mov	r1, #0xe1
	ldr	r0, [sp, #0x30]
	mov	r6, #0
	lsl	r1, #7
	mov	r10, r6
	add	r5, r0, r1
	b	.Ldabf4

	.align	2, 0
.Ldabdc:
	.word	0x100
	.pool

.Ldabf4:
	bl	Random
	ldr	r3, =0xffff
	and	r3, r0
	str	r3, [r5]
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x38
	str	r3, [r5, #8]
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	sub	r3, #0x40
	mov	r2, #1
	lsl	r3, #16
	add	r10, r2
	str	r3, [r5, #4]
	mov	r3, r10
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Ldabf4
	ldr	r6, [sp, #0x30]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r6, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r6, r1
	mov	r3, #0x32
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r2, =0x7828
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r3, [r1, #4]
	cmp	r3, #1
	bne	.Ldac54
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
.Ldac54:
	mov	r3, #0
	str	r3, [sp, #0x28]
	ldr	r3, [r1, #0x18]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r0, =.Leea88
	add	r2, #2
	mov	r6, #0x4b
	ldrb	r3, [r0, r2]
	neg	r6, r6
	cmp	r3, r6
	bne	.Ldac6e
	b	.Ldb214
.Ldac6e:
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x30]
	mov	r1, sp
	add	r1, #0x3c
	add	r3, r2, r3
	str	r1, [sp, #8]
	str	r3, [sp, #0x10]
.Ldac7c:
	mov	r6, #0xf0
	lsl	r6, #15
	mov	r1, #0
	str	r6, [sp, #0x18]
	str	r1, [sp, #0x14]
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	ldrb	r3, [r0, r3]
	ldr	r6, [sp, #0x28]
	add	r3, #0xb
	cmp	r6, r3
	bne	.Ldaca2
	mov	r0, #0x84
	bl	_Func_80bd7dc
.Ldaca2:
	ldr	r0, [sp, #0x14]
	ldr	r1, [sp, #8]
	mov	r3, #0x80
	lsl	r3, #18
	str	r0, [r1]
	str	r0, [r1, #4]
	str	r3, [r1, #8]
	bl	InitMatrixStack
	ldr	r0, [sp, #8]
	bl	MatrixTranslatev
	ldr	r2, [sp, #0x28]
	sub	r2, #0x24
	str	r2, [sp, #0xc]
	cmp	r2, #0x1b
	bhi	.Ldacd4
	ldr	r6, [sp, #0x28]
	mov	r3, #3
	and	r3, r6
	cmp	r3, #0
	bne	.Ldacd4
	mov	r0, #0x73
	bl	_PlaySound
.Ldacd4:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x55
	bne	.Ldace0
	mov	r0, #0x88
	bl	_PlaySound
.Ldace0:
	ldr	r2, =0x7828
	ldr	r6, [sp, #0x30]
	ldr	r3, [r6, r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r10, r1
	cmp	r3, #0
	beq	.Ldad22
	mov	r6, #0x24
	mov	r5, #0x28
.Ldacf4:
	ldr	r0, [sp, #0x28]
	cmp	r0, r5
	bne	.Ldad0e
	ldr	r1, [sp, #0x30]
	ldr	r3, [r1, r2]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #9
	mov	r2, #5
	sub	r3, #1
	bl	Func_80d6888
.Ldad0e:
	ldr	r2, =0x7828
	ldr	r0, [sp, #0x30]
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	add	r5, #4
	cmp	r10, r3
	bne	.Ldacf4
.Ldad22:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	ldr	r1, =.Leea88
	add	r2, r3, r2
	add	r3, r2, #2
	ldrb	r3, [r1, r3]
	ldr	r0, [sp, #0x28]
	mov	r6, #0x10
	mov	r9, r1
	str	r6, [sp, #0x1c]
	cmp	r0, r3
	bge	.Ldad42
	ldrb	r2, [r1, r2]
	str	r2, [sp, #0x1c]
.Ldad42:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	ldrb	r3, [r1, r3]
	ldr	r6, [sp, #0x28]
	add	r3, #0x23
	cmp	r6, r3
	blt	.Ldad5a
	b	.Ldae90
.Ldad5a:
	ldr	r1, [sp, #0x1c]
	mov	r0, #0
	mov	r10, r0
	cmp	r1, #0
	bne	.Ldad66
	b	.Ldae90
.Ldad66:
	ldr	r6, [sp, #0x30]
	mov	r0, #0xe1
	mov	r2, #0x54
	mov	r3, #0x48
	lsl	r0, #7
	add	r2, sp
	add	r3, sp
	add	r6, r0
	mov	r11, r2
	mov	r9, r3
	mov	r8, r6
.Ldad7c:
	ldr	r1, [sp, #0x28]
	cmp	r1, r10
	ble	.Ldae7c
	mov	r1, r10
	cmp	r1, #0
	bge	.Ldad8a
	add	r1, #7
.Ldad8a:
	asr	r7, r1, #3
	mov	r2, r10
	lsl	r3, r7, #3
	sub	r7, r2, r3
	lsr	r3, r2, #31
	add	r3, r10
	asr	r3, #1
	mov	r6, r8
	mov	r2, #0x30
	sub	r2, r3
	ldr	r3, [r6, #4]
	lsl	r2, #16
	cmp	r3, r2
	bge	.Ldae10
	ldr	r0, =0xffd00000
	cmp	r3, r0
	ble	.Ldae10
	ldr	r0, [r6]
	bl	sin
	ldr	r3, [r6, #8]
	mul	r3, r0
	mov	r1, r11
	str	r3, [r1]
	ldr	r3, [r6, #4]
	str	r3, [r1, #4]
	ldr	r0, [r6]
	bl	cos
	ldr	r3, [r6, #8]
	mul	r3, r0
	mov	r2, r11
	str	r3, [r2, #8]
	mov	r1, r9
	mov	r0, r11
	bl	Func_80e3944
	mov	r3, r9
	ldr	r2, [r3]
	asr	r2, #17
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #6
	ldrsh	r3, [r3, r0]
	mov	r1, r9
	add	r3, #0x3c
	ldr	r0, =.Leeaa2
	str	r3, [r1, #4]
	lsl	r1, r7, #1
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0x30]
	add	r1, r0, r1
	ldr	r0, =.Leea91
	ldrb	r5, [r0, r7]
	lsr	r0, r5, #1
	sub	r2, r0
	ldr	r0, =.Leea99
	ldrb	r4, [r0, r7]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #0x20]
	str	r4, [sp, #4]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Ldae10:
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =.Leea88
	add	r3, #2
	ldrb	r3, [r2, r3]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bge	.Ldae54
	mov	r3, r10
	add	r3, #0x10
	cmp	r0, r3
	ble	.Ldae7c
	ldr	r3, [r6, #8]
	cmp	r3, #4
	ble	.Ldae38
	sub	r3, #2
	str	r3, [r6, #8]
.Ldae38:
	ldr	r3, [r6, #4]
	ldr	r1, =0x2fffff
	cmp	r3, r1
	bgt	.Ldae48
	mov	r2, #0xa0
	lsl	r2, #11
	add	r3, r2
	str	r3, [r6, #4]
.Ldae48:
	ldr	r3, [r6]
	mov	r0, #0x80
	lsl	r0, #2
	add	r3, r0
	str	r3, [r6]
	b	.Ldae7c
.Ldae54:
	ldr	r3, [r6, #8]
	add	r3, #8
	str	r3, [r6, #8]
	mov	r1, #5
	mov	r0, r10
	bl	__modsi3
	ldr	r3, [r6, #4]
	add	r0, #2
	lsl	r0, #16
	sub	r3, r0
	str	r3, [r6, #4]
	ldr	r1, [sp, #0x18]
	cmp	r1, r3
	ble	.Ldae74
	str	r3, [sp, #0x18]
.Ldae74:
	ldr	r2, [sp, #0x14]
	cmp	r2, r3
	bge	.Ldae7c
	str	r3, [sp, #0x14]
.Ldae7c:
	mov	r6, #1
	ldr	r0, [sp, #0x1c]
	mov	r3, #0x1c
	add	r10, r6
	add	r8, r3
	cmp	r10, r0
	beq	.Ldae8c
	b	.Ldad7c
.Ldae8c:
	ldr	r1, =.Leea88
	mov	r9, r1
.Ldae90:
	ldr	r2, [sp, #0x18]
	ldr	r6, [sp, #0x14]
	mov	r3, #0x80
	lsl	r3, #15
	add	r2, r3
	add	r6, r3
	str	r6, [sp, #0x14]
	str	r2, [sp, #0x18]
	ldr	r0, [sp, #0x10]
	ldr	r3, [r0]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r2, r3, r2
	add	r3, r2, #2
	mov	r1, r9
	ldrb	r3, [r1, r3]
	ldr	r6, [sp, #0x28]
	cmp	r6, r3
	bge	.Ldafa0
	add	r3, r2, #1
	ldrb	r3, [r1, r3]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ldafa0
	ldr	r5, =.Leea62
	ldr	r7, =.Leeab2
	mov	r8, r5
	mov	r6, #0
.Ldaeca:
	ldr	r0, [sp, #0xc]
	mov	r1, #3
	bl	__divsi3
	cmp	r10, r0
	bge	.Ldaf84
	mov	r1, #3
	mov	r0, r10
	bl	__modsi3
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	mov	r2, r9
	ldrb	r3, [r2, r3]
	mov	r4, r0
	ldr	r0, [sp, #0x28]
	sub	r3, #7
	cmp	r0, r3
	blt	.Ldaf60
	ldr	r0, =.Leeab8
	lsl	r3, r4, #1
	ldrh	r1, [r7, r3]
	ldrb	r4, [r0, r4]
	ldr	r2, [sp, #0x30]
	mov	r3, r8
	mov	r0, #0x20
	add	r1, r2, r1
	ldrb	r2, [r6, r3]
	ldrb	r3, [r5, #1]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x20]
	sub	r3, r4
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r1, =.Leea88
	mov	r9, r1
	b	.Ldaf84

	.pool_aligned

.Ldaf60:
	ldr	r0, =.Leeab8
	lsl	r3, r4, #1
	ldrh	r1, [r7, r3]
	ldrb	r4, [r0, r4]
	ldrb	r3, [r5, #1]
	ldr	r2, [sp, #0x30]
	mov	r0, #0x20
	sub	r3, r4
	add	r1, r2, r1
	ldrb	r2, [r5]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x2c]
	ldr	r4, [sp, #0x34]
	bl	_call_via_r4
	ldr	r3, =.Leea88
	mov	r9, r3
.Ldaf84:
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #1
	mov	r2, r9
	mov	r0, #1
	ldrb	r3, [r2, r3]
	add	r10, r0
	add	r5, #2
	add	r6, #2
	cmp	r10, r3
	bne	.Ldaeca
.Ldafa0:
	ldr	r6, [sp, #0x10]
	ldr	r3, [r6]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	mov	r0, r9
	ldrb	r3, [r0, r3]
	ldr	r1, [sp, #0x28]
	cmp	r1, r3
	bne	.Ldb00c
	mov	r2, #0
	ldr	r5, =gBuffer
	mov	r10, r2
	mov	r6, #0xf
.Ldafbe:
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #16
	str	r3, [r5]
	bl	Random
	and	r0, r6
	add	r0, #0x50
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	sub	r3, #0x20
	lsl	r3, #12
	str	r3, [r5, #8]
	bl	Random
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x10
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #1
	and	r0, r6
	add	r0, #0x10
	add	r10, r3
	str	r0, [r5, #0x18]
	mov	r0, r10
	add	r5, #0x1c
	cmp	r0, #0x20
	bne	.Ldafbe
	ldr	r1, =.Leea88
	mov	r9, r1
.Ldb00c:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	mov	r6, r9
	ldrb	r3, [r6, r3]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	blt	.Ldb09e
	mov	r1, #0
	ldr	r5, =gBuffer
	mov	r10, r1
.Ldb028:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ldb07c
	mov	r3, r10
	cmp	r3, #0
	bge	.Ldb036
	add	r3, #7
.Ldb036:
	asr	r4, r3, #3
	lsl	r3, r4, #3
	mov	r2, r10
	sub	r4, r2, r3
	ldr	r2, =.Leeacc
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x30]
	add	r1, r3, r1
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	ldr	r0, =.Leeabb
	ldrb	r0, [r0, r4]
	mov	r6, #2
	ldrsh	r2, [r5, r6]
	str	r0, [sp]
	ldr	r0, =.Leeac3
	ldrb	r0, [r0, r4]
	ldr	r6, [sp, #0x20]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x2c]
	ldr	r4, [r6, #4]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Ldb07c:
	ldr	r3, [r5, #4]
	ldr	r0, [sp, #0x18]
	cmp	r0, r3
	ble	.Ldb086
	str	r3, [sp, #0x18]
.Ldb086:
	ldr	r1, [sp, #0x14]
	cmp	r1, r3
	bge	.Ldb08e
	str	r3, [sp, #0x14]
.Ldb08e:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r5, #0x1c
	cmp	r3, #0x18
	bne	.Ldb028
	ldr	r6, =.Leea88
	mov	r9, r6
.Ldb09e:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x14]
	asr	r0, #16
	asr	r1, #16
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	cmp	r1, r0
	bgt	.Ldb0b2
	add	r0, #1
	str	r0, [sp, #0x14]
.Ldb0b2:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	mov	r6, r9
	ldrb	r3, [r6, r3]
	ldr	r0, [sp, #0x28]
	cmp	r0, r3
	bne	.Ldb120
	ldr	r2, [sp, #0x30]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r10, r1
	add	r5, r2, r3
.Ldb0d4:
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r6, [sp, #0x14]
	ldr	r0, [sp, #0x18]
	cmp	r6, r0
	bne	.Ldb0ee
	lsl	r3, r0, #16
	str	r3, [r5, #0x10]
	b	.Ldb104
.Ldb0ee:
	bl	Random
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x18]
	sub	r1, r2, r3
	bl	__umodsi3
	ldr	r6, [sp, #0x18]
	add	r0, r6
	lsl	r0, #16
	str	r0, [r5, #0x10]
.Ldb104:
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r10, r0
	add	r3, #0x14
	mov	r1, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x20
	bne	.Ldb0d4
	ldr	r2, =.Leea88
	mov	r9, r2
.Ldb120:
	ldr	r6, [sp, #0x10]
	ldr	r3, [r6]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	mov	r0, r9
	ldrb	r3, [r0, r3]
	ldr	r1, [sp, #0x28]
	cmp	r1, r3
	blt	.Ldb1e4
	sub	r3, r1, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r8, r3
	mov	r6, #0xe1
	ldr	r3, [sp, #0x30]
	mov	r2, #0
	lsl	r6, #7
	ldr	r7, =.Leea88
	mov	r10, r2
	add	r5, r3, r6
.Ldb14e:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x11
	bhi	.Ldb18e
	mov	r0, #0x11
	sub	r0, r3
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	ldr	r2, =Data_ede84
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x24]
	add	r1, r2, r1
	mov	r3, #0xe
	ldrsh	r2, [r5, r3]
	ldr	r3, =Data_ede96
	ldrb	r4, [r3, r0]
	mov	r6, #0x12
	ldrsh	r3, [r5, r6]
	lsr	r0, r4, #1
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r6, [sp, #0x20]
	sub	r2, r0
	sub	r3, r0
	mov	r0, r8
	sub	r3, r0
	ldr	r4, [r6, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
.Ldb18e:
	mov	r0, #1
	sub	r3, #1
	neg	r0, r0
	str	r3, [r5, #0x18]
	cmp	r3, r0
	beq	.Ldb19e
	cmp	r3, #0x11
	bne	.Ldb1d8
.Ldb19e:
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	add	r3, #2
	ldrb	r3, [r7, r3]
	ldr	r2, [sp, #0x28]
	add	r3, #0x23
	cmp	r2, r3
	bge	.Ldb1d8
	mov	r3, #0x11
	str	r3, [r5, #0x18]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	bl	Random
	ldr	r6, [sp, #0x18]
	ldr	r3, [sp, #0x14]
	sub	r1, r3, r6
	bl	__umodsi3
	add	r0, r6
	lsl	r0, #16
	str	r0, [r5, #0x10]
.Ldb1d8:
	mov	r0, #1
	add	r10, r0
	mov	r1, r10
	add	r5, #0x1c
	cmp	r1, #0x20
	bne	.Ldb14e
.Ldb1e4:
	ldr	r3, [sp, #0x30]
	ldr	r6, =0x7824
	add	r2, r3, r6
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x28]
	add	r0, #1
	str	r0, [sp, #0x28]
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r0, =.Leea88
	add	r3, #2
	ldrb	r3, [r0, r3]
	ldr	r2, [sp, #0x28]
	add	r3, #0x4b
	cmp	r2, r3
	beq	.Ldb214
	b	.Ldac7c
.Ldb214:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x60
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Frost

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
	bl	Func_80d6888
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

.Leea08:
	.incrom 0xeea08, 0xeea20
.Leea20:
	.incrom 0xeea20, 0xeea2c
.Leea2c:
	.incrom 0xeea2c, 0xeea38
.Leea38:
	.incrom 0xeea38, 0xeea41
.Leea41:
	.incrom 0xeea41, 0xeea44
.Leea44:
	.incrom 0xeea44, 0xeea4a
.Leea4a:
	.incrom 0xeea4a, 0xeea50
.Leea50:
	.incrom 0xeea50, 0xeea56
.Leea56:
	.incrom 0xeea56, 0xeea62
.Leea62:
	.incrom 0xeea62, 0xeea88
.Leea88:
	.incrom 0xeea88, 0xeea91
.Leea91:
	.incrom 0xeea91, 0xeea99
.Leea99:
	.incrom 0xeea99, 0xeeaa2
.Leeaa2:
	.incrom 0xeeaa2, 0xeeab2
.Leeab2:
	.incrom 0xeeab2, 0xeeab8
.Leeab8:
	.incrom 0xeeab8, 0xeeabb
.Leeabb:
	.incrom 0xeeabb, 0xeeac3
.Leeac3:
	.incrom 0xeeac3, 0xeeacc
.Leeacc:
	.incrom 0xeeacc, 0xeeadc
.Leeadc:
	.incrom 0xeeadc, 0xeeae2
