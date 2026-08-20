	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start VenusLighthouse_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lm968_e1c
	ldr	r0, =.Lm968_5d68
	b	.Lm968_e46
.Lm968_e1c:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Lm968_e26
	ldr	r0, =.Lm968_6020
	b	.Lm968_e46
.Lm968_e26:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lm968_e30
	ldr	r0, =.Lm968_6230
	b	.Lm968_e46
.Lm968_e30:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lm968_e3a
	ldr	r0, =.Lm968_6350
	b	.Lm968_e46
.Lm968_e3a:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Lm968_e44
	ldr	r0, =.Lm968_6548
	b	.Lm968_e46
.Lm968_e44:
	ldr	r0, =.Lm968_5dc8
.Lm968_e46:
	pop	{r1}
	bx	r1
.func_end VenusLighthouse_GetEntrances

