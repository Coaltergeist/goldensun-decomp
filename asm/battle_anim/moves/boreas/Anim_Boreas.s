	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Boreas  @ 0x080d765c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001ef0
	ldr	r1, [r5]
	sub	sp, #0x14c
	str	r1, [sp, #0x30]
	sub	r3, r5, #4
	ldr	r3, [r3]
	str	r3, [sp, #0x2c]
	ldr	r4, [sp, #0x2c]
	ldr	r7, =0x7828
	ldr	r2, [r5, #4]
	add	r4, r7
	mov	r3, #1
	str	r2, [sp, #0x1c]
	str	r3, [sp, #0x18]
	str	r0, [r4]
	mov	r0, #0
	mov	r8, r4
	bl	AnimStart
	bl	Func_80c9048
	ldr	r2, .Ld76d0	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r0, [sp, #0x2c]
	mov	r1, #0xef
	lsl	r1, #7
	add	r0, r1
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r0]
	mov	r10, r0
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r2, =REG_WININ
	ldr	r3, .Ld76d4	@ 0x2137
	mov	r0, #1
	strh	r3, [r2]
	mov	r1, #0
	bl	AnimTransitionOut
	ldr	r2, =REG_WIN0H
	ldr	r3, .Ld76d8	@ 0xf0f0
	strh	r3, [r2]
	b	.Ld76f0

	.align	2, 0
.Ld76d0:
	.word	0
.Ld76d4:
	.word	0x2137
.Ld76d8:
	.word	0xf0f0
	.pool

.Ld76f0:
	ldr	r1, [sp, #0x2c]
	ldr	r0, =_FILE_b9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r0, =_FILE_ba
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, [r5, #0x18]
	ldr	r3, [sp, #0x18]
	str	r2, [sp, #0x24]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	bl	BuildDraw2DFuncEx
	ldr	r5, [r5, #0x1c]
	ldr	r2, =gPhysVec
	str	r5, [sp, #0x20]
	mov	r3, #0xf0
	mov	r4, r8
	str	r3, [r2, #0x10]
	ldr	r0, [r4]
	bl	Func_80d6750
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =0x3b
	mov	r0, #1
	mov	r2, #0
	bl	_AnimTransitionIn
	mov	r1, #0xba
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #1
	bl	CreateSummonSprite
	ldr	r3, .Ld778c	@ 0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, .Ld7790	@ 0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, .Ld7794	@ 0x1010
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, .Ld7798	@ 0x3f44
	sub	r2, #2
	mov	r5, r10
	strh	r3, [r2]
	str	r6, [r5]
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0x7784
	mov	r3, #0x32
	add	r2, r7, r0
	mov	r1, #0
	str	r3, [r2]
	ldr	r5, =gBuffer
	mov	r8, r1
	b	.Ld77b4

	.align	2, 0
.Ld778c:
	.word	0x7741
.Ld7790:
	.word	0x80
.Ld7794:
	.word	0x1010
.Ld7798:
	.word	0x3f44
	.pool

.Ld77b4:
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	str	r3, [r5]
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x78
	str	r3, [r5, #4]
	mov	r2, #1
	mov	r3, #1
	neg	r3, r3
	add	r8, r2
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Ld77b4
	mov	r4, #0
	ldr	r1, =.Lee974
	mov	r8, r4
	add	r2, sp, #0x4c
.Ld77e6:
	ldrb	r3, [r1]
	mov	r5, #1
	str	r3, [r2]
	add	r8, r5
	ldrb	r3, [r1, #1]
	mov	r7, r8
	str	r3, [r2, #4]
	add	r1, #2
	add	r2, #8
	cmp	r7, #0x20
	bne	.Ld77e6
	mov	r0, #0x8d
	bl	_PlaySound
	mov	r0, #0
	str	r0, [sp, #0x28]
	ldr	r3, =gKeyRepeat
	mov	r2, sp
	add	r2, #0x34
	mov	r1, #0x10
	ldr	r3, [r3]
	str	r2, [sp, #0x10]
	mov	r10, r1
.Ld7814:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0xf
	bhi	.Ld787c
	ldr	r7, =gBuffer
	cmp	r3, #1
	bne	.Ld7848
	ldr	r5, =ewram_2010002
	mov	r6, r5
	mov	r3, #0x3f
	add	r6, #0x80
.Ld7828:
	str	r3, [sp, #0xc]
	bl	Random
	ldr	r3, [sp, #0xc]
	and	r0, r3
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Ld7828
	ldr	r3, .Ld7864	@ 0
	mov	r1, #0x90
	strh	r3, [r7]
	ldr	r0, =Func_80d66cc
	lsl	r1, #3
	bl	StartTask
.Ld7848:
	ldr	r4, [sp, #0x18]
	ldrh	r3, [r7]
	add	r3, r4
	strh	r3, [r7]
	ldr	r5, [sp, #0x28]
	add	r4, #3
	str	r4, [sp, #0x18]
	cmp	r5, #0xf
	bne	.Ld787c
	ldr	r0, =Func_80d66cc
	bl	StopTask
	b	.Ld787c

	.align	2, 0
.Ld7864:
	.word	0
	.pool

.Ld787c:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x67
	ble	.Ld7888
	mov	r0, #0
	mov	r10, r0
	b	.Ld789e
.Ld7888:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x3f
	ble	.Ld7894
	mov	r2, #6
	mov	r10, r2
	b	.Ld789e
.Ld7894:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x1f
	ble	.Ld789e
	mov	r4, #0xa
	mov	r10, r4
.Ld789e:
	ldr	r5, [sp, #0x28]
	cmp	r5, #0xa7
	bgt	.Ld78c4
	bl	Random
	mov	r5, #3
	and	r0, r5
	sub	r0, #1
	mov	r9, r0
	bl	Random
	ldr	r3, =iwram_3001ad0
	and	r0, r5
	sub	r7, r0, #1
	mov	r1, r9
	add	r0, #0x1f
	strh	r1, [r3, #4]
	strh	r0, [r3, #6]
	b	.Ld78d2
.Ld78c4:
	mov	r2, #0
	mov	r9, r2
	ldr	r2, =iwram_3001ad0
	mov	r7, #0
	mov	r3, #0x20
	strh	r7, [r2, #4]
	strh	r3, [r2, #6]
.Ld78d2:
	ldr	r2, [sp, #0x28]
	sub	r2, #0xb0
	cmp	r2, #3
	bhi	.Ld78ee
	ldr	r3, =.Lee994
	ldrsb	r3, [r3, r2]
	neg	r4, r3
	ldr	r2, =iwram_3001ad0
	mov	r9, r4
	mov	r7, r3
	mov	r5, r9
	add	r3, #0x20
	strh	r5, [r2, #4]
	strh	r3, [r2, #6]
.Ld78ee:
	mov	r0, #0
	mov	r1, r10
	mov	r8, r0
	cmp	r1, #0
	beq	.Ld793a
	ldr	r2, =.Lee998
	ldr	r6, =.Lee974
	mov	r11, r2
.Ld78fe:
	mov	r0, r8
	mov	r1, #3
	bl	__modsi3
	mov	r4, r11
	lsl	r3, r0, #1
	ldrh	r1, [r4, r3]
	ldr	r5, [sp, #0x2c]
	ldr	r4, =.Lee9a1
	ldrb	r2, [r6]
	add	r1, r5, r1
	mov	r3, r9
	ldrb	r5, [r4, r0]
	ldr	r4, =.Lee99e
	sub	r2, r3
	ldrb	r3, [r6, #1]
	ldrb	r0, [r4, r0]
	sub	r3, r5
	str	r5, [sp, #4]
	mov	r5, #1
	str	r0, [sp]
	sub	r3, r7
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	add	r8, r5
	bl	_call_via_r4
	add	r6, #2
	cmp	r8, r10
	bne	.Ld78fe
.Ld793a:
	ldr	r3, =Data_eda80
	ldr	r0, [sp, #0x28]
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	str	r3, [sp, #0x34]
	str	r4, [sp, #0x38]
	cmp	r0, #0xae
	bne	.Ld796c
	ldr	r2, [sp, #0x2c]
	ldr	r3, =0x77d8
	mov	r1, #0
	mov	r4, #0xd
	mov	r8, r1
	neg	r4, r4
	add	r0, r2, r3
.Ld7958:
	ldmia	r0!, {r1}
	ldrb	r2, [r1, #9]
	mov	r3, r4
	mov	r5, #1
	and	r3, r2
	add	r8, r5
	strb	r3, [r1, #9]
	mov	r1, r8
	cmp	r1, #9
	bne	.Ld7958
.Ld796c:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xd0
	ble	.Ld7990
	ldr	r4, [sp, #0x2c]
	ldr	r5, =0x77e0
	add	r3, r4, r5
	ldr	r0, [r3]
	ldr	r1, =.Lee9a4
	mov	r3, r2
	cmp	r2, #0
	bge	.Ld7984
	add	r3, #3
.Ld7984:
	asr	r3, #2
	mov	r2, #3
	and	r3, r2
	ldrb	r1, [r1, r3]
	bl	_Sprite_SetAnim
.Ld7990:
	ldr	r0, [sp, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [sp, #0x34]
	add	r2, sp, #0x3c
	str	r3, [r0, #4]
	mov	r3, #0
	str	r3, [r2, #0xc]
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r2, #4]
	mov	r10, r2
	lsl	r3, r7, #16
	mov	r2, #0x98
	neg	r3, r3
	mov	r5, r9
	lsl	r2, #15
	mov	r1, #0
	add	r4, r3, r2
	lsl	r3, r5, #16
	neg	r3, r3
	str	r1, [sp, #0x14]
	mov	r11, r1
	mov	r9, r3
.Ld79c0:
	mov	r0, r11
	ldr	r1, [sp, #0x2c]
	mov	r5, #0x90
	lsl	r3, r0, #2
	ldr	r2, =0x77d8
	lsl	r5, #16
	add	r3, r1
	mov	r7, #0
	mov	r8, r4
	add	r5, r9
	add	r6, r3, r2
.Ld79d6:
	mov	r3, r10
	mov	r0, r8
	str	r5, [r3]
	str	r0, [r3, #8]
	mov	r1, r10
	ldmia	r6!, {r0}
	ldr	r2, [sp, #0x10]
	mov	r3, #0
	str	r4, [sp, #8]
	bl	_UpdateSprite
	mov	r1, #0x80
	lsl	r1, #14
	add	r7, #1
	add	r5, r1
	ldr	r4, [sp, #8]
	cmp	r7, #3
	bne	.Ld79d6
	ldr	r3, [sp, #0x14]
	mov	r2, #3
	add	r3, #1
	add	r11, r2
	add	r4, r1
	str	r3, [sp, #0x14]
	cmp	r3, #3
	bne	.Ld79c0
	ldr	r1, [sp, #0x28]
	sub	r1, #0xa0
	cmp	r1, #0x9d
	bhi	.Ld7a58
	ldr	r3, [sp, #0x28]
	ldr	r5, [sp, #0x28]
	sub	r3, #0xd0
	mov	r2, #0x50
	mov	r4, #8
	cmp	r5, #0xaf
	bgt	.Ld7a2c
	mov	r3, #0x60
	sub	r2, r3, r1
	lsl	r3, r1, #2
	mov	r4, r3
	sub	r4, #0x38
	b	.Ld7a40
.Ld7a2c:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0xd0
	ble	.Ld7a40
	cmp	r3, #0
	bge	.Ld7a3a
	mov	r3, r7
	sub	r3, #0xcd
.Ld7a3a:
	asr	r3, #2
	mov	r4, r3
	add	r4, #8
.Ld7a40:
	mov	r3, #0x18
	str	r3, [sp]
	mov	r3, #0x30
	str	r3, [sp, #4]
	ldr	r5, =0xc46
	ldr	r3, [sp, #0x2c]
	ldr	r0, [sp, #0x30]
	add	r1, r3, r5
	ldr	r7, [sp, #0x20]
	mov	r3, r4
	bl	_call_via_r7
.Ld7a58:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x20
	bne	.Ld7a64
	mov	r0, #0x86
	bl	_PlaySound
.Ld7a64:
	ldr	r1, [sp, #0x28]
	cmp	r1, #0x40
	bne	.Ld7a70
	mov	r0, #0x86
	bl	_PlaySound
.Ld7a70:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x68
	bne	.Ld7a7c
	mov	r0, #0x86
	bl	_PlaySound
.Ld7a7c:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0xb0
	bne	.Ld7a88
	mov	r0, #0x86
	bl	_PlaySound
.Ld7a88:
	ldr	r4, [sp, #0x28]
	cmp	r4, #0xe2
	bne	.Ld7a94
	mov	r0, #0x91
	bl	_PlaySound
.Ld7a94:
	bl	InitMatrixStack
	ldr	r5, [sp, #0x28]
	cmp	r5, #0x20
	bne	.Ld7af2
	mov	r7, #0
	ldr	r5, =gBuffer
	mov	r8, r7
	mov	r6, #0x7f
	mov	r7, #0x1f
.Ld7aa8:
	bl	Random
	and	r0, r7
	add	r0, #0x44
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	and	r0, r7
	add	r0, #8
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x3f
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Random
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r8, r0
	add	r3, #0x20
	mov	r1, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x20
	bne	.Ld7aa8
.Ld7af2:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x40
	bne	.Ld7b50
	mov	r3, #0
	ldr	r5, =ewram_2010380
	mov	r8, r3
	mov	r6, #0x1f
.Ld7b00:
	bl	Random
	mov	r1, #0x30
	bl	__umodsi3
	add	r0, #0x3c
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	and	r0, r6
	add	r0, #0x34
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x3f
	lsl	r3, #12
	str	r3, [r5, #0xc]
	bl	Random
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0xf
	mov	r4, #1
	and	r3, r0
	add	r8, r4
	add	r3, #0x20
	mov	r7, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x20
	bne	.Ld7b00
.Ld7b50:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x68
	bne	.Ld7bac
	mov	r1, #0
	ldr	r5, =gBuffer
	mov	r8, r1
	mov	r6, #0x1f
.Ld7b5e:
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x34
	lsl	r3, #16
	str	r3, [r5]
	bl	Random
	and	r0, r6
	add	r0, #0x48
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x3f
	lsl	r3, #11
	str	r3, [r5, #0xc]
	bl	Random
	neg	r0, r0
	and	r0, r6
	sub	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r2, #1
	add	r3, #0x20
	add	r8, r2
	str	r3, [r5, #0x18]
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x20
	bne	.Ld7b5e
.Ld7bac:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x20
	cmp	r3, #0xaf
	bhi	.Ld7c58
	mov	r4, #0
	ldr	r5, =gBuffer
	mov	r8, r4
.Ld7bba:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld7c4c
	ldr	r7, [sp, #0x28]
	cmp	r7, #0xbf
	ble	.Ld7c08
	mov	r0, r8
	mov	r1, #7
	bl	__modsi3
	add	r4, r0, #4
	b	.Ld7c0e

	.pool_aligned

.Ld7c08:
	mov	r4, #3
	mov	r0, r8
	and	r4, r0
.Ld7c0e:
	ldr	r2, =.Lee9be
	ldr	r0, =.Lee9a8
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldrb	r0, [r0, r4]
	ldr	r2, [sp, #0x2c]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	ldr	r0, =.Lee9b3
	ldrb	r0, [r0, r4]
	ldr	r4, [sp, #0x20]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r2, [r5]
	ldr	r3, [r5, #0xc]
	add	r2, r3
	str	r2, [r5]
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #0x10]
	mov	r7, #0x80
	lsl	r7, #6
	add	r3, r2
	add	r2, r7
	str	r3, [r5, #4]
	str	r2, [r5, #0x10]
.Ld7c4c:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Ld7bba
.Ld7c58:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xdf
	bgt	.Ld7c60
	b	.Ld7dc8
.Ld7c60:
	cmp	r2, #0xe0
	bne	.Ld7ca4
	mov	r3, #0
	ldr	r5, =gBuffer
	mov	r8, r3
	mov	r6, #0x7f
.Ld7c6c:
	mov	r3, #0x90
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r5, #4]
	bl	Random
	and	r0, r6
	neg	r0, r0
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r6
	add	r0, #0x10
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Random
	mov	r4, #1
	add	r8, r4
	mov	r7, r8
	str	r0, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x80
	bne	.Ld7c6c
.Ld7ca4:
	mov	r0, #0
	ldr	r5, =gBuffer
	mov	r8, r0
.Ld7caa:
	mov	r3, r8
	cmp	r3, #0
	bge	.Ld7cb2
	add	r3, #3
.Ld7cb2:
	asr	r3, #2
	ldr	r1, [sp, #0x28]
	add	r3, #0xe0
	cmp	r1, r3
	blt	.Ld7d28
	mov	r0, r8
	mov	r1, #3
	bl	__modsi3
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	mov	r4, r0
	cmp	r3, #0
	bne	.Ld7cf6
	ldr	r2, =.Lee9da
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x2c]
	add	r1, r3, r1
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	ldr	r0, =.Lee9d4
	ldrb	r0, [r0, r4]
	mov	r7, #2
	ldrsh	r2, [r5, r7]
	str	r0, [sp]
	ldr	r0, =.Lee9d7
	ldrb	r0, [r0, r4]
	ldr	r4, [sp, #0x24]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
.Ld7cf6:
	ldr	r2, [r5]
	ldr	r3, [r5, #0xc]
	ldr	r1, [r5, #4]
	add	r2, r3
	ldr	r3, [r5, #0x10]
	mov	r7, #0x10
	str	r2, [r5]
	add	r1, r3
	asr	r2, #16
	neg	r7, r7
	str	r1, [r5, #4]
	cmp	r2, r7
	blt	.Ld7d16
	asr	r3, r1, #16
	cmp	r3, #0x78
	ble	.Ld7d22
.Ld7d16:
	mov	r3, #0x90
	lsl	r3, #15
	str	r3, [r5]
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r5, #4]
.Ld7d22:
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Ld7d28:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x80
	bne	.Ld7caa
	ldr	r2, [sp, #0x28]
	cmp	r2, #0xe4
	bne	.Ld7d5c
	mov	r3, #0
	ldr	r2, =ewram_2010e00
	ldr	r1, =gBuffer
	mov	r8, r3
	mov	r0, #0
.Ld7d44:
	ldr	r3, [r1]
	str	r3, [r2]
	mov	r4, #1
	ldr	r3, [r1, #4]
	add	r8, r4
	mov	r5, r8
	str	r3, [r2, #4]
	str	r0, [r2, #0x18]
	add	r1, #0x1c
	add	r2, #0x1c
	cmp	r5, #0x80
	bne	.Ld7d44
.Ld7d5c:
	mov	r7, #0
	ldr	r5, =ewram_2010e00
	ldr	r6, =gBuffer
	mov	r8, r7
.Ld7d64:
	mov	r3, r8
	ldr	r0, [sp, #0x28]
	add	r3, #0xe4
	cmp	r0, r3
	blt	.Ld7dba
	ldr	r0, [r5, #0x18]
	lsr	r3, r0, #31
	add	r0, r3
	mov	r1, #9
	asr	r0, #1
	bl	__modsi3
	ldr	r3, =Data_ede96
	ldrb	r4, [r3, r0]
	ldr	r3, =Data_ede84
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r2, [sp, #0x1c]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	lsr	r0, r4, #1
	sub	r3, r0
	sub	r2, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x12
	bne	.Ld7dba
	ldr	r3, [r6]
	str	r3, [r5]
	ldr	r3, [r6, #4]
	str	r3, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #0x18]
.Ld7dba:
	mov	r7, #1
	add	r8, r7
	mov	r0, r8
	add	r5, #0x1c
	add	r6, #0x1c
	cmp	r0, #0x80
	bne	.Ld7d64
.Ld7dc8:
	ldr	r1, [sp, #0x2c]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r4, [sp, #0x28]
	mov	r5, #0x90
	add	r4, #1
	lsl	r5, #1
	str	r4, [sp, #0x28]
	cmp	r4, r5
	beq	.Ld7dfe
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	mov	r7, #0x10
	and	r3, r2
	mov	r10, r7
	cmp	r3, #0
	bne	.Ld7df8
	b	.Ld7814
.Ld7df8:
	cmp	r4, #0x10
	bgt	.Ld7dfe
	b	.Ld7814
.Ld7dfe:
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x77d8
	mov	r0, #0
	mov	r8, r0
	add	r5, r1, r2
.Ld7e08:
	ldmia	r5!, {r0}
	bl	_DeleteSprite
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	cmp	r4, #9
	bne	.Ld7e08
	bl	Func_80d67dc
	ldr	r3, =REG_BLDALPHA
	ldr	r2, .Ld7e5c	@ 0x1010
	ldr	r0, =0x121
	strh	r2, [r3]
	bl	_PlaySound
	mov	r1, #0xe1
	ldr	r0, [sp, #0x2c]
	mov	r5, #0
	lsl	r1, #7
	mov	r8, r5
	mov	r7, #0x7f
	mov	r6, #0x3f
	add	r5, r0, r1
.Ld7e38:
	bl	Random
	and	r0, r7
	ldr	r3, =0xfff00000
	add	r0, #0x40
	lsl	r0, #16
	str	r3, [r5, #8]
	str	r0, [r5]
	bl	Random
	and	r0, r7
	neg	r0, r0
	sub	r0, #0x40
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	b	.Ld7ea0

	.align	2, 0
.Ld7e5c:
	.word	0x1010
	.pool

.Ld7ea0:
	and	r0, r6
	neg	r0, r0
	sub	r0, #0x7f
	lsl	r0, #12
	str	r0, [r5, #0xc]
	bl	Random
	mov	r2, #1
	and	r0, r6
	mov	r3, #0
	add	r0, #0x7f
	add	r8, r2
	str	r3, [r5, #0x18]
	lsl	r0, #12
	mov	r3, r8
	str	r0, [r5, #0x10]
	add	r5, #0x1c
	cmp	r3, #0x40
	bne	.Ld7e38
	mov	r4, #0
	ldr	r5, =gBuffer
	mov	r8, r4
.Ld7ecc:
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	str	r3, [r5]
	bl	Random
	mov	r7, r8
	lsr	r3, r7, #31
	add	r3, r8
	mov	r2, #0x3f
	and	r2, r0
	asr	r3, #1
	add	r2, r3
	neg	r3, r7
	str	r2, [r5, #4]
	mov	r0, #1
	lsr	r2, r3, #31
	add	r3, r2
	add	r8, r0
	asr	r3, #1
	mov	r1, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Ld7ecc
	mov	r2, #0
	ldr	r3, =0xfffffc20
	str	r2, [sp, #0x28]
	mov	r9, r3
.Ld7f08:
	ldr	r5, [sp, #0x28]
	mov	r4, #0
	mov	r10, r4
	cmp	r5, #0x60
	bne	.Ld7f18
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Ld7f18:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x10
	bne	.Ld7f28
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77a8
	mov	r3, #0x20
	add	r2, r0, r1
	str	r3, [r2]
.Ld7f28:
	ldr	r2, [sp, #0x28]
	cmp	r2, #0x10
	ble	.Ld7f42
	mov	r3, r2
	sub	r3, #0x10
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r10, r3
	cmp	r3, #0x10
	ble	.Ld7f42
	mov	r3, #0x10
	mov	r10, r3
.Ld7f42:
	ldr	r3, [sp, #0x28]
	sub	r3, #9
	cmp	r3, #0x3e
	bhi	.Ld7f5a
	ldr	r4, [sp, #0x28]
	mov	r3, #3
	and	r3, r4
	cmp	r3, #0
	bne	.Ld7f5a
	mov	r0, #0x84
	bl	_PlaySound
.Ld7f5a:
	ldr	r5, [sp, #0x28]
	cmp	r5, #0x48
	bne	.Ld7f66
	mov	r0, #0x91
	bl	_PlaySound
.Ld7f66:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x40
	ble	.Ld7f8e
	mov	r3, #0x40
	sub	r3, r7
	lsl	r2, r3, #3
	sub	r2, r3
	mov	r3, #0x28
	str	r3, [sp]
	mov	r3, #0x50
	str	r3, [sp, #4]
	ldr	r4, =0x14f9
	ldr	r3, [sp, #0x2c]
	add	r2, #0x58
	add	r1, r3, r4
	ldr	r0, [sp, #0x30]
	mov	r3, r9
	ldr	r5, [sp, #0x24]
	bl	_call_via_r5
.Ld7f8e:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x47
	bgt	.Ld7fd8
	mov	r0, #0
	mov	r1, r10
	mov	r8, r0
	cmp	r1, #0
	beq	.Ld7fd8
	ldr	r7, =.Lee9e0
	ldr	r6, =.Lee974
.Ld7fa2:
	mov	r0, r8
	mov	r1, #3
	bl	__modsi3
	ldr	r4, =.Lee9e9
	lsl	r3, r0, #1
	ldrb	r5, [r4, r0]
	ldrh	r1, [r7, r3]
	ldr	r2, [sp, #0x2c]
	ldr	r4, =.Lee9e6
	ldrb	r3, [r6, #1]
	ldrb	r0, [r4, r0]
	add	r1, r2, r1
	ldrb	r2, [r6]
	sub	r3, r5
	str	r5, [sp, #4]
	mov	r5, #1
	str	r0, [sp]
	sub	r2, #0x38
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	add	r8, r5
	bl	_call_via_r4
	add	r6, #2
	cmp	r8, r10
	bne	.Ld7fa2
.Ld7fd8:
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x48
	bne	.Ld803e
	ldr	r1, [sp, #0x2c]
	mov	r2, #0xe1
	mov	r0, #0
	lsl	r2, #7
	ldr	r6, =.Lee974
	mov	r8, r0
	add	r5, r1, r2
.Ld7fec:
	mov	r3, r8
	mov	r2, #0xf
	and	r2, r3
	lsl	r2, #1
	ldrb	r3, [r6, r2]
	sub	r3, #0x38
	add	r2, #1
	lsl	r3, #16
	str	r3, [r5]
	ldrb	r3, [r6, r2]
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	sub	r3, #0x3f
	lsl	r3, #13
	str	r3, [r5, #0xc]
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	neg	r3, r3
	mov	r4, #1
	sub	r3, #0x10
	add	r8, r4
	lsl	r3, #14
	mov	r7, r8
	str	r3, [r5, #0x10]
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Ld7fec
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x48
	bne	.Ld803e
	ldr	r1, [sp, #0x2c]
	ldr	r3, =0x77a8
	add	r2, r1, r3
	mov	r3, #4
	str	r3, [r2]
.Ld803e:
	ldr	r4, [sp, #0x28]
	cmp	r4, #0x47
	ble	.Ld80e0
	mov	r5, #0x20
	mov	r10, r5
	cmp	r4, #0x48
	beq	.Ld8050
	mov	r7, #0x40
	mov	r10, r7
.Ld8050:
	mov	r0, #0
	mov	r1, r10
	mov	r8, r0
	cmp	r1, #0
	beq	.Ld80da
	ldr	r2, [sp, #0x2c]
	mov	r3, #0xe1
	lsl	r3, #7
	add	r6, r2, r3
.Ld8062:
	mov	r4, #6
	ldrsh	r7, [r6, r4]
	cmp	r7, #0x87
	bgt	.Ld80d0
	mov	r1, #3
	mov	r0, r8
	bl	__modsi3
	ldr	r2, =.Lee9f2
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r5, [sp, #0x2c]
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	ldr	r4, =.Lee9ec
	ldr	r3, =.Lee9ef
	add	r1, r5, r1
	ldrb	r5, [r3, r0]
	ldrb	r0, [r4, r0]
	sub	r3, r7, r5
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x40
	lsl	r2, #9
	bl	Func_80e3908
	mov	r5, #6
	ldrsh	r3, [r6, r5]
	cmp	r3, #0x78
	ble	.Ld80d0
	mov	r7, #0x80
	ldr	r3, [r6, #0x10]
	lsl	r7, #12
	cmp	r3, r7
	ble	.Ld80d0
	neg	r3, r3
	cmp	r3, #0
	bge	.Ld80bc
	add	r3, #3
.Ld80bc:
	asr	r3, #2
	str	r3, [r6, #0x10]
	mov	r3, #0xf0
	lsl	r3, #15
	str	r3, [r6, #4]
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x77a8
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
.Ld80d0:
	mov	r2, #1
	add	r8, r2
	add	r6, #0x1c
	cmp	r8, r10
	bne	.Ld8062
.Ld80da:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0x47
	bgt	.Ld8144
.Ld80e0:
	ldr	r7, [sp, #0x2c]
	mov	r0, #0xe1
	mov	r4, #0
	lsl	r0, #7
	mov	r8, r4
	add	r5, r7, r0
.Ld80ec:
	mov	r1, #2
	ldrsh	r2, [r5, r1]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r1, #0x18
	str	r1, [sp]
	mov	r1, #0x30
	sub	r2, #0xc
	sub	r3, #0x18
	str	r1, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x2c]
	ldr	r7, [sp, #0x24]
	bl	_call_via_r7
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	asr	r3, #16
	cmp	r3, #0x78
	ble	.Ld8138
	ldr	r0, [sp, #0x28]
	cmp	r0, #0x2f
	bgt	.Ld8138
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	add	r3, #0x40
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, =0xfff00000
	str	r3, [r5, #4]
.Ld8138:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x1c
	cmp	r2, #0x40
	bne	.Ld80ec
.Ld8144:
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x2c]
	mov	r3, #0
	mov	r8, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld8186
	mov	r6, #0x24
	mov	r5, #0x20
.Ld8158:
	ldr	r7, [sp, #0x28]
	cmp	r7, r5
	bne	.Ld8172
	ldr	r0, [sp, #0x2c]
	ldr	r3, [r0, r2]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #9
	mov	r2, #5
	sub	r3, #1
	bl	SetBattleActorState
.Ld8172:
	mov	r2, #1
	add	r8, r2
	ldr	r4, [sp, #0x2c]
	ldr	r2, =0x7828
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	add	r5, #8
	cmp	r8, r3
	bne	.Ld8158
.Ld8186:
	ldr	r5, [sp, #0x28]
	cmp	r5, #0x48
	ble	.Ld8208
	mov	r6, r5
	mov	r7, #0
	ldr	r5, =gBuffer
	mov	r8, r7
	sub	r6, #0x36
.Ld8196:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x11
	bhi	.Ld81ce
	lsr	r0, r3, #31
	add	r0, r3, r0
	mov	r1, #9
	asr	r0, #1
	bl	__modsi3
	ldr	r3, =Data_ede96
	ldrb	r4, [r3, r0]
	ldr	r3, =Data_ede84
	lsl	r0, #1
	ldrh	r1, [r3, r0]
	ldr	r0, [sp, #0x1c]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	add	r1, r0, r1
	lsr	r0, r4, #1
	sub	r3, r0
	sub	r2, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x30]
	ldr	r4, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
.Ld81ce:
	add	r3, #1
	str	r3, [r5, #0x18]
	cmp	r3, #0x12
	bne	.Ld81fc
	ldr	r7, [sp, #0x28]
	cmp	r7, #0x7f
	bgt	.Ld81fc
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	str	r3, [r5]
	bl	Random
	lsr	r3, r6, #31
	mov	r2, #0x3f
	add	r3, r6, r3
	asr	r3, #1
	and	r2, r0
	add	r2, r3
	mov	r3, #0
	str	r2, [r5, #4]
	str	r3, [r5, #0x18]
.Ld81fc:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x40
	bne	.Ld8196
.Ld8208:
	ldr	r3, [sp, #0x28]
	sub	r3, #0x48
	cmp	r3, #7
	bhi	.Ld8258
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	b	.Ld8260

	.pool_aligned

.Ld8258:
	mov	r0, #2
	mov	r1, #2
	bl	UpdateScreenShake
.Ld8260:
	ldr	r3, [sp, #0x2c]
	ldr	r4, =0x7824
	add	r2, r3, r4
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r7, [sp, #0x28]
	mov	r5, #0xe
	add	r7, #1
	add	r9, r5
	str	r7, [sp, #0x28]
	cmp	r7, #0x92
	beq	.Ld8280
	b	.Ld7f08
.Ld8280:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x14c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Boreas

	.section .rodata
.Lee974:
	.incrom 0xee974, 0xee994
.Lee994:
	.incrom 0xee994, 0xee998
.Lee998:
	.incrom 0xee998, 0xee99e
.Lee99e:
	.incrom 0xee99e, 0xee9a1
.Lee9a1:
	.incrom 0xee9a1, 0xee9a4
.Lee9a4:
	.incrom 0xee9a4, 0xee9a8
.Lee9a8:
	.incrom 0xee9a8, 0xee9b3
.Lee9b3:
	.incrom 0xee9b3, 0xee9be
.Lee9be:
	.incrom 0xee9be, 0xee9d4
.Lee9d4:
	.incrom 0xee9d4, 0xee9d7
.Lee9d7:
	.incrom 0xee9d7, 0xee9da
.Lee9da:
	.incrom 0xee9da, 0xee9e0
.Lee9e0:
	.incrom 0xee9e0, 0xee9e6
.Lee9e6:
	.incrom 0xee9e6, 0xee9e9
.Lee9e9:
	.incrom 0xee9e9, 0xee9ec
.Lee9ec:
	.incrom 0xee9ec, 0xee9ef
.Lee9ef:
	.incrom 0xee9ef, 0xee9f2
.Lee9f2:
	.incrom 0xee9f2, 0xee9f8
