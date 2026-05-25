	.include "macros.inc"

.thumb_func_start OvlFunc_7892c8_30
	push	{r5, lr}
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8092054
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_80044d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7892c8_30

.thumb_func_start OvlFunc_7892c8_5c
	ldr	r0, =.L3aa8
	bx	lr
.func_end OvlFunc_7892c8_5c

