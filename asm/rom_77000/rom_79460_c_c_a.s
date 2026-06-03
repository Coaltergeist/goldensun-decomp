	.include "macros.inc"

.thumb_func_start Func_8079754
	push	{lr}
	ldr	r3, =ewram_2000240
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

.thumb_func_start Func_80797d4
	push	{lr}
	cmp	r0, #0xf
	bls	.L797de
	mov	r0, #0
	b	.L797e4
.L797de:
	ldr	r3, =.L84a9c
	lsl	r0, #3
	add	r0, r3
.L797e4:
	pop	{r1}
	bx	r1
.func_end Func_80797d4

.thumb_func_start Func_80797ec
	lsl	r0, #2
	ldr	r3, =.L88db8
	add	r0, r1
	lsl	r0, #2
	ldr	r0, [r3, r0]
	bx	lr
.func_end Func_80797ec

.thumb_func_start Func_80797fc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r2
	cmp	r7, #7
	ble	.L79838
	bl	Func_80773d8
	add	r0, #0x34
	ldrb	r1, [r0]
	cmp	r1, #0x2b
	bls	.L79814
	mov	r1, #0
.L79814:
	lsl	r3, r1, #1
	add	r3, r1
	ldr	r2, =.L88e38
	lsl	r3, #3
	add	r3, r2
	mov	r5, #0
	mov	r0, r6
	add	r1, r3, #4
.L79824:
	ldrb	r2, [r1]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	add	r5, #1
	add	r1, #1
	stmia	r0!, {r3}
	cmp	r5, #3
	ble	.L79824
	b	.L79870
.L79838:
	mov	r0, r6
	add	r1, #0x24
	mov	r5, #3
.L7983e:
	ldrb	r2, [r1]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #1
	sub	r5, #1
	add	r1, #1
	stmia	r0!, {r3}
	cmp	r5, #0
	bge	.L7983e
	cmp	r7, #7
	bgt	.L79870
	mov	r5, #0
.L79856:
	mov	r0, r7
	bl	Func_8078ed8
	mov	r3, r5
	add	r3, #0x90
	add	r0, #2
	ldrb	r2, [r0, r3]
	ldr	r3, [r6]
	add	r5, #1
	add	r3, r2
	stmia	r6!, {r3}
	cmp	r5, #3
	ble	.L79856
.L79870:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80797fc

