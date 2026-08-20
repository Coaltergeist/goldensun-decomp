	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabiLighthouse_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lm965_f70
	ldr	r0, =.Lm965_3270
	b	.Lm965_f86
.Lm965_f70:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lm965_f7a
	ldr	r0, =.Lm965_3330
	b	.Lm965_f86
.Lm965_f7a:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.Lm965_f84
	ldr	r0, =.Lm965_34f8
	b	.Lm965_f86
.Lm965_f84:
	ldr	r0, =.Lm965_3558
.Lm965_f86:
	pop	{r1}
	bx	r1
.func_end BabiLighthouse_GetEntrances

