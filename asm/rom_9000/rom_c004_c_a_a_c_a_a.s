	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800c454
	push	{r5, r6, lr}
	mov	r6, r1
	ldr	r1, =.L13608
	mov	r5, r0
	bl	Func_800c2d8
	str	r6, [r5, #0x68]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800c454

