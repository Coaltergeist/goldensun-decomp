	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TolbiBoundShipHull_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6f
	cmp	r2, r3
	bne	.Lm945_358
	ldr	r0, =.Lm945_6984
	b	.Lm945_35a
.Lm945_358:
	ldr	r0, =.Lm945_696c
.Lm945_35a:
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipHull_GetEntrances

