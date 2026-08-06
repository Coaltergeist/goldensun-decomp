	.include "macros.inc"

.thumb_func_start Gondowan_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lm958_d46
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_d42
	ldr	r0, =.Lm958_19d4
	b	.Lm958_d5c
.Lm958_d42:
	ldr	r0, =.Lm958_1974
	b	.Lm958_d5c
.Lm958_d46:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lm958_d50
	ldr	r0, =gScript_970__02009a4c
	b	.Lm958_d5c
.Lm958_d50:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lm958_d5a
	ldr	r0, =.Lm958_1aac
	b	.Lm958_d5c
.Lm958_d5a:
	ldr	r0, =.Lm958_195c
.Lm958_d5c:
	pop	{r1}
	bx	r1
.func_end Gondowan_GetActors

.thumb_func_start Gondowan_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lm958_dae
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_daa
	ldr	r0, =.Lm958_1bcc
	b	.Lm958_dc4
.Lm958_daa:
	ldr	r0, =.Lm958_1b48
	b	.Lm958_dc4
.Lm958_dae:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lm958_db8
	ldr	r0, =.Lm958_1c80
	b	.Lm958_dc4
.Lm958_db8:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lm958_dc2
	ldr	r0, =gScript_885__02009ce0
	b	.Lm958_dc4
.Lm958_dc2:
	ldr	r0, =.Lm958_1b3c
.Lm958_dc4:
	pop	{r1}
	bx	r1
.func_end Gondowan_GetEvents

.thumb_func_start OvlFunc_958_2008df0
	push	{lr}
	ldr	r0, =0x98a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_dfe
	b	.Lm958_f2c
.Lm958_dfe:
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm958_e0c
	b	.Lm958_f2c
.Lm958_e0c:
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm958_e32
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xb
	bl	__MapActor_SetPos
.Lm958_e32:
	mov	r1, #8
	neg	r1, r1
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__MapActor_TravelBy
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	ldr	r0, =0x23da
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xb
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm958_eba
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0xe8
	mov	r1, #0x98
	mov	r0, #0xb
	bl	__MapActor_TravelToAnim
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__ClearFlag
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r3, =0x88
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	b	.Lm958_f28
.Lm958_eba:
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm958_ef2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.Lm958_ef2:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
.Lm958_f28:
	bl	__CutsceneEnd
.Lm958_f2c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008df0

.thumb_func_start OvlFunc_958_2008f44
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_Face
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	ldr	r0, =0x23d9
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm958_fa4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.Lm958_fa4:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008f44

.thumb_func_start OvlFunc_958_2008fd0
	push	{r5, lr}
	ldr	r5, =0x23cc
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm958_1016
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm958_100c
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm958_100c
	mov	r0, r5
	add	r0, #8
	bl	__MessageID
.Lm958_100c:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm958_102e
.Lm958_1016:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.Lm958_102e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008fd0

