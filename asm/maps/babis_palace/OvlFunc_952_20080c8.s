	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_952_20080c8
	push	{r5, r6, lr}
	ldr	r5, =0x1ff1
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_f0
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm952_f6
.Lm952_f0:
	add	r0, r5, #2
	bl	__MessageID
.Lm952_f6:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20080c8

