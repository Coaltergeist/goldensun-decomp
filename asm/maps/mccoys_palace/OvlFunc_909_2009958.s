	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_2009958
	push	{lr}
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2009958

