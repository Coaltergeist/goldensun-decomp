	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Drain  @ 0x080d85d0
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
	sub	sp, #0x40
	str	r3, [sp, #0x30]
	ldr	r3, [r2, #8]
	str	r3, [sp, #0x28]
	sub	r2, #0x6c
	ldr	r2, [r2]
	str	r2, [sp, #0x24]
	ldr	r3, [r0, #0x18]
	neg	r5, r3
	orr	r5, r3
	ldr	r3, =0x7828
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	mov	r0, #1
	bl	AnimStart
	lsr	r5, #31
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x28]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	cmp	r5, #0
	bne	.Ld861e
	ldr	r0, =_FILE_b9
	b	.Ld8620
.Ld861e:
	ldr	r0, =_FILE_c0
.Ld8620:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r7, #0
	neg	r1, r1
	lsl	r2, #3
.Ld863e:
	add	r7, #1
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r7, r2
	bne	.Ld863e
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r8, r4
	cmp	r3, #0
	beq	.Ld86f0
	mov	r3, #0x24
	mov	r1, #0xff
	str	r3, [sp, #0x18]
	str	r4, [sp, #0x10]
	mov	r11, r1
.Ld8662:
	mov	r4, r9
	add	r5, r4, r2
	ldr	r3, [r5]
	ldr	r1, [sp, #0x18]
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r4, [sp, #0x18]
	ldr	r6, [r0]
	ldrsh	r0, [r3, r4]
	bl	_Func_80b8530
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r2, [sp, #0x10]
	ldr	r3, =gBuffer
	asr	r0, #1
	mov	r10, r0
	mov	r7, #0
	add	r5, r2, r3
.Ld868c:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	add	r3, r10
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Random
	mov	r4, r11
	and	r0, r4
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Random
	mov	r1, r11
	and	r0, r1
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0x10]
	bl	Random
	mov	r2, r11
	and	r0, r2
	sub	r0, #0x80
	lsl	r0, #10
	mov	r3, #0
	add	r7, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Ld868c
	ldr	r3, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	mov	r0, #0xe0
	lsl	r0, #4
	add	r3, #2
	add	r4, r0
	str	r4, [sp, #0x10]
	str	r3, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	add	r8, r1
	cmp	r8, r3
	bne	.Ld8662
.Ld86f0:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r2, #0xef
	lsl	r2, #7
	str	r3, [sp, #0x2c]
	add	r2, r9
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r3, =0x4040404
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0x8e
	bl	_PlaySound
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r4, #0x48
	mov	r0, #0
	lsl	r3, #2
	neg	r4, r4
	mov	r11, r0
	cmp	r3, r4
	bne	.Ld8746
	b	.Ld88e4
.Ld8746:
	ldr	r0, [sp, #0x24]
	add	r0, #0xc
	str	r0, [sp, #0x1c]
.Ld874c:
	mov	r2, r9
	add	r5, r2, r1
	ldr	r3, [r5]
	ldr	r0, [r3, #8]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	mov	r10, r0
	ldr	r0, [r3, #8]
	bl	_Func_80b8530
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	mov	r3, r11
	str	r0, [sp, #0x20]
	cmp	r3, #0x40
	bne	.Ld8778
	mov	r0, #0x85
	bl	_Func_80bd7dc
.Ld8778:
	bl	InitMatrixStack
	ldr	r0, [sp, #0x24]
	ldr	r1, [sp, #0x1c]
	bl	MatrixSetLook
	mov	r4, r11
	cmp	r4, #0x28
	bne	.Ld879e
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r0, [r3, #8]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
.Ld879e:
	ldr	r1, [r5]
	ldr	r2, [r1, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	add	r3, #0x34
	cmp	r11, r3
	bne	.Ld87c2
	mov	r3, #0
	mov	r2, #1
	ldr	r0, [r1, #8]
	str	r3, [sp]
	mov	r1, #0
	neg	r2, r2
	sub	r3, #1
	bl	SetBattleActorState
	ldr	r1, [r5]
.Ld87c2:
	ldr	r3, [r1, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld88b8
	str	r0, [sp, #8]
	str	r0, [sp, #0x14]
.Ld87d0:
	ldr	r1, [sp, #8]
	cmp	r11, r1
	bne	.Ld87f2
	ldr	r3, =0x7828
	mov	r4, r8
	add	r3, r9
	ldr	r2, [r3]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	SetBattleActorState
.Ld87f2:
	ldr	r2, [sp, #8]
	cmp	r11, r2
	ble	.Ld8898
	ldr	r3, [sp, #0x14]
	ldr	r4, =gBuffer
	mov	r7, #0
	add	r6, sp, #0x34
	add	r5, r3, r4
.Ld8802:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld8890
	mov	r1, r6
	mov	r0, r5
	bl	Func_80e3944
	ldr	r2, [r6]
	ldr	r3, =Data_ede48
	asr	r2, #1
	str	r2, [r6]
	ldrh	r1, [r3, #0xa]
	ldr	r0, [sp, #0x28]
	ldr	r3, [r6, #4]
	add	r1, r0, r1
	mov	r4, #6
	mov	r0, #0xc
	sub	r3, #6
	str	r4, [sp]
	str	r0, [sp, #4]
	sub	r2, #3
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x2c]
	bl	_call_via_r4
	mov	r0, r5
	mov	r1, #0x3e
	mov	r2, #0
	bl	Func_80e38b8
	ldr	r0, [sp, #8]
	add	r3, r0, r7
	add	r3, #0xa
	cmp	r11, r3
	ble	.Ld8890
	mov	r1, r10
	ldr	r0, [r1, #8]
	ldr	r3, [r5]
	ldr	r2, [sp, #0x20]
	ldr	r1, [r1, #0xc]
	sub	r0, r3
	ldr	r3, [r5, #4]
	add	r1, r2
	sub	r1, r3
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	ldr	r3, [r5, #8]
	sub	r2, r3
	ldr	r3, [r5, #0xc]
	asr	r0, #8
	add	r3, r0
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	asr	r1, #8
	add	r3, r1
	str	r3, [r5, #0x10]
	ldr	r4, =0xfff
	ldr	r3, [r5, #0x14]
	asr	r2, #8
	ldr	r1, =0x1ffe
	add	r3, r2
	add	r0, r4
	str	r3, [r5, #0x14]
	cmp	r0, r1
	bhi	.Ld8890
	add	r3, r2, r4
	cmp	r3, r1
	bhi	.Ld8890
	mov	r0, #1
	neg	r0, r0
	str	r0, [r5, #0x18]
.Ld8890:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x20
	bne	.Ld8802
.Ld8898:
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	mov	r3, #0xe0
	lsl	r3, #4
	add	r2, r3
	add	r1, #0x14
	ldr	r3, =0x7828
	str	r1, [sp, #8]
	str	r2, [sp, #0x14]
	add	r3, r9
	ldr	r3, [r3]
	mov	r4, #1
	ldr	r3, [r3, #0x14]
	add	r8, r4
	cmp	r8, r3
	bne	.Ld87d0
.Ld88b8:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =0x7828
	mov	r2, r9
	ldr	r3, [r2, r1]
	ldr	r2, [r3, #0x14]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r0, #1
	lsl	r3, #2
	add	r11, r0
	add	r3, #0x48
	cmp	r11, r3
	beq	.Ld88e4
	b	.Ld874c
.Ld88e4:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
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
.func_end Anim_Drain
