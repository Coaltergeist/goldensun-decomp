	.include "macros.inc"

.thumb_func_start MogallForest_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lm927_ef8
	ldr	r0, =.Lm927_30f4
	b	.Lm927_f0e
.Lm927_ef8:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lm927_f02
	ldr	r0, =.Lm927_31e4
	b	.Lm927_f0e
.Lm927_f02:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lm927_f0c
	ldr	r0, =.Lm927_3334
	b	.Lm927_f0e
.Lm927_f0c:
	ldr	r0, =.Lm927_34b4
.Lm927_f0e:
	pop	{r1}
	bx	r1
.func_end MogallForest_GetEntrances

