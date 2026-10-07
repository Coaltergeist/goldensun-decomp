	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unused_Haunt  @ 0x080dc454
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
	ldr	r3, [r3]
	sub	sp, #0x58
	str	r3, [sp, #0x30]
	mov	r3, r6
	sub	r3, #0x6c
	ldr	r3, [r3]
	mov	r0, #1
	mov	r9, r1
	str	r3, [sp, #0x1c]
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldc4bc	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldc4c0	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r0, =_FILE_a9
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
	mov	r1, r9
	bl	DecompressLZ
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	b	.Ldc4d4

	.align	2, 0
.Ldc4bc:
	.word	0x100
.Ldc4c0:
	.word	0x1010
	.pool

.Ldc4d4:
	mov	r1, #0xef
	lsl	r1, #7
	ldr	r2, =0x7784
	add	r1, r9
	mov	r3, #1
	str	r3, [r1]
	add	r2, r9
	mov	r3, #0
	str	r3, [r2]
	ldr	r6, [r6, #0x1c]
	str	r5, [r1]
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	str	r6, [sp, #0x24]
	bl	StartTask
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [sp, #0x18]
	cmp	r3, #0
	beq	.Ldc510
	mov	r3, #0x70
	neg	r3, r3
	str	r3, [sp, #0x18]
.Ldc510:
	ldr	r5, [sp, #0x18]
	ldr	r2, =REG_BG2X
	lsl	r3, r5, #8
	str	r3, [r2]
	mov	r4, #0
	mov	r3, #0xe1
	lsl	r3, #7
	mov	r2, #0
	mov	r1, #4
	add	r3, r9
.Ldc524:
	add	r4, #1
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #0xc]
	str	r1, [r3, #8]
	add	r3, #0x1c
	cmp	r4, #0x40
	bne	.Ldc524
	mov	r1, #0
	str	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	sub	r1, #0x40
	lsl	r3, #4
	cmp	r3, r1
	bne	.Ldc54a
	b	.Ldc680
.Ldc54a:
	mov	r3, #0
	str	r3, [sp, #0x20]
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ldc55a
	b	.Ldc65a
.Ldc55a:
	ldr	r3, [sp, #0x2c]
	mov	r1, #0x34
	mov	r5, #0x24
	add	r1, sp
	str	r3, [sp, #0x10]
	str	r5, [sp, #0xc]
	mov	r11, r1
.Ldc568:
	mov	r1, r9
	add	r5, r1, r2
	ldr	r2, [sp, #0x20]
	lsl	r2, #1
	ldr	r3, [r5]
	ldr	r1, [sp, #0xc]
	str	r2, [sp, #0x14]
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r5, [sp, #0xc]
	ldr	r6, [r0]
	ldrsh	r0, [r3, r5]
	mov	r1, r11
	bl	GetBattleActorPos2
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r5, [sp, #0x18]
	add	r3, r5
	str	r3, [r2]
	ldr	r1, [sp, #0x10]
	cmp	r1, #0x3f
	bhi	.Ldc63c
	bl	InitMatrixStack
	ldr	r0, [sp, #0x1c]
	mov	r1, r0
	add	r1, #0xc
	bl	MatrixSetLook
	ldr	r3, [r6, #8]
	add	r0, sp, #0x4c
	str	r3, [r0]
	ldr	r3, [r6, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	add	r5, sp, #0x40
	str	r3, [r0, #8]
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	ldr	r2, [sp, #0x18]
	add	r3, r2
	str	r3, [r5]
	mov	r4, #0
	mov	r10, r11
	mov	r7, r9
	mov	r8, r4
.Ldc5ce:
	ldr	r5, [sp, #0x14]
	ldr	r1, [sp, #0x20]
	add	r3, r5, r1
	add	r3, r4
	lsl	r5, r3, #3
	sub	r5, r3
	lsl	r5, #2
	mov	r2, #0xe1
	lsl	r2, #7
	add	r5, r9
	add	r5, r2
	ldr	r0, [r5, #0xc]
	add	r0, r8
	str	r4, [sp, #8]
	bl	sin
	mov	r3, r10
	ldr	r6, [r3]
	lsl	r0, #3
	asr	r0, #16
	add	r6, r0
	ldr	r0, [r5, #0xc]
	add	r0, r8
	bl	cos
	mov	r1, r10
	ldr	r3, [r1, #4]
	ldr	r2, [r5, #0xc]
	mov	r1, #0x80
	lsl	r1, #2
	lsl	r0, #3
	add	r2, r1
	asr	r0, #16
	str	r2, [r5, #0xc]
	add	r3, r0
	mov	r2, #0x18
	sub	r6, #0xc
	mov	r1, r7
	str	r2, [sp]
	str	r2, [sp, #4]
	sub	r3, #0x1c
	mov	r2, r6
	ldr	r0, [sp, #0x30]
	ldr	r5, [sp, #0x24]
	bl	_call_via_r5
	ldr	r4, [sp, #8]
	mov	r1, #0x90
	ldr	r2, =0x5555
	lsl	r1, #2
	add	r4, #1
	add	r7, r1
	add	r8, r2
	cmp	r4, #3
	bne	.Ldc5ce
.Ldc63c:
	ldr	r3, [sp, #0x10]
	ldr	r5, [sp, #0xc]
	ldr	r1, [sp, #0x20]
	sub	r3, #0x10
	add	r5, #2
	add	r1, #1
	str	r5, [sp, #0xc]
	str	r3, [sp, #0x10]
	str	r1, [sp, #0x20]
	ldr	r2, =0x7828
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r1, r3
	bne	.Ldc568
.Ldc65a:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x2c]
	add	r1, #1
	str	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	mov	r5, r9
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	lsl	r3, #4
	add	r3, #0x40
	cmp	r1, r3
	beq	.Ldc680
	b	.Ldc54a
.Ldc680:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Unused_Haunt
