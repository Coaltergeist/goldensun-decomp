	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_Growth  @ 0x080dd2c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x2c]
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	ldr	r3, =0x7828
	mov	r11, r1
	add	r3, r11
	str	r0, [r3]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldd30c	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldd310	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r2, [sp, #0x2c]
	cmp	r2, #1
	bne	.Ldd324
	ldr	r0, =_FILE_83
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	b	.Ldd330

	.align	2, 0
.Ldd30c:
	.word	0x100
.Ldd310:
	.word	0
	.pool

.Ldd324:
	ldr	r0, =_FILE_84
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
.Ldd330:
	ldr	r7, =0x7828
	add	r7, r11
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ldd342
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
.Ldd342:
	mov	r6, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x30]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r5, sp
	add	r5, #0x30
	str	r5, [sp, #0x1c]
	str	r3, [r5, #4]
	ldr	r3, [r7]
	ldr	r2, =.Leeb5e
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	lsl	r3, #2
	add	r3, #0x38
	str	r3, [sp, #0x20]
	mov	r6, #0
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r9, r6
	neg	r1, r1
	lsl	r2, #3
.Ldd392:
	mov	r0, #1
	add	r9, r0
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r9, r2
	bne	.Ldd392
	mov	r6, #0xe1
	mov	r1, #0
	lsl	r6, #7
	ldr	r7, =.Leeb4b
	mov	r9, r1
	add	r6, r11
.Ldd3aa:
	bl	Random
	ldr	r3, =.Leeb61
	mov	r5, r9
	ldrb	r2, [r3, r5]
	mov	r3, #7
	and	r3, r0
	add	r2, r3
	lsr	r3, r5, #31
	add	r3, r9
	asr	r3, #1
	add	r3, #0x6c
	sub	r2, #4
	str	r3, [r6, #4]
	str	r2, [r6]
	bl	Random
	mov	r5, #0x3f
	and	r5, r0
	add	r5, #0x37
	str	r5, [r6, #0x10]
	mov	r0, r9
	mov	r1, #3
	bl	__modsi3
	ldrb	r3, [r7, r0]
	cmp	r3, r5
	bge	.Ldd3e4
	str	r3, [r6, #0x10]
.Ldd3e4:
	mov	r0, r9
	mov	r1, #1
	lsl	r3, r0, #2
	add	r9, r1
	add	r3, #8
	mov	r2, r9
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r2, #0x10
	bne	.Ldd3aa
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	ldr	r5, [sp, #0x20]
	mov	r3, #0
	str	r3, [sp, #0x24]
	cmp	r5, #0
	bne	.Ldd420
	b	.Ldd714
.Ldd420:
	ldr	r6, [sp, #0x20]
	ldr	r0, [sp, #0x20]
	sub	r5, #0x40
	sub	r6, #0x14
	sub	r0, #4
	str	r5, [sp, #0x18]
	str	r6, [sp, #0x14]
	str	r0, [sp, #0x10]
.Ldd430:
	ldr	r1, [sp, #0x24]
	ldr	r2, [sp, #0x18]
	cmp	r1, r2
	bne	.Ldd43e
	mov	r0, #0x84
	bl	_Func_80bd7dc
.Ldd43e:
	ldr	r3, [sp, #0x24]
	ldr	r5, [sp, #0x14]
	cmp	r3, r5
	blt	.Ldd464
	ldr	r6, [sp, #0x10]
	cmp	r3, r6
	blt	.Ldd44e
	b	.Ldd642
.Ldd44e:
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Ldd488	@ 0x3f44
	strh	r3, [r2]
	ldr	r2, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	sub	r3, r0, r2
	ldr	r2, .Ldd48c	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	sub	r3, #5
	orr	r3, r2
	strh	r3, [r1]
.Ldd464:
	ldr	r3, [sp, #0x24]
	ldr	r5, [sp, #0x10]
	cmp	r3, r5
	blt	.Ldd46e
	b	.Ldd642
.Ldd46e:
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	ldr	r0, =.Leeb5e
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r0, r3]
	mov	r6, #0
	mov	r9, r6
	cmp	r3, #0
	bne	.Ldd484
	b	.Ldd642
.Ldd484:
	b	.Ldd4c4

	.align	2, 0
.Ldd488:
	.word	0x3f44
.Ldd48c:
	.word	0x1000
	.pool

.Ldd4c4:
	mov	r2, #0xe1
	mov	r1, #8
	lsl	r2, #7
	add	r2, r11
	str	r1, [sp, #0xc]
	mov	r10, r2
.Ldd4d0:
	mov	r5, r9
	lsl	r3, r5, #2
	ldr	r6, [sp, #0x24]
	add	r3, #9
	cmp	r6, r3
	bne	.Ldd4e4
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r11
	str	r3, [r2]
.Ldd4e4:
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0xc]
	cmp	r0, r1
	ble	.Ldd57c
	mov	r0, r9
	mov	r1, #3
	bl	__modsi3
	ldr	r5, [sp, #0xc]
	ldr	r2, [sp, #0x24]
	mov	r6, r10
	sub	r3, r2, r5
	lsl	r5, r3, #3
	ldr	r3, [r6, #0x10]
	mov	r4, r0
	cmp	r5, r3
	ble	.Ldd508
	mov	r5, r3
.Ldd508:
	ldr	r0, [sp, #0x2c]
	cmp	r0, #0
	bne	.Ldd53e
	ldr	r2, =.Leeb4e
	lsl	r3, r4, #1
	mov	r1, r9
	mov	r0, #1
	and	r0, r1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leeb48
	mov	r6, r10
	ldrb	r4, [r3, r4]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	str	r5, [sp, #4]
	sub	r3, r5
	str	r4, [sp]
	ldr	r5, [sp, #0x1c]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	add	r1, r11
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	b	.Ldd57c
.Ldd53e:
	ldr	r2, =.Leeb71
	mov	r3, #7
	mov	r6, r9
	and	r3, r6
	ldrsb	r3, [r2, r3]
	cmp	r5, r3
	ble	.Ldd54e
	mov	r5, r3
.Ldd54e:
	ldr	r2, =.Leeb58
	lsl	r3, r4, #1
	mov	r1, r9
	mov	r0, #1
	and	r0, r1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Leeb54
	mov	r6, r10
	ldrb	r4, [r3, r4]
	ldr	r2, [r6]
	lsr	r3, r4, #1
	sub	r2, r3
	ldr	r3, [r6, #4]
	str	r5, [sp, #4]
	sub	r3, r5
	str	r4, [sp]
	ldr	r5, [sp, #0x1c]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	add	r1, r11
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
.Ldd57c:
	ldr	r2, =0x7828
	add	r2, r11
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldd5d4
	ldr	r7, [sp, #0xc]
	mov	r0, #1
	mov	r1, r9
	and	r1, r0
	add	r7, #4
	mov	r8, r1
	mov	r5, r2
	mov	r4, #0x24
.Ldd59a:
	ldr	r2, [sp, #0x24]
	cmp	r2, r7
	bne	.Ldd5c6
	mov	r3, r8
	cmp	r3, #0
	bne	.Ldd5b0
	mov	r0, #0x85
	str	r4, [sp, #8]
	bl	_PlaySound
	ldr	r4, [sp, #8]
.Ldd5b0:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r6
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r4, [sp, #8]
.Ldd5c6:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r4, #2
	cmp	r6, r3
	bne	.Ldd59a
	b	.Ldd5d8
.Ldd5d4:
	ldr	r7, [sp, #0xc]
	add	r7, #4
.Ldd5d8:
	ldr	r2, [sp, #0x24]
	cmp	r2, r7
	beq	.Ldd5e6
	ldr	r3, [sp, #0xc]
	add	r3, #8
	cmp	r2, r3
	bne	.Ldd622
.Ldd5e6:
	ldr	r5, =gBuffer
	mov	r6, #0
	mov	r7, #0xf
	b	.Ldd5f2
.Ldd5ee:
	add	r5, #0x1c
	add	r6, #1
.Ldd5f2:
	mov	r3, #0x80
	lsl	r3, #2
	cmp	r6, r3
	beq	.Ldd622
	mov	r0, #1
	ldr	r3, [r5, #0x18]
	neg	r0, r0
	cmp	r3, r0
	bne	.Ldd5ee
	bl	Random
	mov	r1, r10
	ldr	r3, [r1]
	and	r0, r7
	add	r0, r3
	sub	r0, #8
	str	r0, [r5]
	bl	Random
	and	r0, r7
	add	r0, #0x50
	mov	r3, #0
	str	r0, [r5, #4]
	str	r3, [r5, #0x18]
.Ldd622:
	ldr	r2, [sp, #0xc]
	mov	r3, #0x1c
	add	r2, #4
	add	r10, r3
	ldr	r3, =0x7828
	str	r2, [sp, #0xc]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r6, =.Leeb5e
	ldr	r3, [r3, #0x18]
	mov	r5, #1
	ldrb	r3, [r6, r3]
	add	r9, r5
	cmp	r9, r3
	beq	.Ldd642
	b	.Ldd4d0
.Ldd642:
	ldr	r1, =gBuffer
	mov	r0, #0
	mov	r9, r0
	mov	r8, r1
.Ldd64a:
	mov	r3, r8
	ldr	r2, [r3, #0x18]
	cmp	r2, #0
	blt	.Ldd6dc
	lsr	r3, r2, #31
	ldr	r5, =0x1e59
	ldr	r6, [sp, #0x2c]
	add	r3, r2, r3
	asr	r7, r3, #1
	mov	r10, r5
	cmp	r6, #0
	beq	.Ldd666
	ldr	r0, =0xaff
	mov	r10, r0
.Ldd666:
	ldr	r3, =.Leeb79
	ldr	r2, =.Leeb88
	ldrsb	r5, [r3, r7]
	ldr	r3, =.Leeb80
	lsl	r6, r7, #1
	mov	r0, r8
	ldrh	r1, [r2, r6]
	ldr	r2, [r0]
	ldrb	r0, [r3, r7]
	lsl	r0, #24
	asr	r4, r0, #24
	mov	r3, r8
	lsr	r0, #31
	ldr	r3, [r3, #4]
	add	r0, r4, r0
	asr	r0, #1
	add	r1, r10
	sub	r2, r5
	sub	r3, r0
	str	r5, [sp]
	str	r4, [sp, #4]
	add	r1, r11
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	ldr	r3, =.Leeb80
	ldrb	r0, [r3, r7]
	ldr	r5, =.Leeb88
	lsl	r0, #24
	ldrh	r1, [r5, r6]
	asr	r4, r0, #24
	mov	r6, r8
	lsr	r0, #31
	ldr	r3, [r6, #4]
	add	r0, r4, r0
	ldr	r5, =.Leeb79
	asr	r0, #1
	sub	r3, r0
	ldrsb	r0, [r5, r7]
	ldr	r2, [r6]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r6, [sp, #0x1c]
	add	r1, r10
	add	r1, r11
	ldr	r4, [r6, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	add	r3, #1
	str	r3, [r0, #0x18]
	cmp	r3, #0xe
	bne	.Ldd6dc
	mov	r3, #1
	neg	r3, r3
	str	r3, [r0, #0x18]
.Ldd6dc:
	mov	r2, #1
	mov	r3, #0x80
	mov	r1, #0x1c
	add	r9, r2
	lsl	r3, #2
	add	r8, r1
	cmp	r9, r3
	bne	.Ldd64a
	mov	r0, #4
	mov	r1, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, [sp, #0x24]
	ldr	r6, [sp, #0x20]
	add	r5, #1
	str	r5, [sp, #0x24]
	cmp	r5, r6
	beq	.Ldd714
	b	.Ldd430
.Ldd714:
	ldr	r0, =Task_BlitAnim
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
.func_end BaseAnim_Growth

	.section .rodata
.Leeb48:
	.incrom 0xeeb48, 0xeeb4b
.Leeb4b:
	.incrom 0xeeb4b, 0xeeb4e
.Leeb4e:
	.incrom 0xeeb4e, 0xeeb54
.Leeb54:
	.incrom 0xeeb54, 0xeeb58
.Leeb58:
	.incrom 0xeeb58, 0xeeb5e
.Leeb5e:
	.incrom 0xeeb5e, 0xeeb61
.Leeb61:
	.incrom 0xeeb61, 0xeeb71
.Leeb71:
	.incrom 0xeeb71, 0xeeb79
.Leeb79:
	.incrom 0xeeb79, 0xeeb80
.Leeb80:
	.incrom 0xeeb80, 0xeeb88
.Leeb88:
	.incrom 0xeeb88, 0xeeb96
