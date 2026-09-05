	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_938_2009494
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x86
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xd8
	mov	r0, #0
	lsl	r1, #18
	ldr	r2, =0x2760000
	bl	__MapActor_SetPos
	ldr	r6, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r2, [r6]
	lsl	r1, #1
	mov	r5, #0x80
	add	r3, r2, r1
	lsl	r5, #1
	str	r5, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionIn
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xec
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
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
	mov	r1, #0xd8
	mov	r2, #0xf9
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm938_155c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm938_155c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm938_1570
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm938_1570:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm938_1584
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm938_1584:
	mov	r1, #0xd6
	mov	r2, #0xf3
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xd4
	mov	r2, #0xfb
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xda
	mov	r2, #0xf3
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xdc
	mov	r2, #0xfb
	lsl	r2, #1
	mov	r0, #3
	lsl	r1, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	OvlFunc_938_2009450
	mov	r1, r5
	mov	r0, #9
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #9
	bl	__Func_8092adc
	ldr	r0, =0x2588
	bl	__MessageID
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, r5
	mov	r0, #8
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #8
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
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
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm938_16f0
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm938_170e
.Lm938_16f0:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r6]
	mov	r1, #0xec
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r5, #0
.Lm938_170e:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	cmp	r5, #0
	beq	.Lm938_172c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm938_172c:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x107
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80925cc
	ldr	r0, =0x2002
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x6002
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x6002
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm938_18c0
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xec
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lm938_18d0

	.pool_aligned

.Lm938_18c0:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
.Lm938_18d0:
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	OvlFunc_938_2009450
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2009
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2002
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =ActorCmd_ARRAY_938__02009b94
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x914
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2009494

