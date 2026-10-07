	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Cybele  @ 0x080d6970
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x64
	str	r3, [sp, #0x40]
	ldr	r3, =0x7828
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	ldr	r1, =0x177
	mov	r0, #8
	mov	r2, #1
	bl	CreateSummonSprite
	mov	r2, #0
	mov	r10, r2
	mov	r1, #0x80
	ldr	r2, =gBuffer
	mov	r0, #0x7f
	lsl	r1, #3
.Ld69a6:
	mov	r3, r10
	and	r3, r0
	strb	r3, [r2]
	mov	r3, #1
	add	r10, r3
	add	r2, #1
	cmp	r10, r1
	bne	.Ld69a6
	mov	r4, #0
	mov	r0, #0x7f
	mov	r10, r4
	mov	r8, r0
	mov	r11, r4
.Ld69c0:
	mov	r7, #0
	mov	r6, r11
.Ld69c4:
	bl	Random
	mov	r1, r8
	mov	r5, r0
	and	r5, r1
	bl	Random
	mov	r2, r8
	ldr	r3, =gBuffer
	and	r0, r2
	add	r0, r6, r0
	add	r5, r6, r5
	add	r0, r3
	add	r5, r3
	ldrb	r2, [r0]
	ldrb	r3, [r5]
	add	r7, #1
	strb	r3, [r0]
	strb	r2, [r5]
	cmp	r7, #0x80
	bne	.Ld69c4
	mov	r0, #1
	add	r10, r0
	mov	r4, #0x80
	mov	r1, r10
	add	r11, r4
	cmp	r1, #8
	bne	.Ld69c0
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld6a40	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ld6a44	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r0, =_FILE_b2
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r6, #1
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
	str	r3, [sp, #0x44]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	b	.Ld6a64

	.align	2, 0
.Ld6a40:
	.word	0x100
.Ld6a44:
	.word	0
	.pool

.Ld6a64:
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x44
	str	r2, [sp, #0x24]
	str	r3, [r2, #4]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r6, [r3]
	add	r2, r9
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	ldr	r3, =0xffffe000
	ldr	r2, =REG_BG2X
	mov	r4, #0x5a
	mov	r5, #0xe1
	str	r3, [r2]
	neg	r4, r4
	mov	r3, #0
	lsl	r5, #7
	mov	r10, r3
	mov	r7, #7
	mov	r8, r4
	mov	r6, #0
	add	r5, r9
.Ld6aa8:
	mov	r0, r10
	cmp	r0, #4
	bgt	.Ld6aba
	str	r6, [r5]
	bl	Random
	and	r0, r7
	add	r0, #0x68
	b	.Ld6ac6
.Ld6aba:
	mov	r1, r8
	str	r1, [r5]
	bl	Random
	and	r0, r7
	add	r0, #0x6c
.Ld6ac6:
	str	r0, [r5, #4]
	bl	Random
	and	r0, r7
	add	r0, #4
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r2, #0x14
	mov	r4, r10
	add	r8, r2
	add	r6, #0x14
	add	r5, #0x1c
	cmp	r4, #0x10
	bne	.Ld6aa8
	ldr	r5, =0x7240
	mov	r0, #0
	mov	r10, r0
	add	r5, r9
.Ld6af8:
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	str	r3, [r5]
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	add	r3, #0x40
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #7
	and	r3, r0
	mov	r1, #1
	neg	r3, r3
	add	r10, r1
	sub	r3, #8
	mov	r2, r10
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r2, #0x10
	bne	.Ld6af8
	mov	r5, #0xe8
	mov	r3, #0
	lsl	r5, #7
	mov	r10, r3
	mov	r6, #0
	add	r5, r9
.Ld6b36:
	mov	r3, #0x80
	lsl	r3, #16
	str	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #0xff
	and	r3, r0
	add	r3, #0xc8
	mov	r4, #1
	neg	r3, r3
	add	r10, r4
	lsl	r3, #9
	mov	r0, r10
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x18]
	add	r5, #0x1c
	cmp	r0, #0x10
	bne	.Ld6b36
	ldr	r5, =0x7828
	mov	r1, r9
	ldr	r0, [r1, r5]
	bl	Func_80d6750
	ldr	r2, =0xffc00000
	mov	r3, #0
	str	r2, [sp, #0x38]
	str	r3, [sp, #0x34]
	str	r3, [sp, #0x3c]
.Ld6b76:
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ld6ba4
	ldr	r4, [sp, #0x3c]
	cmp	r4, #0xbe
	ble	.Ld6ba4
	ldr	r0, =0x11d
	cmp	r4, r0
	bgt	.Ld6ba4
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r3, =Func_80008d4
	ldr	r0, [sp, #0x40]
	bl	_call_via_r3
	mov	r1, #0x8f
	lsl	r1, #1
	str	r1, [sp, #0x3c]
.Ld6ba4:
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0xe0
	bne	.Ld6bb4
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #0
	str	r3, [r2]
.Ld6bb4:
	bl	InitMatrixStack
	mov	r1, r5
	add	r1, #0xc
	mov	r0, r5
	bl	MatrixSetLook
	ldr	r3, [sp, #0x3c]
	cmp	r3, #0x1f
	bne	.Ld6c04
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x9d
	bl	_PlaySound
	ldr	r1, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r1]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r10, r4
	cmp	r3, #0
	beq	.Ld6c04
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Ld6bec:
	ldr	r3, [r5]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #2
	cmp	r10, r3
	bne	.Ld6bec
.Ld6c04:
	ldr	r4, [sp, #0x3c]
	cmp	r4, #0x48
	bne	.Ld6c10
	mov	r0, #0x88
	bl	_PlaySound
.Ld6c10:
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0x8c
	bne	.Ld6c1c
	mov	r0, #0x9c
	bl	_PlaySound
.Ld6c1c:
	ldr	r1, [sp, #0x34]
	mov	r2, #0x80
	ldr	r3, [sp, #0x38]
	lsl	r2, #7
	add	r1, r2
	mov	r4, #0x80
	add	r3, r1
	lsl	r4, #15
	str	r1, [sp, #0x34]
	str	r3, [sp, #0x38]
	cmp	r3, r4
	ble	.Ld6c36
	str	r4, [sp, #0x38]
.Ld6c36:
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #16
	ldr	r2, [sp, #0x38]
	bl	Func_80e6d3c
	ldr	r0, [sp, #0x3c]
	sub	r0, #0x30
	cmp	r0, #0x30
	bhi	.Ld6c76
	mov	r1, #0x18
	bl	__divsi3
	mov	r1, #3
	bl	__modsi3
	ldr	r3, =0x77e4
	ldr	r6, =.Lee910
	mov	r5, r0
	add	r3, r9
	lsl	r5, #1
	ldrb	r1, [r6, r5]
	ldr	r0, [r3]
	bl	_Sprite_SetAnim
	ldr	r3, =0x77e8
	add	r5, #1
	add	r3, r9
	ldr	r0, [r3]
	ldrb	r1, [r6, r5]
	bl	_Sprite_SetAnim
.Ld6c76:
	ldr	r3, [sp, #0x3c]
	sub	r3, #0x48
	cmp	r3, #0x37
	bhi	.Ld6cee
	mov	r6, #0xe8
	mov	r0, #0
	lsl	r6, #7
	mov	r10, r0
	add	r6, r9
.Ld6c88:
	mov	r3, r10
	ldr	r1, [sp, #0x3c]
	add	r3, #0x48
	cmp	r1, r3
	blt	.Ld6ce2
	ldr	r5, [r6, #4]
	ldr	r2, =0x67ffff
	cmp	r5, r2
	bgt	.Ld6ce2
	mov	r0, r1
	add	r0, r10
	cmp	r0, #0
	bge	.Ld6ca4
	add	r0, #3
.Ld6ca4:
	mov	r1, #5
	asr	r0, #2
	bl	__modsi3
	ldr	r4, =.Lee916
	lsl	r1, r0, #1
	ldrh	r1, [r4, r1]
	ldr	r4, =.Lee920
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	asr	r3, r5, #16
	ldrb	r5, [r4, r0]
	lsr	r4, r5, #1
	sub	r2, r4
	ldr	r4, =.Lee925
	ldrb	r4, [r4, r0]
	lsr	r0, r4, #1
	add	r1, r9
	sub	r3, r0
	str	r4, [sp, #4]
	str	r5, [sp]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r2, #0x80
	mov	r0, r6
	mov	r1, #0x40
	lsl	r2, #5
	bl	Func_80e3908
.Ld6ce2:
	mov	r4, #1
	add	r10, r4
	mov	r0, r10
	add	r6, #0x1c
	cmp	r0, #0x10
	bne	.Ld6c88
.Ld6cee:
	ldr	r1, [sp, #0x3c]
	cmp	r1, #0x80
	bne	.Ld6d52
	ldr	r5, =0x7240
	mov	r2, #0
	mov	r10, r2
	mov	r6, #0xff
	add	r5, r9
.Ld6cfe:
	bl	Random
	mov	r1, #0x60
	bl	__umodsi3
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x58
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r6
	neg	r0, r0
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	neg	r3, r3
	sub	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	add	r5, #0x1c
	cmp	r4, #0x30
	bne	.Ld6cfe
	ldr	r2, =REG_BG2X
	mov	r3, #0
	str	r3, [r2]
.Ld6d52:
	ldr	r0, [sp, #0x3c]
	sub	r0, #0x80
	str	r0, [sp, #0x30]
	cmp	r0, #0x60
	bls	.Ld6d5e
	b	.Ld6eee
.Ld6d5e:
	str	r0, [sp, #0x2c]
	cmp	r0, #0x50
	ble	.Ld6db8
	mov	r1, #0x50
	str	r1, [sp, #0x2c]
	b	.Ld6dc0

	.pool_aligned

.Ld6db8:
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r9
	str	r3, [r2]
.Ld6dc0:
	mov	r7, #0xe1
	mov	r2, #0
	lsl	r7, #7
	mov	r10, r2
	add	r7, r9
.Ld6dca:
	ldr	r3, [r7, #0x18]
	ldr	r4, [sp, #0x2c]
	cmp	r4, r3
	bgt	.Ld6dd4
	b	.Ld6ee0
.Ld6dd4:
	mov	r0, r10
	mov	r11, r9
	cmp	r0, #5
	ble	.Ld6de4
	mov	r1, #0xd8
	lsl	r1, #3
	add	r1, r9
	mov	r11, r1
.Ld6de4:
	ldr	r4, [sp, #0x2c]
	sub	r2, r4, r3
	ldr	r3, [r7, #0x10]
	mov	r0, r3
	mul	r0, r2
	str	r0, [sp, #0x28]
	mov	r6, r0
	cmp	r0, #0xb8
	ble	.Ld6dfc
.Ld6df6:
	sub	r6, #0x40
	cmp	r6, #0xb8
	bgt	.Ld6df6
.Ld6dfc:
	cmp	r6, #0x77
	bgt	.Ld6e24
	mov	r1, #1
	mov	r0, r10
	and	r0, r1
	mov	r1, #0x18
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r1, [sp]
	mov	r1, #8
	str	r1, [sp, #4]
	ldr	r1, [sp, #0x24]
	lsl	r0, #2
	sub	r3, r6
	ldr	r4, [r0, r1]
	sub	r3, #8
	ldr	r0, [sp, #0x40]
	mov	r1, r11
	bl	_call_via_r4
.Ld6e24:
	mov	r3, r10
	mov	r4, #1
	and	r3, r4
	lsl	r3, #2
	mov	r2, #0
	str	r3, [sp, #0x20]
	mov	r8, r2
.Ld6e32:
	ldr	r1, [r7, #4]
	mov	r0, r8
	lsl	r3, r0, #6
	sub	r2, r1, r6
	add	r5, r2, r3
	mov	r3, #0x40
	neg	r3, r3
	mov	r2, #0
	mov	r0, #0x40
	cmp	r5, r3
	blt	.Ld6e80
	cmp	r5, #0
	bge	.Ld6e5a
	neg	r2, r5
	lsl	r3, r2, #1
	mov	r0, r5
	add	r3, r2
	lsl	r2, r3, #3
	add	r0, #0x40
	mov	r5, #0
.Ld6e5a:
	add	r3, r5, r0
	cmp	r3, r1
	ble	.Ld6e64
	sub	r3, r1
	sub	r0, r3
.Ld6e64:
	mov	r4, r11
	mov	r3, #0x18
	add	r1, r4, r2
	ldr	r2, [r7]
	str	r3, [sp]
	str	r0, [sp, #4]
	ldr	r3, [sp, #0x24]
	ldr	r0, [sp, #0x20]
	add	r1, #0xc0
	ldr	r4, [r0, r3]
	ldr	r0, [sp, #0x40]
	mov	r3, r5
	bl	_call_via_r4
.Ld6e80:
	mov	r4, #1
	add	r8, r4
	mov	r0, r8
	cmp	r0, #3
	bne	.Ld6e32
	mov	r6, r10
	and	r6, r4
	cmp	r6, #0
	beq	.Ld6ee0
	ldr	r1, [sp, #0x28]
	ldr	r5, [r7, #4]
	mov	r2, #0x7f
	sub	r3, r5, r1
	and	r3, r2
	sub	r3, #0x10
	mov	r1, #3
	mov	r0, r10
	mov	r8, r3
	bl	__modsi3
	ldr	r3, =.Lee930
	mov	r1, r0
	ldrb	r4, [r3, r1]
	mov	r2, r8
	add	r3, r2, r4
	mov	r12, r4
	cmp	r3, r5
	ble	.Ld6ebc
	sub	r3, r5
	sub	r4, r3
.Ld6ebc:
	cmp	r4, #0
	ble	.Ld6ee0
	ldr	r2, =.Lee92a
	lsl	r3, r1, #1
	ldrh	r1, [r2, r3]
	mov	r3, r12
	ldr	r2, [r7]
	str	r3, [sp]
	str	r4, [sp, #4]
	ldr	r3, [sp, #0x24]
	lsl	r0, r6, #2
	ldr	r4, [r0, r3]
	add	r1, r9
	add	r2, #8
	ldr	r0, [sp, #0x40]
	mov	r3, r8
	bl	_call_via_r4
.Ld6ee0:
	mov	r4, #1
	add	r10, r4
	mov	r0, r10
	add	r7, #0x1c
	cmp	r0, #0xa
	beq	.Ld6eee
	b	.Ld6dca
.Ld6eee:
	ldr	r1, [sp, #0x30]
	cmp	r1, #0x5f
	bhi	.Ld6f9e
	mov	r5, #0xe8
	mov	r2, #0
	lsl	r5, #7
	mov	r10, r2
	mov	r6, #0xff
	add	r5, r9
.Ld6f00:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Ld6f8e
	mov	r1, #5
	mov	r0, r10
	bl	__modsi3
	ldr	r2, =.Lee934
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	ldr	r4, =.Lee93e
	ldrb	r4, [r4, r0]
	str	r4, [sp]
	ldr	r4, =.Lee943
	ldrb	r0, [r4, r0]
	add	r1, r9
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	lsl	r0, #7
	mov	r1, #0xf0
	add	r2, r3
	lsl	r1, #15
	add	r3, r0
	str	r2, [r5, #4]
	str	r3, [r5, #0x10]
	cmp	r2, r1
	bls	.Ld6f8c
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0x9f
	bgt	.Ld6f8c
	bl	Random
	mov	r1, #0x60
	bl	__umodsi3
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x58
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x80
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r6
	neg	r0, r0
	lsl	r0, #11
	str	r0, [r5, #0x10]
.Ld6f8c:
	ldr	r3, [r5, #0x18]
.Ld6f8e:
	add	r3, #1
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r10, r3
	mov	r4, r10
	add	r5, #0x1c
	cmp	r4, #0x20
	bne	.Ld6f00
.Ld6f9e:
	ldr	r3, [sp, #0x3c]
	sub	r3, #0xe0
	cmp	r3, #0x17
	bhi	.Ld7034
	ldr	r0, [sp, #0x3c]
	mov	r3, #3
	and	r3, r0
	cmp	r3, #0
	bne	.Ld7034
	ldr	r2, .Ld6fe4	@ 0x1f
	mov	r4, #0xa0
	mov	r1, #0
	lsl	r4, #19
	mov	r10, r1
	mov	r8, r2
.Ld6fbc:
	ldrh	r3, [r4]
	mov	r7, #0x1f
	and	r7, r3
	lsl	r3, #16
	mov	r0, r8
	lsr	r6, r3, #21
	lsr	r5, r3, #26
	and	r6, r0
	and	r5, r0
	add	r0, r7, r6
	add	r0, r5
	mov	r1, #3
	str	r4, [sp, #8]
	bl	__divsi3
	ldr	r4, [sp, #8]
	cmp	r7, r0
	ble	.Ld7000
	sub	r7, #1
	b	.Ld7000

	.align	2, 0
.Ld6fe4:
	.word	0x1f
	.pool

.Ld7000:
	cmp	r7, r0
	bge	.Ld7006
	add	r7, #1
.Ld7006:
	cmp	r6, r0
	ble	.Ld700c
	sub	r6, #1
.Ld700c:
	cmp	r6, r0
	bge	.Ld7012
	add	r6, #1
.Ld7012:
	cmp	r5, r0
	ble	.Ld7018
	sub	r5, #1
.Ld7018:
	cmp	r5, r0
	bge	.Ld701e
	add	r5, #1
.Ld701e:
	lsl	r2, r6, #5
	lsl	r3, r5, #10
	mov	r1, #1
	orr	r3, r2
	add	r10, r1
	orr	r3, r7
	mov	r2, r10
	strh	r3, [r4]
	add	r4, #2
	cmp	r2, #0x40
	bne	.Ld6fbc
.Ld7034:
	ldr	r3, [sp, #0x30]
	cmp	r3, #0xac
	bhi	.Ld710e
	ldr	r2, =0x7828
	mov	r0, r9
	ldr	r3, [r0, r2]
	ldr	r3, [r3, #0x14]
	mov	r4, #0
	mov	r10, r4
	cmp	r3, #0
	beq	.Ld710e
	add	r1, sp, #0x4c
	mov	r8, r1
	add	r6, sp, #0x58
	mov	r11, r4
.Ld7052:
	mov	r4, r10
	mov	r3, r9
	ldr	r2, [r3, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	ldr	r2, [r0]
	ldr	r3, [r2, #8]
	str	r3, [r6]
	ldr	r3, [r2, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	mov	r1, r8
	bl	Func_80e3944
	mov	r2, r11
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #2
	ldr	r4, =0x7240
	add	r3, r9
	mov	r7, #0
	add	r5, r3, r4
.Ld7088:
	ldr	r0, [r5, #0x18]
	cmp	r0, #0
	bne	.Ld70b0
	bl	Random
	mov	r1, #0xf
	ldr	r3, [sp, #0x4c]
	and	r0, r1
	add	r3, r0
	sub	r3, #8
	str	r3, [r5]
	bl	Random
	mov	r2, #0xf
	ldr	r3, [sp, #0x50]
	and	r0, r2
	add	r3, r0
	sub	r3, #0x28
	str	r3, [r5, #4]
	ldr	r0, [r5, #0x18]
.Ld70b0:
	cmp	r0, #4
	bhi	.Ld70d8
	ldr	r2, =.Lee948
	lsl	r3, r0, #1
	ldrh	r1, [r2, r3]
	ldr	r3, =.Lee952
	ldrb	r0, [r3, r0]
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	lsr	r4, r0, #1
	sub	r2, r4
	sub	r3, r4
	str	r0, [sp]
	str	r0, [sp, #4]
	add	r1, r9
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	ldr	r0, [r5, #0x18]
.Ld70d8:
	add	r3, r0, #1
	str	r3, [r5, #0x18]
	ldr	r4, [sp, #0x3c]
	cmp	r4, #0xc7
	bgt	.Ld70f2
	cmp	r3, #5
	bne	.Ld70f2
	bl	Random
	mov	r3, #7
	and	r3, r0
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld70f2:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #6
	bne	.Ld7088
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	mov	r0, #6
	add	r10, r1
	add	r11, r0
	cmp	r10, r3
	bne	.Ld7052
.Ld710e:
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0xe8
	ble	.Ld71dc
	ldr	r1, =0xfffffe10
	lsl	r3, r0, #1
	add	r6, r3, r1
	mov	r2, #0
	mov	r3, #0
	mov	r10, r2
	mov	r12, r3
	mov	r4, r6
.Ld7124:
	mov	r7, #0
.Ld7126:
	cmp	r4, #0x7f
	bhi	.Ld7168
	mov	r5, #7
	mov	r0, r4
	and	r0, r5
	lsl	r3, r0, #5
	add	r3, r10
	ldr	r1, =gBuffer
	lsl	r3, #2
	add	r3, r7
	add	r3, r1
	ldrb	r1, [r3]
	mov	r3, r4
	cmp	r4, #0
	bge	.Ld7146
	add	r3, r4, #7
.Ld7146:
	asr	r3, #3
	mov	r2, r1
	cmp	r1, #0
	bge	.Ld7150
	add	r2, r1, #7
.Ld7150:
	asr	r2, #3
	lsl	r3, #4
	add	r3, r2
	lsl	r3, #3
	add	r3, r0
	ldr	r2, [sp, #0x40]
	and	r1, r5
	lsl	r3, #3
	add	r3, r1
	add	r3, r2, r3
	mov	r0, r12
	strb	r0, [r3]
.Ld7168:
	add	r7, #1
	cmp	r7, #4
	bne	.Ld7126
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r4, #1
	cmp	r2, #0x20
	bne	.Ld7124
	mov	r4, #0
	mov	r3, #0
	mov	r14, r4
	mov	r10, r3
	add	r4, r6, #1
.Ld7184:
	mov	r7, #0
	mov	r12, r4
.Ld7188:
	cmp	r4, #0x7f
	bhi	.Ld71ca
	mov	r5, #7
	mov	r0, r12
	and	r0, r5
	lsl	r3, r0, #5
	add	r3, r10
	ldr	r1, =gBuffer
	lsl	r3, #2
	add	r3, r7
	add	r3, r1
	ldrb	r1, [r3]
	mov	r3, r12
	cmp	r3, #0
	bge	.Ld71a8
	add	r3, #7
.Ld71a8:
	asr	r3, #3
	mov	r2, r1
	cmp	r1, #0
	bge	.Ld71b2
	add	r2, r1, #7
.Ld71b2:
	asr	r2, #3
	lsl	r3, #4
	add	r3, r2
	lsl	r3, #3
	add	r3, r0
	ldr	r2, [sp, #0x40]
	and	r1, r5
	lsl	r3, #3
	add	r3, r1
	add	r3, r2, r3
	mov	r0, r14
	strb	r0, [r3]
.Ld71ca:
	add	r7, #1
	cmp	r7, #4
	bne	.Ld7188
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	add	r4, #1
	cmp	r2, #0x20
	bne	.Ld7184
.Ld71dc:
	ldr	r3, [sp, #0x3c]
	sub	r3, #0xa1
	cmp	r3, #0x3e
	bhi	.Ld726c
	ldr	r2, =0x7828
	mov	r3, #0
	mov	r4, r9
	mov	r10, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld726c
.Ld71f4:
	mov	r0, r10
	lsl	r3, r0, #3
	ldr	r1, [sp, #0x3c]
	add	r3, #0xa0
	cmp	r1, r3
	ble	.Ld725c
	mov	r3, r9
	ldr	r2, [r3, r2]
	lsl	r3, r0, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	mov	r6, r0
	ldr	r2, [r6]
	mov	r0, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r0, #12
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #16
	str	r3, [r2, #0xc]
	cmp	r3, r1
	ble	.Ld7226
	str	r1, [r2, #0xc]
.Ld7226:
	mov	r3, #0
	mov	r5, #0
	str	r3, [r2, #0x48]
	b	.Ld7250

	.pool_aligned

.Ld7248:
	mov	r1, #5
	bl	_Sprite_SetAnim
	add	r5, #1
.Ld7250:
	ldr	r0, [r6]
	mov	r1, r5
	bl	_Func_80b7f70
	cmp	r0, #0
	bne	.Ld7248
.Ld725c:
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	mov	r1, #1
	ldr	r3, [r3, #0x14]
	add	r10, r1
	cmp	r10, r3
	bne	.Ld71f4
.Ld726c:
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ld72e0
	mov	r5, #0x8f
	mov	r7, #8
	mov	r6, #0x24
	lsl	r5, #1
.Ld7284:
	ldr	r3, [sp, #0x3c]
	cmp	r3, r5
	bne	.Ld72a0
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldrsh	r0, [r3, r6]
	bl	_GetBattleActor
	mov	r3, #0xc0
	ldr	r2, [r0]
	lsl	r3, #15
	str	r3, [r2, #0xc]
	ldr	r3, =0xab85
	str	r3, [r2, #0x48]
.Ld72a0:
	mov	r3, r5
	ldr	r2, [sp, #0x3c]
	add	r3, #0x10
	cmp	r2, r3
	bne	.Ld72cc
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, #1
	ldrsh	r0, [r3, r6]
	mov	r1, #7
	mov	r3, r10
	neg	r2, r2
	str	r7, [sp]
	bl	SetBattleActorState
	mov	r0, #0x86
	bl	_PlaySound
	ldr	r3, =0x77a8
	add	r3, r9
	str	r7, [r3]
.Ld72cc:
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r10, r0
	add	r6, #2
	add	r5, #5
	cmp	r10, r3
	bne	.Ld7284
.Ld72e0:
	mov	r3, #0x97
	ldr	r2, [sp, #0x3c]
	lsl	r3, #1
	cmp	r2, r3
	beq	.Ld72ec
	b	.Ld7430
.Ld72ec:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =_FILE_98
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r1, #0xb4
	lsl	r1, #5
	ldr	r0, =_FILE_c0
	add	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
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
	str	r3, [sp, #0x44]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r4, [sp, #0x24]
	ldr	r3, [r5]
	ldr	r2, =REG_BLDCNT
	str	r3, [r4, #4]
	ldr	r3, .Ld7380	@ 0x3f46
	strh	r3, [r2]
	ldr	r3, .Ld7384	@ 0x80
	sub	r2, #0x30
	strh	r3, [r2]
	add	r2, #8
	mov	r3, #0
	str	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r9
	str	r6, [r3]
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r10, r0
	b	.Ld73ac

	.align	2, 0
.Ld7380:
	.word	0x3f46
.Ld7384:
	.word	0x80
	.pool

.Ld73ac:
	cmp	r3, #0
	beq	.Ld7430
.Ld73b0:
	mov	r4, r10
	mov	r3, r9
	ldr	r2, [r3, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	mov	r3, r10
	lsl	r2, r3, #2
	add	r2, r10
	lsl	r3, r2, #3
	sub	r3, r2
	ldr	r0, [r0]
	lsl	r3, #3
	mov	r4, #0xe1
	add	r3, r9
	lsl	r4, #7
	mov	r8, r0
	mov	r7, #0
	add	r6, r3, r4
.Ld73da:
	mov	r0, r8
	ldr	r3, [r0, #8]
	str	r3, [r6]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #8]
	ldr	r3, =0x3334
	mov	r5, r7
	mul	r5, r3
	mov	r0, r5
	bl	sin
	lsl	r0, #2
	str	r0, [r6, #0xc]
	bl	Random
	ldr	r3, =0x7fff
	mov	r1, #0x80
	and	r3, r0
	lsl	r1, #9
	add	r3, r1
	str	r3, [r6, #0x10]
	mov	r0, r5
	bl	cos
	add	r7, #1
	lsl	r0, #2
	mov	r3, #0
	str	r0, [r6, #0x14]
	str	r3, [r6, #0x18]
	add	r6, #0x1c
	cmp	r7, #0xa
	bne	.Ld73da
	mov	r2, #1
	add	r10, r2
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r10, r3
	bne	.Ld73b0
.Ld7430:
	ldr	r0, [sp, #0x3c]
	ldr	r1, =0x12d
	cmp	r0, r1
	bgt	.Ld743a
	b	.Ld7594
.Ld743a:
	mov	r2, #0
	mov	r10, r2
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	bne	.Ld744c
	b	.Ld7594
.Ld744c:
	ldr	r1, [sp, #0x3c]
	ldr	r3, =0xfffffed2
	mov	r0, sp
	add	r0, #0x4c
	add	r3, r1, r3
	mov	r4, #0x97
	mov	r1, sp
	str	r0, [sp, #0x18]
	lsl	r4, #1
	mov	r0, #0
	add	r1, #0x58
	str	r3, [sp, #0x14]
	str	r4, [sp, #0x10]
	str	r0, [sp, #0xc]
	str	r1, [sp, #0x1c]
.Ld746a:
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x10]
	cmp	r3, r4
	blt	.Ld74f8
	ldr	r0, [sp, #0xc]
	mov	r1, #0x9d
	lsl	r1, #1
	ldr	r4, [sp, #0x3c]
	add	r3, r0, r1
	cmp	r4, r3
	bge	.Ld74f8
	ldr	r0, [sp, #0x14]
	mov	r1, r9
	mov	r4, r10
	ldr	r2, [r1, r2]
	lsl	r3, r4, #1
	add	r3, #0x24
	lsr	r6, r0, #31
	add	r6, r0, r6
	ldrsh	r0, [r2, r3]
	bl	_GetBattleActor
	ldr	r2, [r0]
	ldr	r4, [sp, #0x1c]
	ldr	r3, [r2, #8]
	str	r3, [r4]
	mov	r3, #0
	str	r3, [r4, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r4, #8]
	ldr	r0, [sp, #0x18]
	mov	r8, r0
	mov	r1, r8
	ldr	r0, [sp, #0x1c]
	bl	Func_80e3944
	asr	r6, #1
	mov	r1, r8
	ldr	r2, [r1]
	lsl	r5, r6, #4
	sub	r5, r6
	ldr	r3, [r1, #4]
	asr	r2, #1
	lsl	r5, #5
	str	r2, [r1]
	add	r5, r9
	mov	r4, #0x14
	mov	r0, #0x18
	sub	r2, #0x14
	sub	r3, #0x18
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x44]
	mov	r1, r5
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
	mov	r1, r8
	mov	r4, #0x14
	mov	r0, #0x18
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	str	r0, [sp, #4]
	ldr	r1, [sp, #0x24]
	str	r4, [sp]
	sub	r3, #0x18
	ldr	r4, [r1, #4]
	ldr	r0, [sp, #0x40]
	mov	r1, r5
	bl	_call_via_r4
.Ld74f8:
	ldr	r3, [sp, #0x10]
	ldr	r2, [sp, #0x3c]
	add	r3, #6
	cmp	r2, r3
	blt	.Ld7570
	ldr	r2, [sp, #0xc]
	add	r3, sp, #0x4c
	add	r2, r10
	mov	r8, r3
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #3
	mov	r4, #0xe1
	add	r3, r9
	lsl	r4, #7
	mov	r0, #0xc
	mov	r7, #0
	mov	r6, r8
	add	r5, r3, r4
	mov	r11, r0
.Ld7520:
	mov	r0, r5
	mov	r1, r6
	bl	Func_80e3944
	ldr	r3, [r6]
	asr	r2, r3, #1
	str	r2, [r6]
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x1a
	bhi	.Ld7556
	ldr	r3, =.Lee958
	mov	r4, r11
	ldrh	r1, [r3, r4]
	ldr	r3, =.Lee966
	ldrh	r4, [r3, r4]
	mov	r3, r8
	ldr	r3, [r3, #4]
	lsr	r0, r4, #1
	sub	r2, r0
	sub	r3, r0
	str	r4, [sp]
	str	r4, [sp, #4]
	add	r1, r9
	ldr	r4, [sp, #0x44]
	ldr	r0, [sp, #0x40]
	bl	_call_via_r4
.Ld7556:
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x3c
	lsl	r2, #5
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	add	r7, #1
	add	r3, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #5
	bne	.Ld7520
.Ld7570:
	ldr	r4, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	sub	r4, #4
	mov	r2, #1
	add	r0, #4
	add	r1, #4
	str	r4, [sp, #0x14]
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	add	r10, r2
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r10, r3
	beq	.Ld7594
	b	.Ld746a
.Ld7594:
	ldr	r0, [sp, #0x3c]
	cmp	r0, #0x7f
	bgt	.Ld75a4
	mov	r0, #4
	mov	r1, #0x10
	bl	UpdateScreenShake
	b	.Ld75be
.Ld75a4:
	ldr	r1, [sp, #0x3c]
	ldr	r2, =0x12d
	cmp	r1, r2
	bgt	.Ld75b6
	mov	r0, #2
	mov	r1, #2
	bl	UpdateScreenShake
	b	.Ld75be
.Ld75b6:
	mov	r0, #4
	mov	r1, #8
	bl	UpdateScreenShake
.Ld75be:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [sp, #0x3c]
	mov	r4, #0xb7
	add	r3, #1
	lsl	r4, #1
	str	r3, [sp, #0x3c]
	cmp	r3, r4
	beq	.Ld75e2
	bl	.Ld6b76
.Ld75e2:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	mov	r0, #0x86
	bl	_Func_80bd7dc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #16
	ldr	r2, [sp, #0x38]
	ldr	r5, =0x77d8
	bl	Anim_Unsummon
	mov	r0, #0
	mov	r10, r0
	add	r5, r9
.Ld760e:
	ldmia	r5!, {r0}
	bl	_DeleteSprite
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #8
	bne	.Ld760e
	bl	AnimEnd
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Cybele

	.section .rodata
.Lee910:
	.incrom 0xee910, 0xee916
.Lee916:
	.incrom 0xee916, 0xee920
.Lee920:
	.incrom 0xee920, 0xee925
.Lee925:
	.incrom 0xee925, 0xee92a
.Lee92a:
	.incrom 0xee92a, 0xee930
.Lee930:
	.incrom 0xee930, 0xee934
.Lee934:
	.incrom 0xee934, 0xee93e
.Lee93e:
	.incrom 0xee93e, 0xee943
.Lee943:
	.incrom 0xee943, 0xee948
.Lee948:
	.incrom 0xee948, 0xee952
.Lee952:
	.incrom 0xee952, 0xee958
.Lee958:
	.incrom 0xee958, 0xee966
.Lee966:
	.incrom 0xee966, 0xee974
