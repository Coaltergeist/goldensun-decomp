	.include "macros.inc"

.thumb_func_start OvlFunc_907_2008198
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L1b0
	ldr	r0, =.L1744
	b	.L1c6
.L1b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L1ba
	ldr	r0, =.L1a2c
	b	.L1c6
.L1ba:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L1c4
	ldr	r0, =.L1bc4
	b	.L1c6
.L1c4:
	ldr	r0, =.L1738
.L1c6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_2008198

