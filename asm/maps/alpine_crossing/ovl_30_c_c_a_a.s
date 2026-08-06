	.include "macros.inc"

.thumb_func_start AlpineCrossing_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.Lm930_d0
	ldr	r0, =.Lm930_1a38
	b	.Lm930_d2
.Lm930_d0:
	ldr	r0, =.Lm930_1918
.Lm930_d2:
	pop	{r1}
	bx	r1
.func_end AlpineCrossing_GetActors

