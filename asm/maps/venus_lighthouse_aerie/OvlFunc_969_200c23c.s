	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200c23c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x13
	sub	sp, #8
	bl	__PlaySound
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
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
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xa
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r5, =0x1999
	str	r5, [r0, #0x18]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	ldr	r5, =gScript_969__0200e088
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x18
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r0, =0x236
	bl	__SetFlag
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, =0xffa00000
	str	r3, [r0, #0xc]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r3, =0xffc00000
	mov	r1, #7
	str	r3, [r0, #0xc]
	mov	r0, #0x1a
	bl	__Func_8092950
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	ldr	r1, =0xffff0000
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	mov	r10, r1
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	mov	r2, #0
	mov	r9, r2
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	strb	r1, [r3]
	mov	r2, #0x98
	ldr	r3, =0xffe00000
	mov	r6, #0xc0
	lsl	r2, #17
	lsl	r6, #15
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1b
	mov	r8, r2
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x1c]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	mov	r2, r8
	strb	r1, [r3]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1c
	bl	__Func_8092950
	mov	r0, #0x1c
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1c
	bl	__MapActor_GetActor
	mov	r1, r10
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, r8
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r5, #0xc]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r6, [r5, #0x10]
	mov	r0, #0x66
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r1, #0x16
	str	r1, [sp]
	mov	r8, r1
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #5
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	ldr	r5, =gScript_969__0200e0d0
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1c
	bl	__MapActor_SetBehavior
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, =0x51e
	ldr	r5, =gScript_969__0200e0f4
	str	r3, [r0, #0x1c]
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1c
	bl	__MapActor_RunScript
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_969__0200e130
	mov	r0, #0x18
	bl	__MapActor_RunScript
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__StopTask
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xa3
	mov	r2, #0xdc
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r9
	add	r3, #0x62
	strb	r1, [r3]
	b	.Lm969_4784

	.pool_aligned

.Lm969_4784:
	mov	r6, #1
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r5, #0xa0
	lsl	r5, #8
	str	r3, [r2, #0x4c]
	ldr	r3, =0
	strh	r5, [r2, #6]
	mov	r0, #1
	mov	r8, r3
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #3
	b	.Lm969_47d4

	.pool_aligned

.Lm969_47d4:
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #6
	str	r3, [r2, #0x4c]
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #0x17
	str	r3, [r2, #0x4c]
	bl	__MapActor_GetActor
	mov	r2, r8
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	mov	r1, #7
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r3, =.Lm969_6764
	mov	r1, r9
	ldr	r2, =.Lm969_6760
	str	r1, [r3]
	mov	r3, #0xf0
	mov	r1, #0xc8
	str	r3, [r2]
	ldr	r0, =OvlFunc_969_200d6a0
	lsl	r1, #4
	bl	__StartTask
.Lm969_485a:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x237
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm969_485a
	ldr	r0, =0x101
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	bl	__Func_808ba38
	ldr	r0, =2
	mov	r1, #0x5b
	bl	__SetDestMap
	ldr	r2, =0x7fff
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200c23c

