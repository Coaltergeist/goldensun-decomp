	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019944  @ 0x08019944
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r4, =0x12dc
	ldr	r2, [r3]
	ldrh	r3, [r4, r2]
	mov	r5, r0
	mov	r7, r1
	mov	r1, #0
	mov	r6, #0
	mov	r12, r1
	ldr	r0, =0x12bc
	cmp	r3, r5
	bne	.L1996a
	ldr	r6, [r0, r2]
	cmp	r7, #0
	beq	.L19988
	str	r1, [r0, r2]
	strh	r1, [r4, r2]
	b	.L19988
.L1996a:
	add	r1, #1
	add	r0, #4
	add	r4, #2
	cmp	r1, #7
	bhi	.L19988
	ldrh	r3, [r4, r2]
	cmp	r3, r5
	bne	.L1996a
	ldr	r6, [r0, r2]
	cmp	r7, #0
	beq	.L19988
	mov	r3, r12
	str	r3, [r0, r2]
	mov	r3, r12
	strh	r3, [r4, r2]
.L19988:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8019944

