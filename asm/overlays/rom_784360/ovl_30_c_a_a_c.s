	.include "macros.inc"

.thumb_func_start OvlFunc_884_20088f0
	push	{lr}
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L908
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #0xa
	bl	OvlFunc_884_2008714
.L908:
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20088f0

