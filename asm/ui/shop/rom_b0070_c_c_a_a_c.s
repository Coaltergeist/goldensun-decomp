	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b280c  @ 0x080b280c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3aa
	ldr	r5, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	sub	r1, #3
	mov	r10, r3
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0
	sub	sp, #4
	mov	r7, #0
	cmp	r2, r3
	bge	.Lb2866
	add	r3, r5, #2
	mov	r6, #0xdb
	mov	r8, r3
	lsl	r6, #2
.Lb2840:
	mov	r1, r8
	ldrsh	r0, [r1, r6]
	mov	r1, r10
	str	r2, [sp]
	bl	Func_80b27b0
	ldr	r2, [sp]
	cmp	r0, #0
	beq	.Lb2854
	add	r2, #1
.Lb2854:
	ldr	r1, =0x3a7
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	blt	.Lb2840
.Lb2866:
	mov	r0, r2
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b280c

.thumb_func_start Func_80b2884  @ 0x080b2884
	push	{lr}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #1
	bne	.Lb289e
	ldr	r3, =0xd2e
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb289e:
	cmp	r1, #2
	bne	.Lb28aa
	ldr	r3, =0xd38
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28aa:
	cmp	r1, #3
	bne	.Lb28b6
	ldr	r3, =0xd42
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28b6:
	pop	{r1}
	bx	r1
.func_end Func_80b2884

