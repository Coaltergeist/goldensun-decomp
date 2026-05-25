	.include "macros.inc"

.thumb_func_start Func_80a9374
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	mov	r0, r1
	ldr	r5, [r3]
	bl	_Func_8077394
	bl	Func_80a345c
	mov	r3, #0xe4
	lsl	r3, #1
	add	r5, r3
	mov	r0, r5
	bl	Func_80a68a8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a9374

