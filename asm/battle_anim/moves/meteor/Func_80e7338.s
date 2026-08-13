	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e7338  @ 0x080e7338
	push	{r5, r6, r7, lr}
	mov	r7, r9
	push	{r7}
	sub	sp, #4
	mov	r4, r9
	mov	r3, sp
	str	r4, [r3]
	mov	r3, r4
	mov	r5, r1
	mov	r1, r3
	sub	r1, #0x88
	ldr	r3, [r1]
	mov	r7, #0xe8
	lsl	r7, #7
	mov	r6, r2
	add	r2, r3, r7
	ldr	r3, [r2, #0x18]
	mov	r7, #1
	neg	r7, r7
	mov	r4, #0
	cmp	r3, r7
	bne	.Le7368
	str	r4, [r2, #0x18]
	b	.Le738c
.Le7368:
	add	r4, #1
	cmp	r4, #0x10
	beq	.Le7392
	lsl	r3, r4, #3
	sub	r3, r4
	ldr	r2, [r1]
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0xe8
	lsl	r3, #7
	add	r2, r3
	mov	r7, #1
	ldr	r3, [r2, #0x18]
	neg	r7, r7
	cmp	r3, r7
	bne	.Le7368
	mov	r3, #0
	str	r3, [r2, #0x18]
.Le738c:
	str	r0, [r2]
	str	r5, [r2, #4]
	str	r6, [r2, #0xc]
.Le7392:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80e7338
