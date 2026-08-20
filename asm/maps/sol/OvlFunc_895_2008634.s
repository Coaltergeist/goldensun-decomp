	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_2008634
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_66c
	ldr	r3, [r0, #8]
	ldr	r0, =0x312
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x313
	bl	__ClearFlag
	cmp	r5, #0x67
	bne	.Lm895_65c
	ldr	r0, =0x313
	bl	__SetFlag
	b	.Lm895_666
.Lm895_65c:
	cmp	r5, #0x69
	bne	.Lm895_666
	ldr	r0, =0x312
	bl	__SetFlag
.Lm895_666:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_66c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008634

