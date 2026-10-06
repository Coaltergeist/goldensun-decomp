	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf4c4  @ 0x080bf4c4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	ldr	r3, =0x13d
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf516
	cmp	r3, #7
	bls	.Lbf4e2
	add	r3, #0xf8
	strb	r3, [r5]
	mov	r2, r3
.Lbf4e2:
	mov	r3, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbf4f2
	mov	r3, r2
	add	r3, #0xff
	strb	r3, [r5]
	mov	r2, r3
.Lbf4f2:
	lsl	r3, r2, #24
	lsr	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf518
	cmp	r3, #7
	bhi	.Lbf516
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x1e
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf516
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf518
.Lbf516:
	mov	r0, #0
.Lbf518:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf4c4
