	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_a355c, "ax", %progbits

.thumb_func_start Func_80a35f8  @ 0x080a35f8
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
