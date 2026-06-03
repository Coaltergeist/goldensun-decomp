	.include "macros.inc"

.thumb_func_start OvlFunc_950_2008044
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L56
	ldr	r0, =.L1040
	b	.L58
.L56:
	ldr	r0, =.Le00
.L58:
	pop	{r1}
	bx	r1
.func_end OvlFunc_950_2008044

