	.include "macros.inc"

.thumb_func_start Func_8078480  @ 0x08078480
	push	{lr}
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r2, #0
	cmp	r3, #1
	bne	.L78492
	mov	r2, #1
	b	.L784a8
.L78492:
	cmp	r3, #2
	beq	.L784a6
	cmp	r3, #3
	beq	.L784a6
	cmp	r3, #4
	beq	.L784a6
	cmp	r3, #5
	beq	.L784a6
	cmp	r3, #9
	bne	.L784a8
.L784a6:
	mov	r2, #2
.L784a8:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_8078480

