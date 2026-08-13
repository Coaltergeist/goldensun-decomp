	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800bfa4  @ 0x0800bfa4
	push	{r5, lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r4, =0xffff0000
	mov	r5, r1
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r0, #8]
	and	r1, r4
	sub	r1, r3, r1
	ldr	r3, [r0, #0x10]
	ldr	r0, =0x1fffff
	and	r2, r4
	sub	r2, r3, r2
	add	r3, r1, r0
	ldr	r0, =0x12ffffe
	cmp	r3, r0
	bhi	.Lbfe2
	cmp	r2, #0
	ble	.Lbfe2
	mov	r3, #0xe0
	lsl	r3, #16
	cmp	r2, r3
	bge	.Lbfe2
	asr	r3, r1, #16
	stmia	r5!, {r3}
	asr	r3, r2, #16
	str	r3, [r5]
	mov	r0, #0
	b	.Lbfec
.Lbfe2:
	mov	r3, #0
	stmia	r5!, {r3}
	mov	r0, #1
	str	r3, [r5]
	neg	r0, r0
.Lbfec:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_800bfa4
