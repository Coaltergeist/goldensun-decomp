	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a2474
	push	{lr}
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_8079374
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a2444
	bl	StartTask
	pop	{r0}
	bx	r0
.func_end Func_80a2474

.thumb_func_start Func_80a2490
	push	{lr}
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	bne	.La24a4
	ldr	r0, =Func_80a2444
	bl	StopTask
.La24a4:
	pop	{r0}
	bx	r0
.func_end Func_80a2490

