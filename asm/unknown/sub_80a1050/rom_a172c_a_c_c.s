	.include "macros.inc"

.thumb_func_start Func_80a17c4  @ 0x080a17c4
	push	{lr}
	cmp	r0, #0
	beq	.La17f6
	mov	r3, #1
	strb	r3, [r0, #5]
	ldr	r2, =0x1ff
	ldrh	r3, [r0, #6]
	ldrh	r1, [r0, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #0x16]
	ldrh	r3, [r0, #8]
	ldrb	r2, [r0, #0x17]
	strb	r3, [r0, #0x14]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	strb	r3, [r0, #0x17]
	ldrb	r2, [r0, #0x15]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	strb	r3, [r0, #0x15]
.La17f6:
	pop	{r0}
	bx	r0
.func_end Func_80a17c4

