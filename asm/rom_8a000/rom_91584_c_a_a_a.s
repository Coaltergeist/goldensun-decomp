	.include "macros.inc"

.thumb_func_start Func_8091780
	push	{r5, lr}
	mov	r5, r0
	bl	Func_809177c
	mov	r0, r5
	bl	Func_808b674
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_808ba1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091780

