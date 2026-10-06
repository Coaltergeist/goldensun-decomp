	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Ice  @ 0x080c91dc
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
	sub	sp, #0x24
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r10, r1
	ldr	r2, [r2, #8]
	add	r3, r10
	str	r2, [sp, #0x10]
	str	r0, [r3]
	ldr	r0, =0x2001
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lc9244	@ 0x100
	ldr	r0, =_FILE_b3
	strh	r3, [r2]
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #0
	mov	r3, #0
	ldr	r0, =_FILE_ba
	ldr	r1, [sp, #0x10]
	bl	LoadVFXFile
	bl	Func_80c9048
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc9248	@ 0x3f44
	strh	r3, [r2]
	ldr	r3, .Lc924c	@ 0x3337
	sub	r2, #8
	strh	r3, [r2]
	mov	r6, #0xe1
	mov	r3, #0x80
	mov	r2, #0
	neg	r3, r3
	mov	r7, #0x10
	lsl	r6, #7
	b	.Lc926c

	.align	2, 0
.Lc9244:
	.word	0x100
.Lc9248:
	.word	0x3f44
.Lc924c:
	.word	0x3337
	.pool

.Lc926c:
	mov	r8, r2
	mov	r9, r3
	neg	r7, r7
	add	r6, r10
.Lc9274:
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r2, #0x3f
	mov	r3, #7
	and	r3, r0
	and	r2, r5
	add	r2, r3
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r2, #0x18
	cmp	r3, #1
	bne	.Lc929e
	add	r3, r2, r7
	mov	r2, r3
	add	r2, #0x18
	b	.Lc92a4
.Lc929e:
	sub	r3, r2, r7
	mov	r2, r3
	add	r2, #0x50
.Lc92a4:
	mov	r1, r9
	lsl	r3, r2, #3
	str	r1, [r6, #4]
	mov	r2, #0x40
	mov	r1, #1
	str	r3, [r6]
	neg	r2, r2
	mov	r3, #1
	add	r8, r1
	neg	r3, r3
	add	r9, r2
	mov	r2, r8
	str	r3, [r6, #0x18]
	sub	r7, #8
	add	r6, #0x1c
	cmp	r2, #0x20
	bne	.Lc9274
	mov	r2, r3
	ldr	r3, =0x7418
	mov	r7, #0
	mov	r8, r7
	add	r3, r10
.Lc92d0:
	mov	r1, #1
	add	r8, r1
	mov	r7, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r7, #0x20
	bne	.Lc92d0
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc930a
	mov	r3, #2
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #2
	bl	BuildDraw2DFuncEx
	b	.Lc932a
.Lc930a:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #6
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #6
	bl	BuildDraw2DFuncEx
.Lc932a:
	ldr	r3, =gPtrs
	mov	r2, r3
	add	r2, #0xb8
	ldr	r2, [r2]
	str	r2, [sp, #0x1c]
	add	r3, #0xbc
	ldr	r3, [r3]
	add	r1, sp, #0x1c
	str	r3, [r1, #4]
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r11, r1
	cmp	r3, #0
	bne	.Lc93aa
	mov	r2, #0
	mov	r8, r2
	mov	r1, #0xe0
	ldr	r6, .Lc9378	@ 0xf0
	ldr	r2, =gBuffer
	ldr	r5, .Lc937c	@ 0x888
	ldr	r4, .Lc9380	@ 0x100
	ldr	r0, =0xffffff00
	lsl	r1, #7
.Lc935c:
	mov	r3, r8
	sub	r3, #8
	cmp	r3, #0x5f
	bhi	.Lc936e
	mov	r7, r8
	sub	r3, r6, r7
	orr	r3, r1
	strh	r3, [r2]
	b	.Lc939a
.Lc936e:
	mov	r3, r8
	cmp	r3, #0x87
	bgt	.Lc9398
	strh	r5, [r2]
	b	.Lc939a

	.align	2, 0
.Lc9378:
	.word	0xf0
.Lc937c:
	.word	0x888
.Lc9380:
	.word	0x100
	.pool

.Lc9398:
	strh	r4, [r2]
.Lc939a:
	mov	r7, #1
	add	r8, r7
	mov	r3, r8
	add	r2, #2
	add	r1, r0
	cmp	r3, #0xa0
	bne	.Lc935c
	b	.Lc93f4
.Lc93aa:
	mov	r7, #0
	mov	r1, #0xc0
	mov	r0, #0x80
	ldr	r5, =0x78f8
	ldr	r4, =0x100
	ldr	r2, =gBuffer
	mov	r8, r7
	lsl	r1, #5
	lsl	r0, #1
.Lc93bc:
	mov	r3, r8
	sub	r3, #8
	cmp	r3, #0x57
	bhi	.Lc93cc
	add	r3, #0xa0
	orr	r3, r1
	strh	r3, [r2]
	b	.Lc93e6
.Lc93cc:
	mov	r3, r8
	cmp	r3, #0x87
	bgt	.Lc93e4
	strh	r5, [r2]
	b	.Lc93e6

	.pool_aligned

.Lc93e4:
	strh	r4, [r2]
.Lc93e6:
	mov	r7, #1
	add	r8, r7
	mov	r3, r8
	add	r2, #2
	add	r1, r0
	cmp	r3, #0xa0
	bne	.Lc93bc
.Lc93f4:
	mov	r1, #0x90
	ldr	r0, =Func_80c91a4
	lsl	r1, #3
	bl	StartTask
	mov	r2, #0xef
	lsl	r2, #7
	mov	r3, #2
	add	r2, r10
	str	r3, [r2]
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	cmp	r3, #1
	bne	.Lc941a
	ldr	r2, =0x7784
	mov	r3, #0x4b
	b	.Lc941e
.Lc941a:
	ldr	r2, =0x7784
	mov	r3, #0x32
.Lc941e:
	add	r2, r10
	str	r3, [r2]
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r7, #0
	str	r7, [sp, #0x14]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x18]
	ldr	r6, =.Leded6
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lc9446
	b	.Lc96d0
.Lc9446:
	mov	r3, r10
	add	r5, r3, r2
	ldr	r2, [r5]
	ldr	r3, [r2, #0x18]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r6, r3]
	ldr	r7, [sp, #0x14]
	sub	r3, #0x10
	cmp	r7, r3
	bne	.Lc9464
	mov	r0, #0x84
	bl	_Func_80bd7dc
	ldr	r2, [r5]
.Lc9464:
	ldr	r3, [r2, #0x18]
	lsl	r3, #1
	ldrb	r3, [r6, r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Lc9474
	b	.Lc9612
.Lc9474:
	ldr	r2, =0x7828
	mov	r7, #0xe1
	add	r2, r10
	lsl	r7, #7
	mov	r9, r2
	add	r7, r10
.Lc9480:
	mov	r3, #1
	ldr	r0, [r7, #0x18]
	neg	r3, r3
	cmp	r0, r3
	bne	.Lc9542
	ldr	r2, [r7]
	cmp	r2, #0
	bge	.Lc9492
	add	r2, #7
.Lc9492:
	ldr	r3, [r7, #4]
	asr	r2, #3
	cmp	r3, #0
	bge	.Lc949c
	add	r3, #7
.Lc949c:
	mov	r1, r9
	asr	r5, r3, #3
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r1, #4
	cmp	r3, #2
	beq	.Lc94ac
	mov	r1, #0
.Lc94ac:
	mov	r3, #0x20
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	ldr	r4, [r1, r3]
	ldr	r0, [sp, #0x18]
	mov	r1, r10
	mov	r3, r5
	bl	_call_via_r4
	ldr	r3, [r7, #4]
	ldr	r1, =0x27f
	cmp	r3, r1
	bgt	.Lc94e6
	mov	r2, r9
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lc94d8
	ldr	r3, [r7]
	sub	r3, #0x40
	b	.Lc94dc
.Lc94d8:
	ldr	r3, [r7]
	add	r3, #0x40
.Lc94dc:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0x40
	str	r3, [r7, #4]
	b	.Lc9538
.Lc94e6:
	mov	r3, #3
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	bne	.Lc94f6
	mov	r0, #0x73
	bl	_PlaySound
.Lc94f6:
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r10
	str	r3, [r2]
	mov	r3, #0
	str	r3, [r7, #0x18]
	ldr	r3, =0x7828
	mov	r2, r10
	ldr	r3, [r2, r3]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Lc9538
	ldr	r5, =0x7828
	mov	r4, #0x24
	add	r5, r10
.Lc9516:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r4]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #9
	mov	r3, r6
	mov	r2, #5
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r3, [r5]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r4, #2
	cmp	r6, r3
	bne	.Lc9516
.Lc9538:
	mov	r2, #1
	ldr	r0, [r7, #0x18]
	neg	r2, r2
	cmp	r0, r2
	beq	.Lc95fa
.Lc9542:
	ldr	r2, [r7]
	cmp	r2, #0
	bge	.Lc954a
	add	r2, #7
.Lc954a:
	ldr	r3, [r7, #4]
	asr	r2, #3
	cmp	r3, #0
	bge	.Lc9554
	add	r3, #7
.Lc9554:
	asr	r6, r3, #3
	sub	r3, r0, #1
	cmp	r3, #0xd
	bhi	.Lc9594
	mov	r1, r9
	ldr	r3, [r1]
	ldr	r3, [r3, #0x18]
	mov	r5, #4
	cmp	r3, #2
	beq	.Lc956a
	mov	r5, #0
.Lc956a:
	mov	r1, #3
	str	r2, [sp, #0xc]
	bl	__divsi3
	mov	r1, r0
	lsl	r1, #10
	mov	r3, #0x80
	lsl	r3, #3
	add	r1, r10
	add	r1, r3
	mov	r3, #0x20
	str	r3, [sp]
	str	r3, [sp, #4]
	add	r5, r11
	ldr	r4, [r5]
	ldr	r0, [sp, #0x18]
	ldr	r2, [sp, #0xc]
	mov	r3, r6
	bl	_call_via_r4
	ldr	r0, [r7, #0x18]
.Lc9594:
	mov	r3, r0
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lc95f2
	mov	r5, #0xe8
	lsl	r5, #7
	mov	r6, #0
	add	r5, r10
.Lc95a4:
	mov	r1, #1
	ldr	r3, [r5, #0x18]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lc95ea
	mov	r3, #0x12
	str	r3, [r5, #0x18]
	bl	Random
	mov	r3, #0x1f
	and	r0, r3
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.Lc95c2
	add	r3, #7
.Lc95c2:
	asr	r3, #3
	add	r3, r0, r3
	lsl	r3, #3
	add	r3, #8
	str	r3, [r5]
	bl	Random
	mov	r3, #0xf
	and	r0, r3
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.Lc95dc
	add	r3, #7
.Lc95dc:
	asr	r3, #3
	add	r3, r0, r3
	sub	r3, #0xf
	lsl	r3, #3
	str	r3, [r5, #4]
	ldr	r0, [r7, #0x18]
	b	.Lc95f2
.Lc95ea:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lc95a4
.Lc95f2:
	cmp	r0, #0xe
	bgt	.Lc95fa
	add	r3, r0, #1
	str	r3, [r7, #0x18]
.Lc95fa:
	mov	r1, r9
	ldr	r3, [r1]
	mov	r2, #1
	ldr	r3, [r3, #0x18]
	add	r8, r2
	ldr	r2, =.Leded6
	lsl	r3, #1
	ldrb	r3, [r2, r3]
	add	r7, #0x1c
	cmp	r8, r3
	beq	.Lc9612
	b	.Lc9480
.Lc9612:
	mov	r5, #0xe8
	mov	r2, #0
	lsl	r5, #7
	mov	r8, r2
	add	r5, r10
.Lc961c:
	mov	r3, #1
	ldr	r2, [r5, #0x18]
	neg	r3, r3
	cmp	r2, r3
	beq	.Lc968c
	cmp	r2, #0x11
	bgt	.Lc9680
	lsr	r3, r2, #31
	add	r3, r2, r3
	ldr	r2, [r5]
	asr	r0, r3, #1
	cmp	r2, #0
	bge	.Lc9638
	add	r2, #7
.Lc9638:
	ldr	r6, =Data_ede96
	ldrb	r3, [r6, r0]
	asr	r2, #3
	lsr	r1, r3, #1
	ldr	r3, [r5, #4]
	sub	r2, r1
	mov	r12, r2
	cmp	r3, #0
	bge	.Lc964c
	add	r3, #7
.Lc964c:
	asr	r3, #3
	sub	r7, r3, r1
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	mov	r4, #4
	cmp	r3, #2
	beq	.Lc9660
	mov	r4, #0
.Lc9660:
	ldr	r2, =Data_ede84
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldrb	r3, [r6, r0]
	ldr	r2, [sp, #0x10]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, r11
	add	r1, r2, r1
	ldr	r4, [r4, r3]
	mov	r2, r12
	ldr	r0, [sp, #0x18]
	mov	r3, r7
	bl	_call_via_r4
	ldr	r2, [r5, #0x18]
.Lc9680:
	mov	r7, #1
	neg	r7, r7
	cmp	r2, r7
	ble	.Lc968c
	sub	r3, r2, #1
	str	r3, [r5, #0x18]
.Lc968c:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #0x20
	bne	.Lc961c
	bl	Func_80cd52c
	mov	r1, #4
	mov	r0, #4
	bl	UpdateScreenShake
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [sp, #0x14]
	ldr	r2, =0x7828
	add	r3, #1
	str	r3, [sp, #0x14]
	mov	r7, r10
	ldr	r3, [r7, r2]
	ldr	r3, [r3, #0x18]
	ldr	r6, =.Leded6
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r6, r3]
	ldr	r1, [sp, #0x14]
	cmp	r1, r3
	beq	.Lc96d0
	b	.Lc9446
.Lc96d0:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r0, =Func_80c91a4
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	bl	Func_80c9048
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Ice
