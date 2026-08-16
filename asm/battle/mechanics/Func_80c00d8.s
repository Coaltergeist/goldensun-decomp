	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c00d8  @ 0x080c00d8
	push	{r5, r6, lr}
	mov	r1, #0x80
	mov	r2, #1
	ldr	r5, =Func_80008d8
	lsl	r1, #1
	neg	r2, r2
	mov	r6, r0
	bl	_call_via_r5
	mov	r3, #0x80
	lsl	r3, #1
	add	r6, r3
	mov	r0, r6
	mov	r1, #0x80
	ldr	r2, =0x3ff03ff
	bl	_call_via_r5
	ldr	r2, =ewram_2010200
	ldr	r1, =0x20002
	add	r6, #0x80
	mov	r3, #0
.Lc0102:
	add	r3, #1
	stmia	r6!, {r2}
	add	r2, r1
	cmp	r3, #0xef
	bls	.Lc0102
	mov	r1, #0xa0
	ldr	r3, =Func_80008d8
	mov	r0, r6
	lsl	r1, #2
	ldr	r2, =0x3ff03ff
	bl	_call_via_r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c00d8
