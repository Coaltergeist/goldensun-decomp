	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028194  @ 0x08028194
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f38
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	lsl	r3, #1
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r7, [r1, r3]
	ldr	r0, =0xffffff00
	add	r3, r7, r0
	sub	sp, #0xc
	mov	r6, r8
	cmp	r3, #0
	bge	.L281c4
	mov	r3, r7
	sub	r3, #0xfd
.L281c4:
	mov	r1, #0x98
	asr	r3, #2
	lsl	r1, #1
	ldr	r4, =0xffff0000
	add	r7, r3, r1
	ldr	r3, [sp, #4]
	lsl	r1, r7, #16
	and	r3, r4
	ldr	r2, =0xffff
	lsr	r1, #16
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #4]
	add	r0, sp, #4
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r2, #0x8e
	add	r2, r8
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r5, #0
	mov	r9, r0
	mov	r10, r2
	cmp	r5, r3
	bcs	.L282bc
	ldr	r4, =gSpriteSlots
.L28202:
	mov	r0, #0xc
	ldrsh	r2, [r6, r0]
	cmp	r2, #0
	beq	.L282ae
	mov	r3, r8
	add	r3, #0x8c
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r5, r3
	bne	.L28282
	lsl	r3, r7, #3
	sub	r3, r7
	cmp	r3, #0
	bge	.L28222
	ldr	r0, =0x1ff
	add	r3, r0
.L28222:
	asr	r3, #9
	add	r3, r2, r3
	mov	r2, #0xe
	ldrsh	r1, [r6, r2]
	sub	r3, #0x14
	mov	r12, r3
	cmp	r1, #0
	beq	.L28246
	lsl	r3, r7, #1
	add	r3, r7
	cmp	r3, #0
	bge	.L2823c
	add	r3, #0xff
.L2823c:
	asr	r3, #8
	add	r3, r1, r3
	mov	r1, r3
	sub	r1, #0x14
	b	.L2825a
.L28246:
	lsl	r3, r7, #4
	sub	r3, r7
	cmp	r3, #0
	bge	.L28250
	add	r3, #0xff
.L28250:
	asr	r3, #8
	mov	r1, r3
	sub	r1, #0x1e
	mov	r3, #0xff
	and	r1, r3
.L2825a:
	mov	r0, r6
	mov	r3, #0
	mov	r2, r9
	stmia	r0!, {r3}
	lsl	r3, r2, #25
	orr	r3, r1
	mov	r1, r12
	lsl	r2, r1, #16
	orr	r3, r2
	ldr	r2, =0x80002300
	orr	r3, r2
	stmia	r0!, {r3}
	ldrh	r3, [r6, #0x12]
	lsl	r3, #2
	add	r3, r4
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [r0]
	mov	r1, #0xf6
	b	.L282a4
.L28282:
	mov	r0, r6
	mov	r3, #0xe
	ldrsh	r1, [r6, r3]
	mov	r3, #0
	stmia	r0!, {r3}
	lsl	r3, r2, #16
	orr	r1, r3
	ldr	r3, =0x80002000
	orr	r1, r3
	ldrh	r3, [r6, #0x12]
	lsl	r3, #2
	add	r3, r4
	ldrh	r3, [r3, #2]
	stmia	r0!, {r1}
	lsr	r3, #5
	str	r3, [r0]
	mov	r1, #0xf5
.L282a4:
	mov	r0, r6
	str	r4, [sp]
	bl	Func_8003dec
	ldr	r4, [sp]
.L282ae:
	mov	r1, r10
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	add	r5, #1
	add	r6, #0x14
	cmp	r5, r3
	bcc	.L28202
.L282bc:
	mov	r3, r8
	add	r3, #0x94
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L283ae
	ldr	r3, =iwram_3001ecc
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.L282d2
	b	.L28488
.L282d2:
	mov	r0, r10
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	cmp	r3, #0
	bne	.L282de
	b	.L28488
.L282de:
	ldr	r2, =0x539
	add	r3, r1, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	mov	r3, #0x8c
	add	r3, r8
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	mov	r14, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	mov	r10, r1
	mov	r1, r3
	lsl	r4, r7, #1
	mov	r2, r8
	add	r1, #0xc
	ldrsh	r0, [r2, r1]
	mov	r12, r4
	add	r3, r4, r7
	ldr	r4, =0xfffff4ff
	lsl	r3, #2
	add	r2, r3, r4
	cmp	r2, #0
	bge	.L2831e
	add	r4, #0xff
	add	r2, r3, r4
.L2831e:
	asr	r2, #8
	sub	r3, r0, r2
	lsl	r3, #8
	add	r2, r0, r2
	add	r3, r2
	mov	r2, r8
	mov	r0, r3
	add	r3, r2, r1
	mov	r4, #2
	ldrsh	r3, [r3, r4]
	ldr	r1, =0xffffe0ff
	lsl	r2, r7, #5
	mov	r4, r3
	add	r3, r2, r1
	add	r0, #0x17
	add	r4, #0x18
	cmp	r3, #0
	bge	.L28346
	ldr	r1, =0xffffe2fe
	add	r3, r2, r1
.L28346:
	asr	r3, #9
	add	r3, r4, r3
	mov	r1, r10
	add	r4, r3, #1
	mov	r5, #0x18
	add	r1, #0x66
	cmp	r5, r4
	bcs	.L2836a
	mov	r6, #0xff
.L28358:
	ldrh	r2, [r1]
	mov	r3, r6
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, r4
	bcc	.L28358
.L2836a:
	mov	r3, r8
	mov	r1, r14
	mov	r2, #0xc
	ldrsh	r0, [r3, r2]
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	cmp	r3, #0
	bne	.L28390
	mov	r2, r12
	add	r3, r2, r7
	ldr	r4, =0xfffff4ff
	lsl	r1, r3, #2
	add	r3, r1, r4
	cmp	r3, #0
	bge	.L2838c
	ldr	r2, =0xfffff5fe
	add	r3, r1, r2
.L2838c:
	asr	r3, #8
	sub	r0, r3
.L28390:
	mov	r1, r10
	lsl	r0, #8
	add	r1, #6
	mov	r5, #0
	mov	r4, #0xff
.L2839a:
	ldrh	r2, [r1]
	mov	r3, r4
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, #0x17
	bls	.L2839a
	b	.L28488
.L283ae:
	ldr	r3, =iwram_3001ecc
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L28488
	mov	r0, r10
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	cmp	r3, #0
	beq	.L28488
	ldr	r2, =0x539
	add	r3, r1, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r1, r3
	mov	r3, #0x8c
	add	r3, r8
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	mov	r12, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #2
	mov	r14, r1
	mov	r1, r3
	mov	r2, r8
	add	r1, #0xc
	lsl	r6, r7, #1
	ldrsh	r0, [r2, r1]
	ldr	r4, =0xfffff4ff
	add	r3, r6, r7
	lsl	r2, r3, #2
	add	r3, r2, r4
	cmp	r3, #0
	bge	.L283fe
	add	r4, #0xff
	add	r3, r2, r4
.L283fe:
	asr	r3, #8
	sub	r2, r0, r3
	lsl	r2, #8
	add	r3, r0, r3
	add	r2, r3
	mov	r0, r2
	mov	r2, r8
	add	r3, r2, r1
	mov	r4, #2
	ldrsh	r2, [r3, r4]
	ldr	r4, =0xffffe0ff
	lsl	r1, r7, #5
	add	r3, r1, r4
	add	r0, #0x17
	cmp	r3, #0
	bge	.L28422
	ldr	r4, =0xffffe2fe
	add	r3, r1, r4
.L28422:
	asr	r3, #9
	sub	r3, r2, r3
	sub	r2, r3, #1
	lsl	r3, r2, #2
	add	r3, r14
	mov	r5, r2
	add	r1, r3, #6
	cmp	r5, #0x87
	bhi	.L28448
	mov	r4, #0xff
.L28436:
	ldrh	r2, [r1]
	mov	r3, r4
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, #0x87
	bls	.L28436
.L28448:
	mov	r2, r8
	mov	r1, #0xc
	ldrsh	r0, [r2, r1]
	mov	r1, r12
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	cmp	r3, #0
	bne	.L2846c
	add	r3, r6, r7
	ldr	r2, =0xfffff4ff
	lsl	r1, r3, #2
	add	r3, r1, r2
	cmp	r3, #0
	bge	.L28468
	ldr	r4, =0xfffff5fe
	add	r3, r1, r4
.L28468:
	asr	r3, #8
	sub	r0, r3
.L2846c:
	ldr	r1, =0x226
	lsl	r0, #8
	add	r1, r14
	mov	r5, #0x88
	mov	r4, #0xff
.L28476:
	ldrh	r2, [r1]
	mov	r3, r4
	and	r3, r2
	orr	r3, r0
	add	r5, #1
	strh	r3, [r1]
	add	r1, #4
	cmp	r5, #0x9f
	bls	.L28476
.L28488:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8028194
