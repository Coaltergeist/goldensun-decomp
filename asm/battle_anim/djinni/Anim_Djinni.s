	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Djinni  @ 0x080de2f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x6c
	mov	r6, r2
	ldr	r2, =iwram_3001eec
	str	r3, [sp, #0x2c]
	mov	r3, r2
	mov	r5, r1
	ldmia	r3!, {r1}
	str	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x18]
	ldr	r2, =0x7828
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r4, =0x77b4
	ldr	r3, [sp, #0x28]
	add	r2, r3, r4
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r7, [sp, #0x28]
	ldr	r1, =0x77b8
	mov	r3, #0
	add	r2, r7, r1
	str	r3, [r2]
	cmp	r5, #3
	ble	.Lde34a
	mov	r2, #0x54
	sub	r5, #4
	str	r2, [sp, #0x14]
	b	.Lde34e
.Lde34a:
	mov	r3, #0x40
	str	r3, [sp, #0x14]
.Lde34e:
	cmp	r5, #1
	beq	.Lde366
	cmp	r5, #1
	bgt	.Lde35c
	cmp	r5, #0
	beq	.Lde362
	b	.Lde36e
.Lde35c:
	cmp	r5, #2
	beq	.Lde36a
	b	.Lde36e
.Lde362:
	ldr	r0, =_FILE_94
	b	.Lde370
.Lde366:
	ldr	r0, =_FILE_92
	b	.Lde370
.Lde36a:
	ldr	r0, =_FILE_8e
	b	.Lde370
.Lde36e:
	ldr	r0, =_FILE_90
.Lde370:
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x28]
	mov	r0, r5
	bl	DecompressLZ
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	cmp	r6, #1
	bne	.Lde3c0
	mov	r3, #3
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	bl	BuildDraw2DFuncEx
	b	.Lde3de
.Lde3c0:
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	bl	BuildDraw2DFuncEx
.Lde3de:
	ldr	r3, =gPtrs
	ldr	r4, [sp, #0x28]
	mov	r2, r3
	ldr	r7, =0x7828
	add	r3, #0xbc
	ldr	r3, [r3]
	add	r5, r4, r7
	str	r3, [sp, #0x20]
	add	r2, #0xb8
	ldr	r3, [r5]
	ldr	r2, [r2]
	ldr	r0, [r3, #8]
	str	r2, [sp, #0x1c]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r9, r0
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r0, [r0]
	mov	r2, #0
	str	r0, [sp, #0x10]
	ldr	r7, =gBuffer
	mov	r8, r2
	mov	r10, r2
.Lde416:
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Random
	mov	r3, r10
	str	r3, [r7]
	mov	r5, #0xff
	and	r5, r0
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x14
	mov	r4, r10
	lsl	r3, #16
	str	r4, [r7, #8]
	str	r3, [r7, #4]
	mov	r0, r6
	bl	sin
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	mov	r1, r10
	asr	r3, #5
	str	r3, [r7, #0xc]
	str	r1, [r7, #0x10]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0x14]
	mov	r3, #1
	add	r8, r3
	mov	r2, r10
	mov	r4, r8
	str	r2, [r7, #0x18]
	add	r7, #0x1c
	cmp	r4, #0x40
	bne	.Lde416
	ldr	r7, [sp, #0x28]
	mov	r1, #0xef
	lsl	r1, #7
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r7, r3
	mov	r3, #0x4b
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r7, r9
	ldr	r3, [r7, #8]
	add	r4, sp, #0x60
	str	r3, [r4]
	mov	r3, #0
	str	r3, [r4, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r4, #8]
	ldr	r1, [sp, #0x2c]
	mov	r11, r4
	cmp	r1, #4
	bhi	.Lde558
	ldr	r2, =.Lde4b0
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lde4b0:
	.word	.Lde4c4
	.word	.Lde4d8
	.word	.Lde4de
	.word	.Lde4f2
	.word	.Lde506

.Lde4c4:
	ldr	r2, [sp, #0x10]
	ldr	r3, [r2, #8]
	add	r5, sp, #0x54
	str	r3, [r5]
	mov	r3, #0xf0
	lsl	r3, #14
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	b	.Lde55a
.Lde4d8:
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4, #8]
	b	.Lde4f6
.Lde4de:
	mov	r7, r9
	ldr	r3, [r7, #8]
	add	r5, sp, #0x54
	str	r3, [r5]
	mov	r3, #0xf0
	lsl	r3, #14
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r5, #8]
	b	.Lde55a
.Lde4f2:
	mov	r1, r9
	ldr	r3, [r1, #8]
.Lde4f6:
	add	r5, sp, #0x54
	str	r3, [r5]
	mov	r3, #0xf0
	lsl	r3, #14
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #8]
	b	.Lde55a
.Lde506:
	mov	r3, #0xf0
	add	r5, sp, #0x54
	mov	r2, #0
	lsl	r3, #14
	str	r2, [r5]
	str	r3, [r5, #4]
	str	r2, [r5, #8]
	b	.Lde55a

	.pool_aligned

.Lde558:
	add	r5, sp, #0x54
.Lde55a:
	mov	r2, sp
	add	r2, #0x48
	str	r2, [sp, #0xc]
	mov	r4, r11
	ldr	r3, [r4]
	ldr	r0, [r5]
	mov	r1, #0x28
	sub	r0, r3
	bl	__divsi3
	ldr	r7, [sp, #0xc]
	str	r0, [r7]
	mov	r1, r11
	ldr	r3, [r1, #4]
	ldr	r0, [r5, #4]
	mov	r1, #0x28
	sub	r0, r3
	bl	__divsi3
	str	r0, [r7, #4]
	mov	r2, r11
	ldr	r3, [r2, #8]
	ldr	r0, [r5, #8]
	mov	r1, #0x28
	sub	r0, r3
	bl	__divsi3
	str	r0, [r7, #8]
	ldr	r4, [sp, #0x14]
	mov	r3, #0
	mov	r10, r3
	cmp	r4, #0
	bne	.Lde59e
	b	.Lde8f4
.Lde59e:
	ldr	r3, =iwram_3001e80
	mov	r7, r10
	ldr	r5, [r3]
	cmp	r7, #0x4b
	ble	.Lde5b6
	ldr	r3, .Lde5c4	@ 0xa8
	lsl	r2, r7, #1
	sub	r3, r2
	ldr	r2, .Lde5c8	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r1]
.Lde5b6:
	mov	r1, r10
	cmp	r1, #8
	bne	.Lde5d4
	mov	r0, #0xd4
	bl	_PlaySound
	b	.Lde5d4

	.align	2, 0
.Lde5c4:
	.word	0xa8
.Lde5c8:
	.word	0x1000
	.pool

.Lde5d4:
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	mov	r3, r10
	sub	r3, #6
	cmp	r3, #0x27
	bhi	.Lde608
	ldr	r4, [sp, #0xc]
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r2, [r4]
	mov	r7, r11
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r4, #4]
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r4, #8]
	add	r3, r2
	str	r3, [r7, #8]
.Lde608:
	mov	r0, r11
	bl	MatrixTranslatev
	mov	r1, r10
	cmp	r1, #0
	bne	.Lde62e
	ldr	r2, [sp, #0x28]
	ldr	r4, =0x7828
	add	r3, r2, r4
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #1
	str	r1, [sp]
	neg	r2, r2
	mov	r1, #7
	neg	r3, r3
	bl	SetBattleActorState
.Lde62e:
	mov	r7, r10
	cmp	r7, #0x18
	bne	.Lde64e
	ldr	r1, [sp, #0x28]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Lde64e:
	mov	r4, r10
	neg	r4, r4
	mov	r1, r10
	mov	r3, #0
	lsl	r1, #8
	str	r4, [sp, #8]
	ldr	r6, =gBuffer
	mov	r8, r3
	lsl	r7, r4, #8
	mov	r9, r1
.Lde662:
	mov	r3, r8
	cmp	r3, #0
	bge	.Lde66a
	add	r3, #7
.Lde66a:
	asr	r3, #3
	cmp	r10, r3
	bge	.Lde672
	b	.Lde7a4
.Lde672:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	beq	.Lde67a
	b	.Lde7a4
.Lde67a:
	bl	MatrixPush
	mov	r3, #3
	mov	r2, r8
	and	r3, r2
	cmp	r3, #1
	beq	.Lde6a4
	cmp	r3, #1
	bgt	.Lde692
	cmp	r3, #0
	beq	.Lde69c
	b	.Lde6c0
.Lde692:
	cmp	r3, #2
	beq	.Lde6ac
	cmp	r3, #3
	beq	.Lde6b4
	b	.Lde6c0
.Lde69c:
	mov	r0, r9
	bl	MatrixYaw
	b	.Lde6c0
.Lde6a4:
	mov	r0, r7
	bl	MatrixPitch
	b	.Lde6c0
.Lde6ac:
	mov	r0, r7
	bl	MatrixRoll
	b	.Lde6c0
.Lde6b4:
	mov	r0, r7
	bl	MatrixPitch
	mov	r0, r7
	bl	MatrixRoll
.Lde6c0:
	add	r5, sp, #0x30
	mov	r1, r5
	mov	r0, r6
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	bl	MatrixPop
	ldr	r2, [r5, #8]
	cmp	r2, #0xf9
	bgt	.Lde6e0
	mov	r3, #0xfa
	str	r3, [r5, #8]
	mov	r2, #0xfa
.Lde6e0:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Lde6ea
	str	r3, [r5, #8]
	mov	r2, r3
.Lde6ea:
	mov	r3, r2
	sub	r3, #0xfa
	cmp	r3, #0
	bge	.Lde6f4
	add	r3, #0x3f
.Lde6f4:
	asr	r3, #6
	mov	r0, #8
	sub	r0, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x18]
	add	r1, r3, r1
	lsr	r3, r0, #31
	ldr	r2, [r5]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e38b8
	mov	r3, r8
	cmp	r3, #0
	bge	.Lde732
	add	r3, #7
.Lde732:
	asr	r3, #3
	add	r3, #0x18
	cmp	r10, r3
	blt	.Lde7a4
	ldr	r3, [r6]
	neg	r3, r3
	asr	r5, r3, #7
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #4]
	neg	r3, r3
	asr	r4, r3, #7
	neg	r2, r2
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #0xc]
	asr	r2, #7
	add	r2, r3, r2
	ldr	r3, [r6, #0x14]
	add	r1, r5
	add	r0, r3, r4
	lsl	r3, r1, #5
	sub	r3, r1
	lsl	r3, #1
	str	r1, [r6, #0xc]
	str	r2, [r6, #0x10]
	str	r0, [r6, #0x14]
	cmp	r3, #0
	bge	.Lde76a
	add	r3, #0x3f
.Lde76a:
	asr	r3, #6
	str	r3, [r6, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #1
	cmp	r3, #0
	bge	.Lde77a
	add	r3, #0x3f
.Lde77a:
	asr	r3, #6
	str	r3, [r6, #0x10]
	lsl	r3, r0, #5
	sub	r3, r0
	lsl	r3, #1
	cmp	r3, #0
	bge	.Lde78a
	add	r3, #0x3f
.Lde78a:
	ldr	r1, =0x7ff
	asr	r3, #6
	ldr	r2, =0xffe
	str	r3, [r6, #0x14]
	add	r3, r5, r1
	cmp	r3, r2
	bhi	.Lde7a4
	add	r3, r4, r1
	cmp	r3, r2
	bhi	.Lde7a4
	mov	r2, #1
	neg	r2, r2
	str	r2, [r6, #0x18]
.Lde7a4:
	ldr	r4, [sp, #8]
	mov	r1, r10
	lsl	r3, r4, #5
	mov	r2, #1
	add	r7, r3
	add	r8, r2
	lsl	r3, r1, #5
	add	r9, r3
	mov	r3, r8
	add	r6, #0x1c
	cmp	r3, #0x20
	beq	.Lde7be
	b	.Lde662
.Lde7be:
	mov	r3, r10
	sub	r3, #0x36
	cmp	r3, #0xf
	bhi	.Lde80c
	lsl	r0, r1, #10
	bl	sin
	mov	r3, #0
	add	r5, sp, #0x30
	add	r2, sp, #0x3c
	lsl	r0, #2
	str	r0, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	mov	r0, r2
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	ldr	r4, [sp, #0x8c]
	str	r3, [r4]
	ldr	r7, [sp, #0x90]
	ldr	r3, [r5, #4]
	str	r3, [r7]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	asr	r2, #1
	mov	r1, #0x14
	str	r2, [r5]
	str	r1, [sp]
	mov	r1, #0x28
	str	r1, [sp, #4]
	sub	r2, #0xa
	sub	r3, #0x14
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x28]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Lde80c:
	mov	r7, r10
	cmp	r7, #0x40
	bne	.Lde876
	ldr	r2, [sp, #0x28]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r8, r1
	add	r7, r2, r3
.Lde81e:
	bl	Random
	ldr	r3, =0xffff
	mov	r6, r0
	and	r6, r3
	bl	Random
	ldr	r4, [sp, #0x8c]
	ldr	r3, [r4]
	lsl	r3, #15
	str	r3, [r7]
	ldr	r1, [sp, #0x90]
	ldr	r3, [r1]
	mov	r5, #0xff
	lsl	r3, #16
	str	r3, [r7, #4]
	and	r5, r0
	mov	r0, r6
	bl	sin
	add	r5, #0x80
	mov	r3, r5
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r6
	bl	cos
	mov	r3, r5
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r2, #1
	add	r3, #8
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x40
	bne	.Lde81e
.Lde876:
	mov	r4, r10
	cmp	r4, #0x3f
	ble	.Lde8d8
	ldr	r1, [sp, #0x28]
	mov	r2, #0xe1
	mov	r7, #0
	lsl	r2, #7
	ldr	r6, =Data_ede48
	mov	r8, r7
	add	r5, r1, r2
.Lde88a:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	blt	.Lde8cc
	asr	r0, #3
	add	r0, #2
	lsl	r4, r0, #1
	sub	r3, r4, #2
	ldrh	r1, [r6, r3]
	ldr	r3, [sp, #0x18]
	add	r1, r3, r1
	lsr	r3, r0, #31
	mov	r7, #2
	ldrsh	r2, [r5, r7]
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
	mov	r0, r5
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lde8cc:
	mov	r7, #1
	add	r8, r7
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Lde88a
.Lde8d8:
	ldr	r3, [sp, #0x28]
	ldr	r4, =0x7824
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r7, #1
	ldr	r1, [sp, #0x14]
	add	r10, r7
	cmp	r10, r1
	beq	.Lde8f4
	b	.Lde59e
.Lde8f4:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Func_80cd4b4
	bl	StopTask
	mov	r1, #0x80
	ldr	r5, =Func_80008d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r1, #0x80
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	bl	_call_via_r5
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lde93c	@ 0x1010
	add	sp, #0x6c
	strh	r3, [r2]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lde93c:
	.word	0x1010
.func_end Anim_Djinni
