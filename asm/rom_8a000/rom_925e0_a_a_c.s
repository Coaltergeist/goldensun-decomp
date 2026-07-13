	.include "macros.inc"

	.section .text.after, "ax", %progbits
.thumb_func_start Func_8092878  @ 0x08092878
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	sub	sp, #4
	mov	r5, r1
	cmp	r6, #0
	beq	.L92912
	cmp	r5, #0
	beq	.L92912
	ldr	r3, [r6, #0x10]
	ldr	r0, [r5, #0x10]
	ldr	r1, [r5, #8]
	sub	r0, r3
	ldr	r3, [r6, #8]
	sub	r1, r3
	bl	atan2
	lsl	r0, #16
	lsr	r7, r0, #16
	mov	r0, #0x80
	lsl	r0, #8
	add	r0, r7
	mov	r8, r0
	mov	r4, #0
.L928aa:
	ldrh	r2, [r6, #6]
	sub	r3, r7, r2
	lsl	r3, #16
	asr	r3, #16
	mov	r1, #2
	cmp	r3, #0
	beq	.L928d2
	mov	r0, #0x80
	lsl	r0, #5
	cmp	r3, r0
	ble	.L928c4
	mov	r3, #0x80
	lsl	r3, #5
.L928c4:
	ldr	r0, =0xfffff000
	cmp	r3, r0
	bge	.L928cc
	ldr	r3, =0xfffff000
.L928cc:
	add	r3, r2, r3
	strh	r3, [r6, #6]
	b	.L928d4
.L928d2:
	mov	r1, #1
.L928d4:
	ldrh	r2, [r5, #6]
	mov	r0, r8
	sub	r3, r0, r2
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0
	beq	.L928fc
	mov	r0, #0x80
	lsl	r0, #5
	cmp	r3, r0
	ble	.L928ee
	mov	r3, #0x80
	lsl	r3, #5
.L928ee:
	ldr	r0, =0xfffff000
	cmp	r3, r0
	bge	.L928f6
	ldr	r3, =0xfffff000
.L928f6:
	add	r3, r2, r3
	strh	r3, [r5, #6]
	b	.L928fe
.L928fc:
	sub	r1, #1
.L928fe:
	cmp	r1, #0
	beq	.L92912
	mov	r0, #1
	str	r4, [sp]
	bl	WaitFrames
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #0x3b
	ble	.L928aa
.L92912:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092878
