	.include "macros.inc"

.thumb_func_start WestLunpaCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.Lm941_5c
	ldr	r0, =.Lm941_1cd8
	b	.Lm941_5e
.Lm941_5c:
	ldr	r0, =.Lm941_1cc0
.Lm941_5e:
	pop	{r1}
	bx	r1
.func_end WestLunpaCave_GetActors

