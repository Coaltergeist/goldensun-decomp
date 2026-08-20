	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_952_200bfc4
	push	{r5, r6, lr}
	ldr	r6, =0x22a3
	mov	r5, r0
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_3ff4
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_4002
.Lm952_3ff4:
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm952_4002:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200bfc4

