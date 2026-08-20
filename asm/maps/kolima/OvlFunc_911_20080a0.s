	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_20080a0
	push	{r5, r6, lr}
	add	r0, #0x48
	mov	r2, #0
	mov	r6, #0x69
	mov	r5, #0x6e
	mov	r4, #2
	mov	r1, #1
.Lm911_ae:
	sub	r3, r2, #6
	strh	r6, [r0]
	cmp	r3, #1
	bhi	.Lm911_b8
	strh	r5, [r0]
.Lm911_b8:
	add	r2, #1
	strb	r4, [r0, #0x16]
	str	r1, [r0, #4]
	add	r0, #0x18
	cmp	r2, #8
	bls	.Lm911_ae
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20080a0

