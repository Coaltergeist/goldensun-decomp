	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2009b5c
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r2, =0x9180000
	ldr	r1, =0x13e80000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	ldr	r1, =0x13c8
	ldr	r2, =0x918
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x93e
	bl	__SetFlag
	ldr	r0, =0x927
	bl	__ClearFlag
	mov	r0, #0x6b
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009b5c

