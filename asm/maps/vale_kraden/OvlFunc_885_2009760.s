	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_885_2009760
	push	{r5, lr}
	ldr	r0, =0x839
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_176e
	b	.Lm885_196c
.Lm885_176e:
	ldr	r0, =0x82f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_1798
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	ldr	r0, =0xe8b
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm885_196c
.Lm885_1798:
	bl	__CutsceneStart
	mov	r0, #0xb
	bl	__MapActor_SetIdle
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	ldr	r5, =0xe85
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r0, #0xc4
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x11b0000
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #0x5e
	ldr	r2, =0x125
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm885_1802
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm885_1802:
	mov	r0, #1
	mov	r1, #0x6e
	ldr	r2, =0x117
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm885_185e
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x82f
	bl	__SetFlag
	b	.Lm885_1938
.Lm885_185e:
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0xb
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0xb
	mov	r1, #6
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r5, =gScript_885__02009ce0
	mov	r0, #0
	ldr	r1, =0x1000b
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r2, r5
	mov	r0, #1
	ldr	r1, =0x1000b
	bl	__Func_8092a1c
	ldr	r1, =ActorCmd_ARRAY_885__02009bdc
	mov	r0, #0xb
	bl	__MapActor_RunScript
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__MapActor_Emote
	ldr	r0, =0x839
	bl	__SetFlag
.Lm885_1938:
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm885_1958
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm885_1958:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
.Lm885_196c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_2009760

