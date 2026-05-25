	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1050
	push	{lr}
	bl	Func_80043e0
	bl	_Func_80119a8
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_Func_8079374
	mov	r0, #0xa9
	lsl	r0, #1
	bl	_Func_8079374
	pop	{r1}
	bx	r1
.func_end Func_80a1050

