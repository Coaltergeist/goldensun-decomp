	.include "macros.inc"

.thumb_func_start OvlFunc_921_20085dc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x156d
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20085dc

