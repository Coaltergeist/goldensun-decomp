	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabiLighthouse_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lm965_ff4
	ldr	r0, =.Lm965_3694
	b	.Lm965_100a
.Lm965_ff4:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lm965_ffe
	ldr	r0, =.Lm965_3754
	b	.Lm965_100a
.Lm965_ffe:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.Lm965_1008
	ldr	r0, =.Lm965_3784
	b	.Lm965_100a
.Lm965_1008:
	ldr	r0, =.Lm965_388c
.Lm965_100a:
	pop	{r1}
	bx	r1
.func_end BabiLighthouse_GetActors

