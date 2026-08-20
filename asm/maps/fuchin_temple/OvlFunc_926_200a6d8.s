	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_200a6d8
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r5, =OvlFunc_926_200a5b8
	mov	r1, #0xc8
	mov	r0, r5
	lsl	r1, #4
	bl	__StartTask
	ldr	r1, =0x3333
	mov	r0, #0
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x3c
	str	r2, [r3]
	bl	__MapTransitionOut
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #6
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	bl	__StopTask
	bl	__WaitMapTransition
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a6d8

