	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c23a0  @ 0x080c23a0
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23ac
	ldr	r3, =.Lc7420
	ldrh	r0, [r3]
	b	.Lc23b8
.Lc23ac:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r0, [r2, #3]
	lsl	r0, #27
	lsr	r0, #28
.Lc23b8:
	pop	{r1}
	bx	r1
.func_end Func_80c23a0

