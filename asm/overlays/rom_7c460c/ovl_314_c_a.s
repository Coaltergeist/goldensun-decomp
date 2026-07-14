	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008ff0
	push	{r5, r6, lr}
	mov	r0, #0x91
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1000
	b	.L117a
.L1000:
	mov	r0, #0x91
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	ldr	r5, =0x2409
	mov	r0, r5
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #9
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0x23
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x1e
	ldr	r1, =0x103
	mov	r0, #8
	bl	__MapActor_Emote
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	add	r5, #3
	mov	r0, #0x19
	bl	__CutsceneWait
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, #0xa
	ldrsh	r1, [r6, r3]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	sub	r1, #1
	mov	r0, #8
	bl	__Func_809218c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #0xa0
	mov	r2, #0xd8
	bl	__Func_809218c
	mov	r0, #8
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0xa8
	mov	r2, #0xc8
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xa0
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x80
	mov	r0, #8
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x80
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_WaitMovement
	bl	__CutsceneEnd
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_939_2009240
	lsl	r1, #4
	bl	__StartTask
.L117a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008ff0
