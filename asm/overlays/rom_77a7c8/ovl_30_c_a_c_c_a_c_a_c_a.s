	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a858
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808c44c
	ldr	r0, =0x2643
	bl	__MessageID
	ldr	r3, =.L679c
	mov	r1, #0
	ldr	r0, [r3]
	bl	__ActorMessage
	bl	__Func_808c4c0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x1778
	ldr	r2, =0xd48
	bl	__Func_80921c4
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a858
