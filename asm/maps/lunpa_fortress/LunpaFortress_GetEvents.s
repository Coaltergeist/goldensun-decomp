	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LunpaFortress_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lm959_b10
	ldr	r0, =.Lm959_6ff4
	b	.Lm959_b26
.Lm959_b10:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_b1a
	ldr	r0, =.Lm959_7258
	b	.Lm959_b26
.Lm959_b1a:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lm959_b24
	ldr	r0, =.Lm959_7528
	b	.Lm959_b26
.Lm959_b24:
	ldr	r0, =.Lm959_763c
.Lm959_b26:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetEvents

