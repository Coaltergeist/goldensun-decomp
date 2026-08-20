	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091c1c  @ 0x08091c1c
	push	{r5, lr}
	mov	r5, r2
	mov	r1, r0
	mov	r0, r5
	bl	_GiveItemTo
	cmp	r0, #0
	blt	.L91c30
	mov	r0, r5
	b	.L91c34
.L91c30:
	mov	r0, #1
	neg	r0, r0
.L91c34:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8091c1c

