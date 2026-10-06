	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_TitanBlade  @ 0x080e99c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r1}
	sub	sp, #0x34
	str	r1, [sp, #0x24]
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	ldr	r3, =0x7828
	ldr	r2, [r6, #8]
	add	r5, r1, r3
	str	r2, [sp, #0x14]
	str	r0, [r5]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Le9a2c	@ 0x1010
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r5, sp, #0x28
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r1, r5
	bl	GetBattleActorPos3
	ldr	r3, [r5]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp, #0x10]
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r0, [r6, #0x1c]
	mov	r3, #1
	str	r0, [sp, #0x18]
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2f
	b	.Le9a3c

	.align	2, 0
.Le9a2c:
	.word	0x1010
	.pool

.Le9a3c:
	bl	BuildDraw2DFuncEx
	ldr	r3, =0x4e20
	ldr	r2, [sp, #0x24]
	ldr	r6, [r6, #0x20]
	add	r1, r2, r3
	ldr	r0, =_FILE_56
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #0x1c]
	bl	LoadVFXFile
	ldr	r0, =_FILE_85
	ldr	r1, [sp, #0x24]
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r6, #0xdd
	ldr	r4, [sp, #0x24]
	lsl	r6, #4
	add	r1, r4, r6
	ldr	r0, =_FILE_7d
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x14]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r1, #0xef
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	add	r3, r0, r1
	str	r5, [r3]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r2, r0, r3
	mov	r3, #0x4b
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r6, #0xe1
	ldr	r5, [sp, #0x24]
	mov	r4, #0
	lsl	r6, #7
	mov	r8, r4
	add	r7, r5, r6
.Le9aa6:
	mov	r0, r8
	lsl	r6, r0, #1
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	str	r3, [r7]
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r1, r8
	neg	r3, r3
	str	r3, [r7, #4]
	lsr	r3, r1, #31
	add	r3, r8
	asr	r3, #1
	mov	r2, #1
	add	r3, #0x19
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x20
	bne	.Le9aa6
	mov	r4, #0
	mov	r1, #1
	mov	r2, #0xab
	ldr	r3, =ewram_2010018
	mov	r8, r4
	neg	r1, r1
	lsl	r2, #2
.Le9af4:
	mov	r5, #1
	add	r8, r5
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Le9af4
	ldr	r0, [sp, #0x10]
	lsl	r0, #16
	mov	r6, #0
	str	r0, [sp, #8]
	ldr	r7, =ewram_2014ad0
	mov	r8, r6
.Le9b0c:
	bl	Random
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	ldr	r1, [sp, #8]
	and	r5, r3
	mov	r3, #0xb0
	lsl	r3, #15
	str	r1, [r7]
	str	r3, [r7, #4]
	mov	r0, r5
	bl	sin
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #5
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	neg	r3, r3
	asr	r3, #6
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x20
	str	r3, [r7, #0x18]
	mov	r2, #1
	mov	r3, #0xaa
	add	r8, r2
	lsl	r3, #1
	add	r7, #0x1c
	cmp	r8, r3
	bne	.Le9b0c
	mov	r4, #0
	mov	r11, r4
.Le9b66:
	mov	r3, r11
	sub	r3, #0x19
	cmp	r3, #0x16
	bhi	.Le9b74
	ldr	r0, =_FILE_c0
	bl	BlendVFXPaletteFile
.Le9b74:
	mov	r5, r11
	cmp	r5, #0x38
	ble	.Le9b80
	ldr	r0, =_FILE_c4
	bl	BlendVFXPaletteFile
.Le9b80:
	mov	r6, r11
	cmp	r6, #8
	bne	.Le9b8e
	ldr	r0, [sp, #0x24]
	ldr	r1, =0x77a8
	add	r3, r0, r1
	str	r6, [r3]
.Le9b8e:
	mov	r2, r11
	cmp	r2, #0x30
	bne	.Le9b9e
	ldr	r3, [sp, #0x24]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	mov	r3, #8
	str	r3, [r2]
.Le9b9e:
	mov	r5, r11
	cmp	r5, #0x3c
	bne	.Le9bae
	ldr	r6, [sp, #0x24]
	ldr	r0, =0x77a8
	mov	r3, #0x10
	add	r2, r6, r0
	str	r3, [r2]
.Le9bae:
	mov	r1, r11
	cmp	r1, #4
	bne	.Le9bba
	mov	r0, #0xd4
	bl	_PlaySound
.Le9bba:
	mov	r2, r11
	cmp	r2, #0x20
	bne	.Le9bc6
	mov	r0, #0xa4
	bl	_PlaySound
.Le9bc6:
	mov	r3, r11
	cmp	r3, #0x3c
	bne	.Le9bd8
	mov	r0, #0x91
	bl	_PlaySound
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le9bd8:
	mov	r4, r11
	cmp	r4, #0x37
	ble	.Le9c86
	ldr	r6, =.Leef12
	ldr	r0, [sp, #0x24]
	mov	r1, #0xe1
	mov	r5, #0
	lsl	r1, #7
	mov	r8, r5
	mov	r10, r6
	add	r5, r0, r1
.Le9bee:
	ldr	r0, [sp, #0x10]
	mov	r4, #2
	ldrsh	r3, [r5, r4]
	add	r6, r3, r0
	ldr	r0, [r5, #0x18]
	mov	r2, #6
	ldrsh	r7, [r5, r2]
	cmp	r0, #0x11
	bhi	.Le9c30
	mov	r1, #3
	bl	__divsi3
	mov	r2, r10
	ldrb	r1, [r2, r0]
	ldr	r3, [sp, #0x24]
	mov	r0, #0x20
	lsl	r1, #11
	mov	r4, #0xdd
	add	r1, r3, r1
	lsl	r4, #4
	mov	r2, r6
	str	r0, [sp]
	mov	r3, r7
	mov	r0, #0x40
	str	r0, [sp, #4]
	add	r1, r4
	sub	r2, #0x10
	add	r3, #0x30
	ldr	r0, [sp, #0x20]
	ldr	r6, [sp, #0x18]
	bl	_call_via_r6
	ldr	r0, [r5, #0x18]
.Le9c30:
	cmp	r0, #0
	ble	.Le9c74
	sub	r3, r0, #1
	b	.Le9c78

	.pool_aligned

.Le9c74:
	mov	r3, #1
	neg	r3, r3
.Le9c78:
	str	r3, [r5, #0x18]
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x10
	bne	.Le9bee
.Le9c86:
	mov	r2, r11
	cmp	r2, #0x1c
	bne	.Le9d0a
	mov	r3, #0
	mov	r4, #0x3f
	ldr	r7, =gBuffer
	mov	r8, r3
	mov	r10, r4
.Le9c96:
	mov	r5, #1
	ldr	r3, [r7, #0x18]
	neg	r5, r5
	cmp	r3, r5
	bne	.Le9cfc
	bl	Random
	mov	r6, r0
	mov	r0, r10
	and	r6, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	ldr	r1, [sp, #8]
	asr	r3, #3
	add	r3, r1
	str	r3, [r7]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0xc0
	lsl	r2, #15
	asr	r3, #2
	add	r3, r2
	str	r3, [r7, #4]
	bl	Random
	mov	r3, r10
	and	r0, r3
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Random
	mov	r4, r10
	and	r0, r4
	neg	r0, r0
	sub	r0, #8
	lsl	r0, #13
	mov	r3, #0
	str	r0, [r7, #0x10]
	str	r3, [r7, #0x18]
.Le9cfc:
	mov	r5, #1
	mov	r6, #0x80
	add	r8, r5
	lsl	r6, #1
	add	r7, #0x1c
	cmp	r8, r6
	bne	.Le9c96
.Le9d0a:
	mov	r0, r11
	sub	r0, #0x20
	str	r0, [sp, #0xc]
	cmp	r0, #0x1f
	bhi	.Le9dec
	mov	r1, #0
	mov	r2, #0x3f
	ldr	r7, =gBuffer
	mov	r9, r1
	mov	r8, r1
	mov	r10, r2
.Le9d20:
	mov	r4, #1
	ldr	r3, [r7, #0x18]
	neg	r4, r4
	cmp	r3, r4
	bne	.Le9d90
	bl	Random
	mov	r6, r0
	bl	Random
	mov	r5, r10
	ldr	r3, =0xffff
	and	r6, r5
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	ldr	r0, [sp, #8]
	asr	r3, #3
	add	r3, r0
	str	r3, [r7]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r1, #0xc0
	lsl	r1, #15
	asr	r3, #2
	add	r3, r1
	str	r3, [r7, #4]
	bl	Random
	mov	r2, r10
	and	r0, r2
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Random
	mov	r3, r10
	and	r0, r3
	neg	r0, r0
	mov	r4, #1
	sub	r0, #8
	add	r9, r4
	lsl	r0, #13
	mov	r3, #0
	mov	r5, r9
	str	r0, [r7, #0x10]
	str	r3, [r7, #0x18]
	cmp	r5, #0x10
	beq	.Le9d9e
.Le9d90:
	mov	r6, #1
	mov	r0, #0xab
	add	r8, r6
	lsl	r0, #2
	add	r7, #0x1c
	cmp	r8, r0
	bne	.Le9d20
.Le9d9e:
	ldr	r1, [sp, #0xc]
	cmp	r1, #0x1f
	bhi	.Le9dec
	mov	r2, r11
	ldr	r3, [sp, #0x10]
	ldr	r1, =0xffffff00
	lsl	r0, r2, #4
	mov	r4, #0x22
	sub	r3, #0x11
	add	r0, r1
	mov	r1, #0x68
	mov	r10, r3
	mov	r8, r4
	ldr	r5, [sp, #0x18]
	bl	__modsi3
	mov	r9, r5
	mov	r2, r8
	mov	r5, r0
	mov	r6, #0x68
	mov	r3, #4
	sub	r3, r5
	str	r2, [sp]
	ldr	r1, [sp, #0x24]
	mov	r2, r10
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r9
	mov	r3, #0x6c
	mov	r4, r8
	sub	r3, r5
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #0x24]
	mov	r2, r10
	bl	_call_via_r9
.Le9dec:
	mov	r5, r11
	cmp	r5, #0x47
	bgt	.Le9ee8
	mov	r6, #0
	ldr	r5, =gBuffer
	mov	r8, r6
.Le9df8:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	blt	.Le9eda
	mov	r0, r8
	mov	r1, #3
	bl	__modsi3
	ldr	r3, [r5, #0x10]
	add	r4, r0, #2
	cmp	r3, #0
	ble	.Le9e10
	add	r4, #2
.Le9e10:
	mov	r0, r11
	cmp	r0, #0x44
	ble	.Le9e1c
	cmp	r4, #5
	bgt	.Le9e1c
	mov	r4, #6
.Le9e1c:
	mov	r1, r11
	cmp	r1, #0x46
	ble	.Le9e28
	cmp	r4, #6
	bgt	.Le9e28
	mov	r4, #7
.Le9e28:
	mov	r2, r11
	cmp	r2, #0x48
	ble	.Le9e34
	cmp	r4, #7
	bgt	.Le9e34
	mov	r4, #8
.Le9e34:
	mov	r3, r11
	cmp	r3, #0x4a
	ble	.Le9e40
	cmp	r4, #8
	bgt	.Le9e40
	mov	r4, #9
.Le9e40:
	mov	r6, r11
	cmp	r6, #0x4c
	ble	.Le9e48
	mov	r4, #0xa
.Le9e48:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x14]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r4, #31
	add	r3, r4, r3
	asr	r3, #1
	sub	r2, r3
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	str	r4, [sp]
	sub	r3, r4
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r1, [r5, #0x10]
	ldr	r3, [r5, #4]
	mov	r6, r11
	add	r3, r1
	str	r3, [r5, #4]
	cmp	r6, #0x50
	ble	.Le9e8e
	ldr	r0, =0xffff8000
	add	r3, r1, r0
	b	.Le9e9c
.Le9e8e:
	mov	r2, #3
	mov	r4, r8
	ldr	r3, =.Leef18
	and	r2, r4
	lsl	r2, #2
	ldr	r3, [r3, r2]
	add	r3, r1, r3
.Le9e9c:
	str	r3, [r5, #0x10]
	ldr	r2, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #1
	cmp	r3, #0
	bge	.Le9eac
	add	r3, #0x3f
.Le9eac:
	ldr	r2, [r5, #0x10]
	asr	r3, #6
	str	r3, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r2, r3, #1
	cmp	r2, #0
	bge	.Le9ebe
	add	r2, #0x3f
.Le9ebe:
	ldr	r3, [r5, #0x18]
	asr	r2, #6
	add	r3, #1
	str	r2, [r5, #0x10]
	str	r3, [r5, #0x18]
	cmp	r2, #0
	ble	.Le9eda
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	cmp	r3, #0x6c
	ble	.Le9eda
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Le9eda:
	mov	r0, #1
	mov	r1, #0xab
	add	r8, r0
	lsl	r1, #1
	add	r5, #0x1c
	cmp	r8, r1
	bne	.Le9df8
.Le9ee8:
	mov	r2, r11
	cmp	r2, #0x5f
	bgt	.Le9f4e
	ldr	r2, [sp, #0x10]
	mov	r3, r11
	sub	r2, #0x12
	mov	r1, #0x78
	cmp	r3, #0x3c
	ble	.Le9f02
	ldr	r5, =0xfffffe3e
	lsl	r3, #3
	add	r4, r3, r5
	b	.Le9f26
.Le9f02:
	mov	r6, r11
	cmp	r6, #0x20
	ble	.Le9f16
	ldr	r0, [sp, #0xc]
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	mov	r4, r3
	add	r4, #0x10
	b	.Le9f26
.Le9f16:
	mov	r3, r11
	cmp	r3, #9
	bgt	.Le9f24
	lsl	r3, #4
	mov	r4, r3
	sub	r4, #0x80
	b	.Le9f26
.Le9f24:
	mov	r4, #0x10
.Le9f26:
	mov	r3, r4
	add	r3, #0x78
	cmp	r3, #0x6c
	ble	.Le9f34
	sub	r3, r1, r4
	mov	r1, r3
	sub	r1, #0xc
.Le9f34:
	cmp	r1, #0
	ble	.Le9f4e
	ldr	r5, [sp, #0x24]
	ldr	r6, =0x4e20
	mov	r3, #0x24
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r3, r4
	ldr	r0, [sp, #0x20]
	add	r1, r5, r6
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Le9f4e:
	mov	r5, r11
	cmp	r5, #0x3b
	ble	.Le9ffc
	mov	r6, #0
	ldr	r7, =ewram_2014ad0
	mov	r8, r6
.Le9f5a:
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	ble	.Le9fee
	mov	r2, #0x80
	mov	r0, r7
	mov	r1, #0x40
	lsl	r2, #6
	bl	Func_80e3908
	ldr	r3, [r7, #0x18]
	mov	r1, #0xd8
	ldr	r6, [r7, #4]
	sub	r0, r3, #1
	lsl	r1, #15
	str	r0, [r7, #0x18]
	cmp	r6, r1
	ble	.Le9fb0
	ldr	r3, [r7, #0x10]
	neg	r3, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [r7, #0x10]
	b	.Le9fee

	.pool_aligned

.Le9fb0:
	ldr	r5, [r7]
	ldr	r2, =0x7effff
	cmp	r5, r2
	bhi	.Le9fee
	cmp	r6, #0
	blt	.Le9fee
	mov	r1, #5
	bl	__divsi3
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	ldr	r3, [sp, #0x14]
	add	r1, r3, r1
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r3, #1
	asr	r5, #16
	asr	r6, #16
	sub	r5, r3
	sub	r6, r0
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x20]
	mov	r2, r5
	mov	r3, r6
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
.Le9fee:
	mov	r5, #1
	mov	r6, #0xaa
	add	r8, r5
	lsl	r6, #1
	add	r7, #0x1c
	cmp	r8, r6
	bne	.Le9f5a
.Le9ffc:
	mov	r0, r11
	cmp	r0, #0x44
	bne	.Lea042
	ldr	r3, =0x7828
	ldr	r2, [sp, #0x24]
	ldr	r3, [r2, r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	beq	.Lea042
	ldr	r3, =0x7828
	mov	r6, #0x24
	add	r5, r2, r3
.Lea018:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r8
	bl	SetBattleActorState
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r1, #7
	bl	_SetBattleActorKnockback
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r6, #2
	cmp	r8, r3
	bne	.Lea018
.Lea042:
	mov	r3, r11
	cmp	r3, #9
	bne	.Lea056
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #0x20]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Lea056:
	mov	r4, r11
	cmp	r4, #0x3c
	bne	.Lea06a
	mov	r1, #0x80
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #0x20]
	lsl	r1, #7
	ldr	r2, =0x3f3f3f3f
	bl	_call_via_r3
.Lea06a:
	mov	r1, #0x10
	mov	r0, #0x10
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r6, =0x7824
	ldr	r5, [sp, #0x24]
	mov	r3, #1
	add	r2, r5, r6
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	mov	r0, #1
	add	r11, r0
	mov	r1, r11
	cmp	r1, #0x66
	beq	.Lea092
	b	.Le9b66
.Lea092:
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
.func_end Anim_TitanBlade

	.section .rodata
.Leef12:
	.incrom 0xeef12, 0xeef18
.Leef18:
	.incrom 0xeef18, 0xeef28
