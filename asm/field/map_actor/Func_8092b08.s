	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8092b08  @ 0x08092b08
	push	{r5, r6, lr}
	mov	r5, r1
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L92b4e
	mov	r3, r6
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L92b4e
	ldr	r1, [r6, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r1, #9]
	mov	r3, #3
	neg	r2, r2
	and	r5, r3
	mov	r3, r2
	lsl	r4, r5, #2
	and	r3, r0
	orr	r3, r4
	strb	r3, [r1, #9]
	ldrb	r3, [r1, #0x15]
	and	r2, r3
	orr	r2, r4
	strb	r2, [r1, #0x15]
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
.L92b4e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092b08

