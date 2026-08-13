	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e73a0  @ 0x080e73a0
	push	{r5, r6, lr}
	mov	r6, r9
	push	{r6}
	sub	sp, #4
	mov	r2, r9
	mov	r3, sp
	str	r2, [r3]
	mov	r3, r2
	mov	r5, r1
	mov	r1, r3
	sub	r1, #0x88
	ldr	r3, [r1]
	mov	r6, #0xe1
	lsl	r6, #7
	add	r2, r3, r6
	ldr	r3, [r2, #0x18]
	mov	r6, #1
	neg	r6, r6
	mov	r4, #0
	cmp	r3, r6
	bne	.Le73ce
	str	r4, [r2, #0x18]
	b	.Le73f2
.Le73ce:
	add	r4, #1
	cmp	r4, #0x20
	beq	.Le73f6
	lsl	r3, r4, #3
	sub	r3, r4
	ldr	r2, [r1]
	lsl	r3, #2
	add	r2, r3
	mov	r3, #0xe1
	lsl	r3, #7
	add	r2, r3
	mov	r6, #1
	ldr	r3, [r2, #0x18]
	neg	r6, r6
	cmp	r3, r6
	bne	.Le73ce
	mov	r3, #0
	str	r3, [r2, #0x18]
.Le73f2:
	str	r0, [r2]
	str	r5, [r2, #4]
.Le73f6:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80e73a0
