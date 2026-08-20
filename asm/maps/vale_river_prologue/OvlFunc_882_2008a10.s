	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2008a10
	push	{r5, lr}
	bl	__CutsceneStart
	bl	__StartRain
	bl	__StartThunder
	bl	__Func_8095240
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #7
	lsl	r1, #4
	bl	__Func_80933d4
	mov	r0, #0x9e
	mov	r1, #0xa0
	mov	r2, #0xdc
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x93
	mov	r2, #0xd9
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r2, #0x2c
	ldr	r0, =.Lm882_578a
	mov	r1, #0x32
	bl	__Func_8010560
	mov	r0, #0x16
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xab
	mov	r0, #9
	lsl	r1, #17
	ldr	r2, =0x37a0000
	bl	__MapActor_SetPos
	mov	r1, #0xab
	mov	r0, #9
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__MapActor_TravelToAnimWait
	bl	__MapActor_PlayPendingSound
	mov	r1, #0x94
	mov	r0, #9
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__MapActor_TravelToAnim
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #17
	ldr	r2, =0x37a0000
	bl	__MapActor_SetPos
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x37a
	bl	__MapActor_TravelToAnim
	mov	r1, #0xab
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x9f
	ldr	r2, =0x389
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	ldr	r5, =0xe5c
	mov	r0, r5
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x93
	ldr	r2, =0x346
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0x121
	ldr	r2, =0x373
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #9
	add	r5, #8
	bl	__Func_8092adc
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r1, #0x97
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x389
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm882_c72
.Lm882_c5c:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0xe65
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm882_c72:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	beq	.Lm882_c5c
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	ldr	r0, =0xe66
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	ldr	r1, =0x129
	ldr	r2, =0x2ee
	mov	r0, #0xa
	bl	__MapActor_TravelToAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	ldr	r1, =0x129
	ldr	r2, =0x2ee
	bl	__MapActor_TravelToAnimWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #5
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x87b
	bl	__SetFlag
	ldr	r0, =0x205
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008a10

