	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200a8a4
	push	{r5, lr}
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x4ab0000
	bl	__Func_80933f8
	mov	r0, #0x1a
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	mov	r0, #9
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200cab4
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_881__0200ca78
	mov	r0, #9
	bl	__MapActor_RunScript
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r1, #0x26
	mov	r2, #0x48
	ldr	r0, =.Lm882_57a0
	bl	__Func_8010560
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x95
	ldr	r2, =0x497
	bl	__MapActor_TravelToAnimWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x19
	mov	r1, #0xfa
	ldr	r2, =0x4be
	bl	__MapActor_TravelToAnimWait
	bl	__MapActor_PlayPendingSound
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #6
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	ldr	r5, =gScript_882__0200cec8
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r0, #0x1a
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r1, #0x26
	mov	r2, #0x48
	ldr	r0, =.Lm882_57e2
	bl	__Func_8010560
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__MapActor_PlayPendingSound
	mov	r0, #0xe0
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x4c90000
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r2, #0x49
	mov	r1, #0x23
	ldr	r0, =.Lm882_578a
	bl	__Func_8010560
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__MapActor_PlayPendingSound
	ldr	r1, =gScript_882__0200cb28
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_882__0200cb9c
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r1, #0x23
	mov	r2, #0x49
	ldr	r0, =.Lm882_57cc
	bl	__Func_8010560
	mov	r0, #0x1a
	bl	__MapActor_WaitScript
	bl	__MapActor_PlayPendingSound
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r5, =0xe9b
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x28
	ldr	r0, =0x201a
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x1a
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =gScript_882__0200cc0c
	mov	r0, #9
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200cc5c
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x43e0000
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, #9
	bl	__MapActor_WaitScript
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r2, =0x43e
	mov	r0, #9
	mov	r1, #0x69
	bl	__MapActor_TravelToAnimWait
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__ShowActorMessage_NoWait
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm882_2b9c
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	add	r0, r5, #4
	bl	__MessageID
	b	.Lm882_2baa
.Lm882_2b9c:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	add	r0, r5, #5
	bl	__MessageID
.Lm882_2baa:
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x1e
	mov	r0, #9
	bl	__MapActor_Emote
	ldr	r5, =0xea1
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm882_2c2a
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	add	r0, r5, #1
	bl	__MessageID
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x1e
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	b	.Lm882_2c54
.Lm882_2c2a:
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0x5a
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_SetAnim
	add	r0, r5, #2
	bl	__MessageID
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage
.Lm882_2c54:
	ldr	r1, =gScript_882__0200cca8
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x5a
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_2ca8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.Lm882_2ca8:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200a8a4

