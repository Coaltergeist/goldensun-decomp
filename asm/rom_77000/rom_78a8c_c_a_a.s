	.include "macros.inc"

.thumb_func_start Func_8078aa0  @ 0x08078aa0
	push	{lr}
	mov	r2, r0
	ldr	r4, =ewram_2000380
	mov	r0, #0
	cmp	r2, #0x7f
	bgt	.L78ac6
	ldrb	r3, [r4, r2]
	add	r3, r1
	cmp	r3, #0
	bge	.L78ab8
	mov	r3, #0
	b	.L78ac4
.L78ab8:
	cmp	r3, #0x63
	ble	.L78ac2
	mov	r3, #0x63
	mov	r0, #0x63
	b	.L78ac4
.L78ac2:
	mov	r0, r3
.L78ac4:
	strb	r3, [r4, r2]
.L78ac6:
	pop	{r1}
	bx	r1
.func_end Func_8078aa0
