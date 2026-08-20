	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b2f0
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0xca
	lsl	r2, #18
	ldr	r1, =0x13080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x13333
	mov	r1, #1
	bl	__Func_80936a0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #8
	bl	__SetCameraTarget
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #0xb2
	mov	r0, #8
	ldr	r1, =0x12d8
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r2, #0x9a
	mov	r0, #8
	ldr	r1, =0x12a8
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r0, #8
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r2, #0xec
	mov	r0, #8
	ldr	r1, =0x12a8
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r0, #8
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	mov	r2, #0xe4
	mov	r0, #8
	ldr	r1, =0x1298
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r0, #8
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xdc
	lsl	r2, #1
	mov	r0, #8
	ldr	r1, =0x1298
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x6e
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b2f0

