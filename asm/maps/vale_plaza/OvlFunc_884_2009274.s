	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_2009274
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xf
	mov	r0, #0x19
	bl	__Func_8092950
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r2, =0x14b0000
	mov	r1, #0
	mov	r0, #0x19
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x1019
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r0, #0x17
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa0
	lsl	r2, #7
	mov	r8, r2
	mov	r1, r8
	mov	r2, #0x28
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xb2
	mov	r1, #0xb0
	mov	r3, #1
	lsl	r1, #16
	ldr	r2, =0x1390000
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #0x17
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xc8
	mov	r1, #0x90
	mov	r3, #1
	lsl	r0, #15
	lsl	r1, #16
	ldr	r2, =0x14d0000
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x17
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x18
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x69
	ldr	r2, =0x149
	mov	r0, #0x17
	bl	__MapActor_TravelToAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, =0x149
	mov	r1, #0x7c
	mov	r0, #0x18
	bl	__MapActor_TravelToAnim
	mov	r0, #0x17
	bl	__MapActor_WaitMovement
	mov	r0, #0x17
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, r8
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_8092adc
	mov	r0, #0x18
	bl	__MapActor_WaitMovement
	mov	r0, #0x18
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, r8
	mov	r0, #0x18
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092950
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	mov	r1, #0
	ldr	r2, =0x14b0000
	bl	__MapActor_SetPos
	mov	r0, #0x19
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x153
	mov	r1, #0x25
	mov	r0, #0x19
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x17
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r5, #0xd0
	mov	r1, #0
	mov	r0, #0x17
	bl	__ShowActorMessage_NoWait
	lsl	r5, #8
	mov	r0, #0x19
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_884_200a2e0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r6, #0x80
	mov	r0, #0x28
	bl	__CutsceneWait
	lsl	r6, #8
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1019
	mov	r1, #0xa
	bl	OvlFunc_884_200a2c8
	ldr	r2, =gScript_884__0200ac00
	mov	r0, #0
	ldr	r1, =0x10019
	bl	__Func_8092a1c
	mov	r0, #0x19
	mov	r1, #0x5d
	ldr	r2, =0x169
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x19
	bl	OvlFunc_884_200a2e0
	mov	r1, #0x14
	mov	r0, #0x19
	bl	OvlFunc_884_200a2c8
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xf
	mov	r1, r6
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x17
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, r8
	mov	r0, #0x17
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r1, r8
	mov	r0, #0x18
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x18
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2018
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x1e
	bl	OvlFunc_884_200a2e0
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x17
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x17
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x19
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r1, =gScript_884__0200a8e8
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r1, =gScript_884__0200a940
	mov	r0, #0x17
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_884__0200a998
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r1, =gScript_884__0200a9f0
	mov	r0, #0x19
	bl	__MapActor_RunScript
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	ldr	r5, =5
	mov	r1, #0x13
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x13
	bl	__Func_8091fa8
	mov	r0, #0xc
	mov	r1, #4
	bl	__StartMapBattle
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2009274

