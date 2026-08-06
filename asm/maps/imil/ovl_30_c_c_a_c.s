	.include "macros.inc"

.thumb_func_start Imil_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.Lm921_204
	ldr	r0, =.Lm921_2db8
	b	.Lm921_206
.Lm921_204:
	ldr	r0, =.Lm921_2c80
.Lm921_206:
	pop	{r1}
	bx	r1
.func_end Imil_GetEvents

