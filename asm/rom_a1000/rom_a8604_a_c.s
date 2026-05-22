	.include "macros.inc"

.thumb_func_start Func_a9374
	push	{r5, lr}
	ldr	r3, =iwram_1f2c
	mov	r0, r1
	ldr	r5, [r3]
	bl	_Func_77394
	bl	Func_a345c
	mov	r3, #0xe4
	lsl	r3, #1
	add	r5, r3
	mov	r0, r5
	bl	Func_a68a8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_a9374

