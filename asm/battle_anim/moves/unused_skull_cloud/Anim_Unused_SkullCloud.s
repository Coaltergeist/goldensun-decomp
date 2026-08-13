	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unused_SkullCloud  @ 0x080dc6bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001eec
	mov	r3, r5
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x40
	str	r3, [sp, #0x24]
	ldr	r3, =0x7828
	mov	r10, r1
	add	r3, r10
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r0, =_FILE_9e
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0xd8
	lsl	r1, #5
	add	r1, r10
	mov	r2, #0
	mov	r3, #0
	ldr	r0, =_FILE_6c
	bl	LoadVFXFile
	ldr	r0, =_FILE_bb
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, [r5, #0x1c]
	mov	r3, #2
	str	r2, [sp, #0x18]
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	bl	BuildDraw2DFuncEx
	ldr	r5, [r5, #0x20]
	str	r5, [sp, #0x1c]
	mov	r5, #0xe1
	mov	r3, #0
	lsl	r5, #7
	mov	r9, r3
	mov	r8, r3
	add	r5, r10
.Ldc746:
	bl	Random
	ldr	r3, =0xffff
	mov	r7, r0
	and	r7, r3
	bl	Random
	mov	r4, r8
	mov	r6, r0
	mov	r3, #0xff
	str	r4, [r5]
	str	r4, [r5, #4]
	str	r4, [r5, #8]
	mov	r0, r9
	mov	r1, #6
	and	r6, r3
	bl	__modsi3
	cmp	r0, #5
	bne	.Ldc776
	mov	r1, r8
	str	r1, [r5, #0xc]
	str	r1, [r5, #0x10]
	b	.Ldc792
.Ldc776:
	mov	r0, r7
	bl	sin
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r5, #0xc]
	mov	r0, r7
	bl	cos
	mov	r3, r6
	mul	r3, r0
	asr	r3, #9
	str	r3, [r5, #0x10]
.Ldc792:
	mov	r3, #1
	add	r9, r3
	mov	r2, r8
	mov	r4, r9
	str	r2, [r5, #0x14]
	str	r2, [r5, #0x18]
	add	r5, #0x1c
	cmp	r4, #0x40
	bne	.Ldc746
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r1, #0
	str	r1, [sp, #0x20]
.Ldc7c4:
	ldr	r3, =iwram_3001e80
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
	ldr	r2, =0x7828
	mov	r4, r10
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ldc7dc
	b	.Ldc8fa
.Ldc7dc:
	ldr	r1, [sp, #0x10]
	mov	r3, #0x28
	add	r1, #0xc
	mov	r4, #0
	add	r3, sp
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	mov	r8, r3
.Ldc7ec:
	ldr	r4, [sp, #0x14]
	mov	r1, r10
	ldr	r2, [r1, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	ldr	r5, [r0]
	bl	InitMatrixStack
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	bl	MatrixSetLook
	ldr	r3, [r5, #8]
	mov	r2, r8
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r8
	str	r3, [r2, #8]
	bl	MatrixTranslatev
	ldr	r4, [sp, #0x14]
	ldr	r1, [sp, #0x20]
	lsl	r3, r4, #3
	cmp	r1, r3
	blt	.Ldc8e0
	add	r3, #0x28
	cmp	r1, r3
	bge	.Ldc8e0
	ldr	r4, [sp, #8]
	lsl	r3, r4, #3
	sub	r3, r4
	lsl	r3, #2
	mov	r1, #0xe1
	mov	r2, #0
	add	r7, sp, #0x34
	add	r3, r10
	lsl	r1, #7
	mov	r9, r2
	mov	r11, r7
	add	r6, r3, r1
.Ldc848:
	ldr	r0, [r6, #0x18]
	mov	r1, #6
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #5
	ble	.Ldc858
	mov	r5, #5
.Ldc858:
	mov	r0, r6
	mov	r1, r11
	bl	Func_80e3944
	mov	r2, r11
	ldr	r3, [r2]
	asr	r3, #1
	str	r3, [r2]
	mov	r3, r9
	cmp	r3, #5
	bne	.Ldc8a2
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x3e
	lsl	r2, #4
	bl	Func_80e38b8
	lsl	r1, r5, #3
	add	r1, r5
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r0, #0x18
	lsl	r1, #7
	mov	r4, #0xd8
	lsl	r4, #5
	add	r1, r10
	str	r0, [sp]
	mov	r0, #0x30
	add	r1, r4
	str	r0, [sp, #4]
	sub	r2, #0xc
	sub	r3, #0x24
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
	b	.Ldc8ce
.Ldc8a2:
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x3c
	lsl	r2, #2
	bl	Func_80e38b8
	lsl	r1, r5, #3
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r0, #0x18
	add	r1, r5
	lsl	r1, #7
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	add	r1, r10
	sub	r2, #0xc
	sub	r3, #0x24
	ldr	r0, [sp, #0x24]
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Ldc8ce:
	ldr	r3, [r6, #0x18]
	mov	r1, #1
	add	r9, r1
	add	r3, #1
	mov	r2, r9
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r2, #6
	bne	.Ldc848
.Ldc8e0:
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #0x14]
	add	r3, #6
	add	r4, #1
	str	r3, [sp, #8]
	str	r4, [sp, #0x14]
	ldr	r2, =0x7828
	mov	r1, r10
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	cmp	r4, r3
	beq	.Ldc8fa
	b	.Ldc7ec
.Ldc8fa:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x20]
	add	r2, #1
	str	r2, [sp, #0x20]
	cmp	r2, #0x60
	beq	.Ldc914
	b	.Ldc7c4
.Ldc914:
	ldr	r0, =Task_BlitAnim
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
.func_end Anim_Unused_SkullCloud
