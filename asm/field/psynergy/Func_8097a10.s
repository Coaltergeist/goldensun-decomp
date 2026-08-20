	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8097a10  @ 0x08097a10
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L97a42
	mov	r3, #0xf0
	lsl	r3, #24
	and	r3, r5
	cmp	r3, #0
	beq	.L97a28
	neg	r5, r5
.L97a28:
	mov	r1, r6
	ldr	r3, =Func_80008ac
	mov	r0, r5
	bl	_call_via_r3
	ldr	r3, =0xffff0000
	ldr	r4, =Func_8000888
	and	r0, r3
	mov	r1, r5
	.call_via r4
	sub	r0, r6, r0
.L97a42:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8097a10

