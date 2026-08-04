	.include "macros.inc"

.thumb_func_start OvlFunc_965_2009158
	push	{lr}
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009158

