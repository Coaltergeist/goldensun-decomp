	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltmillerCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.Lm957_a18
	ldr	r0, =.Lm957_41b0
	b	.Lm957_a2e
.Lm957_a18:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.Lm957_a22
	ldr	r0, =.Lm957_4270
	b	.Lm957_a2e
.Lm957_a22:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lm957_a2c
	ldr	r0, =.Lm957_4318
	b	.Lm957_a2e
.Lm957_a2c:
	ldr	r0, =.Lm957_4198
.Lm957_a2e:
	pop	{r1}
	bx	r1
.func_end AltmillerCave_GetActors

