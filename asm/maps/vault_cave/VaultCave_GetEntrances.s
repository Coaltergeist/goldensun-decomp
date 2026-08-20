	.include "macros.inc"

.thumb_func_start VaultCave_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.Lm935_48
	ldr	r0, =.Lm935_18cc
	b	.Lm935_5e
.Lm935_48:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.Lm935_52
	ldr	r0, =.Lm935_1a34
	b	.Lm935_5e
.Lm935_52:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.Lm935_5c
	ldr	r0, =.Lm935_1b9c
	b	.Lm935_5e
.Lm935_5c:
	ldr	r0, =.Lm935_189c
.Lm935_5e:
	pop	{r1}
	bx	r1
.func_end VaultCave_GetEntrances

