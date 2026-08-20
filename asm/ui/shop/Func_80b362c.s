	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b362c  @ 0x080b362c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x18
	str	r3, [sp, #0x14]
	mov	r11, r0
	bl	_GetUnit
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	mov	r5, #2
	mov	r2, #0x10
	mov	r3, #4
	mov	r10, r1
	mov	r9, r1
	mov	r0, #0xe
	mov	r1, #8
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r1, #5
	str	r0, [sp, #0xc]
	mov	r2, #0x1e
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r2, #0xe0
	ldr	r1, [sp, #0x14]
	str	r0, [sp, #0x10]
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r2, [r3]
	mov	r3, #0x12
	strb	r3, [r2, #5]
	mov	r3, #0xea
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0xc
	strb	r3, [r2]
	mov	r7, #0
.Lb3690:
	mov	r1, r9
	cmp	r1, #0
	beq	.Lb370c
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	bl	_FindEmptyInventorySlot
	mov	r10, r0
	mov	r3, r10
	sub	r3, #1
	cmp	r7, r3
	ble	.Lb36ac
	mov	r7, r3
.Lb36ac:
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	lsl	r3, r7, #1
	add	r3, #0xd8
	ldrh	r3, [r1, r3]
	ldr	r2, [r2, #0x20]
	ldr	r6, .Lb36f4	@ 0x1ff
	mov	r1, #5
	mov	r0, r7
	and	r6, r3
	mov	r8, r2
	bl	__modsi3
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	__divsi3
	mov	r2, r0
	lsl	r5, #4
	lsl	r2, #4
	add	r2, #8
	mov	r0, r8
	mov	r1, r5
	bl	Func_80b0a6c
	mov	r1, #0xea
	ldr	r3, [sp, #0x14]
	lsl	r1, #2
	add	r2, r3, r1
	mov	r3, #3
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	mov	r1, r11
	mov	r2, r7
	b	.Lb36fc

	.align	2, 0
.Lb36f4:
	.word	0x1ff
	.pool

.Lb36fc:
	bl	Func_80b386c
	ldr	r3, =0x75
	add	r6, r3
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	bl	Func_80b11a4
.Lb370c:
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb377c
	mov	r0, r11
	mov	r1, r7
	bl	_CanRemoveItem
	cmp	r0, #0
	bne	.Lb3734
	mov	r0, #0x70
	bl	_PlaySound
	str	r7, [sp, #4]
	b	.Lb382c
.Lb3734:
	mov	r2, #4
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb374a
	ldr	r0, =0xc96
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	_Func_8017658
	b	.Lb3760
.Lb374a:
	mov	r1, #3
	ldr	r3, [sp, #4]
	neg	r1, r1
	cmp	r3, r1
	bne	.Lb3760
	ldr	r0, =0xc97
	mov	r1, #8
	mov	r2, #1
	mov	r3, #2
	bl	_Func_8017658
.Lb3760:
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb376e
.Lb3768:
	mov	r0, #1
	bl	WaitFrames
.Lb376e:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb3768
	bl	_Func_8019a54
	b	.Lb3690
.Lb377c:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3794
	mov	r0, #0x71
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.Lb382c
.Lb3794:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb37b8
	mov	r0, #0x6f
	bl	_PlaySound
	sub	r7, #1
	mov	r3, r10
	add	r0, r7, r3
	mov	r1, r10
	bl	__modsi3
	mov	r1, #1
	mov	r7, r0
	mov	r9, r1
.Lb37b8:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb37da
	mov	r0, #0x6f
	bl	_PlaySound
	add	r7, #1
	mov	r2, r10
	add	r0, r7, r2
	mov	r1, r10
	bl	__modsi3
	mov	r3, #1
	mov	r7, r0
	mov	r9, r3
.Lb37da:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3800
	sub	r7, #5
	cmp	r7, #0
	bge	.Lb37ec
	add	r7, #0xf
.Lb37ec:
	cmp	r7, r10
	blt	.Lb37f6
.Lb37f0:
	sub	r7, #5
	cmp	r7, r10
	bge	.Lb37f0
.Lb37f6:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	mov	r9, r1
.Lb3800:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	bne	.Lb380e
	b	.Lb3690
.Lb380e:
	add	r7, #5
	cmp	r7, r10
	blt	.Lb3816
	sub	r7, #0xf
.Lb3816:
	cmp	r7, #0
	bge	.Lb3820
.Lb381a:
	add	r7, #5
	cmp	r7, #0
	blt	.Lb381a
.Lb3820:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r9, r2
	b	.Lb3690
.Lb382c:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0xc]
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #4]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b362c

