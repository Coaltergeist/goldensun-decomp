	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0098  @ 0x080c0098
	push	{lr}
	ldr	r2, =0x3020100
	ldr	r1, =0x4040404
	mov	r3, #0
.Lc00a0:
	add	r3, #1
	stmia	r0!, {r2}
	add	r2, r1
	cmp	r3, #0x3f
	bls	.Lc00a0
	ldr	r2, =0x3020100
	ldr	r1, =0x4040404
	mov	r3, #0
.Lc00b0:
	add	r3, #1
	stmia	r0!, {r2}
	add	r2, r1
	cmp	r3, #0x37
	bls	.Lc00b0
	mov	r1, #0x88
	mov	r2, #1
	ldr	r3, =Func_80008d8
	lsl	r1, #2
	neg	r2, r2
	bl	_call_via_r3
	pop	{r0}
	bx	r0
.func_end Func_80c0098
