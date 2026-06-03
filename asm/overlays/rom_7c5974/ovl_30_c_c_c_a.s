	.include "macros.inc"

.thumb_func_start OvlFunc_940_20082d0
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L310
	ldr	r2, =0xffff5fff
	add	r3, r5, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L2f8
	mov	r0, #0x1d
	mov	r1, #0xe
	bl	__Func_80b0278
	b	.L31e
.L2f8:
	bl	__Func_80916b0
	ldr	r0, =0x24f5
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L31e
.L310:
	ldr	r0, =0x1bcd
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L31e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_20082d0

