	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b3284  @ 0x080b3284
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r1
	sub	sp, #4
	mov	r6, r0
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3a9
	ldr	r5, [r3]
	mov	r2, #1
	add	r3, r5, r1
	strb	r2, [r3]
	cmp	r6, #5
	bne	.Lb32ae
	add	r1, #3
	add	r3, r5, r1
	strb	r2, [r3]
.Lb32ae:
	mov	r0, r9
	bl	_MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0xe9
	ldrh	r3, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	strh	r3, [r7]
	mov	r2, #0
	mov	r3, #0
	mov	r1, #0
	ldrh	r0, [r7]
	bl	_Func_8019da8
	mov	r8, r0
	mov	r0, r6
	bl	Func_80b3210
	mov	r1, #5
	mov	r6, r0
	bl	_Func_8019908
	ldr	r3, =0xd1c
	mov	r10, r3
	mov	r0, r10
	bl	Func_80b04dc
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0
	bl	_CreateUIBox
	str	r0, [r5, #0xc]
	bl	Func_80b10cc
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb330e
	mov	r0, r10
	add	r0, #3
	b	.Lb331a
.Lb330e:
	ldr	r3, =gState
	ldr	r3, [r3, #0x10]
	cmp	r6, r3
	bls	.Lb3328
	mov	r0, r10
	add	r0, #2
.Lb331a:
	bl	Func_80b04dc
	ldr	r0, [r5, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	b	.Lb336a
.Lb3328:
	mov	r1, #2
	ldr	r0, [r5, #0xc]
	bl	_CloseUIBox
	mov	r0, r10
	add	r0, #1
	bl	Func_80b04dc
	mov	r1, #2
	mov	r0, r8
	bl	_CloseUIBox
	mov	r0, r6
	bl	InnHeal
	mov	r0, r9
	bl	_MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	ldrh	r3, [r3]
	strh	r3, [r7]
	mov	r1, #0
	ldrh	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8019da8
	mov	r8, r0
	mov	r0, r10
	add	r0, #4
	bl	Func_80b04dc
.Lb336a:
	mov	r0, r8
	mov	r1, #2
	bl	_CloseUIBox
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b3284

	.section .text.after_b3398, "ax", %progbits

.thumb_func_start UI_SellMenu  @ 0x080b3444
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r0, [sp, #0xc]
	mov	r2, #0
	mov	r0, #1
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r9, r0
	mov	r11, r2
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r5, #2
	mov	r8, r3
	mov	r1, #0xc
	mov	r2, #0xe
	mov	r3, #8
	mov	r0, #0x10
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, r8
	str	r0, [r3, #0x20]
	mov	r1, #0xe
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #0
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #0xe4
	lsl	r3, #2
	ldr	r4, [sp, #4]
	mov	r10, r0
	add	r3, r8
	mov	r1, #0x80
	ldrh	r0, [r3]
	lsl	r1, #23
	mov	r2, r10
	mov	r3, #0
	str	r4, [sp]
	bl	_Func_801eadc
	mov	r6, #0xe0
	mov	r5, r0
	add	r0, sp, #4
	ldrb	r0, [r0]
	lsl	r6, #2
	mov	r3, #4
	add	r6, r8
	mov	r1, #0x20
	strb	r3, [r5, #5]
	strb	r0, [r5, #4]
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_80b0a20
	mov	r2, #0xea
	lsl	r2, #2
	add	r2, r8
	mov	r3, #0xc
	str	r5, [r6]
	strb	r3, [r2]
	ldr	r2, [sp, #4]
	mov	r0, r10
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_80a1870
	mov	r6, #0xea
	lsl	r6, #2
	mov	r7, #0
	add	r6, r8
.Lb34ea:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lb353a
	ldr	r3, =0x3a7
	add	r3, r8
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r4, #0
	add	r0, r7, r1
	mov	r9, r4
	bl	__modsi3
	mov	r7, r0
	mov	r0, #0xdb
	lsl	r0, #2
	lsl	r1, r7, #1
	mov	r3, r8
	add	r2, r1, r0
	add	r3, #2
	add	r1, r7
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r10
	mov	r2, #0
	mov	r11, r4
	bl	Func_80b0a6c
	mov	r3, #3
	mov	r0, r10
	mov	r1, r7
	mov	r2, #0
	strb	r3, [r6]
	bl	Func_80b11c4
	mov	r2, r8
	ldr	r0, [r2, #0x20]
	mov	r1, r11
	bl	Func_80b1dec
.Lb353a:
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb3598
	mov	r0, r11
	bl	_FindEmptyInventorySlot
	cmp	r0, #0
	bne	.Lb355e
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb34ea
.Lb355e:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r0, r11
	bl	Func_80b362c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb3588
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r2, [r3]
	mov	r3, #4
	strb	r3, [r2, #5]
	mov	r4, #1
	mov	r3, #0xc
	strb	r3, [r6]
	mov	r9, r4
	b	.Lb34ea
.Lb3588:
	ldr	r3, [sp, #0xc]
	mov	r2, r11
	str	r2, [r3]
	ldr	r4, [sp, #8]
	str	r0, [r4]
	mov	r0, #0
	str	r0, [sp, #4]
	b	.Lb35e8
.Lb3598:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb35b8
	mov	r0, #0x71
	bl	_PlaySound
	mov	r3, #1
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	str	r3, [r2]
	ldr	r4, [sp, #8]
	str	r3, [r4]
	str	r3, [sp, #4]
	b	.Lb35e8
.Lb35b8:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb35d0
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	sub	r7, #1
	mov	r9, r0
.Lb35d0:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb34ea
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	add	r7, #1
	mov	r9, r2
	b	.Lb34ea
.Lb35e8:
	bl	_Func_80a195c
	mov	r0, r10
	mov	r1, #2
	bl	_CloseUIBox
	mov	r3, r8
	ldr	r0, [r3, #0x20]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	bl	Func_80b0204
	ldr	r0, [sp, #4]
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end UI_SellMenu

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

.thumb_func_start Func_80b386c  @ 0x080b386c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r7, r0
	mov	r0, r10
	mov	r9, r2
	sub	sp, #4
	bl	_GetUnit
	mov	r2, r9
	lsl	r3, r2, #1
	mov	r6, r3
	add	r6, #0xd8
	ldrh	r3, [r0, r6]
	ldr	r5, =0x1ff
	and	r5, r3
	ldrh	r3, [r0, r6]
	lsr	r3, #11
	add	r3, #1
	mov	r8, r0
	mov	r11, r3
	cmp	r7, #0
	beq	.Lb391a
	mov	r0, r7
	bl	_Func_8016498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r7
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, r10
	mov	r1, r9
	bl	_CanRemoveItem
	mov	r3, #4
	neg	r3, r3
	cmp	r0, r3
	bne	.Lb38cc
	ldr	r0, =0xc94
	b	.Lb38d6
.Lb38cc:
	mov	r2, #3
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb38e2
	ldr	r0, =0xc95
.Lb38d6:
	mov	r1, r7
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	b	.Lb391a
.Lb38e2:
	mov	r3, r8
	ldrh	r0, [r3, r6]
	bl	Func_80b19cc
	ldr	r5, =0xc8d
	mov	r6, r11
	mul	r6, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #8
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #5
	mov	r2, r7
	mov	r3, #0x28
	sub	r5, #5
	bl	_Func_801ea08
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0x50
	mov	r3, #8
	bl	_Func_801e7c0
.Lb391a:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b386c

	.section .rodata
	.global .Lb4ab2
	.global .Lb4ab6
	.global .Lb41ac
	.global .Lb3940
	.global .Lb39c0
	.global .Lb3a40
	.global .Lb3ac0
	.global .Lb3b40
	.global .Lb3bc0
	.global .Lb3d40
	.global .Lb3e80
	.global .Lb3f80
	.global .Lb4100
	.global .Lb413c
	.global .Lb4146

.Lb3940:
	.incrom 0xb3940, 0xb39c0
.Lb39c0:
	.incrom 0xb39c0, 0xb3a40
.Lb3a40:
	.incrom 0xb3a40, 0xb3ac0
.Lb3ac0:
	.incrom 0xb3ac0, 0xb3b40
.Lb3b40:
	.incrom 0xb3b40, 0xb3bc0
.Lb3bc0:
	.incrom 0xb3bc0, 0xb3d40
.Lb3d40:
	.incrom 0xb3d40, 0xb3e80
.Lb3e80:
	.incrom 0xb3e80, 0xb3f80
.Lb3f80:
	.incrom 0xb3f80, 0xb4100
.Lb4100:
	.incrom 0xb4100, 0xb413c
.Lb413c:
	.incrom 0xb413c, 0xb4146
.Lb4146:
	.incrom 0xb4146, 0xb41ac
.Lb41ac:
	.incrom 0xb41ac, 0xb4ab2
.Lb4ab2:
	.incrom 0xb4ab2, 0xb4ab6
.Lb4ab6:
	.incrom 0xb4ab6, 0xb4ac2
