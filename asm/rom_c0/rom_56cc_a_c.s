	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005b64
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f1c
	sub	sp, #0x14
	mov	r5, r0
	ldr	r6, [r3]
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	add	r1, sp, #4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5b84:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5b84
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L79b8
	add	r1, sp, #4
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r3, #24
.L5b9e:
	ldr	r2, [r1, #8]
	and	r2, r3
	cmp	r2, #0
	bne	.L5b9e
	add	r0, sp, #4
	mov	r3, #0x10
	mov	r1, r6
	strb	r3, [r0, #7]
	strh	r2, [r0, #0xa]
	ldr	r3, =REG_DMA3SAD
	add	r1, #0x40
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L5bc0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L5bc0
	mov	r0, r5
	bl	Func_8005868
	cmp	r0, #0
	beq	.L5bd6
	mov	r0, #1
	b	.L5be8
.L5bd6:
	mov	r2, r5
	mov	r3, #0x10
	add	r2, #0x10
	strb	r0, [r6, r5]
	strb	r3, [r6, r2]
	lsl	r3, r5, #1
	add	r3, #0x20
	strh	r0, [r6, r3]
	mov	r0, #0
.L5be8:
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8005b64

