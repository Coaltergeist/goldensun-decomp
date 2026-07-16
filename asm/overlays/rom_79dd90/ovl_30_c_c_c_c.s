	.include "macros.inc"

.thumb_func_start OvlFunc_910_20081e4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x84a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L25c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L24c
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.L23c
	ldr	r0, =0x1414
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xc
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x201
	bl	__SetFlag
.L23c:
	ldr	r0, =0x1416
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.L41c
.L24c:
	ldr	r0, =0x1413
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.L3fa
.L25c:
	ldr	r0, =0x140d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L278
	b	.L408
.L278:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc
	mov	r2, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x10dffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.L2d2
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xad
	mov	r2, #0x89
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa4
	mov	r2, #0x8d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L2d2:
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xf0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xc
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xad
	strb	r3, [r0]
	lsl	r1, #1
	ldr	r2, =0x107
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x9999
	mov	r0, #0xb
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	ldr	r2, =0x107
	bl	__Func_80921c4
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xfc
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	OvlFunc_910_20088e8
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xf6
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	ldr	r0, =0x84a
	bl	__SetFlag
.L3fa:
	mov	r1, #0x80
	ldr	r2, =gScript_910__02008bf4
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.L41c
.L408:
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
.L41c:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_20081e4

.section .text.after_845c, "ax", %progbits

.section .text.after_84bc, "ax", %progbits

	.section .text.after_850c, "ax", %progbits

.thumb_func_start OvlFunc_910_20085dc
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #0xa0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xa0
	mov	r2, #0xba
	lsl	r2, #17
	mov	r0, #0
	lsl	r1, #17
	bl	__MapActor_SetPos
	bl	__MapTransitionIn
	ldr	r0, =0x3333
	ldr	r1, =0x666
	bl	__Func_80933d4
	mov	r0, #0xa0
	mov	r1, #1
	mov	r2, #0x91
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xa0
	mov	r2, #0x9b
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__MapActor_Emote
	ldr	r0, =_MSG_1720
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.L73a
.L70e:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xc
	bl	__MapActor_Emote
	ldr	r0, =0x1724
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092c40
.L73a:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L70e
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	ldr	r0, =0x1726
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x9d
	mov	r2, #0x8c
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x84a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L81e
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xc
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xad
	strb	r3, [r0]
	ldr	r2, =0x107
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
.L81e:
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r2, #0x83
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xa4
	mov	r2, #0x8b
	lsl	r2, #1
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	bl	OvlFunc_910_20088e8
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf2
	bl	__Func_809218c
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xf2
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_20085dc
