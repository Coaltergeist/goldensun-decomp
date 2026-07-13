	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bd424  @ 0x080bd424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x18]
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_GetUnit
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp, #0xc]
	ldr	r3, =0x129
	mov	r11, r0
	str	r2, [sp, #0x10]
	str	r2, [sp, #8]
	add	r3, r11
	mov	r0, #1
	ldrb	r3, [r3]
	neg	r0, r0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lbd45e
	b	.Lbd792
.Lbd45e:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	beq	.Lbd46e
	mov	r2, #6
	ldrsh	r3, [r7, r2]
	cmp	r3, #4
	beq	.Lbd46e
	b	.Lbd792
.Lbd46e:
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r11
	ldrb	r0, [r3]
	bl	_GetEnemyInfo
	str	r0, [sp, #0x14]
	ldr	r1, [sp, #0x14]
	mov	r3, #0x90
	lsl	r3, #1
	add	r0, #0x36
	add	r1, #0x37
	add	r3, r11
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r8, r3
.Lbd48e:
	ldr	r2, [sp, #4]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #6
	bhi	.Lbd534
	ldr	r2, =.Lbd4a0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbd4a0:
	.word	.Lbd4bc
	.word	.Lbd4c4
	.word	.Lbd4cc
	.word	.Lbd4da
	.word	.Lbd504
	.word	.Lbd530
	.word	.Lbd534
.Lbd4bc:
	add	r3, sp, #0x1c
	ldr	r0, =.Lc2b80
	mov	r9, r3
	b	.Lbd4d2
.Lbd4c4:
	add	r1, sp, #0x1c
	ldr	r0, =.Lc2b88
	mov	r9, r1
	b	.Lbd4d2
.Lbd4cc:
	add	r2, sp, #0x1c
	ldr	r0, =.Lc2b90
	mov	r9, r2
.Lbd4d2:
	bl	Func_80bd3e4
	mov	r10, r0
	b	.Lbd534
.Lbd4da:
	mov	r3, r8
	ldr	r2, [r3]
	lsl	r3, r2, #31
	cmp	r3, #0
	bne	.Lbd508
	bl	_RPGRandom
	mov	r1, r8
	mov	r3, #7
	ldrb	r2, [r1]
	and	r0, r3
	mov	r3, #0xf
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	mov	r2, #1
	orr	r3, r0
	orr	r3, r2
	strb	r3, [r1]
	ldr	r2, [r1]
	b	.Lbd508
.Lbd504:
	mov	r3, r8
	ldr	r2, [r3]
.Lbd508:
	lsl	r3, r2, #28
	ldr	r0, [sp, #0x18]
	lsr	r3, #29
	mov	r10, r3
	cmp	r0, #0
	beq	.Lbd534
	mov	r2, r10
	mov	r3, #7
	add	r2, #1
	and	r2, r3
	mov	r3, r8
	ldrb	r1, [r3]
	mov	r3, #0xf
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	mov	r0, r8
	strb	r3, [r0]
	b	.Lbd534
.Lbd530:
	mov	r1, #1
	add	r10, r1
.Lbd534:
	ldr	r2, [sp]
	ldrb	r6, [r2]
	mov	r3, r10
	asr	r6, r3
	mov	r1, r10
	mov	r3, #1
	and	r6, r3
	ldr	r2, [sp, #0x14]
	lsl	r3, r1, #1
	add	r3, #0x38
	ldr	r0, [sp, #0x10]
	ldrh	r3, [r2, r3]
	and	r6, r0
	mov	r9, r3
	mov	r3, #4
	strh	r3, [r7, #6]
	cmp	r6, #0
	beq	.Lbd5be
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.Lbd5be
	mov	r1, r11
	add	r1, #0xd8
	ldrh	r2, [r1]
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r3, #0
	bne	.Lbd586
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r3, #0
	bne	.Lbd586
	mov	r3, #2
	strh	r3, [r7, #6]
	ldr	r3, =0x1fd
	strh	r3, [r7, #8]
	b	.Lbd792
.Lbd586:
	cmp	r6, #0
	beq	.Lbd5ba
	ldrh	r0, [r1]
	bl	_GetItemInfo
	mov	r5, r0
	ldrb	r3, [r5, #0xc]
	cmp	r3, #1
	bne	.Lbd5b4
	ldrh	r0, [r5, #0x28]
	bl	_GetMoveInfo
	mov	r3, #2
	ldrh	r5, [r5, #0x28]
	strh	r3, [r7, #6]
	ldrb	r3, [r0, #1]
	mov	r2, #0
	mov	r9, r5
	strh	r2, [r7, #8]
	cmp	r3, #2
	bgt	.Lbd5b4
	cmp	r3, #1
	bge	.Lbd5b6
.Lbd5b4:
	mov	r6, #0
.Lbd5b6:
	cmp	r6, #0
	bne	.Lbd5be
.Lbd5ba:
	mov	r0, #0
	str	r0, [sp, #0x10]
.Lbd5be:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	bne	.Lbd5c6
	b	.Lbd766
.Lbd5c6:
	mov	r0, r9
	bl	_GetMoveInfo
	mov	r5, r0
	ldrb	r3, [r5, #3]
	cmp	r3, #0x2f
	beq	.Lbd5ee
	cmp	r3, #0x2f
	bgt	.Lbd5de
	cmp	r3, #0x2e
	beq	.Lbd5e4
	b	.Lbd606
.Lbd5de:
	cmp	r3, #0x31
	beq	.Lbd5f8
	b	.Lbd606
.Lbd5e4:
	mov	r3, #3
	strh	r3, [r7, #6]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	b	.Lbd600
.Lbd5ee:
	mov	r3, #7
	strh	r3, [r7, #6]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	b	.Lbd600
.Lbd5f8:
	mov	r3, #0x63
	strh	r3, [r7, #6]
	mov	r1, #0
	ldrsh	r0, [r7, r1]
.Lbd600:
	bl	Func_80b9a70
	strh	r0, [r7, #0xa]
.Lbd606:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.Lbd61e
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldrh	r2, [r7, #6]
	cmp	r3, #3
	beq	.Lbd620
	cmp	r3, #7
	beq	.Lbd61c
	b	.Lbd792
.Lbd61c:
	b	.Lbd620
.Lbd61e:
	ldrh	r2, [r7, #6]
.Lbd620:
	mov	r1, #0x80
	lsl	r3, r2, #16
	lsl	r1, #10
	cmp	r3, r1
	beq	.Lbd69a
	mov	r0, r9
	bl	Func_80bd3c8
	cmp	r0, #0
	beq	.Lbd674
	mov	r3, #1
	mov	r2, r9
	mov	r1, r11
	strh	r3, [r7, #6]
	strh	r2, [r7, #8]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	ldrb	r2, [r5, #9]
	cmp	r2, r3
	ble	.Lbd658
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbd658
	b	.Lbd770
.Lbd658:
	ldr	r3, =0x13d
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbd698
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lbd672
	b	.Lbd770
.Lbd672:
	b	.Lbd698
.Lbd674:
	ldrh	r2, [r7, #6]
	b	.Lbd69a

	.pool_aligned

.Lbd698:
	ldr	r2, =1
.Lbd69a:
	lsl	r3, r2, #16
	asr	r2, r3, #16
	cmp	r2, #0x63
	bne	.Lbd6ae
	mov	r3, #0xa4
	lsl	r3, #1
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbd770
.Lbd6ae:
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.Lbd6c4
	cmp	r2, #3
	beq	.Lbd770
	cmp	r2, #7
	beq	.Lbd770
	b	.Lbd6c4

	.pool_aligned

.Lbd6c4:
	cmp	r2, #4
	bne	.Lbd6d6
	mov	r0, r9
	mov	r1, r9
	mov	r3, #0
	strh	r0, [r7, #8]
	cmp	r1, #1
	bne	.Lbd6d6
	strh	r3, [r7, #6]
.Lbd6d6:
	ldrb	r3, [r5, #8]
	strh	r3, [r7, #0xc]
	ldrb	r3, [r5]
	cmp	r3, #2
	beq	.Lbd6f2
	cmp	r3, #2
	bgt	.Lbd6ea
	cmp	r3, #1
	beq	.Lbd722
	b	.Lbd758
.Lbd6ea:
	cmp	r3, #3
	beq	.Lbd74c
	cmp	r3, #4
	bne	.Lbd758
.Lbd6f2:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r1, r5
	bl	Func_80bae40
	mov	r3, #2
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbd712
	ldrh	r3, [r7]
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lbd70e
	mov	r0, #1
.Lbd70e:
	bl	Func_80bad7c
.Lbd712:
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lbd766
	mov	r2, #0
	strh	r0, [r7, #0xa]
	str	r2, [sp, #8]
	b	.Lbd766
.Lbd722:
	mov	r1, r5
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	Func_80bae40
	mov	r1, #2
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbd742
	ldrh	r3, [r7]
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lbd73e
	mov	r0, #1
.Lbd73e:
	bl	Func_80bad7c
.Lbd742:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lbd766
	b	.Lbd760
.Lbd74c:
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	Func_80b9a70
	strh	r0, [r7, #0xa]
	b	.Lbd766
.Lbd758:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	bl	Func_80b9a70
.Lbd760:
	mov	r3, #0
	strh	r0, [r7, #0xa]
	str	r3, [sp, #8]
.Lbd766:
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	bne	.Lbd770
	mov	r1, #0
	str	r1, [sp, #8]
.Lbd770:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lbd784
	ldr	r3, [sp, #0xc]
	cmp	r3, #0x10
	ble	.Lbd784
	mov	r3, #3
	mov	r0, #0
	strh	r3, [r7, #6]
	str	r0, [sp, #8]
.Lbd784:
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	add	r1, #1
	str	r1, [sp, #0xc]
	cmp	r2, #0
	beq	.Lbd792
	b	.Lbd48e
.Lbd792:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bd424
