	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b09fc  @ 0x080b09fc
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldrh	r4, [r5, #6]
	ldr	r6, =0
	strh	r4, [r0, #4]
	ldrh	r4, [r5, #8]
	strh	r1, [r0, #8]
	strh	r4, [r0, #6]
	strh	r2, [r0, #0xa]
	strb	r3, [r0, #0xd]
	strb	r6, [r0, #0xc]
	b	.Lb0a18

	.pool_aligned
.Lb0a18:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b09fc

