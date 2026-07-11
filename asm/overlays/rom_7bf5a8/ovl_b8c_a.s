	.include "macros.inc"

.thumb_func_start OvlFunc_935_2008b8c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, #0
	b	.Lbda
.Lb94:
	ldr	r3, =0x8ccc
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0xffff0000
	str	r3, [r5, #0x28]
	bl	__Random
	ldr	r3, =0xcccc
	mov	r2, r5
	add	r0, r3
	add	r2, #0x59
	mov	r3, #1
	str	r0, [r5, #0x30]
	strb	r3, [r2]
	bl	__Random
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r5
	bl	OvlFunc_935_2008b54
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #8
	strh	r3, [r2]
	mov	r0, r5
	ldr	r1, =gScript_935__02009884
	bl	__Actor_SetScript
	add	r7, #1
.Lbda:
	cmp	r7, #3
	bgt	.Lbf0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xf0
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	bne	.Lb94
.Lbf0:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008b8c

