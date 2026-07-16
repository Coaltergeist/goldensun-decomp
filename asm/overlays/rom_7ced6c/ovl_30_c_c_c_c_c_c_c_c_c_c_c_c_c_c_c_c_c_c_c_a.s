	.include "macros.inc"

	.section .text.after_9c84, "ax", %progbits

	.section .text.after_9de0, "ax", %progbits

	.section .text.after_9ef4, "ax", %progbits


	.section .text.after_a004, "ax", %progbits

	.section .text.after_a16c, "ax", %progbits

	.section .text.after_a200, "ax", %progbits


	.section .text.after_a450, "ax", %progbits

	.section .text.after_a5f0, "ax", %progbits

	.section .text.after_a700, "ax", %progbits

	.section .text.after_a848, "ax", %progbits

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
