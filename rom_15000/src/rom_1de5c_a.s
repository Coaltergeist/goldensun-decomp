	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_1de5c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	mov	r8, r3
	ldr	r3, =iwram_1e8c
	mov	r5, #0x80
	ldr	r3, [r3]
	lsl	r5, #4
	mov	r6, r0
	mov	r0, r5
	mov	r11, r3
	bl	Func_4938
	str	r0, [sp, #8]
	ldr	r0, =0x13
	bl	Func_2f40
	ldr	r3, =0xea7
	str	r0, [sp, #4]
	add	r3, r11
	ldrb	r3, [r3]
	lsl	r3, #12
	str	r3, [sp]
	mov	r1, #0x10
	ldr	r3, =Func_8d4
	add	r0, sp, #0x14
	bl	_call_via_r3
	mov	r2, #0xf0
	ldr	r1, [sp]
	lsl	r2, #8
	cmp	r1, r2
	bne	.L1ded4
	add	r3, sp, #0x14
	mov	r10, r3
	ldr	r3, =0xeae
	add	r3, r11
	ldrh	r2, [r3]
	ldr	r1, =.L371b4
	mov	r3, #0xf
	and	r3, r2
	ldrb	r3, [r1, r3]
	mov	r4, r10
	strb	r3, [r4, #1]
	mov	r3, #3
	strb	r3, [r4, #3]
	ldr	r0, [sp, #8]
	ldr	r3, =Func_8d8
	mov	r1, r5
	ldr	r2, =0x4040404
	bl	_call_via_r3
	b	.L1def6
.L1ded4:
	ldr	r3, =0xeae
	add	r3, r11
	ldrb	r2, [r3]
	mov	r7, #0x14
	mov	r3, #0xf
	add	r7, sp
	and	r3, r2
	strb	r3, [r7, #1]
	mov	r3, #1
	strb	r3, [r7, #3]
	ldr	r0, [sp, #8]
	ldr	r3, =Func_8d8
	mov	r1, r5
	ldr	r2, =0xe0e0e0e
	mov	r10, r7
	bl	_call_via_r3
.L1def6:
	cmp	r6, #0
	bne	.L1defc
	b	.L1e042
.L1defc:
	b	.L1e036
.L1defe:
	cmp	r1, #0x1e
	bhi	.L1dfb6
	sub	r3, r1, #3
	cmp	r3, #0x1a
	bls	.L1df0a
	b	.L1e036
.L1df0a:
	ldr	r2, =.L1df14
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1df14:
	.word	.L1dfaa
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1df98
	.word	.L1df80
	.word	.L1df98
	.word	.L1df98
	.word	.L1dfb2
	.word	.L1dfb2
	.word	.L1e036
	.word	.L1dfb0
	.word	.L1dfb0
	.word	.L1e036
	.word	.L1dfb2
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1e036
	.word	.L1dfb0
	.word	.L1dfb2
.L1df80:
	ldr	r3, =0xeae
	ldrh	r1, [r6]
	add	r3, r11
	strh	r1, [r3]
	ldr	r2, =.L371b4
	mov	r3, #0xf
	and	r3, r1
	ldrb	r3, [r2, r3]
	mov	r1, r10
	add	r6, #2
	strb	r3, [r1, #1]
	b	.L1e036
.L1df98:
	ldr	r3, =0xeae
	mov	r2, #0xf
	add	r3, r11
	strh	r2, [r3]
	ldr	r3, =.L371b4
	ldrb	r3, [r3, r2]
	mov	r2, r10
	strb	r3, [r2, #1]
	b	.L1e036
.L1dfaa:
	ldr	r3, =Data_370d4
	ldrb	r3, [r3]
	b	.L1e034
.L1dfb0:
	add	r6, #2
.L1dfb2:
	add	r6, #2
	b	.L1e036
.L1dfb6:
	mov	r3, #0xff
	and	r1, r3
	ldr	r4, [sp, #4]
	ldr	r0, [sp, #8]
	lsl	r3, r1, #5
	mov	r7, #0
	add	r5, r4, r3
	add	r0, r8
	mov	r9, r7
	mov	r14, r10
.L1dfca:
	ldmia	r5!, {r2}
	mov	r4, #3
.L1dfce:
	mov	r7, #0xf
	mov	r3, r2
	and	r3, r7
	mov	r7, r14
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L1dfde
	strb	r3, [r0]
.L1dfde:
	lsr	r2, #4
	mov	r7, #0xf
	mov	r3, r2
	and	r3, r7
	mov	r7, r10
	ldrb	r3, [r7, r3]
	add	r0, #1
	cmp	r3, #0
	beq	.L1dff2
	strb	r3, [r0]
.L1dff2:
	sub	r4, #1
	add	r0, #1
	lsr	r2, #4
	cmp	r4, #0
	bge	.L1dfce
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r0, #0xf8
	cmp	r3, #7
	ble	.L1dfca
	ldr	r4, =0xf01d
	cmp	r12, r4
	beq	.L1e014
	ldr	r7, =0xf01f
	cmp	r12, r7
	bne	.L1e01a
.L1e014:
	mov	r1, #8
	add	r8, r1
	b	.L1e036
.L1e01a:
	ldr	r2, =0xf01e
	cmp	r12, r2
	bne	.L1e024
	mov	r3, #3
	b	.L1e034
.L1e024:
	cmp	r1, #0x1f
	bls	.L1e032
	ldr	r2, =Data_370d4
	mov	r3, r1
	sub	r3, #0x20
	ldrb	r3, [r2, r3]
	b	.L1e034
.L1e032:
	mov	r3, #1
.L1e034:
	add	r8, r3
.L1e036:
	ldrh	r1, [r6]
	add	r6, #2
	mov	r12, r1
	cmp	r1, #0
	beq	.L1e042
	b	.L1defe
.L1e042:
	mov	r3, r8
	add	r3, #7
	lsr	r6, r3, #3
	ldr	r5, [sp, #8]
	mov	r1, #0x80
	lsl	r4, r6, #2
	lsl	r7, r6, #3
	lsl	r1, #1
	mov	r2, #7
	mov	r0, r5
	mov	r10, r4
	mov	r8, r7
	mov	r14, r1
	mov	r9, r2
.L1e05e:
	cmp	r6, #0
	beq	.L1e096
	ldr	r3, =0xff00ff0
	ldr	r7, =0xff00ff
	mov	r12, r3
	mov	r4, r6
.L1e06a:
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	lsl	r3, r1, #4
	orr	r1, r3
	lsr	r3, r2, #4
	orr	r2, r3
	mov	r3, r12
	and	r1, r3
	and	r2, r7
	lsl	r3, r1, #8
	orr	r1, r3
	lsr	r3, r2, #8
	orr	r2, r3
	lsl	r3, r1, #4
	lsr	r3, #16
	lsl	r2, #16
	orr	r3, r2
	sub	r4, #1
	add	r5, #8
	stmia	r0!, {r3}
	cmp	r4, #0
	bne	.L1e06a
.L1e096:
	mov	r4, r10
	mov	r2, #1
	sub	r3, r0, r4
	mov	r7, r14
	mov	r1, r8
	neg	r2, r2
	add	r0, r3, r7
	add	r9, r2
	sub	r3, r5, r1
	add	r5, r3, r7
	mov	r3, r9
	cmp	r3, #0
	bge	.L1e05e
	cmp	r6, #0
	bne	.L1e0b6
	b	.L1e22a
.L1e0b6:
	ldr	r4, =0xea2
	mov	r7, #0xea
	mov	r1, #0xda
	ldr	r2, =0x3ff
	add	r4, r11
	lsl	r7, #4
	lsl	r1, #4
	ldr	r0, [sp, #8]
	mov	r14, r4
	add	r7, r11
	mov	r12, r1
	mov	r8, r2
	mov	r9, r6
.L1e0d0:
	mov	r3, r14
	ldrb	r2, [r3]
	mov	r5, #0x7f
	cmp	r2, #0
	beq	.L1e0dc
	mov	r5, #0xff
.L1e0dc:
	ldr	r4, [sp, #0x10]
	ldrh	r3, [r4]
	mov	r1, r8
	and	r1, r3
	mov	r3, r1
	sub	r3, #0x80
	cmp	r3, #0x7f
	bls	.L1e1a0
	cmp	r2, #0
	beq	.L1e100
	mov	r2, #0x80
	lsl	r2, #2
	cmp	r1, r2
	bcc	.L1e100
	mov	r3, #0xa0
	lsl	r3, #2
	cmp	r1, r3
	bcc	.L1e1a0
.L1e100:
	ldrh	r1, [r7]
	mov	r2, r12
	and	r1, r5
	add	r3, r1, r2
	mov	r2, r11
	ldrb	r3, [r2, r3]
	mov	r4, #0
	cmp	r3, #0
	beq	.L1e12a
.L1e112:
	add	r1, #1
	add	r4, #1
	and	r1, r5
	cmp	r4, r5
	bhi	.L1e12a
	mov	r2, #0xda
	lsl	r2, #4
	add	r3, r1, r2
	mov	r2, r11
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	bne	.L1e112
.L1e12a:
	add	r3, r1, #1
	and	r3, r5
	strh	r3, [r7]
	mov	r3, r12
	add	r2, r1, r3
	mov	r4, r11
	mov	r3, #1
	strb	r3, [r4, r2]
	cmp	r1, #0x7f
	bls	.L1e190
	mov	r2, #0xc0
	lsl	r2, #1
	add	r1, r2
	b	.L1e194

	.pool_aligned

.L1e190:
	mov	r3, #0x80
	orr	r1, r3
.L1e194:
	ldr	r3, [sp]
	ldr	r4, [sp, #0x10]
	orr	r3, r1
	strh	r3, [r4]
	ldr	r2, [sp, #0xc]
	strh	r3, [r2]
.L1e1a0:
	mov	r3, #0xc0
	lsl	r2, r1, #5
	lsl	r3, #19
	add	r1, r2, r3
	ldr	r4, =0x6000004
	ldr	r3, [r0]
	str	r3, [r1]
	add	r1, r2, r4
	mov	r4, #0x80
	lsl	r4, #1
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r1]
	ldr	r3, =0x6000008
	lsl	r4, #2
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r1]
	ldr	r3, =0x600000c
	lsl	r4, #2
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r1]
	ldr	r3, =0x6000010
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xa0
	str	r3, [r1]
	ldr	r3, =0x6000014
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r1]
	ldr	r3, =0x6000018
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xe0
	str	r3, [r1]
	ldr	r3, =0x600001c
	lsl	r4, #3
	add	r1, r2, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	str	r3, [r1]
	mov	r3, #1
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	add	r9, r3
	add	r1, #2
	add	r2, #2
	mov	r4, r9
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	add	r0, #4
	cmp	r4, #0
	beq	.L1e22a
	b	.L1e0d0
.L1e22a:
	ldr	r0, [sp, #8]
	bl	Func_2df0
	mov	r0, r6
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_1de5c

.thumb_func_start Func_1e260
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r3
	ldr	r3, =iwram_1e8c
	mov	r7, r2
	ldr	r5, [r3]
	ldr	r2, =0xea2
	lsl	r1, #5
	add	r3, r5, r2
	add	r1, r0
	ldrb	r3, [r3]
	lsl	r1, #1
	mov	r6, #0
	sub	sp, #4
	add	r0, r1, r5
	mov	r8, r3
	cmp	r6, r11
	bcs	.L1e2f0
	mov	r3, #0x20
	sub	r3, r7
	lsl	r3, #1
	str	r3, [sp]
.L1e296:
	mov	r4, #0
	cmp	r4, r7
	bcs	.L1e2e6
	ldr	r3, =0x3ff
	ldr	r2, =0x1ff
	mov	r9, r3
	ldr	r3, =0x27f
	mov	r10, r2
	mov	r2, #0xff
	mov	r14, r3
	mov	r12, r2
.L1e2ac:
	ldrh	r3, [r0]
	mov	r2, r9
	and	r2, r3
	mov	r3, r2
	sub	r3, #0x80
	add	r0, #2
	cmp	r3, #0x7f
	bls	.L1e2ca
	mov	r3, r8
	cmp	r3, #0
	beq	.L1e2e0
	cmp	r2, r10
	bls	.L1e2e0
	cmp	r2, r14
	bhi	.L1e2e0
.L1e2ca:
	mov	r3, r12
	and	r2, r3
	mov	r3, #0x80
	eor	r2, r3
	mov	r3, #0xda
	lsl	r3, #4
	add	r2, r3
	ldrb	r1, [r5, r2]
	mov	r3, #0xfc
	and	r3, r1
	strb	r3, [r5, r2]
.L1e2e0:
	add	r4, #1
	cmp	r4, r7
	bcc	.L1e2ac
.L1e2e6:
	ldr	r2, [sp]
	add	r6, #1
	add	r0, r2
	cmp	r6, r11
	bcc	.L1e296
.L1e2f0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e260

.thumb_func_start Func_1e318
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r2, #0x1e
	ldr	r5, [r3]
	mov	r9, r2
	ldr	r2, =0xea2
	add	r3, r5, r2
	ldrb	r7, [r3]
	mov	r4, r5
	mov	r6, #0x14
.L1e334:
	mov	r3, r9
	cmp	r3, #0
	beq	.L1e384
	ldr	r2, =0x3ff
	ldr	r3, =0x1ff
	mov	r10, r2
	ldr	r2, =0x27f
	mov	r8, r3
	mov	r3, #0xff
	mov	r0, r9
	mov	r14, r2
	mov	r12, r3
.L1e34c:
	ldrh	r3, [r4]
	mov	r1, r10
	and	r1, r3
	mov	r3, r1
	sub	r3, #0x80
	add	r4, #2
	cmp	r3, #0x7f
	bls	.L1e368
	cmp	r7, #0
	beq	.L1e37e
	cmp	r1, r8
	bls	.L1e37e
	cmp	r1, r14
	bhi	.L1e37e
.L1e368:
	mov	r2, r12
	and	r1, r2
	mov	r3, #0x80
	eor	r1, r3
	mov	r3, #0xda
	lsl	r3, #4
	add	r1, r3
	ldrb	r3, [r5, r1]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r5, r1]
.L1e37e:
	sub	r0, #1
	cmp	r0, #0
	bne	.L1e34c
.L1e384:
	sub	r6, #1
	cmp	r6, #0
	bne	.L1e334
	mov	r3, #0xda
	lsl	r3, #4
	mov	r1, #0
	mov	r6, #0xff
	add	r2, r5, r3
.L1e394:
	ldrb	r3, [r2]
	cmp	r3, #1
	bne	.L1e39c
	strb	r1, [r2]
.L1e39c:
	sub	r6, #1
	add	r2, #1
	cmp	r6, #0
	bge	.L1e394
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_1e318

.thumb_func_start Func_1e3c8
	push	{lr}
	ldr	r3, =iwram_1e8c
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.L1e3f0
	ldr	r3, =0xea2
	mov	r4, #0xe2
	add	r2, r1, r3
	lsl	r4, #4
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	mov	r3, #0x80
	add	r2, r1, r4
.L1e3e4:
	add	r3, #1
	strb	r0, [r2]
	add	r2, #1
	cmp	r3, #0xff
	ble	.L1e3e4
	b	.L1e40c
.L1e3f0:
	ldr	r3, =0xea2
	mov	r4, #0xe2
	add	r2, r1, r3
	lsl	r4, #4
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0
	add	r2, r1, r4
	mov	r3, #0x7f
.L1e402:
	sub	r3, #1
	strb	r0, [r2]
	add	r2, #1
	cmp	r3, #0
	bge	.L1e402
.L1e40c:
	pop	{r0}
	bx	r0
.func_end Func_1e3c8

