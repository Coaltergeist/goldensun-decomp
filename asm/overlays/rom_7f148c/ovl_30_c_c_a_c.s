	.include "macros.inc"

.thumb_func_start OvlFunc_966_2008078
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, r6
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	ldr	r0, =0x26af
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =ActorCmd_ARRAY_966__02009638
	mov	r0, r6
	bl	__MapActor_SetBehavior
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_966_2008078
