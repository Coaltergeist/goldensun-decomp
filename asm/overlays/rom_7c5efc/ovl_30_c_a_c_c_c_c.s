	.include "macros.inc"

.thumb_func_start OvlFunc_941_20092c4
	push	{lr}
	ldr	r0, =0x2549
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_20092c4

.thumb_func_start OvlFunc_941_20092f0
	push	{lr}
	ldr	r0, =0x254d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_20092f0

