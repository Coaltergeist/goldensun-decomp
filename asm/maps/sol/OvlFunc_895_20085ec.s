	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_20085ec
	push	{r5, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_628
	ldr	r3, [r0, #8]
	mov	r0, #0xc4
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x311
	bl	__ClearFlag
	cmp	r5, #0x63
	bne	.Lm895_616
	ldr	r0, =0x311
	bl	__SetFlag
	b	.Lm895_622
.Lm895_616:
	cmp	r5, #0x65
	bne	.Lm895_622
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
.Lm895_622:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_628:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20085ec

