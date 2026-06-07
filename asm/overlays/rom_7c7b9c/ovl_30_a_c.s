	.include "macros.inc"

.thumb_func_start OvlFunc_943_20088c0
	push	{lr}
	mov	r2, #0x80
	ldr	r3, [r0, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	ble	.L8d8
	ldr	r2, =0xfffff800
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
.L8d8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20088c0

.thumb_func_start OvlFunc_943_20088e0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r3, [r6]
	mov	r7, r3
	cmp	r7, #0
	beq	.L8f4
	add	r3, #0xff
	b	.L92c
.L8f4:
	bl	__Random
	lsl	r2, r0, #2
	add	r2, r0
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	lsr	r3, #16
	cmp	r3, #0xc8
	bls	.L910
	mov	r3, #0xd0
	lsl	r3, #8
	strh	r3, [r5, #6]
	b	.L91e
.L910:
	cmp	r3, #0x64
	bls	.L91c
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r5, #6]
	b	.L91e
.L91c:
	strh	r7, [r5, #6]
.L91e:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0x50
.L92c:
	strb	r3, [r6]
	mov	r0, #1
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_20088e0

