	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801a7c0  @ 0x0801a7c0
	push	{lr}
	ldr	r3, =iwram_3001e98
	ldr	r2, [r3]
	mov	r3, #0xe5
	lsl	r3, #2
	add	r4, r2, r3
	ldrh	r3, [r4]
	cmp	r3, #0x10
	beq	.L1a7ec
	lsl	r3, #1
	mov	r12, r3
	mov	r3, #0xd5
	lsl	r3, #2
	add	r3, r12
	strh	r0, [r2, r3]
	mov	r3, #0xdd
	lsl	r3, #2
	add	r3, r12
	strh	r1, [r2, r3]
	ldrh	r3, [r4]
	add	r3, #1
	strh	r3, [r4]
.L1a7ec:
	pop	{r0}
	bx	r0
.func_end Func_801a7c0

