	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_DragonCloud  @ 0x080e89ec
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
	sub	sp, #0xe4
	str	r3, [sp, #0x2c]
	mov	r3, #0
	str	r3, [sp, #0x24]
	str	r3, [sp, #0x1c]
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r3, r9
	str	r2, [sp, #0x14]
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le8a54	@ 0x1010
	ldr	r0, =_FILE_c2
	strh	r3, [r2]
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r5, #0xea
	ldr	r0, =0xfffff1f0
	mov	r1, #0xb4
	lsl	r5, #2
	lsl	r1, #5
	mov	r2, r9
	mov	r7, #1
	mov	r14, r0
	mov	r12, r1
	add	r4, r2, r5
.Le8a46:
	mov	r3, r14
	mov	r2, r9
	mov	r6, #0
	lsl	r0, r7, #2
	add	r1, r4, r3
	add	r2, r12
	b	.Le8a6c

	.align	2, 0
.Le8a54:
	.word	0x1010
	.pool

.Le8a6c:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r7, #0xa
	ble	.Le8a80
	sub	r3, r0
	add	r3, #0x28
	cmp	r3, #0
	bge	.Le8a7e
	mov	r3, #0
.Le8a7e:
	strb	r3, [r1]
.Le8a80:
	add	r6, #1
	add	r1, #1
	cmp	r6, r5
	bne	.Le8a6c
	mov	r0, #0xea
	lsl	r0, #2
	add	r7, #1
	add	r4, r0
	cmp	r7, #0x14
	bne	.Le8a46
	ldr	r1, [sp, #0x14]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r1, #0xf0
	lsl	r1, #6
	ldr	r0, =_FILE_b4
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r2, #1
	ldr	r0, =_FILE_7d
	ldr	r1, =gBuffer
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r1, sp
	ldr	r0, [r3, #4]
	add	r1, #0x30
	str	r1, [sp, #0x10]
	bl	BuildDraw2DFuncs
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
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	ldr	r5, =0x7160
	mov	r6, #0
	mov	r7, #0x3f
	add	r5, r9
.Le8af2:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le8b02
	ldr	r3, =0xffc80000
	b	.Le8b06
.Le8b02:
	mov	r3, #0xe0
	lsl	r3, #14
.Le8b06:
	str	r3, [r5]
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	bl	Random
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	mov	r3, #1
	add	r6, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x28
	bne	.Le8af2
	ldr	r5, =0x75c0
	mov	r6, #0
	mov	r8, r6
	mov	r7, #0x3f
	add	r5, r9
.Le8b46:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le8b56
	ldr	r3, =0xffc80000
	b	.Le8b5a
.Le8b56:
	mov	r3, #0xe0
	lsl	r3, #14
.Le8b5a:
	str	r3, [r5]
	mov	r3, #0xa0
	lsl	r3, #13
	mov	r2, r8
	str	r3, [r5, #4]
	str	r2, [r5, #8]
	bl	Random
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	lsl	r0, #12
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x20
	lsl	r0, #14
	mov	r3, r8
	add	r6, #1
	str	r0, [r5, #0x14]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x10
	bne	.Le8b46
	mov	r5, #0xe1
	lsl	r5, #7
	ldr	r6, =0xffffc000
	mov	r7, #0
	add	r5, r9
.Le8b9e:
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le8bbc
	mov	r0, r6
	bl	sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	add	r3, #0x58
	b	.Le8bce
.Le8bbc:
	mov	r0, r6
	bl	sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	neg	r3, r3
	asr	r3, #16
	add	r3, #0x10
.Le8bce:
	str	r3, [r5]
	mov	r0, r6
	bl	cos
	lsl	r0, #4
	asr	r0, #16
	add	r0, #0x28
	str	r0, [r5, #4]
	lsl	r3, r7, #1
	mov	r0, #0x80
	neg	r3, r3
	lsl	r0, #5
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r6, r0
	add	r5, #0x1c
	cmp	r7, #8
	bne	.Le8b9e
	ldr	r0, =_FILE_d3
	bl	GetFile
	ldr	r2, =0x7828
	mov	r1, #0
	add	r2, r9
	str	r0, [sp, #0x20]
	str	r1, [sp, #0x28]
	str	r2, [sp, #0xc]
.Le8c04:
	ldr	r3, =iwram_3001e80
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x53
	bne	.Le8c16
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le8c16:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0
	bne	.Le8c22
	mov	r0, #0x88
	bl	_PlaySound
.Le8c22:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x32
	bne	.Le8c2e
	mov	r0, #0x88
	bl	_PlaySound
.Le8c2e:
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Le8c4a
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x3f
	bgt	.Le8c5e
	mov	r0, r11
	ldrh	r3, [r0, #0x36]
	ldr	r1, =0xffffff00
	mov	r2, r11
	add	r3, r1
	b	.Le8c5c
.Le8c4a:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x3f
	bgt	.Le8c5e
	mov	r0, r11
	ldrh	r3, [r0, #0x36]
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r1
	mov	r2, r11
.Le8c5c:
	strh	r3, [r2, #0x36]
.Le8c5e:
	mov	r3, #0x64
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	_Func_80c0cec
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x11
	bgt	.Le8cce
	mov	r0, r3
	mov	r1, #3
	bl	__divsi3
	ldr	r2, =Data_edeb2
	mov	r5, r0
	lsl	r0, r5, #1
	ldrh	r1, [r2, r0]
	mov	r10, r0
	mov	r3, #0xf0
	ldr	r0, =Data_edeab
	lsl	r3, #6
	mov	r8, r3
	ldrb	r3, [r0, r5]
	ldr	r0, =Data_ede9f
	ldrb	r2, [r0, r5]
	ldr	r6, =Data_edea5
	str	r2, [sp]
	ldrb	r2, [r6, r5]
	add	r1, r9
	add	r1, r8
	add	r3, #0x3c
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x30]
	mov	r2, #0x30
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r2, =Data_edeb2
	ldr	r0, =Data_edeab
	mov	r3, r10
	ldrh	r1, [r2, r3]
	ldrb	r3, [r0, r5]
	ldr	r0, =Data_ede9f
	ldrb	r2, [r0, r5]
	str	r2, [sp]
	ldrb	r2, [r6, r5]
	str	r2, [sp, #4]
	ldr	r2, [sp, #0x10]
	add	r1, r9
	ldr	r4, [r2, #4]
	add	r1, r8
	add	r3, #0x3c
	ldr	r0, [sp, #0x2c]
	mov	r2, #0x38
	bl	_call_via_r4
.Le8cce:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x12
	str	r3, [sp, #8]
	cmp	r3, #0x28
	bhi	.Le8d1a
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x12
	bne	.Le8d00
	ldr	r1, [sp, #0x20]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #1]
	lsl	r3, #8
	add	r3, r2
	str	r3, [sp, #0x1c]
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1, #3]
	lsl	r3, #8
	add	r3, r2
	add	r3, #0x10
	add	r1, #4
	str	r3, [sp, #0x18]
	str	r1, [sp, #0x20]
	b	.Le8d1a
.Le8d00:
	ldr	r2, [sp, #0x20]
	ldr	r0, [sp, #0x1c]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	add	r0, r3
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x18]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	add	r2, #2
	add	r1, r3
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x20]
.Le8d1a:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x4e
	cmp	r3, #0x28
	bhi	.Le8d3a
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x4e
	bne	.Le8d34
	mov	r3, #0x38
	neg	r3, r3
	mov	r0, #0x30
	str	r3, [sp, #0x1c]
	str	r0, [sp, #0x18]
	b	.Le8d3a
.Le8d34:
	ldr	r1, [sp, #0x18]
	sub	r1, #0x10
	str	r1, [sp, #0x18]
.Le8d3a:
	mov	r2, #0x18
	mov	r3, #0x27
	mov	r6, #0x13
	mov	r10, r2
	mov	r8, r3
	mov	r7, #0x9c
.Le8d46:
	mov	r3, r6
	ldr	r0, [sp, #0x28]
	add	r3, #0x12
	cmp	r0, r3
	ble	.Le8daa
	add	r3, #0x41
	cmp	r0, r3
	bgt	.Le8daa
	lsl	r0, r6, #3
	mov	r3, r0
	add	r2, sp, #0x44
	sub	r3, #8
	ldr	r3, [r2, r3]
	str	r3, [r2, r0]
	sub	r3, r0, #4
	ldr	r5, [r2, r3]
	str	r5, [r2, r7]
	cmp	r6, #0xa
	ble	.Le8d90
	mov	r3, #0xea
	lsl	r3, #2
	mov	r1, r6
	mul	r1, r3
	ldr	r3, =0xfffff1f0
	add	r1, r9
	ldr	r2, [r2, r0]
	add	r1, r3
	mov	r0, r10
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	mov	r3, r5
	bl	_call_via_r4
	b	.Le8daa
.Le8d90:
	mov	r1, r8
	ldr	r2, [r2, r0]
	str	r1, [sp, #4]
	mov	r1, #0xb4
	mov	r0, r10
	lsl	r1, #5
	str	r0, [sp]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	add	r1, r9
	mov	r3, r5
	bl	_call_via_r4
.Le8daa:
	sub	r6, #1
	sub	r7, #8
	cmp	r6, #0
	bne	.Le8d46
	bl	InitMatrixStack
	mov	r1, r11
	add	r1, #0xc
	mov	r0, r11
	bl	MatrixSetLook
	ldr	r2, [sp, #8]
	cmp	r2, #0x41
	bhi	.Le8eb4
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Le8e2c
	ldr	r3, [sp, #0x1c]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	mov	r3, #0x40
	add	r1, sp, #0x38
	sub	r3, r2
	b	.Le8e38

	.pool_aligned

.Le8e2c:
	ldr	r0, [sp, #0x1c]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	add	r1, sp, #0x38
	add	r3, #0x40
.Le8e38:
	str	r3, [r1]
	ldr	r2, [sp, #0x18]
	mov	r3, #0x3c
	sub	r3, r2
	str	r3, [r1, #4]
	add	r4, sp, #0x44
	ldr	r2, [r4, #4]
	sub	r3, r2
	sub	r3, #0x18
	lsr	r2, r3, #31
	add	r3, r2
	asr	r0, r3, #1
	cmp	r0, #2
	ble	.Le8e56
	mov	r0, #2
.Le8e56:
	mov	r3, #2
	neg	r3, r3
	cmp	r0, r3
	bge	.Le8e62
	mov	r0, #2
	neg	r0, r0
.Le8e62:
	ldr	r2, [sp, #0x24]
	add	r2, r0
	str	r2, [sp, #0x24]
	cmp	r2, #8
	ble	.Le8e70
	mov	r3, #8
	str	r3, [sp, #0x24]
.Le8e70:
	mov	r2, #8
	ldr	r0, [sp, #0x24]
	neg	r2, r2
	cmp	r0, r2
	bge	.Le8e7c
	str	r2, [sp, #0x24]
.Le8e7c:
	ldr	r3, [sp, #0x24]
	cmp	r3, #0
	bge	.Le8e84
	add	r3, #3
.Le8e84:
	ldr	r2, [r1]
	asr	r3, #2
	add	r0, r3, #2
	mov	r3, r2
	sub	r3, #0xc
	str	r3, [r4]
	ldr	r3, [r1, #4]
	mov	r1, r3
	sub	r1, #0x14
	str	r1, [r4, #4]
	lsl	r1, r0, #3
	add	r1, r0
	mov	r0, #0x18
	lsl	r1, #7
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	add	r1, r9
	sub	r2, #0x12
	sub	r3, #0x16
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le8eb4:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x53
	bne	.Le8ee4
	ldr	r3, =0x77a8
	mov	r2, #8
	add	r3, r9
	str	r2, [r3]
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #7
	str	r2, [sp]
	mov	r3, #0
	mov	r2, #5
	bl	SetBattleActorState
	ldr	r2, [sp, #0xc]
	ldr	r3, [r2]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_SetBattleActorKnockback
.Le8ee4:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x53
	ble	.Le8fac
	ldr	r6, =0x7160
	mov	r7, #0
	add	r6, r9
.Le8ef0:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	blt	.Le8fa4
	add	r5, sp, #0x38
	mov	r0, r6
	mov	r1, r5
	bl	Func_80e3944
	ldr	r3, [r5]
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #8]
	cmp	r3, #0x9f
	bgt	.Le8f10
	mov	r3, #0xa0
	str	r3, [r5, #8]
.Le8f10:
	ldr	r2, =0x31f
	cmp	r3, r2
	ble	.Le8f1a
	str	r2, [r5, #8]
	mov	r3, r2
.Le8f1a:
	mov	r2, r3
	sub	r2, #0xa0
	cmp	r2, #0
	bge	.Le8f24
	add	r2, #0x3f
.Le8f24:
	asr	r2, #6
	mov	r3, #9
	sub	r4, r3, r2
	cmp	r7, #0x2f
	ble	.Le8f60
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xb
	bgt	.Le8f86
	lsr	r1, r3, #31
	add	r1, r3, r1
	asr	r1, #1
	ldr	r3, =gBuffer
	lsl	r1, #11
	ldr	r2, [r5]
	add	r1, r3
	mov	r0, #0x20
	ldr	r3, [r5, #4]
	str	r0, [sp]
	mov	r0, #0x40
	sub	r3, #0x20
	str	r0, [sp, #4]
	sub	r2, #0x10
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
	add	r3, #1
	str	r3, [r6, #0x18]
	b	.Le8f86
.Le8f60:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x14]
	lsr	r3, r4, #31
	add	r3, r4, r3
	add	r1, r2, r1
	ldr	r2, [r5]
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r5, #4]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x30]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
.Le8f86:
	ldr	r3, [r6]
	ldr	r2, [r6, #0xc]
	add	r3, r2
	ldr	r1, [r6, #0x10]
	str	r3, [r6]
	ldr	r3, [r6, #4]
	add	r3, r1
	str	r3, [r6, #4]
	ldr	r2, [r6, #0x14]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
	ldr	r3, =0xffffe000
	add	r1, r3
	str	r1, [r6, #0x10]
.Le8fa4:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0x38
	bne	.Le8ef0
.Le8fac:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x32
	bne	.Le8fd0
	ldr	r2, =0x77a8
	mov	r3, #0xc
	add	r2, r9
	str	r3, [r2]
	ldr	r1, [sp, #0xc]
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
.Le8fd0:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x31
	ble	.Le902a
	mov	r6, #0xe1
	lsl	r6, #7
	mov	r7, #0
	add	r6, r9
.Le8fde:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0xb
	bhi	.Le901e
	lsr	r4, r3, #31
	add	r4, r3, r4
	asr	r4, #1
	ldr	r0, =Data_edeb2
	lsl	r3, r4, #1
	ldrh	r1, [r0, r3]
	ldr	r3, =Data_ede9f
	mov	r2, #0xf0
	ldrb	r5, [r3, r4]
	lsl	r2, #6
	add	r1, r9
	add	r1, r2
	ldr	r2, [r6]
	lsr	r3, r5, #1
	sub	r2, r3
	ldr	r3, =Data_edeab
	ldrb	r0, [r3, r4]
	ldr	r3, [r6, #4]
	str	r5, [sp]
	add	r3, r0
	ldr	r0, =Data_edea5
	ldrb	r0, [r0, r4]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x10]
	ldr	r4, [r0, #4]
	ldr	r0, [sp, #0x2c]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
.Le901e:
	add	r3, #1
	add	r7, #1
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #8
	bne	.Le8fde
.Le902a:
	mov	r1, #8
	mov	r0, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x28]
	add	r1, #1
	str	r1, [sp, #0x28]
	cmp	r1, #0x96
	beq	.Le9050
	b	.Le8c04
.Le9050:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0xe4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_DragonCloud
