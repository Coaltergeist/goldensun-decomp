	.include "macros.inc"
	.include "gba.inc"

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
	bl	SetBattleActorState
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
	bl	SetBattleActorState
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

	.section .rodata
.Leea38:
	.incrom 0xeea38, 0xeea41
