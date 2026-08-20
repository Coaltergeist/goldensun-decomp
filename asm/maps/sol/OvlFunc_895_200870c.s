	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_200870c
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_748
	ldr	r3, [r0, #8]
	mov	r0, #0xc6
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.Lm895_736
	ldr	r0, =0x319
	bl	__SetFlag
	b	.Lm895_742
.Lm895_736:
	cmp	r5, #0x75
	bne	.Lm895_742
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__SetFlag
.Lm895_742:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200870c

