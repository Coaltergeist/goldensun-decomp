	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008ec8
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ec8

