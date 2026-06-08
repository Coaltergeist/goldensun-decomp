	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a414c  @ 0x080a414c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x10
	mov	r10, r1
	mov	r1, #8
	ldr	r3, =iwram_3001f2c
	add	r1, sp
	mov	r11, r1
	mov	r2, #0
	ldr	r6, [r3]
	mov	r0, r11
	mov	r3, #1
	mov	r8, r2
	mov	r9, r3
	bl	Func_80a448c
	mov	r2, #0x88
	lsl	r2, #2
	add	r2, r6, r2
	str	r2, [sp, #4]
	ldrh	r3, [r2]
	mov	r7, #0
	cmp	r3, #1
	beq	.La41e0
	bl	Func_80a345c
	ldr	r0, [r6, #0x34]
	bl	_Func_8016498
	mov	r1, #0x86
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r5, [r3]
	bl	Func_80a4eb8
	mov	r0, r5
	bl	_Func_8016498
	mov	r3, #3
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #0x10
	mov	r0, r5
	mov	r1, #0
	bl	_Func_801e41c
	bl	Func_80a51d0
	mov	r1, r5
	mov	r0, r11
	bl	Func_80a45cc
	ldr	r0, [r6, #0x2c]
	bl	_Func_8016498
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	ldr	r3, =0x75
	ldr	r1, [r6, #0x2c]
	add	r0, r3
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La41e0:
	ldr	r1, [sp, #4]
	mov	r3, r10
	ldr	r2, =0x25d
	strh	r3, [r1]
	add	r3, r6, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	bne	.La4258
	mov	r1, r11
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4206
	mov	r2, #0
	mov	r7, #2
	mov	r8, r2
.La4206:
	mov	r1, r11
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4216
	mov	r2, #1
	mov	r7, #0
	mov	r8, r2
.La4216:
	mov	r1, r11
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4226
	mov	r2, #0
	mov	r7, #1
	mov	r8, r2
.La4226:
	mov	r1, r11
	mov	r3, #4
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4236
	mov	r2, #1
	mov	r7, #1
	mov	r8, r2
.La4236:
	mov	r1, r11
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La427a
	mov	r2, #0
	mov	r7, #0
	mov	r8, r2
	b	.La427a
.La4248:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r3, #1
	neg	r3, r3
	ldr	r1, =0x25d
	mov	r10, r3
	b	.La43c0
.La4258:
	mov	r1, #3
	mov	r0, r5
	bl	__modsi3
	lsl	r0, #24
	asr	r7, r0, #24
	mov	r1, #3
	mov	r0, r5
	bl	__divsi3
	lsl	r0, #24
	asr	r0, #24
	mov	r8, r0
	lsl	r3, r0, #1
	add	r3, r8
	add	r3, r7
	mov	r10, r3
.La427a:
	mov	r1, r8
	mov	r0, r7
	bl	Func_80a4110
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_80a413c
	mov	r1, r0
	mov	r0, r5
	bl	Func_80a1ac0
	b	.La4436
.La4296:
	mov	r3, r9
	cmp	r3, #0
	beq	.La4330
	mov	r1, #0
	add	r0, r7, #3
	mov	r9, r1
	mov	r1, #3
	bl	__modsi3
	mov	r2, r8
	add	r2, #2
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	mov	r8, r2
	lsl	r3, r2, #1
	mov	r7, r0
	add	r3, r8
	add	r3, r7
	mov	r10, r3
	bl	Func_80a3c98
	mov	r2, r10
	cmp	r2, #2
	ble	.La42fc
	mov	r3, #0x97
	lsl	r3, #2
	add	r2, r6, r3
	ldr	r1, =0x21a
	mov	r3, #1
	strb	r3, [r2]
	add	r3, r6, r1
	ldrb	r3, [r3]
	sub	r1, #0xa6
	add	r2, r6, r1
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	mov	r2, r10
	cmp	r2, #3
	bne	.La4330
	mov	r1, #0xc8
	ldr	r0, =Func_80a3c08
	lsl	r1, #4
	bl	StartTask
	b	.La4330
.La42fc:
	mov	r3, r10
	cmp	r3, #0
	beq	.La4320
	mov	r1, #0x97
	lsl	r1, #2
	add	r3, r6, r1
	ldr	r2, =0x21a
	strb	r5, [r3]
	add	r3, r6, r2
	sub	r1, #0xe8
	ldrb	r3, [r3]
	add	r2, r6, r1
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	b	.La4330
.La4320:
	ldr	r2, =0x21a
	add	r3, r6, r2
	ldrb	r1, [r3]
	ldr	r0, [r6, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_80a112c
.La4330:
	mov	r1, r8
	mov	r0, r7
	bl	Func_80a4110
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_80a413c
	mov	r1, r0
	mov	r0, r5
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, =gKeyPress
	ldr	r2, [r5]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La43c8
	mov	r1, r11
	mov	r2, r10
	ldrsb	r3, [r1, r2]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.La4372
	mov	r0, #0x72
	bl	_PlaySound
	b	.La43c8
.La4372:
	mov	r2, r10
	cmp	r2, #5
	bhi	.La43b8
	lsl	r3, r2, #2
	ldr	r2, =.La4380
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La4380:
	.word	.La4398
	.word	.La43a0
	.word	.La43a8
	.word	.La43a8
	.word	.La43b0
	.word	.La43a8
.La4398:
	mov	r0, #0xae
	bl	_PlaySound
	b	.La43be
.La43a0:
	mov	r0, #0xaf
	bl	_PlaySound
	b	.La43be
.La43a8:
	mov	r0, #0x70
	bl	_PlaySound
	b	.La43be
.La43b0:
	mov	r0, #0x75
	bl	_PlaySound
	b	.La43be
.La43b8:
	mov	r0, #0x70
	bl	_PlaySound
.La43be:
	ldr	r1, =0x25d
.La43c0:
	mov	r2, r10
	add	r3, r6, r1
	strb	r2, [r3]
	b	.La4446
.La43c8:
	ldr	r2, [r5]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La43d4
	b	.La4248
.La43d4:
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.La43f0
	sub	r3, #0x41
	mov	r1, #1
	mov	r0, #0x6f
	add	r8, r3
	mov	r9, r1
	bl	_PlaySound
	b	.La4436
.La43f0:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.La4408
	mov	r2, #1
	mov	r0, #0x6f
	add	r8, r2
	mov	r9, r2
	bl	_PlaySound
	b	.La4436
.La4408:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La4420
	mov	r3, #1
	mov	r0, #0x6f
	add	r7, #1
	mov	r9, r3
	bl	_PlaySound
	b	.La4436
.La4420:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La4436
	mov	r1, #1
	mov	r0, #0x6f
	sub	r7, #1
	mov	r9, r1
	bl	_PlaySound
.La4436:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.La4446
	b	.La4296
.La4446:
	mov	r3, #0x97
	lsl	r3, #2
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	bl	Func_80a3c98
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a414c

.thumb_func_start Func_80a448c  @ 0x080a448c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r1, #0xbc
	ldr	r7, [r3]
	lsl	r1, #1
	add	r3, r7, r1
	ldrh	r3, [r3]
	mov	r5, r0
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r8, r0
	cmp	r3, #0
	bne	.La44bc
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	strb	r3, [r5]
	mov	r3, r2
	b	.La44c6
.La44bc:
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5]
	mov	r3, #1
.La44c6:
	strb	r3, [r5, #1]
	ldr	r2, =0x21a
	mov	r1, #0xbc
	add	r3, r7, r2
	lsl	r1, #1
	ldrb	r0, [r3]
	add	r3, r7, r1
	ldrh	r1, [r3]
	bl	Func_80a46b4
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.La44e8
	mov	r3, #1
	strb	r3, [r5]
	b	.La44ea
.La44e8:
	strb	r0, [r5]
.La44ea:
	mov	r3, #0xbc
	lsl	r3, #1
	add	r6, r7, r3
	ldrh	r2, [r6]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.La4506
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5]
	ldrh	r2, [r6]
.La4506:
	ldr	r1, =0x21a
	add	r3, r7, r1
	sub	r1, #0x1b
	ldrb	r0, [r3]
	and	r1, r2
	bl	_CanEquipItem
	cmp	r0, #0
	bne	.La4520
	mov	r2, #1
	neg	r2, r2
	mov	r3, r2
	strb	r3, [r5, #1]
.La4520:
	mov	r1, #1
	strb	r1, [r5, #3]
	strb	r1, [r5, #5]
	strb	r1, [r5, #2]
	mov	r3, #0x80
	ldrh	r2, [r6]
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4540
	strb	r1, [r5, #4]
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #1]
	b	.La4548
.La4540:
	mov	r2, #1
	neg	r2, r2
	mov	r3, r2
	strb	r3, [r5, #4]
.La4548:
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4572
	mov	r2, #1
	neg	r2, r2
	mov	r1, r2
	mov	r2, #0xbc
	lsl	r2, #1
	strb	r1, [r5, #4]
	add	r3, r7, r2
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4572
	strb	r1, [r5, #3]
	strb	r1, [r5, #5]
.La4572:
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r7, r1
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_808e990
	cmp	r0, #0
	beq	.La458a
	mov	r3, #1
	strb	r3, [r5]
.La458a:
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bhi	.La459c
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #3]
.La459c:
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La45b0
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #5]
.La45b0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a448c

.thumb_func_start Func_80a45cc  @ 0x080a45cc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xf
	mov	r6, r1
	bl	_SetTextColor
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	mov	r8, r2
	cmp	r3, r8
	bne	.La45f0
	mov	r0, #0xe
	bl	_SetTextColor
.La45f0:
	ldr	r7, =0xb33
	mov	r3, #0x18
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #1
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4612
	mov	r0, #0xe
	bl	_SetTextColor
.La4612:
	mov	r3, #0x18
	add	r0, r7, #1
	mov	r1, r6
	mov	r2, #0x20
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4632
	mov	r0, #0xe
	bl	_SetTextColor
.La4632:
	mov	r3, #0x20
	add	r0, r7, #2
	mov	r1, r6
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #5
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4652
	mov	r0, #0xe
	bl	_SetTextColor
.La4652:
	mov	r3, #0x20
	add	r0, r7, #3
	mov	r1, r6
	mov	r2, #0x50
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #2
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4672
	mov	r0, #0xe
	bl	_SetTextColor
.La4672:
	mov	r3, #0x18
	add	r0, r7, #4
	mov	r1, r6
	mov	r2, #0x50
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #4
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4692
	mov	r0, #0xe
	bl	_SetTextColor
.La4692:
	add	r0, r7, #5
	mov	r1, r6
	mov	r2, #0x20
	mov	r3, #0x20
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a45cc

.thumb_func_start Func_80a46b4  @ 0x080a46b4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0x1ff
	mov	r6, r1
	and	r6, r3
	mov	r10, r0
	mov	r0, r6
	bl	_GetItemInfo
	mov	r7, #1
	mov	r5, r0
	mov	r0, r6
	neg	r7, r7
	bl	_Func_808e990
	cmp	r0, #0
	beq	.La46de
	mov	r0, #0
	b	.La473e
.La46de:
	ldrh	r3, [r5, #0x28]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	ldrh	r3, [r5, #0x28]
	mov	r8, r0
	cmp	r3, #0
	beq	.La473c
	ldrb	r3, [r5, #2]
	cmp	r3, #0
	beq	.La4708
	ldrb	r3, [r5, #0xc]
	cmp	r3, #3
	beq	.La470a
	mov	r0, r10
	mov	r1, r6
	bl	_CanEquipItem
	cmp	r0, #0
	beq	.La470a
.La4708:
	mov	r7, #1
.La470a:
	cmp	r7, #1
	bne	.La473c
	mov	r3, r8
	ldrb	r2, [r3, #1]
	mov	r3, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.La472c
	mov	r3, r8
	ldrb	r2, [r3, #8]
	mov	r3, #0xff
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	lsr	r7, r3, #31
	mov	r3, #2
	b	.La473a
.La472c:
	mov	r3, #0x80
	and	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r2, #31
	mov	r7, r2
	mov	r3, #0
.La473a:
	sub	r7, r3, r7
.La473c:
	mov	r0, r7
.La473e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a46b4

.thumb_func_start Func_80a4754  @ 0x080a4754
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xbc
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_GetItemInfo
	ldrb	r3, [r0, #0xc]
	cmp	r3, #2
	bne	.La479e
	bl	Random
	mov	r3, #0x80
	lsl	r3, #6
	cmp	r0, r3
	bcs	.La479e
	ldr	r2, =0x21a
	add	r3, r5, r2
	sub	r2, #0xa6
	ldrb	r0, [r3]
	add	r3, r5, r2
	ldrh	r1, [r3]
	bl	_BreakItem
	mov	r0, #0x8a
	bl	_PlaySound
	mov	r2, #1
	ldr	r0, =0xb86
	neg	r2, r2
	mov	r1, #0
	bl	Func_80a1d08
.La479e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a4754

	.section .rodata
	.global .Laf2e4
	.global .Laf2a6
	.global .Laf2b1
	.global .Laf2bc
	.global .Laf2d0
	.global .Laf294
	.global .Laf29d

.Laf294:
	.incrom 0xaf294, 0xaf29d
.Laf29d:
	.incrom 0xaf29d, 0xaf2a6
.Laf2a6:
	.incrom 0xaf2a6, 0xaf2b1
.Laf2b1:
	.incrom 0xaf2b1, 0xaf2bc
.Laf2bc:
	.incrom 0xaf2bc, 0xaf2d0
.Laf2d0:
	.incrom 0xaf2d0, 0xaf2e4
.Laf2e4:
	.incrom 0xaf2e4, 0xaf2fc
