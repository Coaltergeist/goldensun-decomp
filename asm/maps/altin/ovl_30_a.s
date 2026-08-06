	.include "macros.inc"

.thumb_func_start Altin_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lm931_48
	ldr	r0, =.Lm931_1120
	b	.Lm931_54
.Lm931_48:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lm931_52
	ldr	r0, =.Lm931_1288
	b	.Lm931_54
.Lm931_52:
	ldr	r0, =.Lm931_10f0
.Lm931_54:
	pop	{r1}
	bx	r1
.func_end Altin_GetEntrances

