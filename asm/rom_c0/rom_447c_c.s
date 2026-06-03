	.include "macros.inc"

.thumb_func_start Func_80045d4
	push	{lr}
	ldr	r3, =iwram_30001d8
	bl	_call_via_r3
	lsl	r0, #8
	pop	{r1}
	bx	r1
.func_end Func_80045d4
