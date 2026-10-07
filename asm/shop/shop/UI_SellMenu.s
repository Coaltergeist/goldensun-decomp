	.include "macros.inc"
	.include "gba.inc"

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

