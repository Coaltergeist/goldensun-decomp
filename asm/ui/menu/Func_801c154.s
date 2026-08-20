	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801c154  @ 0x0801c154
	push	{lr}
	ldr	r3, =0x1ff
	ldrh	r4, [r0, #6]
	and	r1, r3
	ldr	r3, =0xfffffe00
	and	r3, r4
	orr	r3, r1
	mov	r1, #0xfc
	strh	r3, [r0, #6]
	strb	r2, [r0, #4]
	bl	Func_8003dec
	b	.L1c178

	.pool_aligned

.L1c178:
	pop	{r0}
	bx	r0
.func_end Func_801c154

