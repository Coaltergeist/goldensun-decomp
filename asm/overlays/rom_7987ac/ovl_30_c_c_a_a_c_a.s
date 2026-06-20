	.include "macros.inc"

.thumb_func_start OvlFunc_902_2008098
	push	{r5, lr}
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008098

