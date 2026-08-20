	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200998c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_19a6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.Lm882_19a6:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	ldr	r1, =0x119
	ldr	r2, =0x1fb
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0xe7b
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x16
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_1a2e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x16
	bl	__MapActor_TravelTo
.Lm882_1a2e:
	mov	r0, #0x16
	bl	__MapActor_WaitMovement
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x205
	bl	__MapActor_TravelToAnimWait
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200998c

