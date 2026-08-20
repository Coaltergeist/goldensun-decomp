	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_16cc
	push	{r5, lr}
	add	r0, #8
	mov	r3, #0
	ldr	r5, =.Lc1_6
	strb	r3, [r0]
	mov	r2, #7
	sub	r0, #1
	mov	r4, #0xf
.Lc1_16dc:
	mov	r3, r1
	and	r3, r4
	ldrb	r3, [r5, r3]
	sub	r2, #1
	strb	r3, [r0]
	lsr	r1, #4
	sub	r0, #1
	cmp	r2, #0
	bge	.Lc1_16dc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_16cc

