	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801f5f0  @ 0x0801f5f0
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r12, r3
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	ldr	r7, [sp, #0x14]
	add	r3, r2, r3
	add	r2, r3, #1
	mov	r3, #1
	and	r7, r3
	ldr	r5, [sp, #0x10]
	lsl	r7, #12
	cmp	r1, #0
	bge	.L1f618
	add	r6, r1
	mov	r1, #0
.L1f618:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.L1f622
	mov	r3, #0x1e
	sub	r6, r3, r1
.L1f622:
	cmp	r2, #0
	bge	.L1f62a
	add	r5, r2
	mov	r2, #0
.L1f62a:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.L1f634
	mov	r3, #0x14
	sub	r5, r3, r2
.L1f634:
	cmp	r6, #0
	ble	.L1f66e
	cmp	r5, #0
	ble	.L1f66e
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.L1f642:
	mov	r3, r12
	mov	r0, r6
	add	r4, r1, r3
	cmp	r0, #0
	beq	.L1f65e
	ldr	r2, =0xffffefff
.L1f64e:
	ldrh	r3, [r4]
	and	r3, r2
	orr	r3, r7
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.L1f64e
.L1f65e:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.L1f642
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r12
	strb	r3, [r2]
.L1f66e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801f5f0

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

