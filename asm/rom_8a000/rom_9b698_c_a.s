	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_9ba70
	push	{lr}
	ldr	r0, [r0]
	bl	_Func_ba30
	pop	{r0}
	bx	r0
.func_end Func_9ba70

