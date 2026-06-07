	.include "macros.inc"

.thumb_func_start OvlFunc_928_2008324
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0xe
	ldrsh	r3, [r0, r2]
	cmp	r3, #0x1f
	ble	.L344
	mov	r0, #0x14
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	b	.L352
.L344:
	mov	r0, #0x14
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
.L352:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008324

