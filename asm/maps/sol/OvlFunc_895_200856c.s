	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_200856c
	push	{r5, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_59e
	ldr	r3, [r0, #8]
	ldr	r0, =0x302
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	cmp	r5, #0x5d
	bne	.Lm895_594
	ldr	r0, =0x303
	bl	__SetFlag
	b	.Lm895_59e
.Lm895_594:
	cmp	r5, #0x5f
	bne	.Lm895_59e
	ldr	r0, =0x302
	bl	__SetFlag
.Lm895_59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200856c

