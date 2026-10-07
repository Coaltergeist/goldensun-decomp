	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200cbec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	ldr	r0, =0x282e
	sub	sp, #8
	mov	r8, r1
	bl	__MessageID
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #6
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #6
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #6
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #6
	bl	__ActorMessage_Wait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r1, =gScript_969__0200e324
	mov	r0, #6
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #6
	bl	__MapActor_WaitScript
	mov	r0, #0xa0
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #5
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0x15
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, #0x80
	ldr	r3, =OvlFunc_969_2008400
	mov	r7, r0
	lsl	r5, #8
	str	r3, [r7, #0x6c]
	mov	r2, #0xed
	strh	r5, [r7, #6]
	mov	r0, #0x15
	mov	r1, #0xb8
	bl	__MapActor_TravelToWait
	ldr	r1, =gScript_969__0200e360
	mov	r0, #0x15
	bl	__MapActor_RunScript
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_969_2008894
	mov	r0, #0x48
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, r5
	lsl	r0, #11
	bl	__Func_80933d4
	mov	r0, #0xab
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x3c
	mov	r1, #6
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_969__0200e074
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r1, #6
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0x3c
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r5, #0xc0
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_SetAnim
	lsl	r5, #7
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, r5
	bl	OvlFunc_969_20088a8
	mov	r6, #0x80
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	lsl	r6, #7
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xc2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xce
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #1
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r2, #0
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm969_5046
	b	.Lm969_5010

	.pool_aligned

.Lm969_5010:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #1
	mov	r8, r2
	b	.Lm969_507e
.Lm969_5046:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
.Lm969_507e:
	mov	r1, r8
	cmp	r1, #0
	beq	.Lm969_5094
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
.Lm969_5094:
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x91
	bl	__PlaySound
	mov	r1, #0x12
	mov	r2, #0x17
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r9, r1
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0x53
	mov	r3, #4
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x1c
	mov	r2, #0x4b
	mov	r3, #4
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r2, #0x14
	mov	r3, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r2
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r1, #0x5c
	mov	r2, #0x13
	mov	r3, #0x44
	mov	r0, #0x13
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #0x10]
	ldr	r6, =0xffe00000
	mov	r1, #0
	add	r3, r6
	mov	r10, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r5, =0xfffc0000
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x66
	strh	r1, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r1, =0xffee0000
	ldr	r3, [r7, #0x10]
	add	r3, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, #0x80
	mov	r0, #0xa9
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r0, #3
	mov	r1, #6
	bl	__MapActor_Jump
	ldr	r5, =gScript_969__0200e3c0
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x91
	bl	__PlaySound
	mov	r3, #0xa
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x6a
	mov	r2, #0x12
	mov	r3, #0xe
	bl	__Func_8010704
	mov	r3, r9
	mov	r1, r8
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, r11
	mov	r2, #0x10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #0xb
	mov	r1, #0x56
	mov	r3, #0x44
	mov	r0, #0x5c
	bl	__CopyMapTiles
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r5, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r5, #0x80
	lsl	r5, #13
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r1, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r1
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r2, =0xfff00000
	add	r3, r2
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa1
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	b	.Lm969_5458

	.pool_aligned

.Lm969_5458:
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
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0x78
	mov	r0, #2
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #2
	bl	OvlFunc_969_2008894
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
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_969__0200e39c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x88
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x88
	lsl	r1, #1
	mov	r2, #0xfe
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0x10
	str	r1, [r3]
	bl	__MapTransitionOut
	sub	r5, #0x30
	bl	__WaitMapTransition
	mov	r0, #0x50
	bl	__CutsceneWait
	bl	__Func_800c5b4
	ldr	r3, [r5]
	ldr	r1, =0x12f4
	add	r2, r3, r1
	mov	r1, r10
	strh	r1, [r2]
	ldr	r2, =0x12f6
	add	r3, r2
	strh	r1, [r3]
	mov	r2, #0
	mov	r1, #0
	ldr	r0, =0x284f
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0x50
	bl	__CutsceneWait
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200cbec

