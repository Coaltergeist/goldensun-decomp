	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200bc88
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_3cc6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm943_3cc6:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_3cda
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm943_3cda:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_3cee
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm943_3cee:
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r2, #0xa0
	mov	r0, #1
	mov	r1, #0xc2
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	mov	r1, #0xc6
	ldr	r2, =0x28e
	bl	__MapActor_TravelToAnim
	mov	r2, #0xa8
	lsl	r2, #2
	mov	r0, #3
	mov	r1, #0xc2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_943_200ba00
	mov	r1, #0
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =0x1f55
	bl	__MessageID
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_943_200ba00
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0x16
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm943_3e1e
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_943_200ba00
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_943_200ba00
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm943_3dfa:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm943_3e1e
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1f53
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm943_3dfa
.Lm943_3e1e:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	ldr	r0, =0x1f5b
	bl	__MessageID
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x15
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0xa2
	ldr	r2, =0x27a
	mov	r0, #0x16
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xa9
	and	r5, r3
	mov	r1, #0xa2
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc0
	orr	r6, r3
	mov	r2, #0
	strb	r6, [r0]
	lsl	r1, #6
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_943_200ba00
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r0, #1
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__MapActor_TravelToAnim
	mov	r0, #2
	mov	r1, #0xb4
	ldr	r2, =0x28e
	bl	__MapActor_TravelToAnim
	mov	r1, #0xb4
	ldr	r2, =0x28e
	mov	r0, #3
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__DeleteFieldActor
	mov	r0, #2
	bl	__DeleteFieldActor
	mov	r0, #3
	bl	__DeleteFieldActor
	ldr	r0, =0x903
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200bc88

