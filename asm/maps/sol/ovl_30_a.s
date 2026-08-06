	.include "macros.inc"

.thumb_func_start Sol_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_48
	ldr	r0, =.Lm895_1d04
	b	.Lm895_54
.Lm895_48:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_52
	ldr	r0, =.Lm895_1d64
	b	.Lm895_54
.Lm895_52:
	ldr	r0, =MapEntrance_ARRAY_895__02009cd4
.Lm895_54:
	pop	{r1}
	bx	r1
.func_end Sol_GetEntrances

