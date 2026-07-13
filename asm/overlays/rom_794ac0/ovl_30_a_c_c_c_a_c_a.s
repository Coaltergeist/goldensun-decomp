	.include "macros.inc"

	.section .text.after_99a4, "ax", %progbits

.thumb_func_start OvlFunc_899_20099e4
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	ldr	r0, =0x854
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1a22
	bl	__CutsceneStart
	ldr	r0, =0x12c3
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L1a22:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r0, #0xe
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20099e4

.thumb_func_start OvlFunc_899_2009a4c
	push	{r5, r6, lr}
	mov	r0, #0x18
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
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
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xe8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xae
	mov	r1, #0xc8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x18
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1296
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x19
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x18
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0xe0
	mov	r2, #0xe0
	lsl	r2, #9
	mov	r0, #0x19
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_899__0200d830
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_899__0200d560
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	bl	__MapActor_WaitScript
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #0x2d
	mov	r0, #0xe
	bl	__Func_8010704
	ldr	r0, =0x852
	bl	__SetFlag
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__StartTask
	add	r5, #0x64
	mov	r3, #1
	strh	r3, [r5]
	add	r6, #0x64
	mov	r3, #3
	strh	r3, [r6]
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009a4c

.thumb_func_start OvlFunc_899_2009ba0
	push	{r5, r6, lr}
	mov	r0, #0x18
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	ldr	r0, =OvlFunc_899_200aba0
	bl	__StopTask
	mov	r0, #0xc0
	lsl	r0, #2
	add	r5, #0x64
	bl	__ClearFlag
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #3
	bgt	.L1bda
	ldr	r1, =gScript_899__0200d678
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	b	.L1be2
.L1bda:
	ldr	r1, =gScript_899__0200d650
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
.L1be2:
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.L1bf8
	ldr	r1, =gScript_899__0200d768
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	b	.L1c00
.L1bf8:
	ldr	r1, =gScript_899__0200d650
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
.L1c00:
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
	mov	r2, #0xb6
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xf8
	mov	r2, #0xb6
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xf8
	mov	r2, #0xb6
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xba
	mov	r1, #0xe8
	lsl	r2, #2
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r5, =0x1299
	mov	r0, r5
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0xa
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L1cf2
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1cf2:
	mov	r1, #0x1e
	mov	r0, #1
	bl	OvlFunc_899_200c5f4
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x32
	bl	OvlFunc_899_200c60c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #0x1e
	mov	r0, #2
	bl	OvlFunc_899_200c5f4
	ldr	r0, =0x129f
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x32
	bl	OvlFunc_899_200c63c
	mov	r2, #0xb6
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xb6
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xd0
	mov	r2, #0xae
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x32
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009ba0
