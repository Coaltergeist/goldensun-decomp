	.include "macros.inc"

.thumb_func_start BabisPalace_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.Lm952_48
	ldr	r0, =.Lm952_4a1c
	b	.Lm952_4a
.Lm952_48:
	ldr	r0, =.Lm952_4614
.Lm952_4a:
	pop	{r1}
	bx	r1
.func_end BabisPalace_GetEntrances

