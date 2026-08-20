	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_934_2009378
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009378

