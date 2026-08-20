	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2008c28
	push	{r5, r6, lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #0xa0
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #4
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_808c44c
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xc5
	mov	r0, #0
	ldr	r1, =0x16fc
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xc5
	lsl	r2, #19
	ldr	r1, =0x16d80000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	ldr	r1, =0x19999
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0x19999
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	ldr	r1, =0x19999
	mov	r0, #0xd
	bl	__MapActor_SetSpeed
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r1, =gScript_881__0200c9e4
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cb50
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cc74
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cd98
	mov	r0, #0xd
	bl	__MapActor_RunScript
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_d36
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm881_d36:
	mov	r2, #0xc8
	mov	r0, #1
	ldr	r1, =0x1704
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xc7
	ldr	r1, =0x16d80000
	lsl	r2, #19
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x1215
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r1, =gScript_881__0200ca78
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cbe4
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cd08
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r1, =gScript_881__0200ce2c
	mov	r0, #0xd
	bl	__MapActor_RunScript
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_808c4c0
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r2, #0xdf
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #19
	ldr	r0, =0x16080000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r2, #0xdb
	ldr	r1, =0x16080000
	lsl	r2, #19
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x15f8
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xdf
	lsl	r2, #3
	ldr	r1, =0x15f8
	mov	r0, #9
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0xdf
	lsl	r2, #19
	ldr	r1, =0x16180000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xdf
	lsl	r2, #3
	ldr	r1, =0x1608
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	bl	__Func_808c4c0
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_80933d4
	bl	OvlFunc_881_200955c
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	b	.Lm881_10c8

	.pool_aligned

.Lm881_10c8:
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xd9
	mov	r3, #1
	ldr	r0, =0x15e80000
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r2, #0xd5
	ldr	r1, =0x15a80000
	lsl	r2, #19
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0x2666
	mov	r0, #0xe
	ldr	r1, =0x4ccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_881__0200cebc
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
	mov	r0, #0xa0
	bl	__CutsceneWait
	ldr	r3, =0x1999
	str	r3, [r6, #0x48]
	str	r3, [r6, #0x44]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r5, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #15
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0xc]
	mov	r3, #0xf0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #2
	mov	r0, r6
	bl	__Actor_SetAnim
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_881_20097a4
	lsl	r1, #4
	bl	__StartTask
.Lm881_117a:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lm881_117a
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #11
	str	r5, [r0, #0x28]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_80933d4
	bl	OvlFunc_881_2009680
	bl	OvlFunc_881_2009680
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xdf
	mov	r3, #1
	lsl	r2, #19
	ldr	r0, =0x16080000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__Func_808c44c
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_881_20097a4
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xdf
	mov	r0, #8
	ldr	r1, =0x1618
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x15f8
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xdb
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r1, =gScript_881__0200cac4
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_881__0200cc30
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cd54
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200ce78
	mov	r0, #0xd
	bl	__MapActor_RunScript
	bl	__Func_808c4c0
	mov	r2, #0xc5
	mov	r0, #0
	ldr	r1, =0x170c0000
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r2, #0xc8
	lsl	r2, #19
	mov	r0, #1
	ldr	r1, =0x17140000
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc9
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x16d80000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r5, =gScript_881__0200caf4
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc1
	mov	r3, #1
	lsl	r2, #19
	ldr	r0, =0x16d80000
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, r5
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xd
	bl	__MapActor_WaitScript
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc9
	mov	r3, #1
	ldr	r0, =0x16f80000
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_1490
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm881_1490:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc9
	mov	r3, #1
	ldr	r0, =0x16d80000
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xc5
	ldr	r1, =0x16d8
	lsl	r2, #3
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x85a
	bl	__SetFlag
	mov	r0, #3
	bl	__Func_8091e9c
	b	.Lm881_1550

	.pool_aligned

.Lm881_1550:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008c28

