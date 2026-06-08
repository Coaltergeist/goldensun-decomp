	.include "macros.inc"

.thumb_func_start Func_8079754
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	add	r2, r0
	cmp	r2, #0x1c
	ble	.L7976a
	mov	r2, #0x1c
.L7976a:
	cmp	r2, #0
	bge	.L79770
	mov	r2, #0
.L79770:
	strb	r2, [r3]
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_8079754

.thumb_func_start Func_807977c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, =.L84a8c
	mov	r3, #0xf
	add	r3, r7
	mov	r10, r3
	mov	r3, #1
	sub	sp, #4
	mov	r5, r0
	mov	r1, #0
	mov	r8, r3
.L79796:
	mov	r0, #0
	ldrb	r6, [r7]
	str	r1, [sp]
	bl	Func_8077330
	mov	r2, r8
	ldr	r3, [r0]
	lsl	r2, r6
	and	r3, r2
	add	r7, #1
	ldr	r1, [sp]
	cmp	r3, #0
	beq	.L797b6
	strb	r6, [r5]
	add	r1, #1
	add	r5, #1
.L797b6:
	cmp	r7, r10
	bls	.L79796
	mov	r3, #0x20
	mov	r0, r1
	strb	r3, [r5]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807977c

