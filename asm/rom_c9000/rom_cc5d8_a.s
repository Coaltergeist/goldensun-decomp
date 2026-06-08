	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_DjinnSet
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #0x18]
	ldr	r1, =0x782c
	mov	r0, #0x27
	bl	galloc_iwram
	mov	r1, #0x80
	mov	r9, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r1, =0x60e
	str	r0, [sp, #0x14]
	mov	r0, #0x29
	bl	galloc_iwram
	ldr	r5, =0x7828
	str	r0, [sp, #8]
	ldr	r0, [sp, #0x18]
	add	r5, r9
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x77b8
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lcc65c	@ 0x100c
	strh	r3, [r2]
	ldr	r3, .Lcc660	@ 0x100
	sub	r2, #0x32
	strh	r3, [r2]
	ldr	r0, =_FILE_45
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #0
	ldr	r0, =_FILE_76
	ldr	r1, [sp, #8]
	mov	r2, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.Lcc694
	cmp	r3, #1
	bgt	.Lcc68a
	b	.Lcc684

	.align	2, 0
.Lcc65c:
	.word	0x100c
.Lcc660:
	.word	0x100
	.pool

.Lcc684:
	cmp	r3, #0
	beq	.Lcc690
	b	.Lcc6a8
.Lcc68a:
	cmp	r3, #2
	beq	.Lcc698
	b	.Lcc6a8
.Lcc690:
	ldr	r0, =_FILE_48
	b	.Lcc6aa
.Lcc694:
	ldr	r0, =_FILE_57
	b	.Lcc6aa
.Lcc698:
	ldr	r0, =_FILE_47
	b	.Lcc6aa

	.pool_aligned

.Lcc6a8:
	ldr	r0, =_FILE_46
.Lcc6aa:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	ldr	r5, =gBuffer
	mov	r7, #0
.Lcc6c0:
	mov	r3, #0x80
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	ldr	r3, =0xffff
	and	r3, r0
	str	r3, [r5]
	bl	Random
	ldr	r3, =0x1ff
	mov	r1, #0x80
	and	r3, r0
	lsl	r1, #3
	add	r3, r1
	str	r3, [r5, #8]
	neg	r3, r7
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Lcc6c0
	mov	r5, #0xe1
	lsl	r5, #7
	mov	r7, #0
	add	r5, r9
.Lcc6f4:
	bl	Random
	ldr	r3, =0xffff
	and	r3, r0
	str	r3, [r5]
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5, #4]
	mov	r3, #0xf
	and	r3, r7
	add	r3, #0x10
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Lcc6f4
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r3, #3
	str	r3, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, #0x8c
	str	r3, [sp, #0xc]
	bl	_PlaySound
	mov	r3, #0x1c
	mov	r2, #0
	add	r3, sp
	mov	r10, r2
	mov	r11, r3
.Lcc75e:
	ldr	r4, [sp, #0x18]
	mov	r1, r11
	ldr	r0, [r4, #8]
	mov	r5, r11
	bl	GetBattleActorPos2
	ldr	r2, [r5]
	mov	r3, #0x40
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	mov	r0, r10
	str	r3, [r1]
	cmp	r0, #0x31
	ble	.Lcc78a
	ldr	r3, .Lcc7b4	@ 0x70
	lsl	r2, r0, #1
	sub	r3, r2
	ldr	r2, .Lcc7b8	@ 0x1000
	add	r1, #0x2a
	orr	r3, r2
	strh	r3, [r1]
.Lcc78a:
	mov	r1, r10
	cmp	r1, #0x1a
	bne	.Lcc7e4
	mov	r0, #0xd4
	bl	_PlaySound
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #0x14
	mov	r2, #1
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, #0
	bl	Func_80d6888
	b	.Lcc7e4

	.align	2, 0
.Lcc7b4:
	.word	0x70
.Lcc7b8:
	.word	0x1000
	.pool

.Lcc7e4:
	mov	r0, r10
	sub	r0, #0x1c
	cmp	r0, #0x14
	bhi	.Lcc816
	mov	r1, #3
	bl	__divsi3
	lsl	r1, r0, #3
	add	r1, r0
	lsl	r1, #8
	mov	r3, #0xa0
	lsl	r3, #5
	add	r1, r9
	mov	r4, r11
	add	r1, r3
	ldr	r3, [r4, #4]
	mov	r2, #0x30
	str	r2, [sp]
	str	r2, [sp, #4]
	sub	r3, #0x18
	ldr	r0, [sp, #0x14]
	mov	r2, #0x28
	ldr	r5, [sp, #0xc]
	bl	_call_via_r5
.Lcc816:
	mov	r0, r10
	cmp	r0, #0xe
	bhi	.Lcc878
	mov	r1, #3
	bl	__divsi3
	mov	r1, #5
	bl	__modsi3
	ldr	r6, =iwram_3001f0c
	lsl	r0, #10
	mov	r7, #0
	mov	r8, r0
.Lcc830:
	ldr	r3, =.Lee060
	ldrb	r2, [r3, r7]
	mov	r3, #3
	orr	r3, r2
	mov	r2, #2
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r3, =.Lee058
	ldrsb	r2, [r3, r7]
	ldr	r3, =.Lee05c
	mov	r5, r11
	ldrsb	r1, [r3, r7]
	ldr	r3, [r5, #4]
	ldr	r4, [r6]
	add	r3, r1
	mov	r1, #0x20
	str	r1, [sp]
	str	r1, [sp, #4]
	mov	r1, r9
	str	r4, [sp, #0x10]
	add	r2, #0x20
	sub	r3, #0x20
	ldr	r0, [sp, #0x14]
	add	r1, r8
	bl	_call_via_r4
	add	r7, #1
	mov	r0, #0x2f
	bl	gfree
	cmp	r7, #4
	bne	.Lcc830
.Lcc878:
	mov	r0, r10
	cmp	r0, #0
	blt	.Lcc8f0
	mov	r5, #0xe1
	lsl	r5, #7
	mov	r7, #0
	add	r5, r9
.Lcc886:
	ldr	r2, [r5, #0x18]
	cmp	r2, #0
	blt	.Lcc8e8
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.Lcc8e8
	asr	r3, r2, #3
	ldr	r0, [r5]
	add	r6, r3, #1
	bl	sin
	ldr	r3, [r5, #4]
	mul	r3, r0
	asr	r3, #16
	add	r3, #0x40
	ldr	r0, [r5]
	mov	r8, r3
	bl	cos
	ldr	r3, [r5, #4]
	mul	r3, r0
	mov	r1, r11
	ldr	r2, [r1, #4]
	asr	r3, #16
	add	r4, r3, r2
	cmp	r6, #0
	bgt	.Lcc8be
	mov	r6, #1
.Lcc8be:
	lsl	r0, r6, #1
	ldr	r2, =Data_ede5c
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #8]
	mov	r3, r8
	add	r1, r2, r1
	str	r0, [sp]
	sub	r2, r3, r6
	str	r0, [sp, #4]
	sub	r3, r4, r6
	ldr	r0, [sp, #0x14]
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
	ldr	r3, [r5, #4]
	sub	r3, #2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lcc8e8:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Lcc886
.Lcc8f0:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	mov	r5, #1
	mov	r0, #1
	str	r3, [r2]
	add	r10, r5
	bl	WaitFrames
	mov	r0, r10
	cmp	r0, #0x38
	beq	.Lcc90e
	b	.Lcc75e
.Lcc90e:
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	mov	r0, #0x29
	bl	gfree
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_DjinnSet

.thumb_func_start Func_80cc960
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldr	r3, [r3]
	ldr	r1, =0x778c
	sub	sp, #0x30
	str	r3, [sp, #8]
	add	r2, r3, r1
	ldr	r3, [r2]
	mov	r11, r3
	mov	r1, r11
	add	r3, #1
	str	r3, [r2]
	cmp	r1, #0
	bne	.Lcc9c8
	mov	r2, #0
	ldr	r6, =0xffff
	ldr	r5, =gBuffer
	mov	r10, r2
.Lcc990:
	bl	Random
	mov	r3, #0xf
	and	r0, r3
	mov	r3, r0
	add	r3, #0x30
	add	r0, #0x28
	str	r3, [r5]
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r6
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #1
	mov	r1, #0x80
	and	r0, r6
	add	r10, r3
	lsl	r1, #1
	str	r0, [r5, #0x14]
	add	r5, #0x1c
	cmp	r10, r1
	bne	.Lcc990
.Lcc9c8:
	mov	r2, #0
	add	r3, sp, #0x24
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	mov	r10, r2
	ldr	r2, =gBuffer
	mov	r9, r3
	mov	r8, r2
.Lcc9d8:
	mov	r3, r10
	cmp	r3, #0
	bge	.Lcc9e0
	add	r3, #3
.Lcc9e0:
	asr	r3, #2
	cmp	r11, r3
	ble	.Lccaae
	mov	r1, r8
	ldr	r3, [r1]
	cmp	r3, #0
	ble	.Lccaae
	bl	InitMatrixStack
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	bl	MatrixRoll
	mov	r3, r8
	ldr	r0, [r3, #0xc]
	bl	MatrixPitch
	mov	r1, r8
	ldr	r0, [r1, #0x10]
	bl	MatrixYaw
	mov	r2, r8
	ldr	r3, [r2]
	add	r4, sp, #0x18
	mov	r1, r9
	str	r3, [r1]
	mov	r0, r9
	mov	r1, r4
	str	r4, [sp, #4]
	bl	Func_80e3944
	ldr	r4, [sp, #4]
	ldr	r3, [r4]
	add	r3, #0x40
	str	r3, [r4]
	ldr	r3, [r4, #4]
	add	r3, #0x50
	str	r3, [r4, #4]
	mov	r2, r8
	ldr	r3, [r2, #4]
	add	r7, sp, #0xc
	mov	r1, r9
	str	r3, [r1]
	mov	r0, r9
	mov	r1, r7
	bl	Func_80e3944
	ldr	r3, [r7]
	add	r3, #0x40
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r3, #0x50
	str	r3, [r7, #4]
	mov	r3, r8
	ldr	r2, [r3, #4]
	sub	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r3]
	mov	r1, r8
	sub	r3, #4
	str	r3, [r1]
	ldr	r4, [sp, #4]
	cmp	r2, #0
	bge	.Lcca64
	mov	r3, #0
	str	r3, [r1, #4]
.Lcca64:
	mov	r2, r8
	ldr	r5, [r2, #4]
	neg	r5, r5
	lsr	r3, r5, #31
	add	r5, r3
	ldr	r2, [r4]
	ldr	r0, [r7]
	asr	r5, #1
	mov	r6, r5
	ldr	r3, [r4, #4]
	ldr	r1, [r7, #4]
	sub	r0, #1
	sub	r2, #1
	add	r6, #0x30
	str	r4, [sp, #4]
	str	r6, [sp]
	bl	DrawLine
	ldr	r4, [sp, #4]
	ldr	r1, [r7, #4]
	ldr	r3, [r4, #4]
	ldr	r2, [r4]
	ldr	r0, [r7]
	sub	r1, #1
	sub	r3, #1
	str	r6, [sp]
	bl	DrawLine
	ldr	r4, [sp, #4]
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	ldr	r2, [r4]
	ldr	r3, [r4, #4]
	add	r5, #0x38
	str	r5, [sp]
	bl	DrawLine
.Lccaae:
	mov	r1, #1
	add	r10, r1
	mov	r3, #0x1c
	mov	r2, r10
	add	r8, r3
	cmp	r2, #0x40
	bne	.Lcc9d8
	ldr	r3, [sp, #8]
	ldr	r1, =0x7824
	add	r2, r3, r1
	mov	r3, #1
	str	r3, [r2]
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80cc960

.thumb_func_start Anim_UnleashIntro
	push	{r5, r6, lr}
	ldr	r1, =0x782c
	mov	r6, r0
	mov	r0, #0x27
	bl	galloc_iwram
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	mov	r0, #0
	bl	AnimStart
	ldr	r3, =0x77b4
	add	r2, r5, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lccb48	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Lccb4c	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	cmp	r6, #4
	bhi	.Lccb70
	ldr	r2, =.Lccb2c
	lsl	r3, r6, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lccb2c:
	.word	.Lccb40
	.word	.Lccb44
	.word	.Lccb68
	.word	.Lccb6c
	.word	.Lccb70
.Lccb40:
	ldr	r0, =_FILE_c8
	b	.Lccb72
.Lccb44:
	ldr	r0, =_FILE_cf
	b	.Lccb72

	.align	2, 0
.Lccb48:
	.word	0x100
.Lccb4c:
	.word	0x1010
	.pool

.Lccb68:
	ldr	r0, =_FILE_b4
	b	.Lccb72
.Lccb6c:
	ldr	r0, =_FILE_cb
	b	.Lccb72
.Lccb70:
	ldr	r0, =_FILE_be
.Lccb72:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	ldr	r3, =0x778c
	add	r2, r5, r3
	mov	r3, #0
	str	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #7
	add	r2, r5, r3
	mov	r3, #3
	str	r3, [r2]
	ldr	r3, =0x7784
	add	r2, r5, r3
	ldr	r3, =0x6060606
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_80cc960
	bl	StartTask
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Anim_UnleashIntro

.thumb_func_start Func_80ccbdc
	push	{lr}
	ldr	r0, =Func_80cc960
	bl	StopTask
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r1, #0x80
	ldr	r3, =Func_80008d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r0, =Func_80cd4b4
	bl	StopTask
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	pop	{r0}
	bx	r0
.func_end Func_80ccbdc

