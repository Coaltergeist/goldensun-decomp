	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b606c  @ 0x080b606c
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r5, sp
	mov	r6, #0x5f
	mov	r4, r5
	mov	r0, r5
	mov	r1, #3
.Lb607a:
	ldrh	r3, [r2]
	strb	r3, [r0]
	lsl	r3, #24
	add	r2, #2
	add	r0, #1
	cmp	r3, #0
	bne	.Lb608a
	strb	r6, [r4]
.Lb608a:
	sub	r1, #1
	add	r4, #1
	cmp	r1, #0
	bge	.Lb607a
	mov	r3, #0
	strb	r3, [r5, #4]
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b606c

