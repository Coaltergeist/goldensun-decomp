	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2008488
	push	{r5, r6, lr}
	mov	r0, #3
	bl	__GetFlag
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xd4
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r0, =0x14ed
	mov	r1, #1
	bl	__Func_801776c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm917_4e8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm917_4e8:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm917_4fc
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm917_4fc:
	ldr	r1, =ActorCmd_ARRAY_917__02009ab8
	mov	r0, #1
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_917__02009af4
	mov	r0, #2
	bl	__MapActor_SetBehavior
	cmp	r6, #0
	beq	.Lm917_53a
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm917_532
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm917_532:
	ldr	r1, =gScript_917__02009b30
	mov	r0, #3
	bl	__MapActor_SetBehavior
.Lm917_53a:
	mov	r0, #2
	bl	__MapActor_WaitScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x20
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	ldr	r5, =.Lm917_1dd4
	mov	r3, #0
	mov	r1, #0xc8
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_917_20092b4
	bl	__StartTask
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xfe
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xf6
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x1050000
	ldr	r0, =0x19d0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xf6
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xa3
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xf6
	bl	__PlaySound
	ldr	r3, [r5]
	cmp	r3, #0x18
	beq	.Lm917_614
.Lm917_608:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	cmp	r3, #0x18
	bne	.Lm917_608
.Lm917_614:
	ldr	r0, =OvlFunc_917_20092b4
	bl	__StopTask
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r5, #0
.Lm917_622:
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #6
	bl	__Func_8091254
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #1
	bl	OvlFunc_917_20098b8
	mov	r0, #6
	bl	__Func_8091254
	add	r5, #1
	mov	r0, #6
	bl	__WaitFrames
	cmp	r5, #3
	bls	.Lm917_622
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__WaitFrames
	mov	r0, #0xa4
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #12
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #7
	bl	__PlaySound
	ldr	r0, =0x14ee
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
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
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0xea
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_917_20092f4
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm917_8a4
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm917_926

	.pool_aligned

.Lm917_8a4:
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xec
	ldr	r2, [r5]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #3
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	cmp	r6, #0
	beq	.Lm917_8f8
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm917_906
.Lm917_8f8:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm917_906:
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
.Lm917_926:
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
	mov	r0, #0xa4
	mov	r1, #0x80
	mov	r2, #0xd4
	lsl	r2, #16
	mov	r3, #1
	lsl	r1, #12
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r2, =.Lm917_1dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.Lm917_1dc0
	mov	r3, #0xa4
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_917_20095a0
	mov	r3, #0xcd
	lsl	r3, #16
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, r5
	bl	__StopTask
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x14fb
	bl	__MessageID
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
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
	mov	r0, #0xea
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm917_ac0
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	b	.Lm917_ad8

	.pool_aligned

.Lm917_ac0:
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm917_ad8:
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1501
	bl	__MessageID
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
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
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_917_20092f4
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #5
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #5
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_917_20092f4
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r2, =.Lm917_1dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.Lm917_1dc0
	mov	r3, #0x88
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_917_20095a0
	mov	r3, #0x81
	lsl	r3, #17
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x8002
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x8008
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
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x78
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_917_20092f4
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x4009
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
	mov	r0, #0xa
	mov	r1, #1
	b	.Lm917_eec

	.pool_aligned

.Lm917_eec:
	bl	OvlFunc_917_20092f4
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__ShowActorMessage_NoWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
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
	cmp	r0, #1
	bne	.Lm917_f44
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm917_f44:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x8008
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
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
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r5, =gScript_917__02009b6c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	cmp	r6, #0
	beq	.Lm917_fe8
	mov	r0, #3
	mov	r1, r5
	bl	__MapActor_SetBehavior
.Lm917_fe8:
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_RunScript
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_917_20092f4
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1519
	bl	__MessageID
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xb
	mov	r1, #4
	bl	OvlFunc_917_20092f4
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	ldr	r0, =0x845
	bl	__SetFlag
	mov	r0, #1
	bl	__PlaySound
	mov	r0, #0xb8
	mov	r1, #0xb9
	bl	OvlFunc_917_200972c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2008488

