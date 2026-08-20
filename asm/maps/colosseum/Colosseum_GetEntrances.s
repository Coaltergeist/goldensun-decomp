	.include "macros.inc"

.thumb_func_start Colosseum_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.Lm953_48
	ldr	r0, =.Lm953_3094
	b	.Lm953_54
.Lm953_48:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.Lm953_52
	ldr	r0, =.Lm953_3274
	b	.Lm953_54
.Lm953_52:
	ldr	r0, =.Lm953_3034
.Lm953_54:
	pop	{r1}
	bx	r1
.func_end Colosseum_GetEntrances

