	.include "macros.inc"

.thumb_func_start OvlFunc_882_2009828
	push	{r5, r6, lr}
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1836
	b	.L196c
.L1836:
	bl	__CutsceneStart
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x16
	bl	__MapActor_Surprise
	ldr	r5, =0xe74
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200c934
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =gScript_882__0200c984
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, #0
	mov	r0, #0x16
	bl	__ActorMessage
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r6, #0x80
	lsl	r6, #9
	mov	r1, #1
	str	r6, [r0, #0x1c]
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8093054
	mov	r0, #0x28
	bl	__CutsceneWait
	add	r5, #5
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x80
	mov	r0, #0x16
	mov	r1, r6
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1942
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.L1942:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80917d0
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	ldr	r0, =0x837
	bl	__SetFlag
	bl	__CutsceneEnd
.L196c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009828

.thumb_func_start OvlFunc_882_200998c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L19a6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.L19a6:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	ldr	r1, =0x119
	ldr	r2, =0x1fb
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0xe7b
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1a2e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.L1a2e:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x205
	bl	__Func_80921c4
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200998c

	.section .text.after_9a64, "ax", %progbits

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
	beq	.L1b32
	b	.L207e
.L1b32:
	bl	__CutsceneStart
	ldr	r0, =.L54b0
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
	beq	.L1b92
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.L1b92:
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
	bl	__Func_8093040
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
.L1cc2:
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
	bls	.L1cc2
	ldr	r5, =.L57fc
	ldr	r2, =.L57f8
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8092158
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
	bl	__Func_8093040
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
	b	.L1f58

	.pool_aligned

.L1f58:
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
	bl	__Func_8093040
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
	bl	__Func_809202c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_809280c
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
	bl	__Func_809280c
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
	beq	.L2040
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.L2040:
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
.L207e:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009b18

.section .text.after_a09c, "ax", %progbits


.section .text.after_a0fc, "ax", %progbits

.thumb_func_start OvlFunc_882_200a180
	push	{r5, r6, lr}
	ldr	r0, =0x83a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L218e
	b	.L287e
.L218e:
	bl	__CutsceneStart
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	ldr	r6, =gScript_882__0200cec8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #16
	ldr	r2, =0x4a50000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe3
	mov	r0, #0x18
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x18
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #0x18
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r1, #0xfa
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4be0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r1, #0xe3
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x4a50000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf3
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x4fd0000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x17
	bl	__Func_8092adc
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	bl	__WaitFrames
	ldr	r0, =0xe8c
	bl	__MessageID
	ldr	r0, =0x201a
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #0x96
	ldr	r2, =0x446
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L22e6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.L22e6:
	mov	r0, #0x16
	mov	r1, #0x84
	ldr	r2, =0x446
	bl	__Func_80921c4
	mov	r1, #0x16
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9a
	mov	r3, #1
	lsl	r2, #19
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x4e50000
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x86
	bl	__PlaySound
	mov	r2, #0
	mov	r0, #0x17
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #6
	mov	r0, #0x17
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r1, #1
	mov	r0, #0x18
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #1
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #2
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9a
	mov	r3, #1
	lsl	r2, #19
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x81
	mov	r0, #0x1a
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #0x1a
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x19
	mov	r1, #0xea
	ldr	r2, =0x4b5
	bl	__MapActor_TravelTo
	mov	r0, #0x1a
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xe3
	ldr	r2, =0x4b1
	mov	r0, #0x1a
	bl	__MapActor_TravelTo
	mov	r0, #0x5a
	bl	__CutsceneWait
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x4e50000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xf3
	ldr	r2, =0x4fd0000
	lsl	r1, #16
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x6a
	bl	__PlaySound
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #0x17
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9a
	mov	r3, #1
	lsl	r2, #19
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x18
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #0x18
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	ldr	r0, =0x800a
	bl	__ActorMessage
	mov	r0, #0x19
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	b	.L25bc

	.pool_aligned

.L25bc:
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x9999
	mov	r0, #0x19
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x1a
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	mov	r1, #0xf7
	ldr	r2, =0x4ba
	bl	__MapActor_TravelTo
	mov	r1, #0xe3
	ldr	r2, =0x4a5
	mov	r0, #0x1a
	bl	__Func_8092158
	mov	r0, #0x19
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc0
	orr	r5, r3
	strb	r5, [r0]
	lsl	r1, #7
	mov	r0, #0x1a
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x18
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x8018
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x800a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0x18
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x800a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x18
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x19
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x1a
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x19
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x18
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0
	mov	r1, #9
	mov	r0, #0xa
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x800a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0x18
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x1a
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x1a
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x1a
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	bl	OvlFunc_882_200a8a4
	ldr	r0, =0x83a
	bl	__SetFlag
	bl	__CutsceneEnd
.L287e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200a180

.thumb_func_start OvlFunc_882_200a8a4
	push	{r5, lr}
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x4ab0000
	bl	__Func_80933f8
	mov	r0, #0x1a
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	mov	r0, #9
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200cab4
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_881__0200ca78
	mov	r0, #9
	bl	__MapActor_RunScript
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r1, #0x26
	mov	r2, #0x48
	ldr	r0, =.L57a0
	bl	__Func_8010560
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x95
	ldr	r2, =0x497
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x19
	mov	r1, #0xfa
	ldr	r2, =0x4be
	bl	__Func_80921c4
	bl	__Func_809202c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #6
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	ldr	r5, =gScript_882__0200cec8
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r0, #0x1a
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r1, #0x26
	mov	r2, #0x48
	ldr	r0, =.L57e2
	bl	__Func_8010560
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r0, #0xe0
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x4c90000
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r2, #0x49
	mov	r1, #0x23
	ldr	r0, =.L578a
	bl	__Func_8010560
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_809202c
	ldr	r1, =gScript_882__0200cb28
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_882__0200cb9c
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r1, #0x23
	mov	r2, #0x49
	ldr	r0, =.L57cc
	bl	__Func_8010560
	mov	r0, #0x1a
	bl	__MapActor_WaitScript
	bl	__Func_809202c
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r5, =0xe9b
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x28
	ldr	r0, =0x201a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x1a
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =gScript_882__0200cc0c
	mov	r0, #9
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200cc5c
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x43e0000
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, #9
	bl	__MapActor_WaitScript
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r2, =0x43e
	mov	r0, #9
	mov	r1, #0x69
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8092c40
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2b9c
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	add	r0, r5, #4
	bl	__MessageID
	b	.L2baa
.L2b9c:
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	add	r0, r5, #5
	bl	__MessageID
.L2baa:
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x1e
	mov	r0, #9
	bl	__MapActor_Emote
	ldr	r5, =0xea1
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2c2a
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	add	r0, r5, #1
	bl	__MessageID
	ldr	r0, =0x8009
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	b	.L2c54
.L2c2a:
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0x5a
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_SetAnim
	add	r0, r5, #2
	bl	__MessageID
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__ActorMessage
.L2c54:
	ldr	r1, =gScript_882__0200cca8
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x5a
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
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
	beq	.L2ca8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.L2ca8:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200a8a4

.thumb_func_start OvlFunc_882_200ad28
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092848
	ldr	r0, =0x30d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2d62
	ldr	r0, =0xea5
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L2d8c
.L2d62:
	ldr	r0, =0xea4
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
.L2d8c:
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #5
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	ldr	r1, =gScript_882__0200cec8
	strh	r0, [r5]
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x30d
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200ad28

.thumb_func_start OvlFunc_882_200adec
	push	{r5, r6, r7, lr}
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2dfc
	b	.L3164
.L2dfc:
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2e08
	b	.L3164
.L2e08:
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1a
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xd9
	ldr	r2, =0x557
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2e62
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.L2e62:
	mov	r0, #0x16
	mov	r1, #0xeb
	ldr	r2, =0x557
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2e8c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x1a
	bl	__MapActor_SetPos
.L2e8c:
	mov	r0, #0x1a
	mov	r1, #0xc7
	ldr	r2, =0x557
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0x1a
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf7
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4ba0000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x23
	ldr	r4, [r0, #0x50]
	ldrb	r2, [r1]
	mov	r6, #0xfe
	mov	r3, r6
	mov	r5, #0xd
	and	r3, r2
	neg	r5, r5
	ldrb	r2, [r4, #9]
	strb	r3, [r1]
	mov	r3, r5
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r4, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	add	r7, #0x23
	ldr	r4, [r0, #0x50]
	ldrb	r3, [r7]
	and	r6, r3
	ldrb	r3, [r4, #9]
	and	r5, r3
	mov	r3, #8
	orr	r5, r3
	strb	r6, [r7]
	strb	r5, [r4, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2f10
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.L2f10:
	mov	r0, #8
	mov	r1, #0xdd
	ldr	r2, =0x569
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_80925cc
	ldr	r0, =0xec6
	bl	__MessageID
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0xca
	mov	r0, #9
	lsl	r1, #15
	ldr	r2, =0x4ad0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x1009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x4ad0000
	bl	__Func_80933f8
	ldr	r2, =0xb333
	mov	r0, #9
	ldr	r1, =0x16666
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200cd1c
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xbb
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	lsl	r2, #19
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xdd
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x5690000
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r0, #0xb6
	mov	r1, #1
	mov	r2, #0xaa
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	mov	r2, #0xad
	mov	r0, #8
	mov	r1, #0xb6
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #9
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0x1a
	mov	r1, #9
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x1a
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x1a
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #8
	mov	r1, #9
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	ldrb	r3, [r7]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r7]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	bl	OvlFunc_882_200b1ac
	ldr	r0, =0x841
	bl	__SetFlag
	bl	__CutsceneEnd
.L3164:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200adec

.thumb_func_start OvlFunc_882_200b1ac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #4
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	ldr	r0, [r7, #0x50]
	mov	r11, r1
	mov	r10, r0
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x58b0000
	bl	__Func_80933f8
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x1a
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x9999
	mov	r0, #0x16
	ldr	r1, =0x13333
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_882__0200cd6c
	mov	r0, #8
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	bl	__Func_8095240
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_8095214
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x80
	bl	__CutsceneWait
	bl	OvlFunc_882_2008134
	mov	r0, #0xae
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x5940000
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #0x68
	bl	__CutsceneWait
	mov	r0, #0x99
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x52d0000
	bl	__Func_80933f8
	mov	r2, #0x9f
	mov	r0, #9
	mov	r1, #0x9e
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_WaitScript
	ldr	r1, =gScript_882__0200ce04
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ce30
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ce5c
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ce88
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x1a
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x1a
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	ldr	r2, .L3394	@ 0
	add	r0, #0x14
	mov	r3, #0
	strh	r0, [r5]
	mov	r0, #0x16
	mov	r9, r3
	mov	r8, r2
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	b	.L33c4

	.align	2, 0
.L3394:
	.word	0
	.pool

.L33c4:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	ldr	r5, =gScript_882__0200ceb4
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
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
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x78
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
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
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
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_8095214
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #12
	bl	__Func_80933d4
	mov	r0, #0xd9
	mov	r1, #1
	ldr	r2, =0x43c0000
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =0xcccc
	mov	r1, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	mov	r1, r11
	ldrb	r2, [r1, #9]
	mov	r1, #0xd
	neg	r1, r1
	mov	r3, r1
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r11
	strb	r3, [r2, #9]
	mov	r3, #0xc8
	lsl	r3, #16
	ldr	r2, =0x3820000
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	mov	r3, r7
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x40]
	add	r3, #0x55
	mov	r2, r8
	str	r3, [sp]
	strb	r2, [r3]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	and	r0, r3
	strb	r0, [r2]
	mov	r0, r10
	ldrb	r3, [r0, #9]
	and	r1, r3
	strb	r1, [r0, #9]
	bl	__Func_8093554
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	bl	__Func_8093554
	str	r5, [r0, #0x3c]
	bl	__Func_8093554
	str	r5, [r0, #0x40]
	bl	__Func_8093554
	mov	r1, r9
	str	r1, [r0, #0x24]
	bl	__Func_8093554
	mov	r2, r9
	str	r2, [r0, #0x28]
	bl	__Func_8093554
	mov	r3, r9
	str	r3, [r0, #0x2c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xf7
	mov	r1, #0x80
	ldr	r2, =0x3950000
	mov	r3, #0
	lsl	r1, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200bce4
	bl	__StartTask
	ldr	r1, =gScript_882__0200cedc
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	mov	r0, #0x80
	lsl	r0, #10
	ldr	r1, =0x7ae
	bl	__Func_80933d4
	mov	r0, #0xaf
	mov	r1, #0xc0
	lsl	r0, #16
	lsl	r1, #15
	ldr	r2, =0x43e0000
	mov	r3, #1
	bl	__Func_80933f8
	mov	r5, r7
	add	r5, #0x66
.L3662:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #8
	bne	.L3662
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	bl	__Func_8012350
	bl	__Func_8093554
	mov	r1, #0x80
	lsl	r1, #24
	str	r1, [r0, #0x38]
	mov	r8, r1
	bl	__Func_8093554
	mov	r2, r8
	str	r2, [r0, #0x3c]
	bl	__Func_8093554
	mov	r3, r8
	str	r3, [r0, #0x40]
	bl	__Func_8093554
	mov	r5, #0
	str	r5, [r0, #0x24]
	bl	__Func_8093554
	str	r5, [r0, #0x28]
	bl	__Func_8093554
	str	r5, [r0, #0x2c]
	ldr	r0, =OvlFunc_882_200bce4
	bl	__StopTask
	mov	r0, #0x13
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x13
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, r11
	mov	r3, #0xa0
	lsl	r3, #9
	add	r2, #0x23
	mov	r0, #2
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	strb	r0, [r2]
	mov	r2, #0x80
	lsl	r2, #10
	mov	r1, r11
	str	r3, [r1, #0x18]
	mov	r0, #1
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x1c]
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	str	r5, [r7, #0x38]
	str	r5, [r7, #0x40]
	mov	r10, r2
	bl	__WaitFrames
	mov	r0, #0x17
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r1, #0xa9
	mov	r2, #0x9e
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #9
	bl	__MapActor_SetAnim
	mov	r1, #0x97
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x50c0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1a
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xaa
	mov	r0, #8
	lsl	r1, #16
	ldr	r2, =0x5210000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xb9
	mov	r0, #0
	lsl	r1, #16
	ldr	r2, =0x5350000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0x11
	bl	__MapActor_SetAnim
	mov	r1, #0xa9
	mov	r2, #0xad
	mov	r0, #0x16
	lsl	r1, #16
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa6
	mov	r1, #0
	ldr	r2, =0x5390000
	lsl	r0, #16
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	ldr	r3, [sp]
	mov	r0, r8
	strb	r5, [r3]
	str	r0, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r0, [r7, #0x40]
	bl	OvlFunc_882_200bc48
	mov	r1, #0xda
	mov	r2, #0x93
	mov	r0, #0x1b
	lsl	r1, #16
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r0, #0xd2
	ldr	r2, =0x4ac0000
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	bl	__Func_80933f8
	b	.L382c

	.pool_aligned

.L382c:
	bl	__Func_800fe9c
	mov	r1, r10
	str	r1, [r6, #0x18]
	str	r1, [r6, #0x1c]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200be18
	bl	__StartTask
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	mov	r0, #0x18
	bl	__MapActor_SetIdle
	mov	r0, #0x19
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x23
	mov	r11, r2
	ldrb	r2, [r1]
	mov	r3, #0xfe
	mov	r0, #0x80
	mov	r10, r3
	lsl	r0, #9
	and	r3, r2
	strb	r3, [r1]
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	mov	r1, r11
	mov	r3, #0xd0
	ldrb	r2, [r1, #9]
	sub	r5, #0xd
	lsl	r3, #8
	strh	r3, [r6, #6]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x23
	mov	r11, r2
	ldrb	r2, [r1]
	mov	r3, r10
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r0, #0xb0
	mov	r3, r11
	ldrb	r2, [r3, #9]
	lsl	r0, #8
	mov	r9, r0
	mov	r3, r5
	and	r3, r2
	mov	r1, r9
	mov	r0, r11
	strb	r3, [r0, #9]
	strh	r1, [r6, #6]
	mov	r0, #0x18
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	mov	r11, r1
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, r10
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	strb	r3, [r1]
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	mov	r0, r11
	ldrb	r2, [r0, #9]
	mov	r3, r9
	strh	r3, [r6, #6]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0, #9]
	mov	r1, #5
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	mov	r11, r1
	bl	OvlFunc_882_200bc48
	mov	r3, #0xc0
	lsl	r3, #14
	mov	r1, #0xd6
	mov	r2, #0x98
	str	r3, [r7, #0xc]
	lsl	r1, #16
	mov	r3, r8
	lsl	r2, #19
	str	r1, [r7, #8]
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	mov	r0, r11
	ldrb	r3, [r0, #9]
	and	r5, r3
	mov	r3, #4
	orr	r5, r3
	strb	r5, [r0, #9]
	mov	r0, #0x1b
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0
	bl	__Func_80118c0
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	mov	r0, #3
	bl	__Func_80118c0
	mov	r0, #4
	bl	__Func_80118c0
	mov	r0, #5
	bl	__Func_80118c0
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0xa0
	bl	__WaitFrames
	ldr	r0, =0x7fff
	mov	r1, #1
	bl	__Func_8091200
	mov	r1, #2
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x64
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_882_200be18
	bl	__StopTask
	ldr	r3, [r6, #0x18]
	mov	r1, r11
	mov	r0, #0xb3
	str	r3, [r1, #0x18]
	lsl	r0, #1
	bl	__ClearFlag
	mov	r0, #0
	bl	__Func_80118a8
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #2
	bl	__Func_80118a8
	mov	r0, #3
	bl	__Func_80118a8
	mov	r0, #4
	bl	__Func_80118a8
	mov	r0, #5
	bl	__Func_80118a8
	bl	OvlFunc_882_200c0f0
	mov	r1, #0xa5
	ldr	r2, =0x4cd0000
	mov	r0, #9
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0xe0
	lsl	r2, #8
	mov	r8, r2
	mov	r7, r0
	mov	r3, r8
	strh	r3, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	ldr	r5, =gScript_882__0200cec8
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	strh	r0, [r3]
	add	r2, #0x66
	mov	r3, #1
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r1, #0xa5
	ldr	r2, =0x4e60000
	mov	r0, #0x1a
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #0x1a
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, r8
	strh	r0, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r0, #0x3c
	add	r3, #0x64
	ldr	r1, .L3abc	@ 2
	strh	r0, [r3]
	add	r3, #2
	strh	r1, [r3]
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0x98
	ldr	r2, =0x5050000
	mov	r0, #0x16
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r2, r8
	mov	r7, r0
	strh	r2, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	b	.L3adc

	.align	2, 0
.L3abc:
	.word	2
	.pool

.L3adc:
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	strh	r0, [r3]
	add	r2, #0x66
	mov	r3, #3
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, #0xb4
	ldr	r2, =0x51f0000
	lsl	r1, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r7, r0
	strh	r3, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	add	r2, #0x66
	strh	r0, [r3]
	mov	r3, #4
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r10
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r10
	and	r1, r3
	strb	r1, [r0]
	mov	r10, r1
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200c5b8
	bl	__StartTask
	mov	r1, #0xb5
	lsl	r1, #16
	ldr	r2, =0x4f90000
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xb5
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	ldr	r2, =0x4f90000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x90
	mov	r0, #0x11
	lsl	r1, #16
	ldr	r2, =0x42e0000
	bl	__MapActor_SetPos
	mov	r1, #0x8a
	ldr	r2, =0x4f60000
	lsl	r1, #17
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__WaitFrames
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	bl	__Func_8091890
	bl	__Func_8095268
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200b1ac

	.section .text.after_bc48, "ax", %progbits

.thumb_func_start OvlFunc_882_200bce4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #0x50]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r1
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L3d78
	cmp	r3, #0x3c
	bne	.L3d22
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	ldrh	r2, [r6]
.L3d22:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #14
	cmp	r3, r1
	bne	.L3d3e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	ldrh	r2, [r6]
.L3d3e:
	mov	r1, #0xf0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	bne	.L3d5a
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	ldrh	r2, [r6]
.L3d5a:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	bne	.L3d74
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	ldrh	r2, [r6]
.L3d74:
	sub	r3, r2, #1
	strh	r3, [r6]
.L3d78:
	ldr	r2, [r7, #8]
	str	r2, [r5, #8]
	ldr	r3, [r7, #0x10]
	str	r2, [r5, #0x38]
	mov	r2, r8
	str	r3, [r5, #0x10]
	add	r2, #0x23
	mov	r3, #0xa
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L3df2
	mov	r3, r7
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r0, r3, #1
	cmp	r0, #8
	bhi	.L3dea
	ldr	r2, =.L3dac
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3dac:
	.word	.L3dd0
	.word	.L3ddc
	.word	.L3ddc
	.word	.L3dd6
	.word	.L3dd0
	.word	.L3ddc
	.word	.L3ddc
	.word	.L3ddc
	.word	.L3ddc
.L3dd0:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xa3d
	b	.L3de0
.L3dd6:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x51e
	b	.L3de0
.L3ddc:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xfffff852
.L3de0:
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
.L3dea:
	ldr	r3, [r5, #0x18]
	mov	r1, r8
	str	r3, [r1, #0x18]
	b	.L3df6
.L3df2:
	mov	r3, r8
	str	r2, [r3, #0x18]
.L3df6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200bce4
