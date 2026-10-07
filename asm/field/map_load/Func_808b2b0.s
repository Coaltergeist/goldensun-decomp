	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808b2b0  @ 0x0808b2b0
	push	{lr}
	sub	r0, #1
	cmp	r0, #6
	bhi	.L8b2f0
	ldr	r2, =.L8b2c0
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8b2c0:
	.word	.L8b2dc
	.word	.L8b2e0
	.word	.L8b2e4
	.word	.L8b2e8
	.word	.L8b2ec
	.word	.L8b2ec
	.word	.L8b2e8
.L8b2dc:
	ldr	r2, =0x38
	b	.L8b2f2
.L8b2e0:
	ldr	r2, =0x3a
	b	.L8b2f2
.L8b2e4:
	ldr	r2, =0x3c
	b	.L8b2f2
.L8b2e8:
	ldr	r2, =0x36
	b	.L8b2f2
.L8b2ec:
	ldr	r2, =0x37
	b	.L8b2f2
.L8b2f0:
	ldr	r2, =0x39
.L8b2f2:
	ldr	r3, =gState
	mov	r1, #0xeb
	lsl	r1, #1
	add	r3, r1
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end Func_808b2b0

