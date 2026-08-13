	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unused_ElementOrbs  @ 0x080dc1ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r2}
	ldr	r5, =0x7828
	mov	r11, r2
	ldr	r3, [r3]
	sub	sp, #0x34
	add	r5, r11
	str	r3, [sp, #0x10]
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r0, =_FILE_8c
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r3, [r5]
	ldr	r0, [r3, #4]
	mov	r3, #1
	eor	r0, r3
	add	r1, sp, #0x14
	bl	BuildDraw2DFuncs
	ldr	r5, =gBuffer
	mov	r3, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r6, #0
.Ldc236:
	bl	Random
	mov	r2, r8
	and	r0, r2
	sub	r0, #0x7f
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	mov	r3, r8
	and	r0, r3
	sub	r0, #0x7f
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	mov	r2, r8
	and	r0, r2
	sub	r0, #0x7f
	mov	r3, #0x80
	lsl	r0, #16
	add	r7, #1
	lsl	r3, #1
	str	r0, [r5, #8]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, r3
	bne	.Ldc236
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #1
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r5, #0
	add	r3, r11
	mov	r1, #0x90
	str	r5, [r3]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r3, #0xa0
	mov	r2, sp
	add	r2, #0x28
	lsl	r3, #15
	str	r2, [sp, #0xc]
	str	r5, [r2]
	str	r3, [r2, #4]
	str	r5, [r2, #8]
	mov	r10, r5
.Ldc2a2:
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	ldr	r0, [sp, #0xc]
	bl	MatrixTranslatev
	mov	r3, r10
	neg	r3, r3
	mov	r2, r10
	str	r3, [sp, #8]
	lsl	r2, #8
	lsl	r3, #8
	ldr	r6, =gBuffer
	mov	r7, #0
	mov	r8, r3
	mov	r9, r2
.Ldc2ce:
	mov	r3, r7
	cmp	r7, #0
	bge	.Ldc2d6
	add	r3, r7, #3
.Ldc2d6:
	asr	r3, #2
	cmp	r10, r3
	ble	.Ldc3d2
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	bne	.Ldc3d2
	bl	MatrixPush
	mov	r3, #3
	and	r3, r7
	cmp	r3, #1
	beq	.Ldc30a
	cmp	r3, #1
	bgt	.Ldc2f8
	cmp	r3, #0
	beq	.Ldc302
	b	.Ldc326
.Ldc2f8:
	cmp	r3, #2
	beq	.Ldc312
	cmp	r3, #3
	beq	.Ldc31a
	b	.Ldc326
.Ldc302:
	mov	r0, r9
	bl	MatrixYaw
	b	.Ldc326
.Ldc30a:
	mov	r0, r8
	bl	MatrixPitch
	b	.Ldc326
.Ldc312:
	mov	r0, r8
	bl	MatrixRoll
	b	.Ldc326
.Ldc31a:
	mov	r0, r8
	bl	MatrixPitch
	mov	r0, r8
	bl	MatrixRoll
.Ldc326:
	add	r5, sp, #0x1c
	mov	r1, r5
	mov	r0, r6
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	bl	MatrixPop
	ldr	r2, [r5, #8]
	cmp	r2, #0xf9
	bgt	.Ldc346
	mov	r3, #0xfa
	str	r3, [r5, #8]
	mov	r2, #0xfa
.Ldc346:
	ldr	r3, =0x27a
	cmp	r2, r3
	ble	.Ldc350
	str	r3, [r5, #8]
	mov	r2, r3
.Ldc350:
	mov	r3, r2
	sub	r3, #0xfa
	cmp	r3, #0
	bge	.Ldc35a
	add	r3, #0x3f
.Ldc35a:
	asr	r3, #6
	mov	r0, #9
	sub	r0, r3
	mov	r3, #3
	and	r3, r7
	lsl	r1, r3, #1
	add	r1, r3
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	lsl	r1, #7
	add	r1, r3
	sub	r3, r4, #2
	ldrh	r3, [r2, r3]
	lsl	r1, #1
	add	r1, r3
	lsr	r3, r0, #31
	ldr	r2, [r5]
	add	r3, r0, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	add	r1, r11
	sub	r3, r0
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x10]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e38b8
	mov	r3, r7
	cmp	r7, #0
	bge	.Ldc3a6
	add	r3, r7, #3
.Ldc3a6:
	asr	r3, #2
	add	r3, #0x1e
	cmp	r10, r3
	ble	.Ldc3d2
	ldr	r2, [r6]
	ldr	r3, [r6, #0xc]
	neg	r2, r2
	asr	r2, #8
	ldr	r1, [r6, #4]
	add	r3, r2
	neg	r1, r1
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	asr	r1, #8
	ldr	r0, [r6, #8]
	add	r3, r1
	neg	r0, r0
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x14]
	asr	r0, #8
	add	r3, r0
	str	r3, [r6, #0x14]
.Ldc3d2:
	ldr	r2, [sp, #8]
	lsl	r3, r2, #3
	mov	r2, r10
	add	r8, r3
	add	r7, #1
	lsl	r3, r2, #3
	add	r9, r3
	add	r6, #0x1c
	cmp	r7, #0x40
	beq	.Ldc3e8
	b	.Ldc2ce
.Ldc3e8:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0xa0
	beq	.Ldc402
	b	.Ldc2a2
.Ldc402:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Unused_ElementOrbs
