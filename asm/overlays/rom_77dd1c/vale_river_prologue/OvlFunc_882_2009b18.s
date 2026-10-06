	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2009b18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x838
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_1b32
	b	.Lm882_207e
.Lm882_1b32:
	bl	__CutsceneStart
	ldr	r0, =.Lm882_54b0
	bl	__LoadFieldActors
	bl	OvlFunc_882_200c550
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_1b92
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.Lm882_1b92:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200ca00
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ca3c
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x20
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x21
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r1, #8
	mov	r0, #0x1d
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	mov	r1, #2
	str	r3, [r0, #0x18]
	mov	r0, #0x20
	bl	__Func_8092b08
	mov	r0, #0x21
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #0x1e
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_8092b08
	ldr	r0, =0xe7f
	bl	__MessageID
	mov	r0, #0x1c
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x14b0000
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r5, #0
.Lm882_1cc2:
	mov	r0, #0x20
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c2bc
	mov	r0, #0x21
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c2bc
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c2bc
	mov	r0, #0x1d
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c2bc
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm882_1cc2
	ldr	r5, =.Lm882_57fc
	ldr	r2, =.Lm882_57f8
	ldr	r7, =OvlFunc_882_200c56c
	mov	r6, #0
	mov	r1, #0xc8
	str	r6, [r2]
	lsl	r1, #4
	str	r6, [r5]
	mov	r0, r7
	mov	r9, r2
	bl	__StartTask
	ldr	r3, =OvlFunc_882_200c5a8
	mov	r1, #0xc8
	mov	r11, r3
	lsl	r1, #4
	mov	r0, r11
	bl	__StartTask
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #1
	str	r2, [r5]
	mov	r0, #0x1e
	mov	r10, r2
	bl	__CutsceneWait
	mov	r1, #0xe4
	mov	r2, #0x91
	lsl	r1, #15
	lsl	r2, #17
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x13
	bl	__MapActor_SetSpeed
	mov	r0, #0x91
	bl	__PlaySound
	ldr	r2, =0x14d
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__MapActor_TravelToWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x13
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	str	r6, [r5]
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	lsl	r2, #1
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__MapActor_TravelToWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r3, #2
	str	r3, [r5]
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r8, r3
	bl	__MapActor_SetSpeed
	ldr	r2, =0x14d
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__MapActor_TravelToWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x13
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	str	r6, [r5]
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	lsl	r2, #1
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__MapActor_TravelToWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r2, r8
	str	r2, [r5]
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x14d
	mov	r0, #0x13
	mov	r1, #0x72
	bl	__MapActor_TravelToWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r3, r10
	str	r3, [r5]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x20
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x20
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1f
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x21
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x21
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #0x1c
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r0, #0x1e
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x1e
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, r9
	mov	r2, r10
	str	r2, [r3]
	mov	r1, #1
	mov	r0, #0x1d
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x1d
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x1d
	ldr	r1, =0x105
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1d
	b	.Lm882_1f58

	.pool_aligned

.Lm882_1f58:
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x1d
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #0x1d
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #9
	mov	r0, #0x1d
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x1d
	bl	__ActorMessage_Wait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0x8d
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__MapActor_PlayPendingSound
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__MapActor_Surprise
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r7
	bl	__StopTask
	mov	r0, r11
	bl	__StopTask
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_882_200c560
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_2040
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.Lm882_2040:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x1f
	bl	__DeleteFieldActor
	mov	r0, #0x1c
	bl	__DeleteFieldActor
	mov	r0, #0x1e
	bl	__DeleteFieldActor
	mov	r0, #0x1d
	bl	__DeleteFieldActor
	mov	r0, #0x20
	bl	__DeleteFieldActor
	mov	r0, #0x21
	bl	__DeleteFieldActor
	ldr	r0, =0x838
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm882_207e:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009b18

