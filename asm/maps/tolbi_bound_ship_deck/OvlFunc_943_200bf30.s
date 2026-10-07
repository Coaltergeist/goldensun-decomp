	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200bf30
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_51d8
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xa4
	mov	r0, #0
	mov	r1, #0x94
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #1
	mov	r5, #0xa0
	bl	__MapActor_Emote
	lsl	r5, #7
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =0x1f69
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x2016
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm943_3fb6
	ldr	r0, =0x2016
	bl	OvlFunc_943_200b9ec
	bl	__CutsceneEnd
	b	.Lm943_41d4
.Lm943_3fb6:
	ldr	r2, =iwram_3001ebc
	mov	r3, #0xec
	mov	r8, r2
	ldr	r2, [r2]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	ldr	r0, =0x2016
	bl	__Func_8093054
	bl	OvlFunc_943_2008bb8
	mov	r1, #0xd8
	mov	r2, #0x93
	mov	r0, #0x1a
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0x95
	mov	r0, #0x1a
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x9a
	mov	r0, #0x1a
	mov	r1, #0xbc
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0x1a
	bl	OvlFunc_943_200ba00
	mov	r2, #0
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #0x1a
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xb4
	mov	r0, #0x14
	lsl	r1, #16
	ldr	r2, =0x3090000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xa6
	mov	r0, #0x14
	mov	r1, #0xb4
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	ldr	r6, =0x2014
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0x1a
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	ldr	r0, =0x6014
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x14
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, #4
	mov	r0, #0x1a
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	bl	OvlFunc_943_200b9ec
	mov	r2, #0xa0
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x8014
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x1a
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_809259c
	mov	r0, #0x1a
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	ldr	r2, =0xcccc
	mov	r0, #0x16
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_943__0200c918
	mov	r0, #0x16
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x9e
	lsl	r2, #2
	mov	r0, #0x15
	mov	r1, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x11
	bl	__Func_8091e9c
.Lm943_41d4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200bf30

