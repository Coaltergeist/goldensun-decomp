	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_2008754
	push	{r5, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_78c
	ldr	r3, [r0, #8]
	ldr	r0, =0x31a
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	cmp	r5, #0x77
	bne	.Lm895_77c
	ldr	r0, =0x31b
	bl	__SetFlag
	b	.Lm895_786
.Lm895_77c:
	cmp	r5, #0x79
	bne	.Lm895_786
	ldr	r0, =0x31a
	bl	__SetFlag
.Lm895_786:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_78c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008754

