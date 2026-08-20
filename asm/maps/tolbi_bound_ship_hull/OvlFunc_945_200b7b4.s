	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200b7b4
	push	{r5, r6, r7, lr}
	mov	r5, #0x1c
	mov	r6, #8
	mov	r7, #0
.Lm945_37bc:
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	add	r5, #1
	orr	r3, r6
	strb	r3, [r0]
	cmp	r5, #0x23
	bls	.Lm945_37bc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b7b4

