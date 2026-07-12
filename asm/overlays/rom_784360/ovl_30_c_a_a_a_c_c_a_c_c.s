	.include "macros.inc"

.thumb_func_start OvlFunc_884_2008674
	push	{r5, lr}
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r1, #1
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r5, #6]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	ldr	r0, =0x1c94
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	ldr	r0, =0x306
	bl	__SetFlag
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r1, =gScript_884__0200ae34
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008674
