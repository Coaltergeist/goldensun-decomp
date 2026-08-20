	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HammetPalace_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lm938_bc
	ldr	r0, =.Lm938_1f38
	b	.Lm938_be
.Lm938_bc:
	ldr	r0, =.Lm938_1f2c
.Lm938_be:
	pop	{r1}
	bx	r1
.func_end HammetPalace_GetEvents

