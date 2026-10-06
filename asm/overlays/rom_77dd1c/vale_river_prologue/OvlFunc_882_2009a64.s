	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2009a64
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0
	mov	r6, r1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_1a7e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.Lm882_1a7e:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, r5
	mov	r2, r6
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xe7d
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_1afc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.Lm882_1afc:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009a64

