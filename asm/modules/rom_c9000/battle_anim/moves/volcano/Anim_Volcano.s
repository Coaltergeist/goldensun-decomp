	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Volcano  @ 0x080d4ce8
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
	str	r3, [sp, #0x28]
	ldr	r5, =0x7828
	mov	r11, r1
	ldr	r2, [r2, #8]
	add	r5, r11
	str	r2, [sp, #0x1c]
	str	r0, [r5]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld4d50	@ 0x1010
	ldr	r0, =_FILE_85
	strh	r3, [r2]
	mov	r1, r11
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r3, #0
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	bl	LoadVFXFile
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	bne	.Ld4d72
	ldr	r0, =_FILE_86
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	b	.Ld4d70

	.align	2, 0
.Ld4d50:
	.word	0x1010
	.pool

.Ld4d70:
	b	.Ld4d8a
.Ld4d72:
	cmp	r3, #2
	bne	.Ld4d8a
	ldr	r0, =_FILE_87
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Ld4d8a:
	mov	r6, #2
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
	str	r3, [sp, #0x2c]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x2c
	str	r2, [sp, #0x18]
	str	r3, [r2, #4]
	mov	r3, #0
	mov	r8, r3
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r1, #0
	lsl	r2, #3
.Ld4dca:
	mov	r5, #1
	add	r8, r5
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld4dca
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	bl	_GetBattleActor
	mov	r5, #0xe1
	ldr	r6, [r0]
	lsl	r5, #7
	mov	r0, #0
	ldr	r7, =.Lee29d
	mov	r8, r0
	add	r5, r11
.Ld4df2:
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x48
	lsl	r2, r3, #16
	mov	r3, #0
	str	r3, [r5, #4]
	ldr	r3, =0x7828
	add	r3, r11
	str	r2, [r5]
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	lsl	r3, #2
	add	r3, r8
	ldrsb	r3, [r7, r3]
	lsl	r3, #16
	str	r3, [r5, #8]
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.Ld4e20
	neg	r3, r2
	str	r3, [r5]
.Ld4e20:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #4
	bne	.Ld4df2
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r3, #0
	str	r3, [sp, #0x24]
.Ld4e4c:
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	ldr	r3, =0x7828
	add	r3, r11
	ldr	r2, [r3]
	ldr	r3, [r2, #0x18]
	cmp	r3, #2
	bne	.Ld4e74
	ldr	r7, [sp, #0x24]
	cmp	r7, #0x3f
	bgt	.Ld4e74
	ldr	r3, [r2, #4]
	cmp	r3, #0
	bne	.Ld4e6e
	ldrh	r3, [r5, #0x36]
	add	r3, #0xc0
	b	.Ld4e72
.Ld4e6e:
	ldrh	r3, [r5, #0x36]
	sub	r3, #0xc0
.Ld4e72:
	strh	r3, [r5, #0x36]
.Ld4e74:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0x10
	bne	.Ld4e80
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Ld4e80:
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	ldr	r1, [sp, #0x24]
	cmp	r1, #0x3f
	ble	.Ld4e96
	b	.Ld512e
.Ld4e96:
	mov	r2, #0
	ldr	r3, =0x7828
	str	r2, [sp, #0x20]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, =.Lee29a
	ldr	r3, [r3, #0x18]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Ld4eac
	b	.Ld512e
.Ld4eac:
	mov	r5, r1
	mov	r2, #0xdd
	mov	r1, #0xe1
	mov	r7, #1
	ldr	r0, =.Lee2a9
	lsl	r1, #7
	lsl	r2, #4
	mov	r3, #0x34
	and	r5, r7
	add	r1, r11
	add	r2, r11
	add	r3, sp
	str	r5, [sp, #0x14]
	str	r0, [sp, #0xc]
	str	r1, [sp, #8]
	str	r2, [sp, #0x10]
	mov	r9, r3
.Ld4ece:
	ldr	r0, [sp, #8]
	mov	r1, r9
	bl	Func_80e3944
	mov	r5, r9
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r5]
	ldr	r3, [r5, #4]
	sub	r3, #8
	str	r3, [r5, #4]
	ldr	r7, [sp, #0xc]
	ldr	r0, [sp, #0x24]
	ldrb	r3, [r7]
	cmp	r0, r3
	bne	.Ld4efa
	mov	r0, #0x91
	bl	_PlaySound
	ldrb	r3, [r7]
.Ld4efa:
	ldr	r1, [sp, #0x24]
	add	r3, #4
	cmp	r1, r3
	blt	.Ld4fc6
	ldr	r2, [sp, #0x20]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #3
	add	r3, r2
	lsl	r0, r1, #4
	add	r0, r3
	mov	r1, #0x68
	bl	__modsi3
	ldr	r5, [sp, #0x20]
	mov	r3, #1
	and	r5, r3
	ldr	r3, [sp, #0x38]
	ldr	r7, [sp, #0x18]
	mov	r8, r0
	sub	r3, r0
	mov	r6, #0x22
	mov	r0, #0x68
	str	r0, [sp, #4]
	ldr	r2, [sp, #0x34]
	str	r6, [sp]
	lsl	r5, #2
	add	r5, r7
	sub	r2, #0x11
	sub	r3, #0x68
	ldr	r4, [r5]
	ldr	r0, [sp, #0x28]
	mov	r1, r11
	bl	_call_via_r4
	mov	r1, r8
	str	r1, [sp, #4]
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x38]
	str	r6, [sp]
	sub	r2, #0x11
	sub	r3, r1
	ldr	r4, [r5]
	ldr	r0, [sp, #0x28]
	mov	r1, r11
	bl	_call_via_r4
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.Ld4f90
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x38]
	mov	r5, #0x14
	mov	r7, #0x25
	sub	r2, #0x14
	sub	r3, #0x18
	ldr	r4, [sp, #0x2c]
	ldr	r1, [sp, #0x10]
	str	r5, [sp]
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	ldr	r0, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	str	r5, [sp]
	str	r7, [sp, #4]
	ldr	r2, [sp, #0x34]
	ldr	r4, [r0, #4]
	sub	r3, #0x18
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x10]
	bl	_call_via_r4
	b	.Ld4fc6
.Ld4f90:
	ldr	r5, =0x10b4
	ldr	r2, [sp, #0x34]
	ldr	r3, [sp, #0x38]
	add	r5, r11
	mov	r1, #0x14
	mov	r7, #0x25
	sub	r2, #0x14
	sub	r3, #0x18
	str	r1, [sp]
	ldr	r4, [sp, #0x2c]
	mov	r1, r5
	str	r7, [sp, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	mov	r0, #0x14
	str	r0, [sp]
	ldr	r1, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	str	r7, [sp, #4]
	ldr	r2, [sp, #0x34]
	ldr	r4, [r1, #4]
	sub	r3, #0x18
	ldr	r0, [sp, #0x28]
	mov	r1, r5
	bl	_call_via_r4
.Ld4fc6:
	ldr	r5, [sp, #0xc]
	ldr	r7, [sp, #0x24]
	ldrb	r3, [r5]
	ldr	r2, =.Lee2a9
	cmp	r7, r3
	beq	.Ld4fd8
	add	r3, #0x10
	cmp	r7, r3
	blt	.Ld50b6
.Ld4fd8:
	mov	r0, #0
	ldr	r7, =gBuffer
	mov	r10, r0
	mov	r8, r0
.Ld4fe0:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.Ld50a6
	bl	Random
	ldr	r6, =0x3ff
	and	r6, r0
	bl	Random
	mov	r2, r9
	ldr	r3, [r2]
	lsl	r3, #8
	str	r3, [r7]
	ldr	r5, =0x7fff
	ldr	r3, [r2, #4]
	ldr	r1, =0xffffc000
	and	r5, r0
	mov	r0, #0x80
	lsl	r0, #5
	lsl	r3, #8
	add	r5, r1
	add	r3, r0
	str	r3, [r7, #4]
	mov	r0, r5
	bl	sin
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #15
	str	r3, [r7, #8]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	lsl	r3, #1
	neg	r3, r3
	asr	r3, #15
	str	r3, [r7, #0x10]
	ldr	r2, [sp, #0xc]
	ldr	r5, [sp, #0x24]
	ldrb	r3, [r2]
	mov	r1, #1
	add	r10, r1
	cmp	r5, r3
	bne	.Ld5094
	bl	Random
	mov	r1, #7
	and	r0, r1
	add	r0, #0x30
	mov	r2, r10
	str	r0, [r7, #0x18]
	cmp	r2, #0xc8
	bne	.Ld50a6
	b	.Ld50b4

	.pool_aligned

.Ld5094:
	bl	Random
	mov	r3, #7
	and	r0, r3
	add	r0, #0x18
	mov	r5, r10
	str	r0, [r7, #0x18]
	cmp	r5, #4
	beq	.Ld50b4
.Ld50a6:
	mov	r0, #1
	mov	r1, #0x80
	add	r8, r0
	lsl	r1, #3
	add	r7, #0x1c
	cmp	r8, r1
	bne	.Ld4fe0
.Ld50b4:
	ldr	r2, =.Lee2a9
.Ld50b6:
	ldr	r5, [sp, #0x20]
	ldr	r7, [sp, #0x24]
	ldrb	r3, [r2, r5]
	cmp	r7, r3
	bne	.Ld5108
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r11
	str	r3, [r2]
	ldr	r3, =0x7828
	mov	r1, r11
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld5108
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r11
.Ld50de:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #0xa
	mov	r3, r8
	mov	r2, #5
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r1, #1
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	ldr	r3, [r5]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r8, r0
	add	r6, #2
	cmp	r8, r3
	bne	.Ld50de
.Ld5108:
	ldr	r3, [sp, #0x20]
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	add	r3, #1
	str	r3, [sp, #0x20]
	add	r2, #0x1c
	add	r1, #1
	ldr	r3, =0x7828
	str	r2, [sp, #8]
	str	r1, [sp, #0xc]
	add	r3, r11
	ldr	r3, [r3]
	ldr	r2, =.Lee29a
	ldr	r3, [r3, #0x18]
	ldr	r5, [sp, #0x20]
	ldrb	r3, [r2, r3]
	cmp	r5, r3
	beq	.Ld512e
	b	.Ld4ece
.Ld512e:
	mov	r7, #0
	ldr	r6, =gBuffer
	mov	r8, r7
.Ld5134:
	ldr	r5, [r6, #0x18]
	cmp	r5, #0
	ble	.Ld51dc
	sub	r3, r5, #1
	ldr	r2, [r6, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r6]
	ldr	r1, [r6, #0x10]
	add	r4, r3, r2
	ldr	r3, [r6, #4]
	add	r0, r3, r1
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	str	r4, [r6]
	str	r0, [r6, #4]
	cmp	r3, #0
	bge	.Ld515a
	add	r3, #0x3f
.Ld515a:
	asr	r3, #6
	str	r3, [r6, #8]
	lsl	r3, r1, #4
	sub	r3, r1
	lsl	r3, #2
	cmp	r3, #0
	bge	.Ld516a
	add	r3, #0x3f
.Ld516a:
	asr	r3, #6
	mov	r2, r3
	sub	r2, #0x10
	str	r2, [r6, #0x10]
	mov	r3, r0
	cmp	r0, #0
	bge	.Ld517a
	add	r3, #0xff
.Ld517a:
	asr	r3, #8
	mov	r12, r3
	cmp	r3, #0x78
	ble	.Ld518e
	neg	r3, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r6, #0x10]
	b	.Ld51dc
.Ld518e:
	cmp	r4, #0
	blt	.Ld51dc
	asr	r7, r4, #8
	cmp	r7, #0x7e
	bgt	.Ld51dc
	cmp	r0, #0
	blt	.Ld51dc
	mov	r2, r5
	sub	r2, #0x11
	cmp	r2, #0
	bge	.Ld51a6
	add	r2, #7
.Ld51a6:
	asr	r5, r2, #3
	cmp	r5, #0
	bgt	.Ld51ae
	mov	r5, #1
.Ld51ae:
	lsl	r4, r5, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	mov	r1, r8
	mov	r0, #1
	and	r0, r1
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x1c]
	add	r1, r2, r1
	lsr	r2, r5, #31
	add	r2, r5, r2
	asr	r2, #1
	sub	r2, r7, r2
	mov	r7, r12
	str	r5, [sp]
	sub	r3, r7, r5
	str	r4, [sp, #4]
	ldr	r5, [sp, #0x18]
	lsl	r0, #2
	ldr	r4, [r0, r5]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
.Ld51dc:
	mov	r7, #1
	mov	r0, #0x80
	add	r8, r7
	lsl	r0, #3
	add	r6, #0x1c
	cmp	r8, r0
	bne	.Ld5134
	mov	r1, #0x10
	mov	r0, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp, #0x24]
	add	r1, #1
	str	r1, [sp, #0x24]
	cmp	r1, #0x60
	beq	.Ld5210
	b	.Ld4e4c
.Ld5210:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
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
.func_end Anim_Volcano

	.section .rodata
.Lee29a:
	.incrom 0xee29a, 0xee29d
.Lee29d:
	.incrom 0xee29d, 0xee2a9
.Lee2a9:
	.incrom 0xee2a9, 0xee2ae
