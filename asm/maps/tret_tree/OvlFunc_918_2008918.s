	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2008918
	push	{r5, r6, r7, lr}
	mov	r0, #3
	sub	sp, #8
	bl	__GetFlag
	mov	r7, r0
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	mov	r1, #2
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0xb8
	bl	__CheckPartyItem
	mov	r0, #0x11
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xa6
	mov	r2, #0xa0
	lsl	r1, #16
	lsl	r2, #15
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0x94
	mov	r2, #0xb4
	lsl	r1, #16
	lsl	r2, #15
	strh	r6, [r0, #6]
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0xb6
	mov	r2, #0xb4
	strh	r6, [r0, #6]
	lsl	r1, #16
	mov	r0, #2
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r0, #2
	bl	__MapActor_GetActor
	strh	r6, [r0, #6]
	cmp	r7, #0
	beq	.Lm918_9ec
	mov	r1, #0xa6
	mov	r2, #0xd0
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r0, #3
	bl	__MapActor_GetActor
	strh	r6, [r0, #6]
.Lm918_9ec:
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x30
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0x98
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #0x1a
	mov	r1, #3
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r1, #0x23
	mov	r3, #4
	mov	r2, #1
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #0x50
	bl	__WaitFrames
	ldr	r0, =0x14d3
	bl	__MessageID
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	bl	OvlFunc_918_2009424
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__PlaySound
	mov	r0, #4
	bl	OvlFunc_918_2009424
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x50
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8009
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x8002
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r1, r6
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #4
	bl	OvlFunc_918_2009424
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm918_cf6
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x14dd
	bl	__MessageID
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0xa
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__ActorMessage
.Lm918_cf6:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #4
	bl	OvlFunc_918_2009424
	ldr	r0, =0x14df
	bl	__MessageID
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0xa
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	OvlFunc_918_2009424
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	b	.Lm918_d90

	.pool_aligned

.Lm918_d90:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =.Lm918_2dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.Lm918_2dc0
	mov	r3, #0xa8
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_918_200962c
	mov	r3, #0xd0
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0xdc
	bl	__CutsceneWait
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #4
	bl	OvlFunc_918_2009424
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	OvlFunc_918_2009424
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =gScript_918__02009e54
	mov	r0, #8
	bl	__MapActor_RunScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x8001
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x8002
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	cmp	r7, #0
	beq	.Lm918_eba
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x8003
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
.Lm918_eba:
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r5, =gScript_918__02009ec8
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	cmp	r7, #0
	beq	.Lm918_ef0
	mov	r0, #3
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm918_ef0:
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x844
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_918_2009244
	bl	__StartTask
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2008918

