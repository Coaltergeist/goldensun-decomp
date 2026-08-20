	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009494
	push	{lr}
	bl	__CutsceneStart
	ldr	r1, =0x6666
	mov	r0, #0
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r2, =0x7e
	ldr	r3, =0x8c8
	sub	r3, r2
	add	r0, r3
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =gOvl_0200b2bc
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_8010560
	mov	r2, #0x10
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009494

