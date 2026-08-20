	.include "macros.inc"

.thumb_func_start Bilibin_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.Lm907_1b0
	ldr	r0, =.Lm907_1744
	b	.Lm907_1c6
.Lm907_1b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Lm907_1ba
	ldr	r0, =.Lm907_1a2c
	b	.Lm907_1c6
.Lm907_1ba:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Lm907_1c4
	ldr	r0, =.Lm907_1bc4
	b	.Lm907_1c6
.Lm907_1c4:
	ldr	r0, =.Lm907_1738
.Lm907_1c6:
	pop	{r1}
	bx	r1
.func_end Bilibin_GetEvents

