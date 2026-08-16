	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80be070  @ 0x080be070
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0x10
	mov	r0, #1
	cmp	r6, #7
	bls	.Lbe07e
	mov	r0, #2
.Lbe07e:
	mov	r5, sp
	mov	r1, r5
	bl	Func_80b6c08
	mov	r2, #0
	cmp	r2, r0
	bge	.Lbe0a2
	ldrh	r3, [r5]
	cmp	r3, r6
	beq	.Lbe0a2
	mov	r1, r5
.Lbe094:
	add	r2, #1
	cmp	r2, r0
	bge	.Lbe0a2
	add	r1, #2
	ldrh	r3, [r1]
	cmp	r3, r6
	bne	.Lbe094
.Lbe0a2:
	mov	r3, r2
	eor	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80be070
