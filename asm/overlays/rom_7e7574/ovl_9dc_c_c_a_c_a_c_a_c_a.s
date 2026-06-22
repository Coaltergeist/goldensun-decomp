	.include "macros.inc"

.thumb_func_start OvlFunc_959_200cba4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =_MSG_2440
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cba4

