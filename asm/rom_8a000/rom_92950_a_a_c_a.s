	.include "macros.inc"


.section .text.after_929d8, "ax", %progbits

.thumb_func_start Func_8092a1c  @ 0x08092a1c
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	GetFieldActor
	mov	r5, r0
	mov	r0, #0xff
	and	r0, r6
	bl	GetFieldActor
	cmp	r5, #0
	beq	.L92a6c
	cmp	r0, #0
	beq	.L92a6c
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r6
	str	r0, [r5, #0x68]
	cmp	r3, #0
	bne	.L92a5e
	mov	r2, r5
	mov	r3, #0x28
	add	r2, #0x64
	strh	r3, [r2]
	ldr	r3, [r0, #0x34]
	lsl	r3, #1
	str	r3, [r5, #0x34]
	ldr	r3, [r0, #0x30]
	ldr	r1, =0
	str	r3, [r5, #0x30]
	mov	r3, r5
	add	r3, #0x59
	strb	r1, [r3]
.L92a5e:
	mov	r0, r5
	mov	r1, r7
	bl	_Actor_SetScript
	b	.L92a6c

	.pool_aligned

.L92a6c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092a1c
