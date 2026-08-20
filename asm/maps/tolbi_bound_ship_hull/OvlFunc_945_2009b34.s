	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009b34
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_1b4e
	b	.Lm945_1eea
.Lm945_1b4e:
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xe8
	lsl	r2, #17
	ldr	r3, =0x10000014
	ldr	r0, =0x5b70000
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =0x1d56
	bl	__MessageID
	ldr	r3, =0x200d
	mov	r8, r3
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0xc
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r1, #0x81
	ldr	r6, =0x800c
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	ldr	r0, =0xa00e
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x28
	ldr	r5, =0xa00e
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r9, r3
	mov	r1, r9
	mov	r0, #0xe
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0x80
	lsl	r3, #8
	mov	r11, r3
	mov	r0, #0xe
	mov	r1, r11
	bl	OvlFunc_945_200c880
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0xe
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xe
	mov	r1, r9
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0xc
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, r9
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	mov	r0, #0xd
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_945__0200e6a8
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x82
	strb	r3, [r0]
	mov	r1, #0xb8
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, r11
	mov	r0, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	ldr	r2, =0xcccc
	mov	r0, #0xc
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	bl	__MapActor_WaitScript
	ldr	r0, =0x922
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm945_1eea:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009b34

