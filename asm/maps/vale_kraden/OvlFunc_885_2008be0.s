	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_885_2008be0
	push	{r5, r6, r7, lr}
	ldr	r0, =0x808
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_bee
	b	.Lm885_1280
.Lm885_bee:
	bl	__CutsceneStart
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r0, =0x808
	bl	__SetFlag
	ldr	r7, =0xf85
	mov	r0, r7
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r1, #0xc4
	mov	r2, #0xa4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r5, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	lsl	r5, #16
	lsl	r6, #16
	mov	r0, #5
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_SetPos
	mov	r0, #5
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xbc
	mov	r2, #0xa4
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xcc
	mov	r2, #0xa4
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xd7
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0x1590000
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r0, #0xe
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xe
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xf
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #6
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0xb4
	mov	r0, #0xe
	mov	r1, #0xe8
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc4
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r2, #0xb4
	mov	r0, #0xf
	mov	r1, #0xd8
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xbc
	mov	r2, #0xb4
	mov	r0, #0xf
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1890000
	neg	r1, r1
	ldr	r2, =0x1530000
	bl	__Func_80933f8
	mov	r1, #0xc4
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xbc
	mov	r2, #0xb4
	lsl	r2, #1
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xf
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x100f
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm885_f40
	mov	r0, r7
	add	r0, #0xa
	bl	__MessageID
	b	.Lm885_f48

	.pool_aligned

.Lm885_f40:
	mov	r0, r7
	add	r0, #0xb
	bl	__MessageID
.Lm885_f48:
	mov	r2, #0xa
	ldr	r0, =0x100f
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r5, =0xf91
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0xe
	mov	r1, #0xf
	mov	r2, #0x28
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x100f
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xe
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm885_1002
	add	r0, r5, #5
	bl	__MessageID
	b	.Lm885_1008
.Lm885_1002:
	add	r0, r5, #6
	bl	__MessageID
.Lm885_1008:
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0xe
	mov	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Face
	mov	r0, #0xe
	mov	r1, #5
	mov	r2, #0x1e
	bl	__MapActor_Face
	mov	r2, #0x50
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	ldr	r0, =0xf98
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #6
	bl	__ActorMessage_Wait
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
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x100f
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #0xe
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	and	r5, r3
	strb	r5, [r2]
	mov	r1, #0xc4
	mov	r2, #0xbc
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0xbc
	mov	r2, #0xbc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xf
	bl	__MapActor_TravelToAnimWait
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r5, r3
	strb	r5, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0xf
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm885_121e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm885_121e:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm885_124e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lm885_124e:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r5, =gScript_885__02009ce0
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	bl	__PlayMapMusic
	bl	__CutsceneEnd
.Lm885_1280:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_2008be0

