	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ce48  @ 0x0801ce48
	push	{lr}
	ldr	r1, =0x574
	add	r0, r1
	ldrh	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	bne	.L1ce5a
	mov	r3, #2
	b	.L1ce5e
.L1ce5a:
	ldr	r1, =0xffff
	add	r3, r2, r1
.L1ce5e:
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_801ce48

