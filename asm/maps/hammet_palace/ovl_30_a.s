	.include "macros.inc"

.thumb_func_start HammetPalace_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lm938_48
	ldr	r0, =gScript_887__02009c04
	b	.Lm938_4a
.Lm938_48:
	ldr	r0, =.Lm938_1bd4
.Lm938_4a:
	pop	{r1}
	bx	r1
.func_end HammetPalace_GetEntrances

