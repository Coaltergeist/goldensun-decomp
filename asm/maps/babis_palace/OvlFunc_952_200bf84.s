	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_952_200bf84
	push	{lr}
	ldr	r0, =0x96d
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_3fa6
	ldr	r0, =0x96d
	bl	__SetFlag
	ldr	r0, =0x2239
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_3fb4
.Lm952_3fa6:
	ldr	r0, =0x223a
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm952_3fb4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200bf84

