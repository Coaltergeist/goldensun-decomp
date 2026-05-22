	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r5, [r0, #8]
	mov	r0, #0
	bl	__Func_92054
	asr	r5, #20
	ldr	r3, [r0, #0x10]
	sub	r5, #0x22
	asr	r3, #20
	cmp	r5, #1
	bhi	.L5e
	cmp	r3, #0x28
	ble	.L5e
	cmp	r3, #0x2a
	bgt	.L5e
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79358
	b	.L66
.L5e:
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_79374
.L66:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_6c
	ldr	r0, =.L6dc
	bx	lr
.func_end OvlFunc_6c

