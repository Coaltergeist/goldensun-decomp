	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b0a20  @ 0x080b0a20
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldr	r6, =0xffff
	mov	r3, #1
	ldr	r4, =0
	strb	r3, [r0, #0xd]
	ldr	r3, =0x1ff
	strh	r1, [r5, #6]
	strh	r1, [r0, #8]
	strh	r1, [r0, #4]
	and	r1, r6
	and	r1, r3
	strb	r4, [r0, #0xc]
	ldr	r3, =0xfffffe00
	ldrh	r4, [r5, #0x16]
	and	r3, r4
	orr	r3, r1
	strh	r3, [r5, #0x16]
	ldr	r3, [r0]
	strh	r2, [r0, #0xa]
	strh	r2, [r0, #6]
	strh	r2, [r3, #8]
	and	r2, r6
	strb	r2, [r3, #0x14]
	b	.Lb0a64

	.pool_aligned

.Lb0a64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b0a20

