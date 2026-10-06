	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b810  @ 0x0801b810
	push	{r5, r6, r7, lr}
	ldr	r1, =0x39e
	mov	r7, r0
	add	r6, r7, r1
	ldrh	r1, [r6]
	bl	Func_801b9a8
	ldr	r3, =0x3a2
	add	r2, r7, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xe5
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r1, [r3]
	mov	r3, r1
	cmp	r3, #5
	bhi	.L1b83c
	b	.L1b948
.L1b83c:
	mov	r2, #0xe7
	lsl	r2, #2
	add	r5, r7, r2
	ldrh	r1, [r5]
	ldrh	r2, [r6]
	mov	r3, r1
	orr	r3, r2
	cmp	r3, #0
	beq	.L1b888
	mov	r6, r2
	cmp	r6, #1
	bne	.L1b87a
	mov	r3, r1
	cmp	r3, #0
	beq	.L1b87a
	mov	r3, #8
	strh	r3, [r7, #8]
	ldr	r1, =0xffff
	ldrh	r3, [r5]
	add	r3, r1
	strh	r3, [r5]
	mov	r0, r7
	mov	r1, #0
	bl	Func_801ba68
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L1b876
	strh	r3, [r7, #0xa]
.L1b876:
	strh	r6, [r7, #0x3e]
	b	.L1b95c
.L1b87a:
	ldr	r3, =0x39e
	add	r2, r7, r3
	ldrh	r3, [r2]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r2]
	b	.L1b95c
.L1b888:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	mov	r0, #0
	ldr	r5, [r3]
	strh	r0, [r7, #0x3e]
	ldr	r3, [r5, #4]
	mov	r1, #0x40
	cmp	r3, #0
	beq	.L1b8b0
	mov	r2, #0xc
.L1b89e:
	ldrh	r3, [r5, #0x10]
	add	r3, r1
	strh	r3, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	sub	r1, #0x10
	cmp	r3, #0
	bne	.L1b89e
.L1b8b0:
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r5, [r3]
	b	.L1b8c0
.L1b8ba:
	mov	r0, #1
	bl	WaitFrames
.L1b8c0:
	mov	r3, #0x10
	ldrsh	r2, [r5, r3]
	mov	r1, #0x18
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	bne	.L1b8ba
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r7, r2
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #5
	beq	.L1b8e6
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #5
.L1b8e0:
	add	r1, #1
	cmp	r1, r3
	bne	.L1b8e0
.L1b8e6:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	add	r2, #0x54
	ldr	r5, [r3]
	add	r3, r7, r2
	strh	r1, [r3]
	ldr	r3, =0x39e
	add	r2, r7, r3
	mov	r3, #4
	strh	r3, [r2]
	cmp	r5, #0
	beq	.L1b91e
	lsl	r3, r1, #1
	mov	r1, #0xd5
	add	r3, r7
	lsl	r1, #2
	add	r6, r3, r1
.L1b90a:
	ldrh	r0, [r6]
	ldrh	r1, [r6, #0x20]
	mov	r2, r5
	mov	r3, #1
	bl	Func_801bd98
	ldr	r5, [r5, #4]
	add	r6, #2
	cmp	r5, #0
	bne	.L1b90a
.L1b91e:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r1, =0x396
	ldr	r5, [r3]
	add	r3, r7, r1
	ldrh	r1, [r3]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L1b942
	ldr	r2, =0xfff4
.L1b934:
	strh	r1, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	add	r1, #0x10
	cmp	r3, #0
	bne	.L1b934
.L1b942:
	mov	r3, #1
	strh	r3, [r7, #0xa]
	b	.L1b95c
.L1b948:
	ldrh	r2, [r6]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1b956
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.L1b95a
.L1b956:
	ldr	r2, =0xffff
	add	r3, r1, r2
.L1b95a:
	strh	r3, [r6]
.L1b95c:
	ldr	r3, =0x3a2
	ldr	r1, =0x39e
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r7, r1
	ldrh	r1, [r3]
	mov	r0, r7
	bl	Func_801b9ec
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_801b010
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b810

