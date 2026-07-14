	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20086ec
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0x63
	bne	.L716
	mov	r0, #0xb0
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x161
	bl	__SetFlag
	ldr	r0, =0x163
	bl	__SetFlag
	ldrh	r2, [r5]
.L716:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, #0x5a
	bne	.L72e
	mov	r0, #0
	bl	OvlFunc_881_200b9fc
	ldr	r0, =0x3a
	mov	r1, #1
	bl	__SetDestMap
	b	.La2c
.L72e:
	cmp	r3, #0x5b
	bne	.L742
	mov	r0, #1
	bl	OvlFunc_881_200b9fc
	ldr	r0, =0xbb
	mov	r1, #0x5d
	bl	__SetDestMap
	b	.La2c
.L742:
	cmp	r3, #0x4e
	bne	.L758
	bl	__CutsceneStart
	mov	r0, #0xf2
	bl	__Func_8078a08
	mov	r0, #0x70
	bl	__Func_8091e9c
	b	.La2c
.L758:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x80
	lsl	r3, #3
	str	r3, [r2]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #9
	lsl	r0, #12
	bl	__Func_80933d4
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_881_2008598
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x90a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L7b4
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r1, #1
	mov	r2, #0xb0
	mov	r3, #0x38
	bl	__Func_8010d48
.L7b4:
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	r3, #1
	cmp	r3, #0x4f
	bls	.L7c0
	b	.La18
.L7c0:
	ldr	r2, =.L7c8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L7c8:
	.word	.L908
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.L922
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.L980
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.La18
	.word	.L99a
	.word	.L9aa
	.word	.L9b0
	.word	.L9b6
	.word	.L9bc
	.word	.L9c2
	.word	.L9c8
	.word	.L9ce
	.word	.L9d4
	.word	.L9da
	.word	.L9e0
	.word	.La0c
	.word	.L9e0
	.word	.L9e0
	.word	.La18
	.word	.La18
	.word	.La12
.L908:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L914
	b	.La2c
.L914:
	ldr	r0, =0x815
	bl	__SetFlag
	ldr	r0, =0x85c
	bl	__SetFlag
	b	.La2c
.L922:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L966
	ldr	r0, =0x85d
	bl	__GetFlag
	cmp	r0, #0
	bne	.La2c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.La2c
	ldr	r5, =.L679c
	mov	r3, #0x37
	str	r3, [r5]
	mov	r0, #0x37
	ldr	r1, =0x17940000
	ldr	r2, =0xd480000
	bl	__MapActor_SetPos
	ldr	r0, [r5]
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r0, [r5]
	bl	OvlFunc_881_200a768
	b	.La2c
.L966:
	ldr	r0, =0x85d
	bl	__GetFlag
	cmp	r0, #0
	bne	.La2c
	ldr	r0, =0x9b8
	bl	__GetFlag
	cmp	r0, #0
	bne	.La2c
	bl	OvlFunc_881_200a4a8
	b	.La2c
.L980:
	ldr	r0, =0x94f
	bl	__GetFlag
	cmp	r0, #0
	bne	.La2c
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.La2c
	bl	OvlFunc_881_2008a8c
	b	.La2c
.L99a:
	ldr	r0, =0x85a
	bl	__GetFlag
	cmp	r0, #0
	bne	.La2c
	bl	OvlFunc_881_2008c28
	b	.La2c
.L9aa:
	bl	OvlFunc_881_20097fc
	b	.La2c
.L9b0:
	bl	OvlFunc_881_2009888
	b	.La2c
.L9b6:
	bl	OvlFunc_881_2009938
	b	.La2c
.L9bc:
	bl	OvlFunc_881_20099e8
	b	.La2c
.L9c2:
	bl	OvlFunc_881_2009a98
	b	.La2c
.L9c8:
	bl	OvlFunc_881_2009b5c
	b	.La2c
.L9ce:
	bl	OvlFunc_881_200a274
	b	.La2c
.L9d4:
	bl	OvlFunc_881_200b57c
	b	.La2c
.L9da:
	bl	OvlFunc_881_200b130
	b	.La2c
.L9e0:
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0xbe
	lsl	r0, #2
	bl	__GetFlagByte
	cmp	r0, #0
	beq	.La2c
	ldr	r3, =gState
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_881_200b678
	lsl	r1, #4
	bl	__StartTask
	b	.La2c
.La0c:
	bl	OvlFunc_881_200b2f0
	b	.La2c
.La12:
	bl	OvlFunc_881_200acb4
	b	.La2c
.La18:
	mov	r0, #0x35
	bl	__MapActor_GetActor
	mov	r5, #0xa0
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0x35
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
.La2c:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_20086ec

.thumb_func_start OvlFunc_881_2008a8c
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_808c44c
	ldr	r0, =0x94f
	bl	__SetFlag
	mov	r1, #0xb7
	mov	r0, #0xb
	lsl	r1, #21
	ldr	r2, =0x49c0000
	bl	__MapActor_SetPos
	mov	r1, #0x18
	mov	r2, #8
	mov	r0, #0xb
	bl	__Func_809228c
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb7
	mov	r0, #0xc
	lsl	r1, #21
	ldr	r2, =0x49c0000
	bl	__MapActor_SetPos
	mov	r1, #0xc
	mov	r2, #0x18
	mov	r0, #0xc
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0x97
	ldr	r1, =0x16f80000
	lsl	r2, #19
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb48
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__MapActor_TravelTo
.Lb48:
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb7e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.Lb7e:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lbb4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0
	bl	__MapActor_TravelTo
.Lbb4:
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x38
	mov	r2, #8
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0x28
	mov	r2, #0x28
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #8
	mov	r2, #0x58
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	bl	__MapTransitionOut
	mov	r0, #0x6c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008a8c

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
	bl	__Func_80921c4
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
	beq	.Ld36
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Ld36:
	mov	r2, #0xc8
	mov	r0, #1
	ldr	r1, =0x1704
	lsl	r2, #3
	bl	__Func_80921c4
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
	bl	__Func_8093040
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
	bl	__Func_80921c4
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x15f8
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xdf
	lsl	r2, #3
	ldr	r1, =0x15f8
	mov	r0, #9
	bl	__Func_80921c4
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
	bl	__Func_8093040
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
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
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
	bl	__Func_8093040
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
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
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
	b	.L10c8

	.pool_aligned

.L10c8:
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
.L117a:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L117a
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
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x2008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
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
	bl	__Func_8093040
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
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x15f8
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xd9
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0xdb
	mov	r0, #9
	ldr	r1, =0x1608
	lsl	r2, #3
	bl	__Func_80921c4
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
	beq	.L1490
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L1490:
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
	bl	__Func_80921c4
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x85a
	bl	__SetFlag
	mov	r0, #3
	bl	__Func_8091e9c
	b	.L1550

	.pool_aligned

.L1550:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008c28

.thumb_func_start OvlFunc_881_200955c
	push	{lr}
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fc0000
	mov	r3, #1
	ldr	r0, =0x16040000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f40000
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fc0000
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f40000
	mov	r3, #1
	ldr	r0, =0x16040000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x16080000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fa0000
	mov	r3, #1
	ldr	r0, =0x16060000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f60000
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fa0000
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f60000
	mov	r3, #1
	ldr	r0, =0x16060000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xdf
	ldr	r0, =0x16080000
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200955c

.thumb_func_start OvlFunc_881_2009680
	push	{lr}
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6cc0000
	mov	r3, #1
	ldr	r0, =0x15e40000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c40000
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6cc0000
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c40000
	mov	r3, #1
	ldr	r0, =0x15e40000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15e80000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6ca0000
	mov	r3, #1
	ldr	r0, =0x15e60000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c60000
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6ca0000
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c60000
	mov	r3, #1
	ldr	r0, =0x15e60000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xd9
	ldr	r0, =0x15e80000
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009680

	.section .text.after_97a4, "ax", %progbits





	.section .text.after_99e8, "ax", %progbits
.thumb_func_start OvlFunc_881_2009a98
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
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
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0xc8
	lsl	r2, #16
	ldr	r1, =0x1f080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	bl	OvlFunc_881_200b41c
	cmp	r0, #0xb
	bne	.L1b10
	ldr	r1, =gScript_881__0200d1b8
	mov	r0, #8
	bl	__MapActor_SetBehavior
	b	.L1b18
.L1b10:
	ldr	r1, =gScript_881__0200d158
	mov	r0, #8
	bl	__MapActor_SetBehavior
.L1b18:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L1b18
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x927
	bl	__SetFlag
	mov	r0, #0x6a
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009a98

.thumb_func_start OvlFunc_881_2009b5c
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
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
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r2, =0x9180000
	ldr	r1, =0x13e80000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	ldr	r1, =0x13c8
	ldr	r2, =0x918
	mov	r0, #8
	bl	__Func_80921c4
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x93e
	bl	__SetFlag
	ldr	r0, =0x927
	bl	__ClearFlag
	mov	r0, #0x6b
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009b5c

.thumb_func_start OvlFunc_881_2009c08
	push	{lr}
	bl	__Func_808c4c0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc66
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__ClearFlag
	bl	__Func_80aa56c
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	ldr	r0, =0xc67
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__SetFlag
	bl	__Func_80aa56c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #6
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009c08

.thumb_func_start OvlFunc_881_2009ca4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0xea300000
	ldr	r3, [r0, #8]
	add	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	ldr	r2, =0x15d00000
	asr	r3, #1
	mov	r11, r2
	add	r3, r11
	mov	r9, r3
	ldr	r1, =0xfad00000
	ldr	r3, [r0, #0x10]
	add	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	mov	r7, #0xa6
	asr	r3, #1
	lsl	r7, #19
	mov	r0, #0xb7
	add	r3, r7
	lsl	r0, #1
	mov	r5, #0
	mov	r10, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1cf8
	b	.L2080
.L1cf8:
	mov	r0, #1
	bl	__Func_807808c
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1d1e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.L1d1e:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_807a458
	bl	__Func_808c44c
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x66
	strh	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x10
	bl	__WaitFrames
	ldr	r0, =0xc4f
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_808c4c0
	ldr	r0, =0x13333
	mov	r1, #6
	bl	__Func_80936a0
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r2, #0x55
	add	r2, r6
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x48]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x14]
	mov	r3, r7
	mov	r8, r2
	mov	r0, r6
	mov	r1, r11
	mov	r2, #0
	bl	__Actor_TravelTo
	mov	r7, #0x80
	lsl	r7, #4
	mov	r5, #0xf
.L1db8:
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.L1db8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x10
	bl	__WaitFrames
	mov	r3, #0
	str	r3, [r6, #0x6c]
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetColorswap
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x48]
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x83
	bl	__PlaySound
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_8096fb0
	ldr	r7, =iwram_3001e40
	mov	r5, #0x3b
.L1e16:
	ldr	r3, [r7]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1e48
	mov	r0, r6
	mov	r1, #7
	bl	__Actor_SetColorswap
	b	.L1e50

	.pool_aligned

.L1e48:
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetColorswap
.L1e50:
	ldr	r3, [r7]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L1e60
	mov	r0, r6
	bl	OvlFunc_881_200c058
.L1e60:
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.L1e16
	bl	__Func_8097194
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetColorswap
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r3, r9
	asr	r1, r3, #16
	mov	r3, r10
	asr	r2, r3, #16
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x96
	lsl	r0, #1
	mov	r1, #4
	bl	__Func_8019908
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r5, #0
	mov	r1, r8
	mov	r2, #0x80
	strb	r5, [r1]
	mov	r0, r6
	mov	r1, r9
	lsl	r2, #13
	mov	r3, r10
	bl	__Actor_TravelTo
	ldr	r7, .L1f6c	@ 0x1000
	mov	r5, #0xf
.L1f38:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.L1f38
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r2, #0
	mov	r3, #2
	mov	r1, r8
	strb	r3, [r1]
	ldr	r7, .L1f6c	@ 0x1000
	str	r2, [r6, #0x28]
	str	r2, [r6, #0x14]
	b	.L1f74

	.align	2, 0
.L1f6c:
	.word	0x1000
	.pool

.L1f74:
	mov	r5, #7
.L1f76:
	ldrh	r3, [r6, #6]
	add	r3, r7
	strh	r3, [r6, #6]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.L1f76
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	mov	r5, #0
.L1fd2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L201a
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	cmp	r5, #6
	bne	.L2006
	ldr	r0, =0xc62
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L2044
.L2006:
	ldr	r0, =0xc5c
	add	r0, r5, r0
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	add	r5, #1
	b	.L1fd2
.L201a:
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #4
	mov	r0, #8
	mov	r2, #0x14
	bl	__MapActor_Jump
	ldr	r0, =0xc63
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L2044:
	mov	r0, #0x96
	mov	r1, #4
	lsl	r0, #1
	bl	__Func_8019908
	mov	r0, #0x51
	bl	__PlaySound
	ldr	r5, =0xc64
	mov	r1, #3
	mov	r0, r5
	add	r5, #1
	bl	__Func_801776c
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #9
	bl	__PlaySound
	b	.L21a6
.L2080:
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2098
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.L2098:
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r1, r9
	mov	r2, #0
	str	r3, [r6, #0x28]
	mov	r0, r6
	mov	r3, r10
	bl	__Actor_TravelTo
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #8
	bl	__Func_809280c
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =0xc68
	bl	__MessageID
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x6f
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0
	bl	__Func_802899c
	ldr	r0, =0x16f
	bl	__SetFlag
	ldr	r0, =0x171
	bl	__ClearFlag
	bl	__Func_80aa56c
	ldr	r0, =0xc6a
	bl	__MessageID
	mov	r3, r7
	mov	r2, #0
	mov	r1, r11
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L21b0
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0xc6d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	beq	.L21b0
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, r10
	mov	r2, r9
	asr	r1, r2, #16
	mov	r0, #8
	asr	r2, r3, #16
	bl	__Func_80921c4
.L21a6:
	bl	OvlFunc_881_2009c08
	bl	__Func_808c4c0
	b	.L223c
.L21b0:
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =0xc6f
	bl	__MessageID
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	ldr	r0, =0x16f
	bl	__SetFlag
	ldr	r0, =0x171
	bl	__SetFlag
	bl	__Func_80aa56c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_808c4c0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80955b0
	mov	r0, #0x2a
	bl	__PlaySound
	bl	__CutsceneEnd
	mov	r0, #0xb7
	lsl	r0, #1
	bl	__ClearFlag
	ldr	r0, =0x16f
	bl	__ClearFlag
	ldr	r0, =0x171
	bl	__ClearFlag
.L223c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009ca4

.thumb_func_start OvlFunc_881_200a274
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
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
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x15680000
	ldr	r2, =0x8380000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r2, =0x6666
	mov	r0, #0xa
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r2, =0x858
	mov	r0, #0xa
	ldr	r1, =0x156d
	bl	__Func_8092158
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15b80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0xa
	ldr	r1, =0x159e
	ldr	r2, =0x858
	bl	__Func_8092158
	mov	r0, #0xa
	ldr	r1, =0x15a8
	ldr	r2, =0x86e
	bl	__Func_8092158
	ldr	r2, =0x878
	mov	r0, #0xa
	ldr	r1, =0x15e8
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x15d80000
	ldr	r2, =0x8780000
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x15c8
	ldr	r2, =0x878
	bl	__Func_80921c4
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x878
	bl	__Func_8092158
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15f8
	ldr	r2, =0x838
	bl	__Func_8092158
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x15bd
	ldr	r2, =0x838
	bl	__Func_8092158
	mov	r0, #0xa
	ldr	r1, =0x15b8
	ldr	r2, =0x853
	bl	__Func_8092158
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x1572
	ldr	r2, =0x858
	bl	__Func_8092158
	mov	r0, #0xa
	ldr	r1, =0x1568
	ldr	r2, =0x838
	bl	__Func_8092158
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_SetPos
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x15d80000
	neg	r1, r1
	ldr	r2, =0x8580000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r1, =0x15d8
	ldr	r2, =0x858
	mov	r0, #0
	bl	__Func_80921c4
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a274

.thumb_func_start OvlFunc_881_200a4a8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	ldr	r6, =.L679c
	mov	r3, #0x37
	str	r3, [r6]
	mov	r0, #0x37
	bl	OvlFunc_881_200a768
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_808c44c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, r0
	cmp	r3, #0
	beq	.L24e0
	ldr	r0, [r6]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #0x10]
	bl	__MapActor_SetPos
.L24e0:
	ldr	r0, [r6]
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd78
	bl	__Func_80921c4
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x263c
	bl	__MessageID
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #0xa
	bl	__Func_80936a0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #9
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0xd680000
	neg	r1, r1
	ldr	r0, =0x17880000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r1, #0x81
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	mov	r5, #0xc0
	ldr	r0, [r6]
	lsl	r5, #6
	orr	r0, r5
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	ldr	r0, [r6]
	ldr	r1, =0x1768
	ldr	r2, =0xd48
	bl	__Func_80921c4
	ldr	r0, [r6]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	bl	__Func_80921c4
	ldr	r0, [r6]
	mov	r1, r5
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_881__0200cf20
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L25de
.L25d8:
	mov	r0, #1
	bl	__WaitFrames
.L25de:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.L25d8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r6, =.L679c
	mov	r1, #0x83
	ldr	r0, [r6]
	mov	r2, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r0, [r6]
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	ldr	r0, [r6]
	mov	r2, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x178c
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r2, #1
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x1794
	ldr	r2, =0xd48
	ldr	r0, [r6]
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r2, r3
	strb	r2, [r0]
	mov	r1, #3
	mov	r0, #0xf2
	mov	r8, r2
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xf2
	bl	__Func_8091a58
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2642
	bl	__MessageID
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #6
	bl	__Func_8092adc
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #0xa
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x9bf
	bl	__SetFlag
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r2, =2
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x4e
	strh	r3, [r2]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a4a8

	.section .text.after_a768, "ax", %progbits
