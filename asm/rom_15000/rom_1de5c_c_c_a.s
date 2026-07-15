	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_draw_small_text, "ax", %progbits

	.section .text.after_1e858, "ax", %progbits

.thumb_func_start Func_801e8b0  @ 0x0801e8b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	mov	r10, r2
	mov	r8, r3
	mov	r7, r1
	bl	Func_8004970
	ldr	r3, =iwram_3001e8c
	mov	r6, r0
	ldr	r0, [r3]
	ldrb	r3, [r5]
	mov	r2, r6
	cmp	r3, #0
	beq	.L1e8e4
.L1e8d6:
	ldrb	r3, [r5]
	strh	r3, [r2]
	add	r5, #1
	ldrb	r3, [r5]
	add	r2, #2
	cmp	r3, #0
	bne	.L1e8d6
.L1e8e4:
	ldr	r3, .L1e91c	@ 0
	strh	r3, [r2]
	mov	r1, r8
	ldrh	r3, [r7, #0xe]
	lsr	r2, r1, #3
	add	r3, r2
	mov	r4, r10
	ldrh	r2, [r7, #0xc]
	lsr	r1, r4, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L1e932
	ldr	r4, =0x6002000
	lsl	r1, #1
	add	r2, r1, r4
	mov	r3, #7
	add	r1, r0, r1
	mov	r0, r10
	and	r3, r0
	mov	r0, r6
	b	.L1e928

	.align	2, 0
.L1e91c:
	.word	0
	.pool

.L1e928:
	bl	Func_801de5c
	mov	r0, r6
	bl	free
.L1e932:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e8b0


	.section .text.after, "ax", %progbits

.thumb_func_start Func_801ea3c  @ 0x0801ea3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r3
	ldr	r3, =iwram_3001e8c
	sub	sp, #0x20
	mov	r4, r0
	ldr	r5, [sp, #0x38]
	ldr	r3, [r3]
	mov	r6, r1
	mov	r7, r2
	add	r0, sp, #0x10
	mov	r1, r4
	mov	r2, #4
	mov	r10, r3
	bl	PrintNum
	cmp	r5, #0
	bne	.L1ea68
	ldr	r3, =0xf01d
	b	.L1ea6a
.L1ea68:
	ldr	r3, =0xf01f
.L1ea6a:
	mov	r4, sp
	strh	r3, [r4]
	ldr	r3, =0xf01e
	strh	r3, [r4, #2]
	add	r2, r4, #4
	mov	r1, #4
.L1ea76:
	ldrb	r3, [r0]
	sub	r1, #1
	strh	r3, [r2]
	add	r0, #1
	add	r2, #2
	cmp	r1, #0
	bge	.L1ea76
	mov	r3, #0
	mov	r1, r8
	strh	r3, [r4, #0xc]
	ldrh	r3, [r6, #0xe]
	lsr	r2, r1, #3
	add	r3, r2
	ldrh	r2, [r6, #0xc]
	lsr	r1, r7, #3
	add	r3, #1
	add	r2, r1
	lsl	r3, #5
	add	r3, r2
	add	r1, r3, #1
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcs	.L1eab8
	ldr	r3, =0x6002000
	lsl	r1, #1
	add	r2, r1, r3
	mov	r3, #7
	add	r1, r10
	and	r3, r7
	mov	r0, r4
	bl	Func_801de5c
.L1eab8:
	add	sp, #0x20
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ea3c
