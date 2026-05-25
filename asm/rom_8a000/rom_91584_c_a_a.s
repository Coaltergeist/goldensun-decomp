	.include "macros.inc"

.thumb_func_start Func_91780
	push	{r5, lr}
	mov	r5, r0
	bl	Func_9177c
	mov	r0, r5
	bl	Func_8b674
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91780

.thumb_func_start Func_917ac
	push	{r5, lr}
	mov	r5, r0
	bl	Func_8b824
	mov	r1, r0
	mov	r0, r5
	bl	Func_8b3ec
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_917ac

