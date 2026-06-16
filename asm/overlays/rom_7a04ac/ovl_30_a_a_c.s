	.include "macros.inc"

.thumb_func_start OvlFunc_913_20089fc
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Random
	mov	r3, #0x64
	mov	r2, r0
	mul	r2, r3
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	lsr	r2, #16
	add	r3, r2
	mov	r2, #0xfa
	strh	r3, [r6]
	lsl	r2, #18
	lsl	r3, #16
	cmp	r3, r2
	ble	.La2a
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	b	.La32
.La2a:
	mov	r0, r5
	mov	r1, #0xa
	bl	__Func_80929d8
.La32:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #0x96
	lsl	r2, #3
	cmp	r3, r2
	ble	.La42
	mov	r3, #0
	strh	r3, [r6]
.La42:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_20089fc

