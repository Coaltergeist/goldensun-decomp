	.include "macros.inc"
	.include "gba.inc"

	.section .text.before, "ax", %progbits

.thumb_func_start SomethingSaveHeader  @ 0x08005920
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f1c
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r10, r3
	mov	r5, r1
	mov	r1, #0x40
	mov	r8, r0
	mov	r3, #0
	mov	r0, sp
	add	r1, r10
	str	r3, [r0]
	mov	r9, r1
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000400
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5950:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5950
	mov	r0, r8
	bl	Func_8005b24
	mov	r7, r0
	mov	r0, r8
	bl	Func_8005810
	mov	r6, r0
	mov	r0, #1
	cmp	r6, #0xf
	bhi	.L5a46
	mov	r1, r10
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	add	r1, #0x50
	ldr	r2, =0x840003fc
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5982:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5982
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L79b8
	add	r1, sp, #4
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L599c:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L599c
	add	r5, sp, #4
	mov	r2, r8
	strb	r2, [r5, #7]
	bl	Func_8005ae0
	strh	r0, [r5, #8]
	mov	r0, r8
	bl	Func_8005c2c
	add	r0, #1
	strh	r0, [r5, #0xa]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r9
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L59cc:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L59cc
	mov	r0, r6
	bl	Func_8005868
	cmp	r0, #0
	bne	.L5a26
	cmp	r7, #0xf
	bhi	.L59ec
	mov	r0, r7
	bl	Func_8005b64
	cmp	r0, #0
	bne	.L5a26
.L59ec:
	ldrh	r3, [r5, #0xa]
	ldr	r1, =0xfde8
	cmp	r3, r1
	bls	.L5a2c
	mov	r3, #1
	strh	r3, [r5, #0xa]
	mov	r0, r5
	ldr	r3, =REG_DMA3SAD
	mov	r1, r9
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5a0a:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5a0a
	mov	r0, r7
	bl	Func_8005868
	cmp	r0, #0
	bne	.L5a26
	mov	r0, r6
	bl	Func_8005b64
	cmp	r0, #0
	beq	.L5a2a
.L5a26:
	mov	r0, #1
	b	.L5a46
.L5a2a:
	mov	r6, r7
.L5a2c:
	mov	r2, r10
	mov	r3, #1
	strb	r3, [r2, r6]
	mov	r3, r6
	add	r3, #0x10
	mov	r1, r8
	strb	r1, [r2, r3]
	lsl	r3, r6, #1
	ldrh	r2, [r5, #0xa]
	add	r3, #0x20
	mov	r1, r10
	strh	r2, [r1, r3]
	mov	r0, #0
.L5a46:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SomethingSaveHeader
