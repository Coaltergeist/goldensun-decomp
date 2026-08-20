	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2009828
	push	{r5, r6, lr}
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_1836
	b	.Lm882_196c
.Lm882_1836:
	bl	__CutsceneStart
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x16
	bl	__MapActor_Surprise
	ldr	r5, =0xe74
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200c934
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =gScript_882__0200c984
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r6, #0x80
	lsl	r6, #9
	mov	r1, #1
	str	r6, [r0, #0x1c]
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8093054
	mov	r0, #0x28
	bl	__CutsceneWait
	add	r5, #5
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x80
	mov	r0, #0x16
	mov	r1, r6
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_1942
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.Lm882_1942:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80917d0
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	ldr	r0, =0x837
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm882_196c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009828

