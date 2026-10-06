	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetUnit  @ 0x08077394
	push	{lr}
	mov	r3, r14
	ldr	r2, =gPartyStatus
	cmp	r0, #7
	bhi	.L773a8
	mov	r3, #0xa6
	lsl	r3, #1
	mul	r3, r0
	add	r0, r3, r2
	b	.L773c8
.L773a8:
	mov	r3, r0
	sub	r3, #0x80
	cmp	r3, #5
	bhi	.L773c6
	ldr	r3, =iwram_3001f28
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L773c6
	mov	r3, #0xa6
	lsl	r3, #1
	mul	r3, r0
	add	r3, r2, r3
	ldr	r2, =0xffff5a00
	add	r0, r3, r2
	b	.L773c8
.L773c6:
	mov	r0, #0
.L773c8:
	pop	{r1}
	bx	r1
.func_end GetUnit
