	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_200995c
	push	{lr}
	mov	r0, #0x11
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm891_19d6
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.Lm891_19d6
	bl	__CutsceneStart
	mov	r0, #0xb9
	bl	__PlaySound
	mov	r0, #0x11
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0x11
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x88
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0
	bl	__MapActor_TravelTo
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0x78
	mov	r0, #0x11
	bl	__MapActor_TravelTo
	mov	r0, #0x11
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
.Lm891_19d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200995c

