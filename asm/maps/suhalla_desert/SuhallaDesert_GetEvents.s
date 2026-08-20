	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SuhallaDesert_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.Lm960_e74
	ldr	r0, =.Lm960_19c4
	b	.Lm960_e76
.Lm960_e74:
	ldr	r0, =.Lm960_17b4
.Lm960_e76:
	pop	{r1}
	bx	r1
.func_end SuhallaDesert_GetEvents

