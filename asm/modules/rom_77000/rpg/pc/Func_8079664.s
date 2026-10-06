	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8079664  @ 0x08079664
	push	{r5, r6, lr}
	mov	r5, r0
	bl	GetPartySize
	mov	r6, r0
	mov	r0, r5
	bl	ClearFlag
	mov	r1, #0
	cmp	r1, r6
	bge	.L79696
	ldr	r0, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	ldrb	r3, [r0, r2]
	cmp	r3, r5
	beq	.L79696
	add	r2, r0, r2
.L79688:
	add	r1, #1
	cmp	r1, r6
	bge	.L79696
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, r5
	bne	.L79688
.L79696:
	sub	r0, r6, #1
	cmp	r1, r0
	bge	.L796b4
	ldr	r3, =gState
	mov	r4, #0xfc
	add	r3, r1, r3
	lsl	r4, #1
	add	r2, r3, r4
	sub	r1, r0, r1
.L796a8:
	ldrb	r3, [r2, #1]
	sub	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, #0
	bne	.L796a8
.L796b4:
	bl	GetPartySize
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079664

