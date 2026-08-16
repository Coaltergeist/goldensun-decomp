	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bd3e4  @ 0x080bd3e4
	push	{r5, lr}
	mov	r5, r9
	push	{r5}
	mov	r3, r9
	sub	sp, #4
	str	r3, [sp]
	mov	r5, r0
	bl	_RPGRandom
	mov	r3, #0xff
	ldrb	r2, [r5]
	and	r0, r3
	mov	r4, #0
	mov	r1, #0
	cmp	r0, r2
	blt	.Lbd414
.Lbd404:
	add	r1, #1
	cmp	r1, #7
	bgt	.Lbd414
	ldrb	r3, [r5, r1]
	add	r2, r3
	cmp	r0, r2
	bge	.Lbd404
	mov	r4, r1
.Lbd414:
	mov	r0, r4
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80bd3e4
