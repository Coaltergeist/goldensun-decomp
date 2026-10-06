	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_2008710
	push	{r5, r6, r7, lr}
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm953_71e
	b	.Lm953_da8
.Lm953_71e:
	bl	__CutsceneStart
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r5, #0xc0
	mov	r1, #0x80
	lsl	r5, #6
	mov	r2, #0x28
	mov	r0, #0x11
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r5
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x2267
	bl	__MessageID
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_8092adc
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x12
	bl	__MapActor_Emote
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r6, #0x80
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	lsl	r6, #8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, r5
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xac
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xbc
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm953_938
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm953_938:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm953_94c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm953_94c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm953_960
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm953_960:
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
	mov	r0, #1
	mov	r1, #0xf6
	mov	r2, #0xc8
	bl	__MapActor_TravelToAnim
	mov	r1, #0x83
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__MapActor_TravelToAnim
	mov	r1, #0x8b
	mov	r2, #0xc8
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #0x11
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm953_aec
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r5, =ActorCmd_ARRAY_953__0200ad3c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200ade4
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	b	.Lm953_c90

	.pool_aligned

.Lm953_aec:
	ldr	r7, =iwram_3001ebc
	mov	r3, #0xec
	ldr	r2, [r7]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	mov	r1, #0x81
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__MapActor_Emote
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x12
	bl	__MapActor_Emote
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_953_2009c5c
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm953_ca2
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r5, =ActorCmd_ARRAY_953__0200ad3c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200ade4
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, [r7]
	mov	r2, #0xe4
.Lm953_c90:
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	b	.Lm953_d98
.Lm953_ca2:
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	ldr	r5, =gScript_884__0200ad74
	mov	r0, #2
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_RunScript
	mov	r1, #0x83
	mov	r2, #0xbc
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200ade4
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, [r7]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
.Lm953_d98:
	mov	r0, #2
	bl	__Func_8091e9c
	ldr	r0, =0x93f
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm953_da8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008710

