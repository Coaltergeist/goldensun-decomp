	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009ad0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__CutsceneStart
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #7
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #6
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009ad0

