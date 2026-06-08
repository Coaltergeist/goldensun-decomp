	.include "macros.inc"

.thumb_func_start OvlFunc_921_2008668
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x156e
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008668

