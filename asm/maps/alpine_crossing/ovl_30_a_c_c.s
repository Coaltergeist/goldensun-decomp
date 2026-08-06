	.include "macros.inc"

.thumb_func_start AlpineCrossing_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.Lm930_94
	ldr	r0, =.Lm930_1844
	b	.Lm930_96
.Lm930_94:
	ldr	r0, =.Lm930_17b4
.Lm930_96:
	pop	{r1}
	bx	r1
.func_end AlpineCrossing_GetEntrances

