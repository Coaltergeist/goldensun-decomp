	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200950c
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x32a
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #17
	ldr	r2, =0x3250000
	bl	__MapActor_SetPos
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #1
	ldr	r2, =0x339
	bl	__MapActor_TravelToAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x8d
	ldr	r2, =0x357
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r1, #0x14
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	bl	__MapActor_PlayPendingSound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Emote
	ldr	r5, =0xe67
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8093054
	add	r5, #4
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r1, =gScript_882__0200c8c0
	mov	r0, #0x14
	bl	__MapActor_RunScript
	ldr	r0, =0x835
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200950c

