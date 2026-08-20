	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2009ab0
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_TravelBy
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009ab0

