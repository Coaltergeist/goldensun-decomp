	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_200867c
	push	{r5, lr}
	mov	r0, #0xb
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_6b8
	ldr	r3, [r0, #8]
	mov	r0, #0xc5
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x315
	bl	__ClearFlag
	cmp	r5, #0x6b
	bne	.Lm895_6a6
	ldr	r0, =0x315
	bl	__SetFlag
	b	.Lm895_6b2
.Lm895_6a6:
	cmp	r5, #0x6d
	bne	.Lm895_6b2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__SetFlag
.Lm895_6b2:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_6b8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200867c

