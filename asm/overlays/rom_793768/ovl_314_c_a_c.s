	.include "macros.inc"

.thumb_func_start OvlFunc_898_200842c
	push	{lr}
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L43c
	ldr	r0, =.L227c
	b	.L43e
.L43c:
	ldr	r0, =.L20cc
.L43e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_200842c

