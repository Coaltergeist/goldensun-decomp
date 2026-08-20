	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DisplayMenuArrowCursor  @ 0x0801aeec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	lsr	r4, r3, #2
	mov	r3, #7
	mov	r8, r1
	and	r4, r3
	mov	r3, #0x34
	mov	r2, r8
	mul	r2, r3
	mov	r6, r0
	add	r3, r2, r6
	ldrh	r3, [r3, #0xa]
	cmp	r3, #0
	bne	.L1af10
	b	.L1b000
.L1af10:
	ldr	r0, =0x1ff
	add	r3, r6, r2
	add	r2, #0x10
	ldrh	r1, [r6, r2]
	mov	r5, r3
	mov	r12, r0
	add	r5, #0x28
	mov	r3, r12
	ldr	r7, =0xfffffe00
	and	r3, r1
	ldrh	r1, [r5, #6]
	mov	r0, r7
	and	r0, r1
	orr	r0, r3
	strh	r0, [r5, #6]
	add	r2, r6, r2
	ldrh	r3, [r2, #2]
	mov	r1, r8
	strb	r3, [r5, #4]
	cmp	r1, #0
	beq	.L1af5c
	ldrh	r2, [r6, #0x3c]
	mov	r3, r2
	ldr	r1, =.L342f8
	cmp	r3, #0
	beq	.L1af76
	lsl	r3, r0, #23
	lsr	r3, #23
	add	r3, r2
	b	.L1af6c

	.pool_aligned

.L1af5c:
	ldrh	r2, [r6, #8]
	mov	r3, r2
	ldr	r1, =.L33ef8
	cmp	r3, #0
	beq	.L1af76
	lsl	r3, r0, #23
	lsr	r3, #23
	sub	r3, r2
.L1af6c:
	mov	r2, r12
	and	r3, r2
	and	r0, r7
	orr	r0, r3
	strh	r0, [r5, #6]
.L1af76:
	mov	r3, #0x34
	mov	r0, r8
	mul	r0, r3
	mov	r3, r0
	add	r3, #0xc
	lsl	r2, r4, #7
	add	r2, r1, r2
	ldrh	r0, [r6, r3]
	mov	r1, #0x80
	bl	UploadSpriteGFX
	ldr	r3, .L1afb0	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	ldr	r0, =0x103
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1afde
	ldr	r1, =0x2e2
	add	r3, r6, r1
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L1afd4
	b	.L1afc4

	.align	2, 0
.L1afb0:
	.word	0x3ff
	.pool

.L1afc4:
	ldrb	r3, [r5, #5]
	mov	r2, #0xd
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r5, #5]
	b	.L1afde
.L1afd4:
	ldrb	r2, [r5, #5]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	strb	r3, [r5, #5]
.L1afde:
	mov	r1, #0xee
	mov	r0, r5
	bl	Func_8003dec
	mov	r3, #0x34
	mov	r2, r8
	mul	r2, r3
	mov	r3, r2
	mov	r1, r3
	add	r1, #8
	ldrh	r2, [r6, r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1b000
	ldr	r0, =0xffff
	add	r3, r2, r0
	strh	r3, [r6, r1]
.L1b000:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end DisplayMenuArrowCursor

