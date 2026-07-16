	.include "macros.inc"

	.section .text.after_9c84, "ax", %progbits

	.section .text.after_9de0, "ax", %progbits

	.section .text.after_9ef4, "ax", %progbits


	.section .text.after_a004, "ax", %progbits

.thumb_func_start OvlFunc_946_200a080
	push	{r5, r6, r7, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x24
	bne	.L20d8
	cmp	r3, #0x22
	bne	.L20b8
	mov	r1, #0x10
	b	.L2122
.L20b8:
	cmp	r5, #7
	bne	.L20c0
	mov	r1, #0x20
	b	.L2122
.L20c0:
	cmp	r3, #0x1e
	bne	.L20c8
	mov	r1, #0x50
	b	.L2122
.L20c8:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xd
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.L2122
.L20d8:
	cmp	r6, #0x23
	bne	.L2104
	cmp	r3, #0x22
	beq	.L2164
	cmp	r5, #7
	bne	.L20e8
	mov	r1, #0x10
	b	.L2122
.L20e8:
	cmp	r3, #0x1e
	bne	.L20f0
	mov	r1, #0x40
	b	.L2122
.L20f0:
	mov	r5, #0x50
	neg	r5, r5
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, r5
	b	.L2126
.L2104:
	cmp	r6, #0x22
	bne	.L2118
	cmp	r5, #7
	beq	.L2164
	cmp	r3, #0x1e
	bne	.L2114
	mov	r1, #0x30
	b	.L2122
.L2114:
	mov	r1, #0x90
	b	.L2122
.L2118:
	cmp	r6, #0x1f
	bne	.L212e
	cmp	r3, #0x1e
	beq	.L2164
	mov	r1, #0x60
.L2122:
	neg	r1, r1
	mov	r0, #0xd
.L2126:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2132
.L212e:
	cmp	r6, #0x19
	beq	.L2164
.L2132:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.L2164:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a080

	.section .text.after_a16c, "ax", %progbits

	.section .text.after_a200, "ax", %progbits

.thumb_func_start OvlFunc_946_200a2c8
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x18
	bne	.L233e
	cmp	r5, #7
	beq	.L2300
	cmp	r3, #0x1f
	bne	.L2306
.L2300:
	mov	r0, #0xf
	mov	r1, #0x60
	b	.L237e
.L2306:
	cmp	r3, #0x22
	bne	.L231a
	mov	r0, #0xf
	mov	r1, #0x40
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L231a:
	cmp	r3, #0x23
	bne	.L232e
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L232e:
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x60
	b	.L237e
.L233e:
	cmp	r6, #0x1e
	beq	.L2346
	cmp	r3, #0x1f
	bne	.L2364
.L2346:
	cmp	r5, #7
	beq	.L23bc
	cmp	r3, #0x22
	bne	.L2354
	mov	r0, #0xf
	mov	r1, #0x30
	b	.L237e
.L2354:
	cmp	r3, #0x23
	bne	.L235e
	mov	r0, #0xf
	mov	r1, #0x40
	b	.L237e
.L235e:
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L2364:
	cmp	r6, #0x21
	bne	.L2376
	cmp	r3, #0x22
	beq	.L23bc
	cmp	r3, #0x23
	beq	.L237a
	mov	r0, #0xf
	mov	r1, #0x20
	b	.L237e
.L2376:
	cmp	r6, #0x22
	bne	.L2386
.L237a:
	mov	r0, #0xf
	mov	r1, #0x10
.L237e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L238a
.L2386:
	cmp	r6, #0x23
	beq	.L23bc
.L238a:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.L23bc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a2c8


	.section .text.after_a450, "ax", %progbits

.thumb_func_start OvlFunc_946_200a4c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r6, #0x13
	bne	.L2536
	sub	r3, r7, #6
	cmp	r3, #2
	bhi	.L2512
	mov	r2, #0x10
	b	.L259e
.L2512:
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L251c
	mov	r2, #0x40
	b	.L259e
.L251c:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L2526
	mov	r2, #0x70
	b	.L259e
.L2526:
	mov	r2, #0x40
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.L259e
.L2536:
	cmp	r6, #0x12
	bne	.L2558
	sub	r3, r7, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L254a
	mov	r2, #0x30
	b	.L259e
.L254a:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L2554
	mov	r2, #0x60
	b	.L259e
.L2554:
	mov	r2, #0x90
	b	.L259e
.L2558:
	cmp	r6, #0xf
	bne	.L2570
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L256c
	mov	r2, #0x30
	b	.L259e
.L256c:
	mov	r2, #0x60
	b	.L259e
.L2570:
	cmp	r6, #0xe
	bne	.L2584
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L259c
	mov	r2, #0x50
	b	.L259e
.L2584:
	cmp	r6, #0xc
	bne	.L2592
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L25e2
	mov	r2, #0x30
	b	.L259e
.L2592:
	cmp	r6, #0xb
	bne	.L25aa
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L25e2
.L259c:
	mov	r2, #0x20
.L259e:
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L25ae
.L25aa:
	cmp	r6, #9
	beq	.L25e2
.L25ae:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.L25e2:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a4c8

	.section .text.after_a5f0, "ax", %progbits

.thumb_func_start OvlFunc_946_200a700
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r7, #0x13
	bne	.L2774
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L274c
	mov	r2, #0x10
	b	.L27f6
.L274c:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2758
	mov	r2, #0x40
	b	.L27f6
.L2758:
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2764
	mov	r2, #0x70
	b	.L27f6
.L2764:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.L27f6
.L2774:
	cmp	r7, #0x12
	bne	.L27a4
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L27f4
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2794
	mov	r2, #0x60
	b	.L27f6
.L2794:
	mov	r2, #0x60
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.L27f6
.L27a4:
	cmp	r7, #0xf
	bne	.L27bc
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L27f4
	mov	r2, #0x70
	b	.L27f6
.L27bc:
	cmp	r7, #0xe
	bne	.L27d8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L27d4
	mov	r2, #0x20
	b	.L27f6
.L27d4:
	mov	r2, #0x60
	b	.L27f6
.L27d8:
	cmp	r7, #0xc
	bne	.L27e8
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r2, #0x40
	b	.L27f6
.L27e8:
	cmp	r7, #0xb
	bne	.L2802
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
.L27f4:
	mov	r2, #0x30
.L27f6:
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L2806
.L2802:
	cmp	r7, #9
	bls	.L283a
.L2806:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
.L283a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a700

.thumb_func_start OvlFunc_946_200a848
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, #8
	bne	.L28b4
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L28c8
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L28a8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
.L28a8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.L2942
.L28b4:
	cmp	r7, #0xb
	bne	.L28e0
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L28d4
.L28c8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.L2942
.L28d4:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.L2942
.L28e0:
	cmp	r7, #0xc
	bne	.L290c
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2900
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.L2942
.L2900:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.L2942
.L290c:
	cmp	r7, #0xe
	bne	.L2924
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.L2942
.L2924:
	cmp	r7, #0xf
	bne	.L2934
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.L2942
.L2934:
	cmp	r7, #0x12
	bne	.L2942
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
.L2942:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
.L2976:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a848

.thumb_func_start OvlFunc_946_200a984
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r7, #3
	beq	.L2a8a
	cmp	r7, #0xd
	bne	.L29f0
	cmp	r3, #0xf
	bne	.L29d0
	mov	r1, #0x10
	b	.L2a3e
.L29d0:
	cmp	r5, #0xf
	bne	.L29d8
	mov	r1, #0x40
	b	.L2a3e
.L29d8:
	cmp	r6, #0xf
	bne	.L29e0
	mov	r1, #0x70
	b	.L2a3e
.L29e0:
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x30
	b	.L2a3e
.L29f0:
	cmp	r7, #6
	bne	.L29fc
	cmp	r6, #0xf
	beq	.L2a8a
	mov	r1, #0x30
	b	.L2a3e
.L29fc:
	cmp	r7, #5
	bne	.L2a04
	mov	r1, #0x20
	b	.L2a3e
.L2a04:
	cmp	r7, #8
	bne	.L2a18
	cmp	r5, #0xf
	beq	.L2a8a
	cmp	r6, #0xf
	bne	.L2a14
	mov	r1, #0x20
	b	.L2a3e
.L2a14:
	mov	r1, #0x50
	b	.L2a3e
.L2a18:
	cmp	r7, #9
	bne	.L2a28
	cmp	r5, #0xf
	beq	.L2a8a
	cmp	r6, #0xf
	bne	.L2a3c
	mov	r1, #0x30
	b	.L2a3e
.L2a28:
	cmp	r7, #0xc
	bne	.L2a56
	cmp	r3, #0xf
	beq	.L2a8a
	cmp	r5, #0xf
	bne	.L2a38
	mov	r1, #0x30
	b	.L2a3e
.L2a38:
	cmp	r6, #0xf
	bne	.L2a4a
.L2a3c:
	mov	r1, #0x60
.L2a3e:
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2a56
.L2a4a:
	mov	r1, #0x90
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
.L2a56:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.L2a8a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a984

	.section .text.after_ac4c, "ax", %progbits
