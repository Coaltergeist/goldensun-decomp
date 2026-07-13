	.include "macros.inc"

.thumb_func_start OvlFunc_959_2009cf0
	push	{r5, r6, lr}
	ldr	r6, =0x2424
	mov	r5, r0
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, r5
	ldr	r1, =0x101
	bl	__MapActor_Emote
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	add	r6, #3
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009cf0

