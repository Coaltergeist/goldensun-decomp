	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_20085ac
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_5e2
	ldr	r3, [r0, #8]
	mov	r0, #0xc0
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x301
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.Lm895_5d8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	b	.Lm895_5e2
.Lm895_5d8:
	cmp	r5, #0x71
	bne	.Lm895_5e2
	ldr	r0, =0x301
	bl	__SetFlag
.Lm895_5e2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20085ac

