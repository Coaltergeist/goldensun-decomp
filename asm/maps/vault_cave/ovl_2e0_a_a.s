	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start VaultCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.Lm935_2f8
	ldr	r0, =.Lm935_1f98
	b	.Lm935_30e
.Lm935_2f8:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.Lm935_302
	ldr	r0, =.Lm935_2064
	b	.Lm935_30e
.Lm935_302:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.Lm935_30c
	ldr	r0, =.Lm935_2190
	b	.Lm935_30e
.Lm935_30c:
	ldr	r0, =.Lm935_1f8c
.Lm935_30e:
	pop	{r1}
	bx	r1
.func_end VaultCave_GetEvents

