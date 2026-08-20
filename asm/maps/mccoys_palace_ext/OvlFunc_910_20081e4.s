	.include "macros.inc"

.thumb_func_start OvlFunc_910_20081e4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x84a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_25c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm910_24c
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm910_23c
	ldr	r0, =0x1414
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0xc
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x201
	bl	__SetFlag
.Lm910_23c:
	ldr	r0, =0x1416
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm910_41c
.Lm910_24c:
	ldr	r0, =0x1413
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm910_3fa
.Lm910_25c:
	ldr	r0, =0x140d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm910_278
	b	.Lm910_408
.Lm910_278:
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
	bl	__ActorMessage_Wait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x10dffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.Lm910_2d2
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xad
	mov	r2, #0x89
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa4
	mov	r2, #0x8d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm910_2d2:
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
	bl	__ActorMessage_Wait
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
	bl	__ActorMessage_Wait
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
	bl	__ActorMessage_Wait
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
	bl	__MapActor_TravelToAnimWait
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
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xfc
	bl	__MapActor_TravelToAnimWait
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
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	ldr	r0, =0x84a
	bl	__SetFlag
.Lm910_3fa:
	mov	r1, #0x80
	ldr	r2, =gScript_910__02008bf4
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.Lm910_41c
.Lm910_408:
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
.Lm910_41c:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_20081e4

