	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_b8f08, "ax", %progbits

	.section .text.after_b8f58, "ax", %progbits

	.section .text.after, "ax", %progbits

.thumb_func_start Func_80b90f8  @ 0x080b90f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	sub	sp, #0x24
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001e74
	ldr	r2, [r3]
	mov	r3, r2
	add	r3, #0x45
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lb9120
	mov	r3, #1
	str	r3, [sp, #4]
	b	.Lb91d4
.Lb9120:
	add	r2, #0x46
	str	r2, [sp]
	ldrb	r2, [r2]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #2
	add	r3, r2
	ldr	r2, =0x1388
	lsl	r3, #4
	add	r2, r3
	add	r3, sp, #8
	mov	r10, r3
	mov	r0, #1
	mov	r1, r10
	mov	r9, r2
	bl	Func_80b6b40
	ldr	r2, [sp, #4]
	mov	r8, r0
	mov	r6, #0
	cmp	r2, r8
	bge	.Lb9166
	mov	r11, r10
	mov	r7, #0
	mov	r5, r8
.Lb9152:
	mov	r3, r11
	ldrsh	r0, [r7, r3]
	bl	_GetUnit
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	add	r7, #2
	cmp	r5, #0
	bne	.Lb9152
.Lb9166:
	lsl	r0, r6, #5
	sub	r0, r6
	lsl	r0, #2
	add	r0, r6
	mov	r1, r8
	lsl	r0, #2
	bl	__divsi3
	mov	r1, r10
	add	r9, r0
	mov	r0, #2
	bl	Func_80b6b40
	mov	r6, #0
	mov	r8, r0
	cmp	r6, r8
	bge	.Lb91a0
	mov	r7, #0
	mov	r5, r8
.Lb918c:
	mov	r3, r10
	ldrsh	r0, [r7, r3]
	bl	_GetUnit
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	add	r7, #2
	cmp	r5, #0
	bne	.Lb918c
.Lb91a0:
	lsl	r0, r6, #5
	sub	r0, r6
	lsl	r0, #2
	add	r0, r6
	lsl	r0, #2
	mov	r1, r8
	bl	__divsi3
	mov	r3, r9
	sub	r3, r0
	mov	r9, r3
	cmp	r3, #0
	ble	.Lb91cc
	bl	Random
	ldr	r3, =0x2710
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, r9
	bcs	.Lb91cc
	mov	r2, #1
	str	r2, [sp, #4]
.Lb91cc:
	ldr	r2, [sp]
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
.Lb91d4:
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.Lb91e4
	mov	r3, #0
	str	r3, [sp, #4]
.Lb91e4:
	ldr	r0, [sp, #4]
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b90f8

.thumb_func_start Func_80b920c  @ 0x080b920c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r0, [sp, #0xc]
	mov	r0, #0x11
	bl	Func_8004970
	str	r0, [sp, #8]
	mov	r0, #9
	bl	Func_8004970
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	bl	Func_80b6b40
	mov	r2, #0
	mov	r5, r0
	mov	r8, r2
	mov	r9, r2
	cmp	r8, r5
	bge	.Lb92e2
	ldr	r6, [sp, #4]
	mov	r10, r5
.Lb9246:
	ldrh	r0, [r6]
	bl	_GetUnit
	mov	r3, #0x43
	add	r3, r0
	mov	r12, r3
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bge	.Lb92d4
	mov	r7, #0x9e
	mov	r2, #0x9c
	lsl	r7, #1
	lsl	r2, #1
	add	r7, r0
	add	r2, r0, r2
	mov	r14, r7
	str	r2, [sp]
	mov	r7, r9
	ldr	r2, [sp, #8]
	lsl	r3, r7, #1
	add	r1, r3, r2
	mov	r3, r8
	lsl	r3, #4
	ldr	r2, [sp, #0xc]
	ldr	r7, =0xffffff00
	mov	r11, r3
	add	r2, r11
	mov	r4, r6
	mov	r11, r7
.Lb9282:
	mov	r7, r14
	ldrb	r3, [r7]
	cmp	r3, #0
	bne	.Lb9296
	ldr	r7, [sp]
	ldr	r3, [r7]
	mov	r7, r11
	and	r3, r7
	cmp	r3, #0
	beq	.Lb92c0
.Lb9296:
	ldrh	r3, [r4]
	strh	r3, [r2]
	mov	r3, r0
	add	r3, #0x40
	ldrh	r3, [r3]
	strh	r3, [r2, #4]
	mov	r3, #8
	strh	r3, [r2, #6]
	ldr	r3, .Lb92b8	@ 0
	strh	r3, [r2, #8]
	mov	r3, #0xc0
	lsl	r3, #1
	mov	r7, #1
	strh	r3, [r2, #0xa]
	add	r8, r7
	add	r2, #0x10
	b	.Lb92ca

	.align	2, 0
.Lb92b8:
	.word	0
	.pool

.Lb92c0:
	ldrh	r3, [r4]
	strh	r3, [r1]
	mov	r3, #1
	add	r1, #2
	add	r9, r3
.Lb92ca:
	mov	r7, r12
	ldrb	r3, [r7]
	add	r5, #1
	cmp	r5, r3
	blt	.Lb9282
.Lb92d4:
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	add	r6, #2
	cmp	r3, #0
	bne	.Lb9246
.Lb92e2:
	ldr	r2, [sp, #0xc]
	mov	r7, r8
	lsl	r3, r7, #4
	add	r2, r3
	str	r2, [sp, #0xc]
	mov	r0, r2
	ldr	r1, [sp, #8]
	mov	r2, r9
	bl	_Func_8027114
	mov	r5, #1
	neg	r5, r5
	cmp	r0, #0
	blt	.Lb9302
	mov	r3, r8
	add	r5, r3, r0
.Lb9302:
	ldr	r0, [sp, #4]
	bl	free
	ldr	r0, [sp, #8]
	bl	free
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b920c

.thumb_func_start Func_80b9324  @ 0x080b9324
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r2, #0
	str	r0, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x45
	str	r3, [sp, #8]
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #1
	bne	.Lb934c
	b	.Lb945e
.Lb934c:
	mov	r3, sp
	add	r3, #0x14
	mov	r0, #2
	mov	r1, r3
	str	r3, [sp, #4]
	bl	Func_80b6b40
	mov	r4, #0x1f
	mov	r8, r0
	ldr	r6, [sp, #4]
	cmp	r0, #0
	bne	.Lb9368
	mov	r0, #0
	b	.Lb945e
.Lb9368:
	str	r4, [sp]
	bl	Random
	mov	r5, r8
	mul	r5, r0
	bl	Random
	mov	r2, r8
	mul	r2, r0
	lsr	r5, #16
	lsr	r2, #16
	lsl	r5, #1
	lsl	r2, #1
	ldr	r4, [sp]
	ldrh	r1, [r6, r5]
	ldrh	r3, [r6, r2]
	sub	r4, #1
	strh	r3, [r6, r5]
	strh	r1, [r6, r2]
	cmp	r4, #0
	bge	.Lb9368
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	cmp	r3, #2
	bne	.Lb93b2
	bl	Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	add	r3, #1
	cmp	r3, #1
	bgt	.Lb93ac
	mov	r3, #2
.Lb93ac:
	cmp	r3, r8
	bge	.Lb93b2
	mov	r8, r3
.Lb93b2:
	mov	r4, #0
	cmp	r4, r8
	bge	.Lb945c
.Lb93b8:
	ldr	r2, [sp, #4]
	lsl	r3, r4, #1
	ldrh	r3, [r2, r3]
	mov	r9, r3
	mov	r0, r9
	str	r4, [sp]
	bl	_GetUnit
	mov	r3, #0x43
	mov	r6, r0
	add	r3, r6
	mov	r10, r3
	ldrb	r3, [r3]
	mov	r7, #0
	ldr	r4, [sp]
	cmp	r7, r3
	bge	.Lb9456
	mov	r2, #0x40
	add	r2, r6
	mov	r11, r2
	ldr	r2, [sp, #0xc]
	lsl	r3, r2, #4
	ldr	r2, [sp, #0x10]
	add	r5, r3, r2
.Lb93e8:
	mov	r3, r9
	strh	r3, [r5]
	mov	r3, r11
	ldrh	r2, [r3]
	strh	r2, [r5, #4]
	cmp	r7, #0
	beq	.Lb9402
	lsl	r2, #16
	asr	r3, r2, #16
	lsr	r2, #31
	add	r3, r2
	asr	r3, #1
	strh	r3, [r5, #4]
.Lb9402:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9418
	sub	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb9430
.Lb9418:
	mov	r3, #8
	strh	r3, [r5, #6]
	ldr	r3, .Lb9428	@ 0
	strh	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #1
	strh	r3, [r5, #0xa]
	b	.Lb943c

	.align	2, 0
.Lb9428:
	.word	0
	.pool

.Lb9430:
	mov	r0, r5
	mov	r1, #0
	str	r4, [sp]
	bl	Func_80bd424
	ldr	r4, [sp]
.Lb943c:
	ldr	r2, [sp, #0xc]
	add	r2, #1
	str	r2, [sp, #0xc]
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	add	r5, #0x10
	cmp	r3, #2
	beq	.Lb9456
	mov	r2, r10
	ldrb	r3, [r2]
	add	r7, #1
	cmp	r7, r3
	blt	.Lb93e8
.Lb9456:
	add	r4, #1
	cmp	r4, r8
	blt	.Lb93b8
.Lb945c:
	ldr	r0, [sp, #0xc]
.Lb945e:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9324

.thumb_func_start Func_80b9470  @ 0x080b9470
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	sub	sp, #0x10
	mov	r11, r0
	cmp	r7, #0
	ble	.Lb94e4
	mov	r5, r11
	mov	r6, r7
.Lb948c:
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	cmp	r3, #5
	bne	.Lb94dc
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	bl	_GetUnit
	ldrh	r2, [r5, #8]
	ldr	r3, =0xf
	lsl	r0, r2, #16
	asr	r0, #24
	mov	r1, #0xff
	and	r1, r2
	and	r0, r3
	bl	_Func_807a5b0
	bl	_GetMoveInfo
	ldrb	r2, [r0, #3]
	mov	r3, r2
	add	r3, #0xd2
	mov	r1, #0x80
	lsl	r3, #24
	lsl	r1, #17
	cmp	r3, r1
	bls	.Lb94c8
	mov	r3, r2
	cmp	r3, #0x35
	bne	.Lb94dc
.Lb94c8:
	ldrh	r3, [r5, #4]
	ldr	r2, =0x2710
	add	r3, r2
	strh	r3, [r5, #4]
	b	.Lb94dc

	.pool_aligned

.Lb94dc:
	sub	r6, #1
	add	r5, #0x10
	cmp	r6, #0
	bne	.Lb948c
.Lb94e4:
	sub	r7, #1
	mov	r9, r7
.Lb94e8:
	mov	r3, #0
	mov	r7, r9
	mov	r10, r3
	cmp	r7, #0
	ble	.Lb9538
	lsl	r3, r7, #4
	add	r3, r11
	ldr	r1, =Func_8001af8
	mov	r5, r3
	mov	r8, r1
	sub	r5, #0x10
	mov	r6, r3
.Lb9500:
	mov	r3, #0x14
	ldrsh	r2, [r5, r3]
	mov	r1, #4
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	ble	.Lb952e
	mov	r0, sp
	mov	r1, r6
	mov	r2, #0x10
	bl	_call_via_r8
	mov	r1, r5
	mov	r2, #0x10
	mov	r0, r6
	bl	_call_via_r8
	mov	r2, #0x10
	mov	r0, r5
	mov	r1, sp
	bl	_call_via_r8
	mov	r2, #1
	add	r10, r2
.Lb952e:
	sub	r7, #1
	sub	r5, #0x10
	sub	r6, #0x10
	cmp	r7, #0
	bgt	.Lb9500
.Lb9538:
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb94e8
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b9470

.thumb_func_start Func_80b9554  @ 0x080b9554
	push	{r5, r6, r7, lr}
	mov	r7, r9
	push	{r7}
	sub	sp, #4
	mov	r3, sp
	mov	r2, r9
	str	r2, [r3]
	mov	r7, r2
	sub	r3, r7, #4
	ldr	r0, [r3]
	mov	r1, #0x14
	bl	Func_80063bc
	mov	r3, #1
	mov	r5, #0x96
	neg	r3, r3
	mov	r6, #0
	lsl	r5, #1
	cmp	r0, r3
	bne	.Lb95a0
	b	.Lb95f4
.Lb957e:
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb95e2
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb959e
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb95a0
	b	.Lb95e2
.Lb959e:
	mov	r6, #0
.Lb95a0:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb957e
	mov	r3, r7
	sub	r3, #8
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lb95f2
	sub	r3, #4
	ldr	r0, [r3]
	bl	Func_80063bc
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb95ea
	b	.Lb95f4
.Lb95c4:
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb95e2
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb95e8
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb95ea
.Lb95e2:
	mov	r0, #1
	neg	r0, r0
	b	.Lb95f4
.Lb95e8:
	mov	r6, #0
.Lb95ea:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb95c4
.Lb95f2:
	mov	r0, #0
.Lb95f4:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9554

.thumb_func_start Func_80b9604  @ 0x080b9604
	push	{r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r1, r9
	sub	sp, #4
	mov	r8, r1
	mov	r3, sp
	mov	r7, r8
	str	r1, [r3]
	sub	r7, #4
	ldr	r0, [r7]
	bl	Func_8006408
	mov	r2, #1
	mov	r5, #0x96
	neg	r2, r2
	mov	r6, #0
	lsl	r5, #1
	cmp	r0, r2
	bne	.Lb965a
	b	.Lb970c
.Lb9630:
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	cmp	r3, #0x14
	bhi	.Lb9704
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb9704
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb9658
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb965a
	b	.Lb9704
.Lb9658:
	mov	r6, #0
.Lb965a:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb9630
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	cmp	r3, #0x14
	bne	.Lb9704
	mov	r3, #0x10
	neg	r3, r3
	add	r3, r8
	mov	r9, r3
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r1, r9
	str	r2, [r1]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lb970a
	mov	r3, r8
	mov	r2, r8
	sub	r3, #0x14
	sub	r2, #0xc
	ldr	r3, [r3]
	ldr	r0, [r2]
	lsl	r3, #4
	add	r0, r3
	bl	Func_8006408
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb96de
	b	.Lb970c
.Lb969e:
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	mov	r8, r3
	mov	r3, r9
	ldr	r0, [r3]
	lsl	r0, #4
	add	r0, #0x13
	mov	r1, #0x14
	bl	__udivsi3
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	cmp	r8, r3
	bhi	.Lb9704
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb9704
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb96dc
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb96de
	b	.Lb9704
.Lb96dc:
	mov	r6, #0
.Lb96de:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb969e
	mov	r1, r9
	ldr	r0, [r1]
	ldr	r3, =ewram_2002238
	lsl	r0, #4
	ldrh	r3, [r3]
	add	r0, #0x13
	mov	r1, #0x14
	mov	r8, r3
	bl	__udivsi3
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	cmp	r8, r3
	beq	.Lb970a
.Lb9704:
	mov	r0, #1
	neg	r0, r0
	b	.Lb970c
.Lb970a:
	mov	r0, #0
.Lb970c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r9, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9604

.thumb_func_start Func_80b9724  @ 0x080b9724
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r9, r3
	add	r3, sp, #4
	add	r2, sp, #8
	mov	r8, r3
	mov	r7, sp
	str	r0, [r2]
	mov	r3, #0
	mov	r0, r8
	str	r1, [r7]
	str	r3, [r0]
	ldr	r0, [r7]
	lsl	r0, #4
	mov	r1, #0x14
	add	r0, #0x13
	mov	r11, r2
	bl	__udivsi3
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	mov	r0, #0x28
	str	r3, [sp, #0xc]
	bl	Func_8004970
	ldr	r3, [r7]
	add	r5, sp, #0x10
	mov	r10, r5
	str	r0, [r5]
	cmp	r3, #0
	ble	.Lb97b0
	mov	r2, r11
	mov	r6, r9
	ldr	r1, [r2]
	mov	r0, #1
	add	r6, #0x50
	mov	r4, r3
.Lb9780:
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	mov	r2, r9
	add	r3, #0x48
	ldrb	r3, [r2, r3]
	strh	r3, [r1, #2]
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.Lb97a0
	ldrh	r2, [r1, #4]
	mov	r3, r0
	and	r3, r2
	cmp	r3, #0
	beq	.Lb97a8
	add	r3, r2, #1
	b	.Lb97a6
.Lb97a0:
	ldrh	r2, [r1, #4]
	mov	r3, r0
	orr	r3, r2
.Lb97a6:
	strh	r3, [r1, #4]
.Lb97a8:
	sub	r4, #1
	add	r1, #0x10
	cmp	r4, #0
	bne	.Lb9780
.Lb97b0:
	mov	r3, r9
	add	r3, #0x52
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb9890
	mov	r3, r9
	add	r3, #0x50
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb980e
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r3, [r2]
	bl	_RPGRandom
	mov	r1, r10
	ldr	r3, [r1]
	str	r0, [r3, #4]
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	ldr	r4, =sRPGRNGState
	ldr	r3, =gRNGState
	add	r5, sp, #0x10
	ldr	r3, [r3]
	ldr	r0, [r5]
	str	r3, [r0, #8]
	str	r3, [r4]
	strh	r1, [r2]
	add	r2, sp, #0x14
	mov	r9, r2
	bl	Func_80b9554
	cmp	r0, #0
	blt	.Lb9890
	add	r3, sp, #0x14
	mov	r9, r3
	bl	Func_80b9604
	cmp	r0, #0
	blt	.Lb9890
	ldr	r3, [r5]
	ldr	r3, [r3]
	mov	r0, r8
	str	r3, [r0]
	b	.Lb9848
.Lb980e:
	add	r1, sp, #0x14
	mov	r9, r1
	bl	Func_80b9604
	cmp	r0, #0
	blt	.Lb9890
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r3, [r2]
	mov	r0, r8
	str	r3, [r0]
	ldr	r3, [r7]
	add	r1, sp, #0x14
	str	r3, [r2]
	mov	r9, r1
	bl	Func_80b9554
	cmp	r0, #0
	blt	.Lb9890
	bl	_RPGRandom
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, [r1, #4]
	cmp	r0, r3
	bne	.Lb9890
	ldr	r2, =sRPGRNGState
	ldr	r3, [r1, #8]
	str	r3, [r2]
.Lb9848:
	mov	r3, r8
	ldr	r1, [r3]
	cmp	r1, #0
	ble	.Lb9870
	mov	r0, r11
	ldr	r3, [r7]
	ldr	r2, [r0]
	lsl	r3, #4
	ldr	r6, .Lb987c	@ 0x80
	add	r0, r3, r2
	mov	r4, r1
.Lb985e:
	ldrh	r3, [r0, #2]
	strh	r3, [r0]
	ldrh	r3, [r0, #0xa]
	sub	r4, #1
	eor	r3, r6
	strh	r3, [r0, #0xa]
	add	r0, #0x10
	cmp	r4, #0
	bne	.Lb985e
.Lb9870:
	ldr	r0, [r5]
	bl	free
	mov	r1, r8
	ldr	r0, [r1]
	b	.Lb98a2

	.align	2, 0
.Lb987c:
	.word	0x80
	.pool

.Lb9890:
	bl	Func_800651c
	bl	Func_8006358
	ldr	r0, [r5]
	bl	free
	mov	r0, #1
	neg	r0, r0
.Lb98a2:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9724

.thumb_func_start Func_80b98b4  @ 0x080b98b4
	push	{r5, r6, r7, lr}
	mov	r1, #0
	mov	r5, r0
	mov	r3, #0xf
	mov	r14, r1
	mov	r7, #0x1f
.Lb98c0:
	lsl	r3, #4
	mov	r6, #0
	mov	r12, r3
.Lb98c6:
	mov	r2, r12
	add	r3, r2, r6
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r0, r3, #1
	add	r3, r0, r1
	ldrh	r3, [r3]
	lsr	r4, r3, #10
	and	r4, r7
	lsr	r2, r3, #5
	mov	r1, r7
	and	r2, r7
	and	r1, r3
	add	r4, r5
	add	r2, r5
	add	r1, r5
	cmp	r4, #0x1f
	ble	.Lb98ec
	mov	r4, #0x1f
.Lb98ec:
	cmp	r2, #0x1f
	ble	.Lb98f2
	mov	r2, #0x1f
.Lb98f2:
	cmp	r1, #0x1f
	ble	.Lb98f8
	mov	r1, #0x1f
.Lb98f8:
	cmp	r4, #0
	bge	.Lb98fe
	mov	r4, #0
.Lb98fe:
	cmp	r2, #0
	bge	.Lb9904
	mov	r2, #0
.Lb9904:
	cmp	r1, #0
	bge	.Lb990a
	mov	r1, #0
.Lb990a:
	lsl	r2, #5
	lsl	r3, r4, #10
	orr	r3, r2
	orr	r3, r1
	ldr	r1, =0x4ffffe0
	add	r6, #1
	add	r2, r0, r1
	strh	r3, [r2]
	cmp	r6, #0xf
	ble	.Lb98c6
	mov	r2, #1
	add	r14, r2
	mov	r1, r14
	mov	r3, #5
	cmp	r1, #1
	ble	.Lb98c0
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b98b4

.thumb_func_start Func_80b9934  @ 0x080b9934
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	mov	r4, #0xbb
	ldr	r5, [r3]
	mov	r1, #0x80
	lsl	r4, #2
	mov	r7, r0
	mov	r2, #0
	mov	r0, #0xff
	lsl	r1, #8
	add	r3, r5, r4
.Lb994a:
	add	r2, #1
	strh	r0, [r3]
	strh	r1, [r3, #4]
	add	r3, #0x10
	cmp	r2, #0x13
	bls	.Lb994a
	bl	Func_80b90ac
	mov	r0, #8
	bl	Func_80b98b4
	ldr	r0, =0x16b
	bl	_SetFlag
	add	r5, #0x45
	mov	r0, #0
	bl	Func_80b8fd4
	bl	_Func_80174d8
	ldrb	r3, [r5]
	cmp	r3, #2
	beq	.Lb999e
	mov	r0, r7
	bl	Func_80b920c
	mov	r6, r0
	cmp	r6, #0
	blt	.Lb9a16
	cmp	r6, #0
	beq	.Lb99a0
	mov	r1, #6
	ldrsh	r3, [r7, r1]
	cmp	r3, #0x63
	bne	.Lb99a0
	bl	Func_80b90f8
	cmp	r0, #0
	bne	.Lb99a0
	mov	r3, #2
	strb	r3, [r5]
	b	.Lb99a0
.Lb999e:
	mov	r6, #0
.Lb99a0:
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x44
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb99ca
	mov	r0, r7
	mov	r1, r6
	bl	Func_80b9724
	mov	r5, r0
	bl	Func_80b60a0
	cmp	r0, #0
	blt	.Lb99c4
	add	r6, r5
	cmp	r5, #0
	bge	.Lb99d4
.Lb99c4:
	mov	r6, #1
	neg	r6, r6
	b	.Lb9a16
.Lb99ca:
	lsl	r0, r6, #4
	add	r0, r7, r0
	bl	Func_80b9324
	add	r6, r0
.Lb99d4:
	mov	r0, r7
	mov	r1, r6
	bl	Func_80b9470
	cmp	r6, #0
	ble	.Lb9a16
	mov	r5, r7
	mov	r7, r6
.Lb99e4:
	mov	r2, #6
	ldrsh	r3, [r5, r2]
	cmp	r3, #3
	beq	.Lb99f0
	cmp	r3, #7
	bne	.Lb9a0e
.Lb99f0:
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	_GetUnit
	mov	r4, #6
	ldrsh	r2, [r5, r4]
	mov	r3, #3
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	ldr	r1, =0x12b
	lsr	r3, #31
	add	r3, #1
	add	r2, r0, r1
	strb	r3, [r2]
.Lb9a0e:
	sub	r7, #1
	add	r5, #0x10
	cmp	r7, #0
	bne	.Lb99e4
.Lb9a16:
	ldr	r0, =0x16b
	bl	_ClearFlag
	bl	Func_80b7f9c
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r2]
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9934
