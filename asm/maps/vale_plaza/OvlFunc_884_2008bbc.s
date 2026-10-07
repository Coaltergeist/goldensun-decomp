	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_2008bbc
	push	{r5, r6, lr}
	ldr	r0, =0x834
	mov	r6, #0
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm884_bcc
	b	.Lm884_1054
.Lm884_bcc:
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_bda
	b	.Lm884_1054
.Lm884_bda:
	bl	__CutsceneStart
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xc5
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0xeb6
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x4013
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xb3
	ldr	r2, =0x315
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm884_c4e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x19
	bl	__MapActor_SetPos
.Lm884_c4e:
	mov	r2, #0xc9
	mov	r0, #0x19
	mov	r1, #0xb3
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #0x28
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0x11
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0xa
	ldr	r0, =0x4011
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4013
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0x11
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	mov	r0, #0x12
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_884__0200aef0
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r1, =gScript_884__0200af50
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_884__0200af78
	mov	r0, #0x19
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0x1a
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1a
	mov	r1, #0xa
	bl	OvlFunc_884_200a2c8
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	ldr	r0, =0x4013
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm884_dec
	mov	r0, #0x13
	mov	r1, #4
	mov	r6, #1
	bl	__MapActor_SetAnim
	b	.Lm884_e04

	.pool_aligned

.Lm884_dec:
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm884_e04:
	ldr	r0, =0x4013
	mov	r1, #0
	bl	__ActorMessage
	cmp	r6, #0
	beq	.Lm884_e20
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm884_e20:
	mov	r5, #0x80
	lsl	r5, #7
	mov	r1, r5
	mov	r2, #0x1e
	mov	r0, #0x16
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x1a
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x1a
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r6, #0xe0
	mov	r1, #0xe0
	lsl	r6, #8
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r2, #0xa
	mov	r0, #0x19
	bl	OvlFunc_884_200a2e0
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xd7
	mov	r1, #1
	ldr	r2, =0x2f60000
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xcd
	mov	r1, #1
	mov	r3, #1
	ldr	r2, =0x30a0000
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	ldr	r1, =gScript_884__0200a874
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x16
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #6
	mov	r0, #0x16
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x13
	mov	r1, #0xa
	bl	OvlFunc_884_200a2c8
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r2, #0x1e
	mov	r0, #0x13
	add	r5, #0x13
	bl	OvlFunc_884_200a2e0
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_884_200a2c8
	mov	r1, r6
	mov	r2, #0x1e
	mov	r0, #0x1a
	mov	r6, #0x80
	bl	OvlFunc_884_200a2e0
	lsl	r6, #8
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x1e
	mov	r0, #0x13
	mov	r1, r6
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_884_200a2c8
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #0x28
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_884_200a2e0
	mov	r2, #0x1e
	mov	r0, #0x1a
	mov	r1, r6
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1a
	mov	r1, #0x1e
	bl	OvlFunc_884_200a2c8
	mov	r1, #0xc0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0x1a
	bl	OvlFunc_884_200a2e0
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x19
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm884_fcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x19
	bl	__MapActor_TravelTo
.Lm884_fcc:
	mov	r0, #0x19
	bl	__MapActor_WaitMovement
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm884_ffc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x1a
	bl	__MapActor_TravelTo
.Lm884_ffc:
	mov	r0, #0x1a
	bl	__MapActor_WaitMovement
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm884_102c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.Lm884_102c:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	ldr	r2, =gScript_884__0200ac00
	mov	r0, #0x13
	lsl	r1, #9
	bl	__Func_8092a1c
	mov	r0, #0x84
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm884_1054:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008bbc

