	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BlendVFXPaletteFile  @ 0x080e46f0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0xa0
	lsl	r1, #19
	sub	sp, #0x80
	mov	r8, r1
	bl	GetFile
	ldr	r3, =Func_8001af8
	mov	r1, r0
	mov	r2, #0x80
	mov	r0, sp
	bl	_call_via_r3
	mov	r3, #0
	mov	r2, sp
	strh	r3, [r2]
	mov	r12, r3
	ldr	r7, .Le4724	@ 0x1f
	mov	r3, #0x1f
	mov	r10, r3
	mov	r14, r2
	mov	r6, #0
	b	.Le472c

	.align	2, 0
.Le4724:
	.word	0x1f
	.pool

.Le472c:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r5, r10
	mov	r1, r14
	and	r5, r3
	lsl	r3, #16
	lsr	r2, r3, #21
	lsr	r0, r3, #26
	ldrh	r3, [r6, r1]
	mov	r1, r10
	and	r1, r3
	lsl	r3, #16
	lsr	r4, r3, #21
	lsr	r3, #26
	and	r2, r7
	and	r0, r7
	and	r4, r7
	and	r3, r7
	cmp	r5, r1
	bge	.Le4758
	add	r5, #1
	b	.Le475e
.Le4758:
	cmp	r5, r1
	ble	.Le475e
	sub	r5, #1
.Le475e:
	cmp	r2, r4
	bge	.Le4766
	add	r2, #1
	b	.Le476c
.Le4766:
	cmp	r2, r4
	ble	.Le476c
	sub	r2, #1
.Le476c:
	cmp	r0, r3
	bge	.Le4774
	add	r0, #1
	b	.Le477a
.Le4774:
	cmp	r0, r3
	ble	.Le477a
	sub	r0, #1
.Le477a:
	lsl	r2, #5
	lsl	r3, r0, #10
	orr	r3, r2
	orr	r3, r5
	mov	r2, r14
	strh	r3, [r6, r2]
	mov	r3, #1
	add	r12, r3
	mov	r1, #2
	mov	r2, r12
	add	r6, #2
	add	r8, r1
	cmp	r2, #0x40
	bne	.Le472c
	mov	r0, #0xa0
	mov	r1, sp
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	sp, #0x80
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BlendVFXPaletteFile
