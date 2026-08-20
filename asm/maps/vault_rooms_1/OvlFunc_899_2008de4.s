	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_2008de4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	mov	r2, #0
	mov	r1, #4
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =0x125f
	mov	r8, r3
	mov	r0, r8
	bl	__MessageID
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xbc
	mov	r2, #0xc4
	lsl	r2, #1
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_899_200c684
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xc0
	mov	r2, #0xd4
	lsl	r2, #1
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r2, #0xcc
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #1
	add	r0, #5
	bl	__Func_801776c
	mov	r0, r8
	add	r0, #6
	bl	__MessageID
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xb0
	and	r5, r3
	mov	r2, #0xcc
	lsl	r1, #1
	lsl	r2, #1
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xcc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_899_200c658
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	bl	OvlFunc_899_200c684
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c624
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #1
	add	r0, #0xd
	bl	__Func_801776c
	mov	r0, r8
	add	r0, #0xe
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0x1e
	b	.Lm899_1214

	.pool_aligned

.Lm899_1214:
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__MapActor_Face
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x83
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80917d0
	mov	r3, #0x16
	add	r8, r3
	mov	r0, r8
	bl	__MessageID
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008de4

