	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start VenusLighthouse_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lm968_2fa4
	ldr	r0, =.Lm968_6e44
	b	.Lm968_2fd4
.Lm968_2fa4:
	ldr	r3, =0xb6
	cmp	r2, r3
	beq	.Lm968_2fd2
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Lm968_2fb4
	ldr	r0, =.Lm968_7120
	b	.Lm968_2fd4
.Lm968_2fb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lm968_2fbe
	ldr	r0, =.Lm968_7300
	b	.Lm968_2fd4
.Lm968_2fbe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lm968_2fc8
	ldr	r0, =.Lm968_73b4
	b	.Lm968_2fd4
.Lm968_2fc8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Lm968_2fd2
	ldr	r0, =.Lm968_74f8
	b	.Lm968_2fd4
.Lm968_2fd2:
	ldr	r0, =.Lm968_6f1c
.Lm968_2fd4:
	pop	{r1}
	bx	r1
.func_end VenusLighthouse_GetEvents

