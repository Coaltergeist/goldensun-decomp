	.include "macros.inc"

.thumb_func_start OvlFunc_909_2008424
	push	{lr}
	bl	__GetFlag
	cmp	r0, #0
	beq	.L434
	bl	OvlFunc_909_20083ec
	b	.L438
.L434:
	bl	OvlFunc_909_2008408
.L438:
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008424

