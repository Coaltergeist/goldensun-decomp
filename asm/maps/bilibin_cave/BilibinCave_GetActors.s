	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BilibinCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lm920_b8
	ldr	r0, =.Lm920_c2c
	b	.Lm920_ce
.Lm920_b8:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lm920_c2
	ldr	r0, =.Lm920_c5c
	b	.Lm920_ce
.Lm920_c2:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lm920_cc
	ldr	r0, =.Lm920_cbc
	b	.Lm920_ce
.Lm920_cc:
	ldr	r0, =.Lm920_c14
.Lm920_ce:
	pop	{r1}
	bx	r1
.func_end BilibinCave_GetActors

