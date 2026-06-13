	.include "macros.inc"

.thumb_func_start OvlFunc_886_2008298
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1c40
	bl	__MessageID
	ldr	r0, =0x800b
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008298

