	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8020b64  @ 0x08020b64
	push	{r5, r6, lr}
	ldrb	r2, [r1]
	mov	r3, r2
	sub	sp, #0x14
	mov	r6, r0
	mov	r4, #0
	cmp	r3, #0
	beq	.L20b8c
	mov	r0, sp
	mov	r5, r0
.L20b78:
	strb	r2, [r5]
	add	r1, #1
	ldrb	r3, [r1]
	mov	r2, r3
	mov	r3, r2
	add	r5, #1
	add	r4, #1
	cmp	r3, #0
	bne	.L20b78
	b	.L20b8e
.L20b8c:
	mov	r0, sp
.L20b8e:
	mov	r3, #8
	strb	r3, [r0, r4]
	add	r4, #1
	mov	r3, #2
	strb	r3, [r0, r4]
	add	r4, #1
	cmp	r4, #6
	bgt	.L20bb2
	mov	r3, #7
	add	r2, r4, r0
	mov	r1, #0x5f
	sub	r4, r3, r4
.L20ba6:
	sub	r4, #1
	strb	r1, [r2]
	add	r2, #1
	cmp	r4, #0
	bne	.L20ba6
	mov	r4, #7
.L20bb2:
	mov	r3, #8
	strb	r3, [r0, r4]
	add	r4, #1
	mov	r3, #0xf
	strb	r3, [r0, r4]
	add	r4, #1
	mov	r3, #0
	strb	r3, [r0, r4]
	mov	r3, #2
	neg	r3, r3
	mov	r1, r6
	mov	r2, #0
	bl	Func_801e858
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8020b64
