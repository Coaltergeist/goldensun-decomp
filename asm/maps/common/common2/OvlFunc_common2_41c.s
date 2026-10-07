	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common2_41c
	push	{r4, r5, r6, lr}
	mov	r6, r2
	cmp	r6, #0
	beq	.Lc2_44a
	mov	r3, #0x20
	sub	r3, r6
	cmp	r3, #0
	bgt	.Lc2_436
	neg	r3, r3
	mov	r4, r1
	mov	r5, #0
	lsr	r4, r3
	b	.Lc2_446
.Lc2_436:
	mov	r2, r1
	lsl	r2, r3
	mov	r3, r0
	lsr	r3, r6
	mov	r5, r1
	mov	r4, r3
	lsr	r5, r6
	orr	r4, r2
.Lc2_446:
	mov	r1, r5
	mov	r0, r4
.Lc2_44a:
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_common2_41c

