	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Imil_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.Lm921_148
	ldr	r0, =.Lm921_28a0
	b	.Lm921_14a
.Lm921_148:
	ldr	r0, =.Lm921_2798
.Lm921_14a:
	pop	{r1}
	bx	r1
.func_end Imil_GetEntrances

