	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2008f90
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xb6
	mov	r2, #0x96
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #0x8d
	mov	r1, #1
	mov	r2, #0xdd
	lsl	r2, #16
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_80933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa4
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionIn
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0x8e
	mov	r2, #0xdd
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm921_1038
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm921_1038:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm921_104c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm921_104c:
	mov	r0, #1
	mov	r1, #0x96
	mov	r2, #0xea
	bl	__MapActor_TravelToAnim
	mov	r2, #0xea
	mov	r0, #2
	mov	r1, #0x86
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r5, =gScript_921__0200a74c
	mov	r0, #0
	mov	r2, r5
	ldr	r1, =0x10003
	bl	__Func_8092a1c
	mov	r2, r5
	mov	r0, #1
	ldr	r1, =0x10003
	bl	__Func_8092a1c
	mov	r2, r5
	mov	r0, #2
	ldr	r1, =0x10003
	bl	__Func_8092a1c
	bl	__Func_8093530
	ldr	r5, =gScript_921__0200a5ec
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	ldr	r0, =0x155c
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, r5
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, r5
	mov	r0, #9
	bl	__MapActor_SetBehavior
	bl	OvlFunc_921_20096c8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.Lm921_31c0
	bl	__Func_8010560
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.Lm921_31d6
	bl	__Func_8010560
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #3
	bl	__MapActor_SetSpeed
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a670
	mov	r0, #3
	bl	__MapActor_SetBehavior
	b	.Lm921_128a

	.pool_aligned

.Lm921_1284:
	mov	r0, #1
	bl	__WaitFrames
.Lm921_128a:
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm921_1284
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xc6
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #3
	bl	__MapActor_WaitScript
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x83
	bl	__PlaySound
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x207e9f
	bl	__Func_8091200
	mov	r0, #0xa
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0xc6
	mov	r1, #0xca
	mov	r0, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #3
	bl	__MapActor_SetSpeed
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a6e0
	mov	r0, #3
	bl	__MapActor_SetBehavior
	b	.Lm921_13e6
.Lm921_13e0:
	mov	r0, #1
	bl	__WaitFrames
.Lm921_13e6:
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm921_13e0
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #2
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0x84
	mov	r0, #0
	mov	r2, #0xce
	bl	__MapActor_TravelTo
	mov	r0, #1
	mov	r1, #0x88
	mov	r2, #0xdd
	bl	__MapActor_TravelTo
	mov	r1, #0x7a
	mov	r2, #0xee
	mov	r0, #2
	bl	__MapActor_TravelTo
	mov	r0, #3
	bl	__MapActor_WaitScript
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_921__0200a760
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	ldr	r0, =0x82b
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008f90

