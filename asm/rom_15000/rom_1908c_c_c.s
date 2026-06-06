	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019bac
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x60
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015570
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_8002df0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8019bac

.thumb_func_start Func_8019bfc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, [r0]
	mov	r2, #0xff
	lsr	r3, r5, #8
	and	r5, r2
	ldr	r2, =HuffmanTreePointers
	lsl	r3, #3
	ldr	r1, [r2, r3]
	add	r3, #4
	ldr	r2, [r2, r3]
	lsl	r3, r5, #1
	ldrh	r3, [r3, r2]
	add	r1, r3
	mov	r10, r0
	ldr	r6, [r0, #4]
	sub	r2, r1, #1
	mov	r3, #0
	mov	r5, #0x80
	ldr	r0, [r0, #8]
	mov	r4, #1
	mov	r9, r2
	mov	r14, r3
	mov	r7, #1
	mov	r8, r5
	b	.L19c96
.L19c3a:
	mov	r2, r0
	mov	r3, #1
	and	r2, r3
	asr	r0, #1
	cmp	r2, #0
	beq	.L19c96
	cmp	r0, #0
	bne	.L19c58
	ldrb	r0, [r6]
	mov	r2, r0
	and	r2, r3
	asr	r0, #1
	mov	r3, r8
	add	r6, #1
	orr	r0, r3
.L19c58:
	cmp	r2, #0
	beq	.L19c96
	mov	r5, #1
	mov	r2, #0x80
	mov	r3, #0
	mov	r11, r5
	mov	r12, r2
.L19c66:
	mov	r2, r4
	mov	r5, r11
	and	r2, r5
	asr	r4, #1
	cmp	r2, #0
	beq	.L19c88
	cmp	r4, #0
	bne	.L19c84
	ldrb	r4, [r1]
	mov	r2, r4
	and	r2, r5
	asr	r4, #1
	mov	r5, r12
	add	r1, #1
	orr	r4, r5
.L19c84:
	cmp	r2, #0
	bne	.L19c8c
.L19c88:
	add	r3, #1
	b	.L19c92
.L19c8c:
	mov	r2, #1
	add	r14, r2
	sub	r3, #1
.L19c92:
	cmp	r3, #0
	bge	.L19c66
.L19c96:
	mov	r2, r4
	and	r2, r7
	asr	r4, #1
	cmp	r2, #0
	beq	.L19c3a
	cmp	r4, #0
	bne	.L19cb2
	ldrb	r4, [r1]
	mov	r3, r8
	mov	r2, r4
	asr	r4, #1
	add	r1, #1
	and	r2, r7
	orr	r4, r3
.L19cb2:
	cmp	r2, #0
	beq	.L19c3a
	mov	r5, r14
	lsl	r3, r5, #1
	add	r1, r3, r5
	lsl	r3, r1, #2
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L19cda
	mov	r2, r9
	lsr	r3, r1, #1
	sub	r3, r2, r3
	ldrb	r2, [r3]
	sub	r3, #1
	lsl	r5, r2, #4
	ldrb	r2, [r3]
	lsr	r3, r2, #4
	orr	r5, r3
	b	.L19cee
.L19cda:
	lsr	r3, r1, #1
	mov	r5, r9
	sub	r3, r5, r3
	ldrb	r2, [r3]
	mov	r1, #0xf
	sub	r3, #1
	and	r2, r1
	ldrb	r5, [r3]
	lsl	r2, #8
	orr	r5, r2
.L19cee:
	mov	r2, r10
	str	r0, [r2, #8]
	str	r5, [r2]
	str	r6, [r2, #4]
	mov	r0, r5
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8019bfc

.thumb_func_start Func_8019d0c
	ldr	r3, =iwram_3001e8c
	ldr	r0, =0x12ec
	ldr	r3, [r3]
	ldr	r2, .L19d20	@ 0x3e7
	add	r1, r3, r0
	add	r0, #2
	strh	r2, [r1]
	add	r1, r3, r0
	strh	r2, [r1]
	bx	lr
	.align	2, 0
.L19d20:
	.word	0x3e7
.func_end Func_8019d0c

	.section .rodata
	.global .L33e60
	.global .L33eb0
	.global .L33ee8

.L33e60:
	.incrom 0x33e60, 0x33eb0
.L33eb0:
	.incrom 0x33eb0, 0x33ee8
.L33ee8:
	.incrom 0x33ee8, 0x33ef8
