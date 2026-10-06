	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f2f10  @ 0x080f2f10
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ed0
	mov	r1, #0xe0
	ldr	r5, [r3]
	ldr	r2, =0x3001
	lsl	r1, #5
	add	r4, r5, r1
	add	r1, r5, r2
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lf2f2a
	b	.Lf3060
.Lf2f2a:
	add	r2, #1
	add	r3, r5, r2
	ldrb	r2, [r3]
	add	r2, #1
	strb	r2, [r3]
	lsl	r2, #24
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	asr	r2, #24
	cmp	r2, r3
	bge	.Lf2f6c
	mov	r3, #0x80
	lsl	r3, #3
	ldr	r6, =0x5ff
	add	r1, r5, r3
	mov	r0, #0
.Lf2f4a:
	ldrh	r3, [r1]
	ldrh	r2, [r4]
	add	r0, #1
	add	r3, r2
	strh	r3, [r1]
	add	r4, #2
	add	r1, #2
	cmp	r0, r6
	ble	.Lf2f4a
	b	.Lf2f88

	.pool_aligned

.Lf2f6c:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #5
	lsl	r2, #3
	add	r0, r5, r1
	ldr	r3, =REG_DMA3SAD
	add	r1, r5, r2
	ldr	r2, =0x84000300
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x3001
	add	r2, r5, r3
	mov	r3, #0
	strb	r3, [r2]
.Lf2f88:
	mov	r1, #0xc0
	lsl	r1, #6
	add	r3, r5, r1
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r3, #10
	mov	r2, #0xa0
	add	r3, r5, r3
	lsl	r2, #6
	add	r4, r3, r2
	mov	r3, #0xf8
	mov	r2, #0x80
	lsl	r3, #7
	mov	r0, #0x80
	lsl	r2, #3
	ldr	r7, .Lf2fb4	@ 0x3e0
	ldr	r6, .Lf2fb8	@ 0x1f
	mov	r12, r3
	lsl	r0, #2
	add	r1, r5, r2
	b	.Lf2fc8

	.align	2, 0
.Lf2fb4:
	.word	0x3e0
.Lf2fb8:
	.word	0x1f
	.pool

.Lf2fc8:
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
	and	r3, r6
	orr	r2, r3
	sub	r0, #1
	strh	r2, [r4]
	add	r1, #6
	add	r4, #2
	cmp	r0, #0
	bne	.Lf2fc8
	mov	r3, #0xc0
	lsl	r3, #6
	add	r1, r5, r3
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	ldrb	r3, [r1]
	mov	r1, #0xa0
	lsl	r3, #10
	add	r0, r5, r3
	lsl	r1, #6
	ldr	r5, =gDMATaskCount
	add	r6, r0, r1
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r1, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.Lf3032
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
	ldr	r2, =0x84000080
	str	r2, [r3]
.Lf3032:
	strh	r1, [r4]
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r2, [r5]
	cmp	r2, #0x1f
	bgt	.Lf305e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r1, #0xa8
	add	r2, #1
	add	r3, r5
	lsl	r1, #6
	add	r3, #4
	strh	r2, [r5]
	add	r2, r0, r1
	stmia	r3!, {r2}
	ldr	r2, =0x5000200
	stmia	r3!, {r2}
	ldr	r2, =0x84000080
	str	r2, [r3]
.Lf305e:
	strh	r6, [r4]
.Lf3060:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f2f10

