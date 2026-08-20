	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078ad0  @ 0x08078ad0
	push	{lr}
	ldr	r3, =0x1ff
	ldr	r2, =.L7b490
	and	r3, r0
	ldrb	r0, [r2, r3]
	mov	r4, #0
	cmp	r0, #0
	beq	.L78ae8
	sub	r0, #1
	bl	Func_8078aa0
	mov	r4, r0
.L78ae8:
	mov	r0, r4
	pop	{r1}
	bx	r1
.func_end Func_8078ad0

