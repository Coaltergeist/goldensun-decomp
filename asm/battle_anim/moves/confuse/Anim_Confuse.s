	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Confuse  @ 0x080ce85c
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
	ldr	r2, =0x7828
	mov	r10, r1
	ldr	r3, [r3]
	sub	sp, #0x40
	add	r2, r10
	str	r3, [sp, #0x1c]
	str	r0, [r2]
	mov	r0, #0
	mov	r8, r2
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lce8c8	@ 0x100
	ldr	r0, =_FILE_af
	strh	r3, [r2]
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r1, r5
	mov	r2, #0x80
	add	r5, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r0, r5
	mov	r1, r10
	bl	DecompressLZ
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r2, #7
	str	r3, [sp, #0x20]
	mov	r1, #7
	b	.Lce8e0

	.align	2, 0
.Lce8c8:
	.word	0x100
	.pool

.Lce8e0:
	mov	r3, #0xf
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x20]
	mov	r1, sp
	mov	r6, #0x90
	add	r1, #0x20
	lsl	r6, #3
	str	r1, [sp, #0x10]
	ldr	r0, =Func_80dbb9c
	str	r3, [r1, #4]
	mov	r1, r6
	bl	StartTask
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r10
	str	r5, [r3]
	add	r2, r10
	mov	r3, #0x32
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	mov	r1, r6
	bl	StartTask
	mov	r2, r8
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lce930
	ldr	r3, =0xffff9800
	ldr	r2, =REG_BG2X
	str	r3, [r2]
	mov	r3, #0x70
	neg	r3, r3
	str	r3, [sp, #0x14]
	b	.Lce934
.Lce930:
	mov	r1, #0
	str	r1, [sp, #0x14]
.Lce934:
	mov	r2, #0
	mov	r8, r2
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x30
	lsl	r3, #4
	neg	r1, r1
	cmp	r3, r1
	bne	.Lce94c
	b	.Lceadc
.Lce94c:
	ldr	r3, =iwram_3001e80
	ldr	r3, [r3]
	mov	r1, r10
	mov	r9, r3
	ldr	r3, [r1, r2]
	mov	r6, #0xd3
	ldr	r3, [r3, #4]
	lsl	r6, #7
	add	r6, r10
	cmp	r3, #0
	bne	.Lce98c
	mov	r3, #0x80
	mov	r2, r8
	mov	r7, #0
	lsl	r3, #12
	lsl	r5, r2, #10
.Lce96c:
	mov	r0, r5
	str	r3, [sp, #8]
	bl	sin
	ldr	r3, [sp, #8]
	lsl	r0, #3
	sub	r0, r3, r0
	mov	r1, #0x80
	asr	r0, #10
	lsl	r1, #3
	add	r7, #1
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r7, #0xa0
	bne	.Lce96c
	b	.Lce9ae
.Lce98c:
	mov	r2, r8
	mov	r7, #0
	lsl	r5, r2, #10
.Lce992:
	mov	r0, r5
	bl	sin
	ldr	r3, =0xffff9000
	lsl	r0, #3
	asr	r0, #10
	mov	r1, #0x80
	add	r0, r3
	lsl	r1, #3
	add	r7, #1
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r7, #0xa0
	bne	.Lce992
.Lce9ae:
	bl	InitMatrixStack
	mov	r1, r9
	add	r1, #0xc
	mov	r0, r9
	bl	MatrixSetLook
	mov	r2, #0
	str	r2, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lceab8
	mov	r3, #0x34
	mov	r1, #0x24
	add	r3, sp
	str	r1, [sp, #0xc]
	mov	r9, r3
.Lce9d6:
	mov	r3, r10
	add	r5, r3, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0xc]
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r3, [sp, #0x18]
	lsl	r2, r3, #4
	ldr	r6, [r0]
	cmp	r8, r2
	ble	.Lcea9e
	mov	r3, r2
	add	r3, #0x3c
	cmp	r8, r3
	bge	.Lcea9e
	sub	r3, #0x1c
	cmp	r8, r3
	bne	.Lcea10
	ldr	r3, [r5]
	ldr	r1, [sp, #0xc]
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	bl	SetBattleActorState
.Lcea10:
	ldr	r3, [r6, #8]
	mov	r1, r9
	str	r3, [r1]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r1, #4]
	ldr	r3, [r6, #0x10]
	add	r5, sp, #0x28
	str	r3, [r1, #8]
	mov	r0, r9
	mov	r1, r5
	bl	Func_80e3944
	mov	r2, r8
	mov	r7, #0
	mov	r11, r5
	lsl	r6, r2, #9
.Lcea32:
	mov	r0, r6
	bl	sin
	mov	r1, r11
	ldr	r3, [r1]
	lsl	r0, #4
	asr	r0, #16
	ldr	r2, [sp, #0x14]
	add	r3, r0
	mov	r0, r6
	add	r5, r3, r2
	bl	cos
	mov	r1, r11
	ldr	r3, [r1, #4]
	lsl	r0, #4
	asr	r0, #16
	add	r0, r3, r0
	mov	r3, r8
	cmp	r3, #0
	bge	.Lcea5e
	add	r3, #0xf
.Lcea5e:
	asr	r2, r3, #4
	mov	r3, #1
	ldr	r1, [sp, #0x10]
	and	r3, r2
	lsl	r3, #2
	add	r4, r3, r1
	mov	r1, r8
	cmp	r1, #0
	bge	.Lcea72
	add	r1, #3
.Lcea72:
	lsl	r3, r2, #2
	asr	r1, #2
	sub	r1, r3
	mov	r3, r0
	mov	r0, #0x20
	str	r0, [sp]
	str	r0, [sp, #4]
	lsl	r1, #10
	mov	r2, r5
	sub	r2, #0x10
	add	r1, r10
	sub	r3, #0x10
	ldr	r4, [r4]
	ldr	r0, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #7
	add	r7, #1
	add	r6, r2
	cmp	r7, #4
	bne	.Lcea32
.Lcea9e:
	ldr	r3, [sp, #0xc]
	ldr	r1, [sp, #0x18]
	add	r3, #2
	add	r1, #1
	str	r1, [sp, #0x18]
	str	r3, [sp, #0xc]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r1, [sp, #0x18]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Lce9d6
.Lceab8:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r8, r2
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	lsl	r3, #4
	add	r3, #0x30
	cmp	r8, r3
	beq	.Lceadc
	b	.Lce94c
.Lceadc:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r0, =Func_80dbb9c
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Confuse
