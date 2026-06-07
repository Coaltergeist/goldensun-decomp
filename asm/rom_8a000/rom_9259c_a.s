	.include "macros.inc"

.thumb_func_start Func_809259c
	push	{r5, lr}
	mov	r5, r1
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L925c0
	cmp	r5, #0
	ble	.L925c0
	cmp	r5, #3
	ble	.L925b2
	mov	r5, #3
.L925b2:
	mov	r1, #3
	sub	r1, r5
	ldr	r3, =.L9ebfc
	lsl	r1, #7
	add	r1, r3
	bl	_Func_800c2d8
.L925c0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_809259c

