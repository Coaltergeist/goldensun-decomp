	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_a1f74
	push	{lr}
	ldr	r2, =.Laf2a6
	cmp	r0, #1
	beq	.La1f90
	cmp	r0, #1
	bgt	.La1f86
	cmp	r0, #0
	beq	.La1f8c
	b	.La1f96
.La1f86:
	cmp	r0, #2
	beq	.La1f94
	b	.La1f96
.La1f8c:
	ldr	r2, =.Laf2d0
	b	.La1f96
.La1f90:
	ldr	r2, =.Laf2bc
	b	.La1f96
.La1f94:
	ldr	r2, =.Laf2b1
.La1f96:
	ldrb	r3, [r2]
	mov	r4, #0xff
	strb	r3, [r1]
	lsl	r4, #24
	lsl	r3, #24
	mov	r0, #0
	cmp	r3, r4
	beq	.La1fbe
.La1fa6:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.La1fbe
	add	r2, #1
	ldrb	r3, [r2]
	add	r1, #1
	mov	r4, #0xff
	strb	r3, [r1]
	lsl	r4, #24
	lsl	r3, #24
	cmp	r3, r4
	bne	.La1fa6
.La1fbe:
	pop	{r0}
	bx	r0
.func_end Func_a1f74

