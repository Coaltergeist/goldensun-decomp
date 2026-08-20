	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8016738  @ 0x08016738
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	lsl	r1, #4
	ldr	r2, =0x44444444
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_8016738

