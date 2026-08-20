	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801a778  @ 0x0801a778
	push	{lr}
	ldr	r3, =iwram_3001e98
	mov	r2, #0xd2
	ldr	r1, [r3]
	lsl	r2, #2
	add	r3, r1, r2
	mov	r0, #0
	add	r2, #0x52
	str	r0, [r3]
	add	r3, r1, r2
	strh	r0, [r3]
	ldr	r3, =0x39e
	add	r4, r1, r3
	ldrh	r2, [r4]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1a7a6
	mov	r2, #0xe7
	lsl	r2, #2
	add	r3, r1, r2
	strh	r0, [r3]
	strh	r0, [r4]
.L1a7a6:
	mov	r2, #0xe8
	lsl	r2, #2
	add	r3, r1, r2
	sub	r2, #0xc
	strh	r0, [r3]
	add	r3, r1, r2
	strh	r0, [r3]
	pop	{r0}
	bx	r0
.func_end Func_801a778

