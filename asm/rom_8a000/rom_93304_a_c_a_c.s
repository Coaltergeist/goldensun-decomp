	.include "macros.inc"

	.section .text.after_937b8, "ax", %progbits

.thumb_func_start MapActor_Surprise  @ 0x08093874
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	mov	r8, r1
	bl	GetFieldActor
	mov	r7, r0
	mov	r5, #0
	mov	r6, #0
	cmp	r7, #0
	beq	.L93958
	mov	r3, #3
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L938b2
	cmp	r3, #2
	beq	.L938a2
	ldr	r3, [r7, #0x68]
	cmp	r3, #0
	bne	.L938c2
.L938a2:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xd1
	bl	_CreateActor
	mov	r5, r0
	b	.L938c2
.L938b2:
	ldr	r5, [r7, #0x68]
	cmp	r5, #0
	beq	.L93958
	mov	r0, r5
	bl	_DeleteActor
	str	r6, [r7, #0x68]
	b	.L93958
.L938c2:
	cmp	r5, #0
	beq	.L93958
	mov	r6, #3
	mov	r2, r8
	and	r6, r2
	cmp	r6, #1
	beq	.L938d6
	cmp	r6, #2
	beq	.L938e8
	b	.L93900
.L938d6:
	mov	r0, r5
	mov	r1, #1
	bl	_Actor_SetAnim
	mov	r3, r5
	add	r3, #0x64
	str	r5, [r7, #0x68]
	strh	r6, [r3]
	b	.L93900
.L938e8:
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetAnim
	ldr	r1, =.L9fd38
	mov	r0, r5
	bl	_Actor_SetScript
	mov	r2, r5
	add	r2, #0x64
	mov	r3, #1
	strh	r3, [r2]
.L93900:
	mov	r3, r5
	ldr	r2, .L93938	@ 0
	add	r3, #0x66
	mov	r1, r10
	strh	r1, [r3]
	sub	r3, #0x11
	strb	r2, [r3]
	ldr	r3, =Update_EmoteBubble
	ldr	r6, [r5, #0x50]
	str	r3, [r5, #0x6c]
	mov	r3, r6
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r2, r8
	and	r3, r2
	str	r7, [r5, #0x68]
	cmp	r3, #0
	beq	.L93944
	ldrb	r3, [r6, #9]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r6, #9]
	b	.L93958

	.align	2, 0
.L93938:
	.word	0
	.pool

.L93944:
	ldr	r3, [r7, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r6, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r6, #9]
.L93958:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end MapActor_Surprise

