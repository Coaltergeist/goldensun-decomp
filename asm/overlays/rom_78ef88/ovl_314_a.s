	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_78ef88_314
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L35e
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [r1, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r1, [r1, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_80044d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0
	beq	.L35e
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L352
	mov	r0, r2
.L352:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L35a
	mov	r0, r2
.L35a:
	add	r3, r0
	strh	r3, [r5, #6]
.L35e:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_78ef88_314

.thumb_func_start OvlFunc_78ef88_36c
	ldr	r0, =.L4d88
	bx	lr
.func_end OvlFunc_78ef88_36c

