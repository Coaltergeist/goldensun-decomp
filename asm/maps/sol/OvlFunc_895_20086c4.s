	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_20086c4
	push	{r5, lr}
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_6fc
	ldr	r3, [r0, #8]
	ldr	r0, =0x316
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x317
	bl	__ClearFlag
	cmp	r5, #0x6f
	bne	.Lm895_6ec
	ldr	r0, =0x317
	bl	__SetFlag
	b	.Lm895_6f6
.Lm895_6ec:
	cmp	r5, #0x71
	bne	.Lm895_6f6
	ldr	r0, =0x316
	bl	__SetFlag
.Lm895_6f6:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_6fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20086c4

