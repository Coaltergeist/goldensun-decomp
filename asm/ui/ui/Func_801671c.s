	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801671c  @ 0x0801671c
	push	{lr}
	mov	r1, #0xf0
	ldr	r3, =Func_80008d8
	lsl	r1, #4
	mov	r2, #0
	ldr	r0, =0x6002500
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_801671c

