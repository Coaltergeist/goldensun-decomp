	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3480
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0xd
	mov	r7, r3
	mov	r6, #0
	mov	r8, r2
	add	r7, #0x48
.La3494:
	ldmia	r7!, {r5}
	cmp	r5, #0
	beq	.La34aa
	mov	r0, r6
	mov	r1, #5
	bl	__modsi3
	cmp	r0, #0
	bne	.La34aa
	mov	r3, r8
	strb	r3, [r5, #5]
.La34aa:
	add	r6, #1
	cmp	r6, #0x1f
	ble	.La3494
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3480

.thumb_func_start Func_80a34c0
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	bl	Func_80a195c
	bl	Func_80a345c
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xbe
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r2, [r3]
	mov	r0, r5
	mov	r3, #0xd
	strb	r3, [r2, #5]
	add	r0, #0x10
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x20
	mov	r1, #1
	bl	Func_80a1114
	mov	r3, #0x86
	lsl	r3, #1
	add	r0, r5, r3
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x24
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x28
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x2c
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x30
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x34
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x38
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x3c
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, r5
	add	r0, #0x40
	mov	r1, #1
	bl	Func_80a1114
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a34c0

.thumb_func_start Func_80a355c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r10, r0
	ldr	r7, [r3]
	mov	r6, r10
	mov	r1, #0
	add	r6, #0x1c
	ldr	r0, [r7, #0x2c]
	mov	r8, r1
	ldrsb	r5, [r7, r6]
	bl	_Func_80164ac
	ldr	r1, =0x219
	add	r3, r7, r1
	ldrb	r3, [r3]
	add	r2, r7, #2
	strb	r3, [r2, r6]
	mov	r2, #1
	neg	r2, r2
	cmp	r5, r2
	bne	.La3594
	mov	r3, r8
	strb	r3, [r7, r6]
	mov	r6, #0
	b	.La35a2
.La3594:
	lsl	r6, r5, #1
	add	r0, r6, r5
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_80a1ac0
.La35a2:
	mov	r5, #0x82
	lsl	r5, #2
	add	r3, r6, r5
	ldrh	r0, [r7, r3]
	bl	_GetUnit
	mov	r1, #0xe4
	lsl	r1, #1
	add	r6, r7, r1
	mov	r1, r6
	mov	r2, #0
	bl	Func_80a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	add	r5, r7, r5
	strb	r0, [r3]
	mov	r1, r6
	mov	r0, r5
	bl	Func_80a35f8
	mov	r1, r10
	lsl	r3, r1, #2
	add	r3, #0x14
	mov	r8, r0
	ldr	r0, [r7, r3]
	bl	Func_80a17c4
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a355c

.thumb_func_start Func_80a35f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r0, [sp, #0x1c]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r1, #0x1c
	ldrsb	r1, [r3, r1]
	mov	r2, #0x1e
	ldrsb	r2, [r3, r2]
	mov	r8, r1
	mov	r1, #0
	str	r2, [sp, #0x18]
	str	r1, [sp, #0x14]
	str	r1, [sp, #0xc]
	str	r1, [sp, #8]
	mov	r2, r8
	lsl	r7, r2, #1
	mov	r10, r3
	ldrh	r0, [r7, r0]
	mov	r3, #1
	mov	r11, r3
	bl	_GetUnit
	mov	r5, r10
	mov	r3, #0xa
	add	r5, #0x20
	str	r0, [sp, #0x10]
	str	r3, [sp]
	mov	r7, #2
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #3
	mov	r3, #0x11
	str	r7, [sp, #4]
	bl	Func_80a10d0
	cmp	r0, #0
	beq	.La3658
	ldr	r1, [r5]
	mov	r0, r10
	bl	Func_80a33d4
.La3658:
	mov	r6, r10
	mov	r3, #4
	add	r6, #0x28
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #0xd
	mov	r2, #0xd
	mov	r3, #0x11
	str	r7, [sp, #4]
	bl	Func_80a10d0
	cmp	r0, #0
	beq	.La368e
	ldr	r3, [sp, #0x14]
	ldr	r2, [r6]
	mov	r0, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0
	bl	_Func_801eb64
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r10
	str	r0, [r3]
	mov	r3, #0xd
	strb	r3, [r0, #5]
.La368e:
	ldr	r5, =0xb87
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_801e7c0
	ldr	r1, [r6]
	mov	r2, #0
	mov	r3, #8
	mov	r0, r5
	bl	_Func_801e7c0
	mov	r1, r10
	ldr	r3, [r1, #0x14]
	mov	r2, r11
	strb	r2, [r3, #5]
	b	.La3864
.La36b4:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x18]
	add	r0, r8
	bl	__modsi3
	lsl	r7, r0, #1
	mov	r8, r0
	add	r0, r7, r0
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_80a1a40
	mov	r3, r11
	mov	r9, r7
	cmp	r3, #0
	beq	.La375c
	mov	r1, #0
	ldr	r3, [sp, #0x1c]
	str	r1, [sp, #0xc]
	add	r5, r7, r3
	mov	r2, r10
	ldrh	r0, [r5]
	mov	r11, r1
	ldr	r6, [r2, #0x24]
	bl	_GetUnit
	ldr	r1, [sp, #8]
	str	r0, [sp, #0x10]
	cmp	r1, #0
	beq	.La3728
	ldrh	r0, [r5]
	bl	_GetUnit
	mov	r1, #0xe4
	lsl	r1, #1
	add	r1, r10
	mov	r2, #0
	bl	Func_80a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r10
	strb	r0, [r3]
	ldrh	r0, [r5]
	bl	Func_80a38a8
	ldrh	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #8
	bl	Func_80a112c
	b	.La373c

	.pool_aligned

.La3728:
	ldrh	r0, [r5]
	mov	r1, #0
	bl	Func_80a3e88
	ldrh	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	Func_80a112c
.La373c:
	mov	r3, #0xa5
	lsl	r3, #1
	ldr	r1, =0x1e
	mov	r2, #3
	add	r3, r10
.La3746:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La3746
	mov	r2, #0xa2
	lsl	r2, #1
	ldr	r3, =0x1a
	add	r2, r9
	mov	r1, r10
	strh	r3, [r1, r2]
.La375c:
	mov	r0, #1
	bl	WaitFrames
	ldr	r6, =gKeyPress
	ldr	r3, [r6]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La37f0
	ldr	r3, =gKeyHeld
	mov	r2, #0x80
	b	.La3784

	.pool_aligned

.La3784:
	ldr	r3, [r3]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La37d0
	ldr	r2, [sp, #0xc]
	add	r2, #4
	mov	r3, r2
	cmp	r2, #0
	bge	.La379c
	ldr	r3, [sp, #0xc]
	add	r3, #7
.La379c:
	asr	r3, #2
	lsl	r3, #2
	sub	r3, r2, r3
	ldr	r0, [sp, #0x10]
	lsl	r3, #24
	lsr	r3, #24
	mov	r1, r3
	add	r0, #0xd8
	str	r3, [sp, #0xc]
	bl	Func_80a1e38
	ldr	r3, [sp, #0xc]
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #0x1c]
	mov	r2, r9
	ldrh	r0, [r2, r3]
	mov	r1, #0
	bl	Func_80a3e88
	mov	r0, #0x70
	bl	_PlaySound
	b	.La37f0
.La37d0:
	ldr	r5, [sp, #0x1c]
	add	r5, r9
	ldrh	r0, [r5]
	bl	Func_80a3d6c
	cmp	r0, #0
	beq	.La37ea
	mov	r0, #0x70
	bl	_PlaySound
	ldrh	r5, [r5]
	str	r5, [sp, #0x14]
	b	.La3876
.La37ea:
	mov	r0, #0x72
	bl	_PlaySound
.La37f0:
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La3808
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x14]
	b	.La3876
.La3808:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La381a
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r11, r3
.La381a:
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	bne	.La3832
	ldr	r1, [sp, #8]
	cmp	r1, #1
	bne	.La3832
	mov	r2, #0
	mov	r3, #1
	str	r2, [sp, #8]
	mov	r11, r3
.La3832:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La384e
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	mov	r2, #1
	add	r8, r1
	mov	r11, r2
.La384e:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La3864
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	add	r8, r3
	mov	r11, r3
.La3864:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La3872
	b	.La36b4
.La3872:
	mov	r1, r8
	lsl	r7, r1, #1
.La3876:
	mov	r3, r10
	mov	r2, r8
	strb	r2, [r3, #0x1c]
	ldr	r1, [sp, #0x1c]
	ldrh	r2, [r7, r1]
	str	r2, [r3, #8]
	ldr	r3, =0x21a
	add	r3, r10
	strb	r2, [r3]
	ldr	r0, [sp, #0x14]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a35f8

.thumb_func_start Func_80a38a8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r6, r0
	bl	Func_80a9cbc
	ldr	r0, [r5, #0x20]
	bl	_Func_8016498
	ldr	r0, [r5, #0x20]
	mov	r1, r6
	mov	r2, #0
	bl	Func_80a9a5c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a38a8

.thumb_func_start Func_80a38d0
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

.thumb_func_start Func_80a3c08
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

.thumb_func_start Func_80a3c98
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

.thumb_func_start Func_80a3ce4
	push	{lr}
	cmp	r0, #0xc4
	bgt	.La3cf2
	cmp	r0, #0xc1
	blt	.La3cf2
	mov	r0, #1
	b	.La3cf4
.La3cf2:
	mov	r0, #0
.La3cf4:
	pop	{r1}
	bx	r1
.func_end Func_80a3ce4

.thumb_func_start Func_80a3cf8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r3, #0x86
	lsl	r3, #1
	add	r5, r3
	mov	r6, r1
	ldr	r0, [r5]
	bl	_Func_8016498
	ldr	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a3cf8

.thumb_func_start Func_80a3d24
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r1, #0xd
	ldr	r7, [r3]
	sub	sp, #4
	mov	r6, #0x48
	mov	r5, r0
	mov	r8, r1
	mov	r2, #0x1f
.La3d3a:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, #0
	bne	.La3d52
	ldr	r0, [r6, r7]
	str	r2, [sp]
	bl	Func_80a17c4
	ldr	r3, [r6, r7]
	mov	r1, r8
	strb	r1, [r3, #5]
	ldr	r2, [sp]
.La3d52:
	sub	r2, #1
	add	r6, #4
	cmp	r2, #0
	bge	.La3d3a
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3d24

.thumb_func_start Func_80a3d6c
	push	{r5, lr}
	bl	_GetUnit
	ldr	r4, =0x1ff
	mov	r5, #0
	add	r0, #0xd8
	mov	r1, #0xe
.La3d7a:
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	add	r0, #2
	cmp	r3, #0
	beq	.La3d88
	add	r5, #1
.La3d88:
	sub	r1, #1
	cmp	r1, #0
	bge	.La3d7a
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80a3d6c

.thumb_func_start Func_80a3d9c
	push	{r5, r6, lr}
	mov	r6, r1
	bl	_GetUnit
	ldr	r4, =0x1ff
	mov	r5, #0
	mov	r1, #0
	add	r0, #0xd8
.La3dac:
	ldrh	r2, [r0]
	mov	r3, r2
	add	r0, #2
	cmp	r3, #0
	beq	.La3dca
	mov	r3, r4
	and	r3, r2
	cmp	r3, r6
	bne	.La3dca
	mov	r3, #0xf8
	lsl	r3, #8
	and	r3, r2
	lsr	r5, r3, #11
	add	r5, #1
	b	.La3dd0
.La3dca:
	add	r1, #1
	cmp	r1, #0xe
	ble	.La3dac
.La3dd0:
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80a3d9c

.thumb_func_start Func_80a3ddc
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r3, r5
	ldr	r2, =0
	add	r3, #0x3e
	mov	r12, r5
.La3de8:
	strh	r2, [r3]
	sub	r3, #2
	cmp	r3, r12
	bge	.La3de8
	ldr	r3, =0
	mov	r7, #0
	mov	r12, r3
	add	r0, #0xd8
	mov	r6, #0
	mov	r4, r5
	mov	r1, #0xe
.La3dfe:
	mov	r3, r12
	strh	r3, [r6, r5]
	ldrh	r2, [r0]
	mov	r3, r2
	add	r0, #2
	cmp	r3, #0
	beq	.La3e18
	strh	r2, [r4]
	add	r7, #1
	add	r4, #2
	b	.La3e18

	.pool_aligned

.La3e18:
	sub	r1, #1
	add	r6, #2
	cmp	r1, #0
	bge	.La3dfe
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a3ddc

.thumb_func_start Func_80a3e28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r0
	mov	r5, r3
	mov	r8, r1
	add	r5, #0x48
	mov	r6, r10
	mov	r7, #0xe
.La3e40:
	ldrh	r1, [r6]
	add	r6, #2
	cmp	r1, #0
	beq	.La3e68
	mov	r3, r8
	cmp	r3, #0
	bne	.La3e5c
	ldr	r3, [r5]
	mov	r0, #2
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
	b	.La3e68
.La3e5c:
	ldr	r3, [r5]
	mov	r0, #7
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
.La3e68:
	sub	r7, #1
	add	r5, #4
	cmp	r7, #0
	bge	.La3e40
	mov	r0, r10
	bl	Func_80a3d24
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3e28

.thumb_func_start Func_80a3e88
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r8, r1
	ldr	r7, [r3]
	mov	r6, r0
	bl	_GetUnit
	mov	r2, #0xe4
	lsl	r2, #1
	add	r5, r7, r2
	mov	r1, r5
	mov	r2, #0
	bl	Func_80a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	strb	r0, [r3]
	ldr	r0, [r7, #0x20]
	bl	_Func_8016498
	mov	r0, r8
	bl	Func_80a1cb0
	mov	r0, r5
	mov	r1, #0
	bl	Func_80a3e28
	mov	r0, r6
	bl	Func_80a3d6c
	cmp	r0, #0
	bne	.La3eda
	ldr	r0, =0xad7
	ldr	r1, [r7, #0x20]
	mov	r2, #8
	mov	r3, #0x18
	bl	_Func_801e7c0
.La3eda:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3e88

