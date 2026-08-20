	.include "macros.inc"

.thumb_func_start OvlFunc_912_2008030
	push	{r5, lr}
	mov	r3, #0
	mov	r5, #2
	mov	r4, #1
	mov	r1, #0x69
	mov	r2, #0x6e
.Lm912_3c:
	strb	r5, [r0, #0x16]
	str	r4, [r0, #4]
	strh	r1, [r0]
	cmp	r3, #4
	beq	.Lm912_4a
	cmp	r3, #7
	bne	.Lm912_4c
.Lm912_4a:
	strh	r2, [r0]
.Lm912_4c:
	add	r3, #1
	add	r0, #0x18
	cmp	r3, #0xe
	bls	.Lm912_3c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_2008030

