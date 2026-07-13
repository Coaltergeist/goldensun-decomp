	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a38d0  @ 0x080a38d0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r0, [sp, #0x18]
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	ldr	r1, [r6, #0x20]
	mov	r8, r1
	ldr	r1, =0x219
	add	r3, r6, r1
	ldrb	r3, [r3]
	mov	r2, #0x1d
	ldrsb	r2, [r6, r2]
	str	r3, [sp, #0x14]
	mov	r3, #0
	str	r3, [sp, #0xc]
	str	r3, [sp, #8]
	mov	r10, r2
	mov	r3, #0xc
	mov	r2, #1
	str	r2, [sp, #0x10]
	str	r3, [sp]
	mov	r2, #5
	mov	r0, r8
	mov	r1, #0xd
	mov	r3, #0x11
	bl	Func_80a23f4
	ldr	r0, [r6, #0x20]
	bl	_Func_8016498
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	mov	r1, #0x82
	lsl	r1, #2
	lsl	r3, #1
	add	r3, r1
	ldrh	r0, [r6, r3]
	bl	_GetUnit
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a3c08
	bl	StartTask
	b	.La3ba0

	.pool_aligned

.La3944:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	bne	.La394c
	b	.La3b08
.La394c:
	ldr	r0, [sp, #0x14]
	mov	r3, #0
	ldr	r1, [sp, #0x14]
	add	r0, r10
	str	r3, [sp, #0x10]
	bl	__modsi3
	mov	r10, r0
	mov	r2, r10
	lsl	r2, #1
	mov	r3, #0x82
	ldr	r1, [r6, #0x20]
	lsl	r3, #2
	str	r2, [sp, #4]
	add	r7, r2, r3
	ldrh	r0, [r6, r7]
	mov	r8, r1
	mov	r9, r2
	bl	_GetUnit
	ldr	r3, [r6, #0x10]
	ldr	r2, [sp, #4]
	ldrh	r1, [r3, #0xc]
	add	r2, r10
	add	r1, r2
	ldr	r2, =0x1ff
	ldr	r5, [r6, #0x18]
	ldr	r3, .La39a4	@ 0xffff
	lsl	r1, #3
	sub	r1, #2
	mov	r11, r2
	strh	r1, [r5, #6]
	and	r1, r3
	mov	r3, r11
	and	r1, r3
	ldr	r2, .La39a8	@ 0xfffffe00
	ldrh	r3, [r5, #0x16]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r5, #0x16]
	ldr	r1, [sp, #0x18]
	cmp	r1, #1
	bne	.La3a5c
	b	.La39b0

	.align	2, 0
.La39a4:
	.word	0xffff
.La39a8:
	.word	0xfffffe00
	.pool

.La39b0:
	ldrh	r0, [r6, r7]
	mov	r1, #1
	bl	Func_80a3e88
	mov	r3, #9
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x10
	bl	_Func_801e41c
	mov	r3, #0x50
	str	r3, [sp]
	mov	r0, r8
	mov	r3, #0x78
	mov	r1, #0
	mov	r2, #0x48
	bl	_Func_80164d4
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	cmp	r10, r3
	beq	.La3a40
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r1, r11
	ldrh	r0, [r6, r7]
	and	r1, r3
	bl	Func_80a3d9c
	mov	r5, r0
	cmp	r5, #0
	beq	.La3a14
	mov	r3, #0x48
	str	r3, [sp]
	mov	r1, #2
	mov	r2, r8
	mov	r3, #8
	bl	_Func_801ea08
	ldr	r0, =0xb2f
	mov	r1, r8
	mov	r2, #0x18
	mov	r3, #0x48
	bl	_Func_801e7c0
	b	.La3a20
.La3a14:
	ldr	r0, =0xb31
	mov	r1, r8
	mov	r2, #0x10
	mov	r3, #0x48
	bl	_Func_801e7c0
.La3a20:
	mov	r3, #0x82
	lsl	r3, #2
	add	r3, r9
	ldrh	r0, [r6, r3]
	bl	Func_80a3d6c
	cmp	r0, #0xf
	bne	.La3a40
	cmp	r5, #0
	bne	.La3a40
	ldr	r0, =0xb30
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x48
	bl	_Func_801e7c0
.La3a40:
	ldr	r1, =0x21a
	mov	r2, #0xba
	add	r3, r6, r1
	lsl	r2, #1
	ldrb	r0, [r3]
	add	r3, r6, r2
	ldrh	r1, [r3]
	mov	r3, #0x82
	lsl	r3, #2
	add	r3, r9
	ldrh	r3, [r6, r3]
	mov	r2, #0
	bl	Func_80a3ef0
.La3a5c:
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.La3b0e
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, .La3a90	@ 0x1ff
	and	r0, r3
	bl	Func_80a3ce4
	cmp	r0, #0
	beq	.La3aa4
	mov	r3, #0x82
	lsl	r3, #2
	mov	r2, #0xba
	add	r3, r9
	lsl	r2, #1
	ldrh	r1, [r6, r3]
	add	r3, r6, r2
	ldrh	r2, [r3]
	ldr	r0, [r6, #0x24]
	mov	r3, #8
	bl	Func_80a112c
	b	.La3abc

	.align	2, 0
.La3a90:
	.word	0x1ff
	.pool

.La3aa4:
	mov	r3, #0x82
	lsl	r3, #2
	mov	r2, #0xba
	add	r3, r9
	lsl	r2, #1
	ldrh	r1, [r6, r3]
	add	r3, r6, r2
	ldrh	r2, [r3]
	ldr	r0, [r6, #0x24]
	mov	r3, #0
	bl	Func_80a112c
.La3abc:
	ldr	r0, =0x151
	bl	_GetFlag
	cmp	r0, #0
	bne	.La3af2
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.La3af2
	ldr	r0, [r6, #0x2c]
	bl	_Func_8016498
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, .La3afc	@ 0x1ff
	and	r0, r3
	ldr	r3, =0x75
	mov	r2, #0
	add	r0, r3
	ldr	r1, [r6, #0x2c]
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r2, #1
	str	r2, [sp, #8]
	b	.La3b0e
.La3af2:
	ldr	r0, =0x151
	bl	_ClearFlag
	b	.La3b0e

	.align	2, 0
.La3afc:
	.word	0x1ff
	.pool

.La3b08:
	mov	r3, r10
	lsl	r3, #1
	str	r3, [sp, #4]
.La3b0e:
	ldr	r0, [sp, #4]
	add	r0, r10
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La3b58
	ldr	r1, [sp, #0x18]
	cmp	r1, #1
	bne	.La3b44
	mov	r3, #0x1c
	ldrsb	r3, [r6, r3]
	cmp	r10, r3
	bne	.La3b44
	mov	r0, #0x72
	bl	_PlaySound
	b	.La3ba0
.La3b44:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r1, #0x82
	ldr	r2, [sp, #4]
	lsl	r1, #2
	add	r3, r2, r1
	ldrb	r3, [r6, r3]
	str	r3, [sp, #0xc]
	b	.La3bb4
.La3b58:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La3b6e
	mov	r0, #0x71
	bl	_PlaySound
	mov	r2, #0xff
	str	r2, [sp, #0xc]
	b	.La3bb4
.La3b6e:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La3b8a
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	mov	r1, #1
	neg	r3, r3
	str	r1, [sp, #0x10]
	add	r10, r3
.La3b8a:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La3ba0
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #0x10]
	add	r10, r2
.La3ba0:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La3bae
	b	.La3944
.La3bae:
	mov	r3, r10
	lsl	r3, #1
	str	r3, [sp, #4]
.La3bb4:
	ldr	r5, [r6, #0x18]
	mov	r1, r10
	strb	r1, [r6, #0x1d]
	mov	r0, r5
	bl	Func_80a17c4
	mov	r3, #0xd
	strb	r3, [r5, #5]
	bl	Func_80a3c98
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r10
	strb	r2, [r6, #0x1d]
	ldr	r3, [sp, #4]
	mov	r1, #0x82
	lsl	r1, #2
	add	r2, r3, r1
	ldrh	r3, [r6, r2]
	str	r3, [r6, #8]
	add	r1, #0x13
	ldrh	r2, [r6, r2]
	add	r3, r6, r1
	strb	r2, [r3]
	ldr	r2, [sp, #0xc]
	lsl	r0, r2, #24
	asr	r0, #24
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a38d0

.thumb_func_start Func_80a3c08  @ 0x080a3c08
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	and	r3, r2
	cmp	r3, #0
	bne	.La3c8c
	ldr	r1, =0x219
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La3c8c
	mov	r7, #0
.La3c26:
	asr	r5, r7, #24
	mov	r2, #0x82
	lsl	r3, r5, #1
	lsl	r2, #2
	mov	r1, #0xbc
	add	r3, r2
	lsl	r1, #1
	ldrh	r0, [r6, r3]
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r1, .La3c58	@ 0x1ff
	and	r1, r3
	bl	_CanEquipItem
	cmp	r0, #0
	beq	.La3c68
	mov	r2, #0x8a
	lsl	r3, r5, #2
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r6, r3]
	mov	r1, #3
	bl	_Sprite_SetAnim
	b	.La3c78

	.align	2, 0
.La3c58:
	.word	0x1ff
	.pool

.La3c68:
	mov	r1, #0x8a
	lsl	r1, #1
	lsl	r3, r5, #2
	add	r3, r1
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Sprite_SetAnim
.La3c78:
	mov	r2, #0x80
	lsl	r2, #17
	ldr	r1, =0x219
	add	r3, r7, r2
	mov	r7, r3
	add	r3, r6, r1
	ldrb	r3, [r3]
	asr	r2, r7, #24
	cmp	r2, r3
	blt	.La3c26
.La3c8c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3c08

.thumb_func_start Func_80a3c98  @ 0x080a3c98
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x219
	ldr	r6, [r3]
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La3ccc
	mov	r5, #0
.La3caa:
	asr	r5, #24
	mov	r2, #0x8a
	lsl	r2, #1
	lsl	r3, r5, #2
	add	r3, r2
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Sprite_SetAnim
	ldr	r1, =0x219
	add	r5, #1
	add	r3, r6, r1
	lsl	r5, #24
	ldrb	r3, [r3]
	asr	r2, r5, #24
	cmp	r2, r3
	blt	.La3caa
.La3ccc:
	ldr	r0, =Func_80a3c08
	bl	StopTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a3c98

