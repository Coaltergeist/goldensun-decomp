	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b63b0  @ 0x080b63b0
	push	{lr}
	ldr	r3, =Func_80008d4
	mov	r1, #0x10
	ldr	r0, =ewram_2002224
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_80b63b0

