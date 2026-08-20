	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MccoysPalace_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.Lm909_118
	ldr	r0, =.Lm909_2ca8
	b	.Lm909_11a
.Lm909_118:
	ldr	r0, =.Lm909_2c9c
.Lm909_11a:
	pop	{r1}
	bx	r1
.func_end MccoysPalace_GetEvents

