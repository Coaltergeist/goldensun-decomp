	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_3e4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r7, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	bl	__CutsceneStart
	bl	__GetPartySize
	cmp	r0, #1
	bgt	.Lc1_466
	ldr	r0, =0x20e5
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	bne	.Lc1_474
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, r6
	add	r2, #0x40
	mov	r1, r7
	mov	r0, r5
	bl	__MapActor_TravelToAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, r7
	mov	r2, r6
	bl	__MapActor_TravelToAnimWait
	mov	r2, r6
	mov	r0, #0
	add	r2, #0x20
	mov	r1, r7
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xb
	bl	__Func_8091e9c
	b	.Lc1_474
.Lc1_466:
	ldr	r0, =0x20e8
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lc1_474:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_3e4

