	.include "macros.inc"

.thumb_func_start OvlFunc_924_2008e80
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	bne	.Le98
	ldr	r0, =.L6700
	b	.Leb8
.Le98:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lea2
	ldr	r0, =.L67a8
	b	.Leb8
.Lea2:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Leac
	ldr	r0, =.L6838
	b	.Leb8
.Leac:
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Leb6
	ldr	r0, =.L6988
	b	.Leb8
.Leb6:
	ldr	r0, =.L66e8
.Leb8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_2008e80

