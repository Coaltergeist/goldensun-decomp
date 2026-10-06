	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017a64  @ 0x08017a64
	push	{lr}
	ldrh	r2, [r0]
	mov	r1, #0
	add	r0, #2
	cmp	r2, #0
	beq	.L17a9a
	ldr	r4, =Data_32224
.L17a72:
	cmp	r2, #0x20
	bne	.L17a7a
	add	r1, #4
	b	.L17a92
.L17a7a:
	cmp	r2, #0xff
	bhi	.L17a90
	mov	r3, r2
	sub	r3, #0xde
	cmp	r3, #1
	bls	.L17a92
	add	r3, #0xbe
	lsl	r3, #5
	ldrh	r3, [r3, r4]
	add	r1, r3
	b	.L17a92
.L17a90:
	add	r1, #0xa
.L17a92:
	ldrh	r2, [r0]
	add	r0, #2
	cmp	r2, #0
	bne	.L17a72
.L17a9a:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end Func_8017a64

