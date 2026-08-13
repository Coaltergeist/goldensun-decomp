	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Haunt  @ 0x080ce4e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_3001eec
	mov	r8, r1
	mov	r3, r8
	ldmia	r3!, {r2}
	ldr	r3, [r3]
	sub	sp, #0x48
	str	r3, [sp, #0x2c]
	ldr	r3, =0x7828
	mov	r10, r2
	add	r3, r10
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r0, =_FILE_a9
	bl	GetFile
	mov	r6, r0
	mov	r0, #0xa0
	mov	r2, #0x80
	ldr	r5, =Func_8001af8
	mov	r1, r6
	lsl	r0, #19
	add	r6, #0x80
	bl	_call_via_r5
	mov	r1, r10
	mov	r0, r6
	bl	DecompressLZ
	ldr	r0, =_FILE_bb
	bl	GetFile
	mov	r6, r0
	mov	r0, #0xa0
	mov	r1, r6
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r5
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	mov	r3, r8
	ldr	r3, [r3, #0x1c]
	mov	r6, #3
	str	r3, [sp, #0x20]
	mov	r2, #7
	mov	r3, #3
	mov	r1, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	mov	r5, r8
	ldr	r5, [r5, #0x20]
	str	r5, [sp, #0x24]
	mov	r5, #0x90
	lsl	r5, #3
	mov	r1, r5
	ldr	r0, =Func_80dbb9c
	bl	StartTask
	mov	r3, #0xef
	lsl	r3, #7
	add	r3, r10
	ldr	r2, =0x7784
	str	r6, [r3]
	ldr	r3, =0x4040404
	add	r2, r10
	mov	r1, r5
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	ldr	r5, =gBuffer
	bl	StartTask
	mov	r6, #0xff
	mov	r4, #0
.Lce59c:
	str	r4, [sp, #8]
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5]
	bl	Random
	and	r0, r6
	sub	r0, #0x7f
	lsl	r0, #15
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	ldr	r4, [sp, #8]
	sub	r0, #0x7f
	mov	r1, #0x80
	lsl	r0, #15
	add	r4, #1
	lsl	r1, #2
	str	r0, [r5, #8]
	add	r5, #0x1c
	cmp	r4, r1
	bne	.Lce59c
	mov	r0, #0x8e
	bl	_PlaySound
	mov	r2, #0
	ldr	r3, =0x7828
	str	r2, [sp, #0x28]
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r5, #0x60
	lsl	r3, #5
	neg	r5, r5
	cmp	r3, r5
	bne	.Lce5ee
	b	.Lce7fa
.Lce5ee:
	ldr	r3, =iwram_3001e80
	ldr	r1, [sp, #0x28]
	ldr	r3, [r3]
	str	r3, [sp, #0x1c]
	cmp	r1, #0x60
	bne	.Lce600
	mov	r0, #0
	bl	_Func_80bd7dc
.Lce600:
	ldr	r3, =0x7828
	add	r3, r10
	ldr	r3, [r3]
	mov	r6, #0xd3
	ldr	r3, [r3, #4]
	lsl	r6, #7
	add	r6, r10
	cmp	r3, #0
	bne	.Lce640
	ldr	r2, [sp, #0x28]
	mov	r4, #0
	lsl	r5, r2, #11
.Lce618:
	mov	r0, r5
	str	r4, [sp, #8]
	bl	sin
	lsl	r2, r0, #1
	add	r2, r0
	mov	r3, #0xc0
	lsl	r2, #1
	lsl	r3, #11
	sub	r3, r2
	asr	r3, #10
	ldr	r4, [sp, #8]
	stmia	r6!, {r3}
	mov	r3, #0x80
	lsl	r3, #4
	add	r4, #1
	add	r5, r3
	cmp	r4, #0xa0
	bne	.Lce618
	b	.Lce666
.Lce640:
	ldr	r1, [sp, #0x28]
	mov	r4, #0
	lsl	r5, r1, #11
.Lce646:
	mov	r0, r5
	str	r4, [sp, #8]
	bl	sin
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r4, [sp, #8]
	lsl	r3, #1
	mov	r2, #0x80
	asr	r3, #10
	lsl	r2, #4
	add	r4, #1
	stmia	r6!, {r3}
	add	r5, r2
	cmp	r4, #0xa0
	bne	.Lce646
.Lce666:
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r5, r10
	mov	r11, r3
	ldr	r3, [r5, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Lce678
	b	.Lce7d0
.Lce678:
	ldr	r1, [sp, #0x1c]
	add	r1, #0xc
	str	r1, [sp, #0x18]
	mov	r3, #0x30
	mov	r5, #0x24
	mov	r1, #0
	add	r3, sp
	str	r5, [sp, #0x10]
	str	r1, [sp, #0xc]
	mov	r9, r3
.Lce68c:
	mov	r3, r10
	add	r6, r3, r2
	ldr	r5, [sp, #0x10]
	ldr	r3, [r6]
	ldrsh	r0, [r3, r5]
	bl	_GetBattleActor
	ldr	r5, [r0]
	bl	InitMatrixStack
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x18]
	bl	MatrixSetLook
	ldr	r3, [r5, #8]
	mov	r2, r9
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r9
	str	r3, [r2, #8]
	bl	MatrixTranslatev
	mov	r3, r11
	ldr	r1, [sp, #0x28]
	lsl	r5, r3, #5
	cmp	r1, r5
	ble	.Lce7ae
	lsl	r0, r1, #9
	bl	MatrixPitch
	mov	r3, r5
	ldr	r2, [sp, #0x28]
	add	r3, #0x20
	cmp	r2, r3
	bne	.Lce6ec
	ldr	r3, [r6]
	ldr	r5, [sp, #0x10]
	ldrsh	r0, [r3, r5]
	mov	r3, #0x20
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r11
	bl	SetBattleActorState
.Lce6ec:
	mov	r2, r11
	lsl	r2, #3
	mov	r3, #0x3c
	ldr	r5, [sp, #0xc]
	ldr	r1, =gBuffer
	add	r3, sp
	str	r2, [sp, #0x14]
	mov	r4, #0
	mov	r8, r3
	add	r6, r5, r1
.Lce700:
	ldr	r2, [sp, #0x14]
	ldr	r5, [sp, #0x28]
	add	r3, r2, r4
	lsl	r3, #2
	cmp	r5, r3
	ble	.Lce7a6
	ldr	r3, [r6]
	asr	r3, #8
	mov	r0, r3
	mul	r0, r3
	ldr	r3, [r6, #4]
	asr	r3, #8
	mov	r2, r3
	mul	r2, r3
	ldr	r3, [r6, #8]
	asr	r3, #8
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	str	r4, [sp, #8]
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	asr	r7, r0, #8
	ldr	r4, [sp, #8]
	cmp	r7, #0
	beq	.Lce7a6
	mov	r1, r8
	mov	r0, r6
	bl	Func_80e3944
	mov	r2, r8
	ldr	r5, [r2]
	ldr	r4, [sp, #8]
	asr	r5, #1
	mov	r0, r4
	str	r5, [r2]
	mov	r1, #3
	bl	__modsi3
	mov	r2, r8
	lsl	r1, r0, #3
	ldr	r3, [r2, #4]
	add	r1, r0
	mov	r2, #0x18
	sub	r5, #0xc
	lsl	r1, #6
	sub	r3, #0xc
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r0, [sp, #0x2c]
	mov	r2, r5
	add	r1, r10
	ldr	r5, [sp, #0x20]
	bl	_call_via_r5
	ldr	r5, [r6]
	mov	r1, r7
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r6]
	ldr	r5, [r6, #4]
	mov	r1, r7
	mov	r0, r5
	bl	__divsi3
	sub	r5, r0
	str	r5, [r6, #4]
	ldr	r5, [r6, #8]
	mov	r1, r7
	mov	r0, r5
	bl	__divsi3
	ldr	r3, [r6, #0x18]
	sub	r5, r0
	add	r3, #1
	str	r5, [r6, #8]
	str	r3, [r6, #0x18]
	ldr	r4, [sp, #8]
.Lce7a6:
	add	r4, #1
	add	r6, #0x1c
	cmp	r4, #8
	bne	.Lce700
.Lce7ae:
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	mov	r3, #0xe0
	lsl	r3, #3
	add	r2, r3
	add	r1, #2
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	mov	r5, #1
	ldr	r3, [r3, #0x14]
	add	r11, r5
	cmp	r11, r3
	beq	.Lce7d0
	b	.Lce68c
.Lce7d0:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x28]
	ldr	r3, =0x7828
	add	r2, #1
	str	r2, [sp, #0x28]
	add	r3, r10
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r3, #5
	add	r3, #0x60
	cmp	r2, r3
	beq	.Lce7fa
	b	.Lce5ee
.Lce7fa:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r0, =Func_80dbb9c
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Haunt
