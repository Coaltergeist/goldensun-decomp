	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8029274  @ 0x08029274
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, r2
	cmp	r1, #5
	bls	.L29280
	mov	r1, #5
.L29280:
	mov	r2, #0
	cmp	r1, #0
	beq	.L292a4
	mov	r6, #0xf
	mov	r4, sp
.L2928a:
	mov	r3, r0
	and	r3, r6
	cmp	r3, #9
	bhi	.L29296
	add	r3, #0x30
	b	.L29298
.L29296:
	add	r3, #0x37
.L29298:
	strb	r3, [r4]
	add	r2, #1
	lsr	r0, #4
	add	r4, #1
	cmp	r2, r1
	bne	.L2928a
.L292a4:
	sub	r2, r1, #1
	cmp	r2, #0
	blt	.L292bc
	mov	r3, sp
	add	r1, r2, r3
	mov	r12, r3
.L292b0:
	ldrb	r3, [r1]
	sub	r1, #1
	strb	r3, [r5]
	add	r5, #1
	cmp	r1, r12
	bge	.L292b0
.L292bc:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8029274
