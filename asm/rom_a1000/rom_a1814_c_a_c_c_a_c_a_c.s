	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a2490  @ 0x080a2490
	push	{lr}
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La24a4
	ldr	r0, =Func_80a2444
	bl	StopTask
.La24a4:
	pop	{r0}
	bx	r0
.func_end Func_80a2490

