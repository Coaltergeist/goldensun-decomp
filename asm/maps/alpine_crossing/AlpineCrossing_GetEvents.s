	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AlpineCrossing_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.Lm930_1198
	ldr	r0, =.Lm930_1c9c
	b	.Lm930_119a
.Lm930_1198:
	ldr	r0, =.Lm930_1b10
.Lm930_119a:
	pop	{r1}
	bx	r1
.func_end AlpineCrossing_GetEvents

