	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3ce4  @ 0x080a3ce4
	push	{lr}
	cmp	r0, #0xc4
	bgt	.La3cf2
	cmp	r0, #0xc1
	blt	.La3cf2
	mov	r0, #1
	b	.La3cf4
.La3cf2:
	mov	r0, #0
.La3cf4:
	pop	{r1}
	bx	r1
.func_end Func_80a3ce4

