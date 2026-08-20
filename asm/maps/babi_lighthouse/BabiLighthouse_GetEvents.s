	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabiLighthouse_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lm965_27b8
	ldr	r0, =.Lm965_391c
	b	.Lm965_27ce
.Lm965_27b8:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lm965_27c2
	ldr	r0, =.Lm965_39e8
	b	.Lm965_27ce
.Lm965_27c2:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.Lm965_27cc
	ldr	r0, =.Lm965_3ac0
	b	.Lm965_27ce
.Lm965_27cc:
	ldr	r0, =.Lm965_3c28
.Lm965_27ce:
	pop	{r1}
	bx	r1
.func_end BabiLighthouse_GetEvents

