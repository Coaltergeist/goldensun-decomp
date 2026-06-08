	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801965c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r6, [r3]
	ldr	r3, =0x12b2
	mov	r5, r2
	add	r2, r6, r3
	mov	r3, #0
	mov	r7, r1
	strh	r3, [r2]
	mov	r1, #1
	bl	BufferString
	sub	r5, #1
	mov	r0, #0
	cmp	r0, r5
	bcs	.L196a8
	mov	r2, #0xeb
	lsl	r2, #4
	ldrh	r3, [r6, r2]
	strh	r3, [r7]
	lsl	r3, #16
	cmp	r3, #0
	beq	.L196a8
	mov	r12, r5
	add	r2, r6, r2
	mov	r4, #0
.L19690:
	add	r0, #1
	add	r4, #2
	cmp	r0, r12
	bcs	.L196ac
	add	r2, #2
	ldrh	r3, [r2]
	mov	r1, r4
	strh	r3, [r1, r7]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L19690
	b	.L196ae
.L196a8:
	mov	r1, #0
	b	.L196ae
.L196ac:
	lsl	r1, r0, #1
.L196ae:
	ldr	r3, .L196b8	@ 0
	strh	r3, [r1, r7]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L196b8:
	.word	0
.func_end Func_801965c

.thumb_func_start DecompressString
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gPtrs
	add	r3, #0xc8
	mov	r7, r2
	ldr	r2, [r3]
	mov	r10, r2
	mov	r8, r3
	mov	r3, r10
	sub	sp, #0xc
	mov	r9, r0
	mov	r6, r1
	cmp	r3, #0
	bne	.L19706
	ldr	r5, =0x140
	mov	r0, #0x32
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015430
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r8
	ldr	r3, [r2]
.L19706:
	mov	r5, sp
	mov	r1, r9
	mov	r0, r5
	mov	r8, r3
	bl	HuffStr_Start
	ldr	r3, =0xffff
	mov	r9, r3
	b	.L19770
.L19718:
	cmp	r0, #0xe
	beq	.L19730
	cmp	r0, #0xe
	bhi	.L1972a
	cmp	r0, #0xc
	bhi	.L19766
	cmp	r0, #8
	bcc	.L19766
	b	.L19750
.L1972a:
	cmp	r0, #0xf
	beq	.L19750
	b	.L19766
.L19730:
	sub	r7, #3
	cmp	r7, #0
	ble	.L1977a
	strh	r0, [r6]
	mov	r0, r5
	bl	_call_via_r8
	add	r6, #2
	add	r0, r9
	strh	r0, [r6]
	mov	r0, r5
	bl	_call_via_r8
	add	r6, #2
	add	r0, r9
	b	.L1976c
.L19750:
	sub	r7, #1
	cmp	r7, #0
	ble	.L1977a
	strh	r0, [r6]
	mov	r0, r5
	bl	_call_via_r8
	ldr	r2, =0xffff
	add	r6, #2
	add	r0, r2
	b	.L1976c
.L19766:
	sub	r7, #1
	cmp	r7, #0
	ble	.L1977a
.L1976c:
	strh	r0, [r6]
	add	r6, #2
.L19770:
	mov	r0, r5
	bl	_call_via_r8
	cmp	r0, #0
	bne	.L19718
.L1977a:
	mov	r3, r10
	cmp	r3, #0
	bne	.L19786
	mov	r0, #0x32
	bl	gfree
.L19786:
	ldr	r3, .L1979c	@ 0
	add	sp, #0xc
	strh	r3, [r6]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L1979c:
	.word	0
.func_end DecompressString

