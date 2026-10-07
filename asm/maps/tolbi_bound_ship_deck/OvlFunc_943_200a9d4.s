	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200a9d4
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xb6
	mov	r0, #0x14
	lsl	r1, #16
	ldr	r2, =0x26a0000
	bl	__MapActor_SetPos
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__MapActor_SetPos
	mov	r1, #0x86
	ldr	r2, =0x2a60000
	lsl	r1, #17
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	ldr	r1, =gScript_943__0200c980
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
	ldr	r2, =0x6666
	mov	r0, #0x15
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_943__0200c628
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	ldr	r5, =iwram_3001ebc
	mov	r6, #0xe0
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x89
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xb6
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	ldr	r0, =0x1ee1
	bl	__MessageID
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x14
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x96
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x96
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x91
	mov	r0, #0x14
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0x14
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r2, [r5]
	ldr	r3, =0x209
	ldr	r0, =0x92b
	str	r3, [r2, r6]
	bl	__SetFlag
	ldr	r0, =0x302
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200a9d4

