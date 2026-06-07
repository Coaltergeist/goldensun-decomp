	.include "macros.inc"

.thumb_func_start OvlFunc_945_2008030
	push	{r5, lr}
	mov	r1, #1
	mov	r5, r0
	bl	__Func_800c300
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2008030

.thumb_func_start OvlFunc_945_2008058
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L82
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r2, =0xffff8000
	sub	r3, r0
	add	r3, r2
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.La2
	mov	r3, #0
	b	.La0
.L82:
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r0
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	str	r3, [r5, #0xc]
	cmp	r3, r2
	ble	.La2
	mov	r3, #1
.La0:
	strh	r3, [r6]
.La2:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2008058

