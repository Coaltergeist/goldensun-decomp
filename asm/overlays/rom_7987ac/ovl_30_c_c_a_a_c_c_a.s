	.include "macros.inc"

.thumb_func_start OvlFunc_902_20080dc
	push	{lr}
	ldr	r0, =0x1ccd
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xb
	bl	OvlFunc_902_2008098
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20080dc

