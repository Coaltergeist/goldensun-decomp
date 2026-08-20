	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2008c9c
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x18
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x1b
	mov	r2, #2
	mov	r0, #0x18
	bl	__Func_8010704
	mov	r0, #0xb9
	bl	__PlaySound
	mov	r0, #0xa
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xc8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelTo
	mov	r1, #0xcc
	mov	r2, #0xd4
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	bl	OvlFunc_932_200840c
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008c9c

