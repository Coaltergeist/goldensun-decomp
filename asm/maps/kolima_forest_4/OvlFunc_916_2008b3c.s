	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008b3c
	push	{r5, r6, r7, lr}
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r1
	cmp	r3, r2
	beq	.Lm916_b82
	ldr	r7, =gBuffer
	mov	r12, r2
.Lm916_b50:
	mov	r3, #2
	ldrsh	r4, [r0, r3]
	mov	r3, #4
	ldrsh	r2, [r0, r3]
	mov	r3, #6
	ldrsh	r5, [r0, r3]
	mov	r1, #3
.Lm916_b5e:
	lsl	r3, r2, #7
	add	r3, r4, r3
	lsl	r3, #2
	add	r3, r7
	strb	r6, [r3, #2]
	cmp	r5, #0
	bne	.Lm916_b70
	add	r4, #1
	b	.Lm916_b72
.Lm916_b70:
	add	r2, #1
.Lm916_b72:
	sub	r1, #1
	cmp	r1, #0
	bge	.Lm916_b5e
	add	r0, #0xc
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, r12
	bne	.Lm916_b50
.Lm916_b82:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008b3c

