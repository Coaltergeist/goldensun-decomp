	.include "macros.inc"

.arm_func_start FixupRamCode_ROM  @ 0x08002d5c
	push	{r5, r6}
	add	r1, r1
	add	r2, r0, r1
	add	r0, #2
	mov	r6, r0
	mov	r4, #0x1f
	mov	r5, #0x1e
.L2d78:
	cmp	r0, r2
	bcs	.L2dd0
	ldrh	r12, [r0], #2
	cmp	r4, r12, lsr #11
	bne	.L2d78
	ldrh	r3, [r0, #-4]
	cmp	r5, r3, lsr #11
	bne	.L2d78
	bic	r12, #0xf800
	bic	r3, #0xf800
	orr	r12, r3, lsl #11
	lsl	r12, #1
	sub	r3, r0, r6
	sub	r12, r3
	lsr	r3, r12, #12
	bic	r3, #0xf800
	orr	r3, #0xf000
	lsr	r12, #1
	orr	r12, #0xf800
	strh	r3, [r0, #-4]
	strh	r12, [r0, #-2]
	b	.L2d78
.L2dd0:
	pop	{r5, r6}
	bx	lr
.func_end_emit_size FixupRamCode_ROM, _FIXUP_RAM_CODE_SIZE
