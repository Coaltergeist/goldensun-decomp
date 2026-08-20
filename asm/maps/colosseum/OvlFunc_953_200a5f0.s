	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_200a5f0
	push	{lr}
	bl	__CutsceneStart
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	bl	__MapTransitionIn
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xc3
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r1, #0xdc
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r1, #0xf5
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelTo
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x90f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_2650
	mov	r0, #0x20
	bl	__Func_8091e9c
	b	.Lm953_2656
.Lm953_2650:
	mov	r0, #0xc
	bl	__Func_8091e9c
.Lm953_2656:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a5f0

