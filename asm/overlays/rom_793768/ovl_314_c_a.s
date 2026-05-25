	.include "macros.inc"

.thumb_func_start OvlFunc_424
	ldr	r0, =.L2094
	bx	lr
.func_end OvlFunc_424

.thumb_func_start OvlFunc_42c
	push	{lr}
	ldr	r0, =0x855
	bl	__Func_79338
	cmp	r0, #0
	beq	.L43c
	ldr	r0, =.L227c
	b	.L43e
.L43c:
	ldr	r0, =.L20cc
.L43e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_42c

