	.include "macros.inc"

.thumb_func_start OvlFunc_921_2008668
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x156e
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008668

