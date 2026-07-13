	.include "macros.inc"
	.include "gba.inc"


	.section .text.after, "ax", %progbits
.thumb_func_start Func_801f680  @ 0x0801f680
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r1, #0xe1
	lsl	r1, #4
	sub	sp, #0x40
	bl	__udivsi3
	ldr	r3, =0xea5f
	mov	r6, r0
	cmp	r6, r3
	bls	.L1f69c
	mov	r6, r3
.L1f69c:
	mov	r0, r6
	mov	r1, #0x3c
	bl	__udivsi3
	mov	r1, #0x3c
	mov	r5, r0
	mov	r0, r6
	bl	__umodsi3
	mov	r8, sp
	mov	r1, r5
	mov	r6, r0
	mov	r2, #3
	mov	r0, r8
	bl	PrintNum
	ldrb	r3, [r0]
	strb	r3, [r7]
	add	r0, #1
	ldrb	r3, [r0]
	add	r5, r7, #1
	strb	r3, [r5]
	ldrb	r3, [r0, #1]
	add	r5, #1
	strb	r3, [r5]
	add	r6, #0x64
	mov	r3, #0x3a
	add	r5, #1
	strb	r3, [r5]
	mov	r0, r8
	mov	r1, r6
	mov	r2, #2
	bl	PrintNum
	ldrb	r3, [r0]
	add	r5, #1
	strb	r3, [r5]
	ldrb	r3, [r0, #1]
	add	r5, #1
	strb	r3, [r5]
	mov	r3, #0
	mov	r0, r7
	strb	r3, [r5, #1]
	add	sp, #0x40
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f680
