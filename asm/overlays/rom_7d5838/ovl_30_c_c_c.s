	.include "macros.inc"

.thumb_func_start OvlFunc_950_2008898
	push	{r5, lr}
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r0, =0x23a8
	bl	__MessageID
	mov	r2, #0x28
	mov	r0, #0x1f
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_2008898
