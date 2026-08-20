	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80979a4  @ 0x080979a4
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r1, #0xb4
	lsl	r1, #17
	mov	r5, r2
	bl	Func_8097a10
	ldr	r2, =0x3bffff
	mov	r4, r0
	cmp	r4, r2
	bgt	.L979c2
	ldr	r3, =Func_8000888
	mov	r0, r5
	mov	r1, r4
	b	.L979e0
.L979c2:
	ldr	r1, =0xffc40000
	add	r3, r4, r1
	mov	r1, #0xf0
	lsl	r1, #15
	mov	r0, r5
	cmp	r3, r1
	bcc	.L979f4
	ldr	r1, =0xff4c0000
	add	r3, r4, r1
	cmp	r3, r2
	bhi	.L979f2
	mov	r1, #0xf0
	lsl	r1, #16
	ldr	r3, =Func_8000888
	sub	r1, r4
	.align	2, 0
.L979e0:
	mov	r12, pc
	bx	r3
	mov	r1, r0
	mov	r0, #0xf0
	ldr	r3, =Func_80008ac
	lsl	r0, #14
	bl	_call_via_r3
	b	.L979f4
.L979f2:
	mov	r0, r6
.L979f4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80979a4

