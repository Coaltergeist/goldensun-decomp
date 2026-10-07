	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_ParticleCloud  @ 0x080d52c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	mov	r8, r1
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x74
	str	r3, [sp, #0x44]
	ldr	r3, =0x7828
	mov	r9, r1
	mov	r2, #0x10
	add	r3, r9
	str	r2, [sp, #0x34]
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	mov	r3, #1
	ldr	r0, =_FILE_9e
	mov	r1, r9
	mov	r2, #1
	bl	LoadVFXFile
	mov	r3, r8
	cmp	r3, #0
	bne	.Ld530a
	ldr	r0, =_FILE_a0
	b	.Ld536e
.Ld530a:
	mov	r4, r8
	cmp	r4, #1
	bne	.Ld5314
	ldr	r0, =_FILE_bb
	b	.Ld536e
.Ld5314:
	mov	r0, r8
	cmp	r0, #2
	bne	.Ld531e
	ldr	r0, =_FILE_a3
	b	.Ld536e
.Ld531e:
	mov	r1, r8
	cmp	r1, #3
	bne	.Ld5328
	ldr	r0, =_FILE_c0
	b	.Ld536e
.Ld5328:
	mov	r2, r8
	cmp	r2, #4
	bne	.Ld5332
	ldr	r0, =_FILE_bb
	b	.Ld536e
.Ld5332:
	mov	r3, r8
	cmp	r3, #5
	bne	.Ld5340
	ldr	r5, =_FILE_b7
	mov	r1, r9
	mov	r0, r5
	b	.Ld5364
.Ld5340:
	mov	r4, r8
	cmp	r4, #7
	bne	.Ld535a
	mov	r0, #0x18
	str	r0, [sp, #0x34]
	mov	r1, r9
	ldr	r0, =_FILE_b7
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_8d
	b	.Ld536e
.Ld535a:
	ldr	r5, =0xcd
	mov	r1, #0x20
	str	r1, [sp, #0x34]
	mov	r0, r5
	mov	r1, r9
.Ld5364:
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r0, r5
.Ld536e:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	bl	_call_via_r3
	mov	r2, r8
	cmp	r2, #4
	bne	.Ld5392
	ldr	r0, =_FILE_aa
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
.Ld5392:
	mov	r3, r8
	cmp	r3, #3
	bne	.Ld53a8
	mov	r1, #0x96
	lsl	r1, #6
	ldr	r0, =_FILE_ce
	add	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
.Ld53a8:
	mov	r4, #0
	ldr	r5, =gBuffer
	mov	r11, r4
	mov	r6, #0xff
.Ld53b0:
	mov	r0, r8
	cmp	r0, #1
	bls	.Ld53c6
	cmp	r0, #4
	beq	.Ld53c6
	cmp	r0, #5
	beq	.Ld53c6
	cmp	r0, #6
	beq	.Ld53c6
	cmp	r0, #7
	bne	.Ld53ea
.Ld53c6:
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #14
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	b	.Ld540c
.Ld53ea:
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #13
	str	r0, [r5]
	bl	Random
	and	r0, r6
	sub	r0, #0xff
	lsl	r0, #13
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #13
.Ld540c:
	str	r0, [r5, #8]
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #0
	add	r11, r1
	lsl	r2, #2
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r11, r2
	bne	.Ld53b0
	mov	r3, r8
	cmp	r3, #1
	bls	.Ld5436
	cmp	r3, #4
	beq	.Ld5436
	cmp	r3, #5
	beq	.Ld5436
	cmp	r3, #6
	beq	.Ld5436
	cmp	r3, #7
	bne	.Ld5444
.Ld5436:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x40
	b	.Ld5450
.Ld5444:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #3
	add	r3, #0x20
.Ld5450:
	str	r3, [sp, #0x3c]
	mov	r4, r8
	cmp	r4, #1
	bls	.Ld5466
	cmp	r4, #3
	beq	.Ld5466
	mov	r1, #0x90
	ldr	r0, =Func_80dbb9c
	lsl	r1, #3
	bl	StartTask
.Ld5466:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0x8e
	bl	_PlaySound
	ldr	r1, [sp, #0x3c]
	mov	r0, #0
	str	r0, [sp, #0x40]
	cmp	r1, #0
	bne	.Ld5494
	b	.Ld5972
.Ld5494:
	sub	r1, #0x20
	str	r1, [sp, #0x18]
.Ld5498:
	ldr	r3, =iwram_3001e80
	ldr	r3, [r3]
	mov	r2, r8
	str	r3, [sp, #0x30]
	cmp	r2, #7
	bne	.Ld5538
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x40]
	sub	r3, #0x2e
	cmp	r4, r3
	bne	.Ld54c2
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_80b82c4
.Ld54c2:
	ldr	r3, [sp, #0x40]
	ldr	r4, [sp, #0x18]
	cmp	r3, r4
	bne	.Ld5546
	mov	r0, #0x86
	bl	_Func_80bd7dc
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_SetBattleActorKnockback
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	b	.Ld5546

	.pool_aligned

.Ld5538:
	ldr	r2, [sp, #0x40]
	ldr	r3, [sp, #0x18]
	cmp	r2, r3
	bne	.Ld5546
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Ld5546:
	mov	r6, #0xd3
	ldr	r0, [sp, #0x40]
	lsl	r6, #7
	mov	r4, #0
	mov	r7, #0x80
	add	r6, r9
	mov	r11, r4
	lsl	r7, #11
	lsl	r5, r0, #12
.Ld5558:
	mov	r0, r5
	bl	sin
	mov	r2, #1
	lsl	r0, #2
	sub	r0, r7, r0
	mov	r1, #0x80
	add	r11, r2
	asr	r0, #10
	lsl	r1, #4
	mov	r3, r11
	stmia	r6!, {r0}
	add	r5, r1
	cmp	r3, #0xa0
	bne	.Ld5558
	mov	r4, #0
	str	r4, [sp, #0x38]
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld5588
	b	.Ld594a
.Ld5588:
	ldr	r3, [sp, #0x30]
	mov	r1, sp
	add	r1, #0x48
	add	r3, #0xc
	mov	r4, sp
	ldr	r0, =gPtrs
	str	r1, [sp, #0x20]
	str	r3, [sp, #0x24]
	add	r4, #0x5c
	mov	r1, #0x24
	mov	r3, #0
	str	r4, [sp, #0x1c]
	str	r0, [sp, #0x28]
	str	r1, [sp, #0x10]
	str	r3, [sp, #0xc]
.Ld55a6:
	mov	r4, r9
	add	r5, r4, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0x10]
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r3, [sp, #0x38]
	ldr	r0, [r0]
	lsl	r3, #3
	mov	r4, r8
	str	r0, [sp, #0x2c]
	str	r3, [sp, #0x14]
	cmp	r4, #3
	bne	.Ld569a
	ldr	r0, [sp, #0xc]
	ldr	r1, [sp, #0x40]
	str	r0, [sp, #0x14]
	cmp	r1, r0
	ble	.Ld569a
	mov	r3, r0
	add	r3, #0x20
	cmp	r1, r3
	bge	.Ld569a
	ldr	r3, [r5]
	ldr	r2, [sp, #0x10]
	add	r5, sp, #0x50
	ldrsh	r0, [r3, r2]
	mov	r1, r5
	bl	GetBattleActorPos2
	ldr	r2, =Data_eded0
	ldr	r7, [sp, #0x40]
	mov	r0, #0
	mov	r1, r8
	mov	r11, r0
	and	r7, r1
	mov	r10, r2
.Ld55f2:
	bl	Random
	ldr	r3, =0xffff
	mov	r2, r0
	and	r2, r3
	str	r2, [sp, #8]
	bl	Random
	ldr	r2, [sp, #8]
	mov	r5, #0x1f
	and	r5, r0
	mov	r0, r2
	bl	sin
	ldr	r6, [sp, #0x50]
	add	r5, #4
	lsr	r3, r6, #31
	add	r6, r3
	mov	r3, r5
	mul	r3, r0
	ldr	r4, =Data_edeca
	asr	r3, #17
	asr	r6, #1
	ldr	r2, [sp, #8]
	add	r6, r3
	ldrb	r3, [r4, r7]
	mov	r0, r2
	lsr	r3, #1
	sub	r6, r3
	bl	cos
	mov	r3, r5
	mul	r3, r0
	ldr	r5, [sp, #0x54]
	asr	r3, #16
	mov	r0, r10
	sub	r5, r3
	ldrb	r3, [r0, r7]
	lsr	r3, #1
	sub	r5, r3
	bl	Random
	ldr	r3, =.Lee2ae
	mov	r1, #3
	and	r0, r1
	ldrb	r2, [r3, r0]
	mov	r3, #3
	orr	r3, r2
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r2, =Data_edebe
	ldr	r4, =Data_edeca
	lsl	r3, r7, #1
	ldrh	r1, [r2, r3]
	ldrb	r3, [r4, r7]
	str	r3, [sp]
	mov	r0, r10
	ldrb	r3, [r0, r7]
	mov	r2, #0x96
	lsl	r2, #6
	add	r1, r9
	str	r3, [sp, #4]
	add	r1, r2
	ldr	r2, =iwram_3001f0c
	add	r5, #0x10
	ldr	r4, [r2]
	mov	r3, r5
	ldr	r0, [sp, #0x44]
	mov	r2, r6
	bl	_call_via_r4
	mov	r0, #0x2f
	bl	gfree
	mov	r3, #1
	add	r11, r3
	mov	r4, r11
	cmp	r4, #2
	bne	.Ld55f2
.Ld569a:
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [sp, #0x28]
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x48]
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r0, =iwram_3001f0c
	ldr	r1, [sp, #0x20]
	ldr	r3, [r0]
	str	r3, [r1, #4]
	bl	InitMatrixStack
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x24]
	bl	MatrixSetLook
	ldr	r2, [sp, #0x2c]
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r2, #8]
	str	r3, [r4]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r4, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r4, #8]
	ldr	r0, [sp, #0x1c]
	bl	MatrixTranslatev
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0xc]
	cmp	r0, r1
	bgt	.Ld56f6
	b	.Ld58f4
.Ld56f6:
	lsl	r5, r0, #9
	mov	r0, r5
	bl	MatrixYaw
	mov	r2, r8
	cmp	r2, #1
	bls	.Ld5708
	cmp	r2, #4
	bne	.Ld570e
.Ld5708:
	mov	r0, r5
	bl	MatrixPitch
.Ld570e:
	ldr	r4, [sp, #0x34]
	mov	r3, #0
	mov	r11, r3
	cmp	r4, #0
	bne	.Ld571a
	b	.Ld58f4
.Ld571a:
	ldr	r0, [sp, #0x38]
	lsl	r2, r0, #6
	lsl	r3, r0, #9
	sub	r3, r2
	ldr	r1, =gBuffer
	lsl	r3, #2
	add	r7, r3, r1
.Ld5728:
	ldr	r3, [sp, #0x14]
	ldr	r2, [sp, #0x40]
	add	r3, r11
	cmp	r2, r3
	bgt	.Ld5734
	b	.Ld58e6
.Ld5734:
	ldr	r3, [r7]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r7, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r7, #8]
	asr	r3, #8
	mov	r4, r3
	mul	r4, r3
	add	r0, r2
	mov	r3, r4
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	asr	r0, #9
	mov	r10, r0
	cmp	r0, #0
	bne	.Ld5762
	b	.Ld58e6
.Ld5762:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0x17
	ble	.Ld576a
	b	.Ld58e6
.Ld576a:
	mov	r1, r3
	cmp	r1, #0
	bge	.Ld5772
	add	r1, #3
.Ld5772:
	add	r5, sp, #0x68
	asr	r6, r1, #2
	mov	r0, r7
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	mov	r0, r8
	asr	r2, r3, #1
	str	r2, [r5]
	cmp	r0, #5
	beq	.Ld578e
	cmp	r0, #7
	bne	.Ld57b2
.Ld578e:
	lsl	r1, r6, #1
	add	r1, r6
	mov	r0, #0x28
	lsl	r1, #3
	ldr	r3, [r5, #4]
	add	r1, r6
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x20]
	lsl	r1, #6
	ldr	r4, [r0, #4]
	add	r1, r9
	sub	r2, #0x14
	sub	r3, #0x14
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
	b	.Ld5828
.Ld57b2:
	mov	r1, r8
	cmp	r1, #6
	bne	.Ld57d8
	mov	r1, #0xc
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x18
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x20]
	mov	r1, #0xc0
	lsl	r1, #4
	ldr	r4, [r0, #4]
	sub	r2, #6
	sub	r3, #0xc
	ldr	r0, [sp, #0x44]
	add	r1, r9
	bl	_call_via_r4
	b	.Ld5828
.Ld57d8:
	mov	r1, r8
	cmp	r1, #4
	bne	.Ld57fa
	mov	r1, #0x16
	ldr	r3, [r5, #4]
	str	r1, [sp]
	mov	r1, #0x2a
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x20]
	sub	r2, #0xb
	ldr	r4, [r0, #4]
	sub	r3, #0x15
	ldr	r0, [sp, #0x44]
	mov	r1, r9
	bl	_call_via_r4
	b	.Ld5828
.Ld57fa:
	mov	r1, r11
	mov	r3, #3
	and	r3, r1
	neg	r4, r3
	mov	r0, #0x18
	orr	r4, r3
	lsl	r1, r6, #3
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	lsr	r4, #31
	ldr	r0, [sp, #0x20]
	add	r1, r6
	lsl	r4, #2
	lsl	r1, #7
	ldr	r4, [r4, r0]
	add	r1, r9
	sub	r2, #0xc
	sub	r3, #0x18
	ldr	r0, [sp, #0x44]
	bl	_call_via_r4
.Ld5828:
	mov	r1, r8
	cmp	r1, #1
	bls	.Ld583a
	cmp	r1, #4
	beq	.Ld583a
	cmp	r1, #5
	beq	.Ld583a
	cmp	r1, #6
	bne	.Ld5866
.Ld583a:
	ldr	r5, [r7]
	mov	r1, r10
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r7]
	ldr	r5, [r7, #4]
	mov	r1, r10
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r7, #4]
	ldr	r5, [r7, #8]
	mov	r1, r10
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r7, #8]
	b	.Ld5870
.Ld5866:
	ldr	r3, [r7, #4]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #4]
.Ld5870:
	ldr	r3, [r7, #0x18]
	add	r3, #1
	str	r3, [r7, #0x18]
	cmp	r3, #0x18
	bne	.Ld58e6
	mov	r3, r8
	cmp	r3, #1
	bls	.Ld588c
	cmp	r3, #4
	beq	.Ld588c
	cmp	r3, #5
	beq	.Ld588c
	cmp	r3, #6
	bne	.Ld58bc
.Ld588c:
	mov	r3, #0
	str	r3, [r7, #0x18]
	b	.Ld58e6

	.pool_aligned

.Ld58bc:
	bl	Random
	mov	r4, #0xff
	and	r0, r4
	sub	r0, #0x7f
	lsl	r0, #13
	str	r0, [r7]
	bl	Random
	mov	r1, #0xff
	and	r0, r1
	sub	r0, #0xff
	lsl	r0, #12
	str	r0, [r7, #4]
	bl	Random
	mov	r2, #0xff
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #13
	str	r0, [r7, #8]
.Ld58e6:
	mov	r3, #1
	ldr	r4, [sp, #0x34]
	add	r11, r3
	add	r7, #0x1c
	cmp	r11, r4
	beq	.Ld58f4
	b	.Ld5728
.Ld58f4:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x40]
	add	r3, #0x10
	cmp	r0, r3
	bne	.Ld592a
	ldr	r1, [sp, #0x3c]
	sub	r2, r1, r0
	cmp	r2, #0x1f
	ble	.Ld5914
	mov	r2, #0x1f
.Ld5914:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r4, [sp, #0x10]
	ldrsh	r0, [r3, r4]
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	ldr	r3, [sp, #0x38]
	bl	SetBattleActorState
.Ld592a:
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0xc]
	ldr	r4, [sp, #0x38]
	add	r2, #2
	add	r3, #8
	add	r4, #1
	str	r2, [sp, #0x10]
	str	r3, [sp, #0xc]
	str	r4, [sp, #0x38]
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	cmp	r4, r3
	beq	.Ld594a
	b	.Ld55a6
.Ld594a:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x40]
	ldr	r2, [sp, #0x3c]
	add	r1, #1
	str	r1, [sp, #0x40]
	cmp	r1, r2
	beq	.Ld5972
	b	.Ld5498
.Ld5972:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r3, r8
	cmp	r3, #1
	bls	.Ld5988
	cmp	r3, #3
	beq	.Ld5988
	ldr	r0, =Func_80dbb9c
	bl	StopTask
.Ld5988:
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
.func_end BaseAnim_ParticleCloud

	.section .rodata
.Lee2ae:
	.incrom 0xee2ae, 0xee2b4
