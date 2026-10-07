	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80908e0  @ 0x080908e0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ed0
	mov	r1, #0xc4
	ldr	r6, [r3]
	mov	r0, #0xa9
	lsl	r1, #5
	lsl	r0, #1
	add	r5, r6, r1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L908fa
	b	.L90a44
.L908fa:
	ldr	r2, =0x2a01
	add	r1, r6, r2
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L90908
	b	.L90a44
.L90908:
	add	r2, #1
	add	r3, r6, r2
	ldrb	r2, [r3]
	add	r2, #1
	strb	r2, [r3]
	lsl	r2, #24
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	asr	r2, #24
	cmp	r2, r3
	bge	.L90948
	mov	r3, #0xe0
	lsl	r3, #2
	ldr	r4, =0x53f
	add	r1, r6, r3
	mov	r0, #0
.L90928:
	ldrh	r3, [r1]
	ldrh	r2, [r5]
	add	r0, #1
	add	r3, r2
	strh	r3, [r1]
	add	r5, #2
	add	r1, #2
	cmp	r0, r4
	ble	.L90928
	b	.L90966

	.pool_aligned

.L90948:
	mov	r1, #0xe0
	mov	r2, #0xe0
	lsl	r1, #2
	lsl	r2, #4
	add	r0, r6, r1
	add	r1, r6, r2
	mov	r2, #0xa8
	ldr	r3, =Func_8001af8
	lsl	r2, #4
	bl	_call_via_r3
	ldr	r3, =0x2a01
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
.L90966:
	mov	r1, #0xa8
	lsl	r1, #6
	add	r3, r6, r1
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #7
	mov	r2, #0x8c
	add	r3, r6, r3
	lsl	r2, #6
	add	r4, r3, r2
	mov	r3, #0xf8
	mov	r2, #0xe0
	lsl	r3, #7
	mov	r0, #0xe0
	lsl	r2, #2
	ldr	r7, .L90998	@ 0x3e0
	ldr	r5, .L9099c	@ 0x1f
	mov	r12, r3
	lsl	r0, #1
	add	r1, r6, r2
	b	.L909a8

	.align	2, 0
.L90998:
	.word	0x3e0
.L9099c:
	.word	0x1f
	.pool

.L909a8:
	ldrh	r3, [r1]
	mov	r2, r12
	and	r2, r3
	ldrh	r3, [r1, #2]
	lsl	r3, #16
	asr	r3, #21
	and	r3, r7
	orr	r2, r3
	ldrh	r3, [r1, #4]
	lsl	r3, #16
	asr	r3, #26
	and	r3, r5
	orr	r2, r3
	sub	r0, #1
	strh	r2, [r4]
	add	r1, #6
	add	r4, #2
	cmp	r0, #0
	bne	.L909a8
	mov	r3, #0xa8
	lsl	r3, #6
	add	r1, r6, r3
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	ldrb	r2, [r1]
	lsl	r3, r2, #3
	sub	r3, r2
	lsl	r3, #7
	mov	r1, #0x8c
	add	r0, r6, r3
	lsl	r1, #6
	ldr	r5, =gDMATaskCount
	add	r6, r0, r1
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r1, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.L90a16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r5
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r6}
	strh	r2, [r5]
	mov	r2, #0xa0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000070
	str	r2, [r3]
.L90a16:
	strh	r1, [r4]
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.L90a42
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r1, #0x93
	add	r2, #1
	add	r3, r5
	lsl	r1, #6
	add	r3, #4
	strh	r2, [r5]
	add	r2, r0, r1
	stmia	r3!, {r2}
	ldr	r2, =0x5000200
	stmia	r3!, {r2}
	ldr	r2, =0x84000070
	str	r2, [r3]
.L90a42:
	strh	r6, [r4]
.L90a44:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80908e0

