	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b7d8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xc1
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x63
	bne	.L37f0
	mov	r3, #0
	strh	r3, [r2]
.L37f0:
	mov	r0, #0xbc
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x2f1
	bl	__Func_8079358
	mov	r0, #0xbe
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	mov	r0, #0x62
	mov	r1, #5
	bl	__Func_8091eb0
	ldr	r5, =ewram_2000240
	ldr	r3, =0x22b
	add	r2, r5, r3
	mov	r3, #3
	strb	r3, [r2]
	mov	r0, #0x62
	mov	r1, #7
	bl	__Func_8091eb0
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	ldr	r0, [r5]
	bl	__Func_8092054
	mov	r3, #2
	add	r0, #0x55
	strb	r3, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b7d8

.thumb_func_start OvlFunc_881_200b84c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x36
	bl	__Func_8092054
	mov	r8, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xdb
	bl	__Func_80f9080
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r8
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r2]
	str	r3, [r5, #0x28]
	add	r2, #0xc
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	add	r2, #0x61
	strb	r3, [r2]
	ldr	r7, =0x3333
	mov	r6, #0x3b
.L38ae:
	ldr	r3, [r5, #0x28]
	add	r3, r7
	str	r3, [r5, #0x28]
	mov	r2, r8
	ldr	r3, [r2, #0x28]
	add	r3, r7
	str	r3, [r2, #0x28]
	mov	r0, #1
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	bge	.L38ae
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	mov	r0, #0x91
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r0, =2
	mov	r1, #0x1b
	bl	__Func_8091e3c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b84c

.thumb_func_start OvlFunc_881_200b8fc
	push	{lr}
	ldr	r0, =REG_BLDCNT
	ldr	r1, =0x3f41
	bl	__Func_800387c
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L393c
	ldr	r3, =.L67a0
	ldr	r1, .L3924	@ 0xc
	ldrh	r3, [r3]
	ldr	r0, =REG_BLDALPHA
	orr	r1, r3
	bl	__Func_800387c
	b	.L394a

	.align	2, 0
.L3924:
	.word	0xc
	.pool

.L393c:
	ldr	r3, =.L67a0
	ldr	r1, .L3950	@ 0x10
	ldrh	r3, [r3]
	ldr	r0, =REG_BLDALPHA
	orr	r1, r3
	bl	__Func_800387c
.L394a:
	pop	{r0}
	bx	r0

	.align	2, 0
.L3950:
	.word	0x10
.func_end OvlFunc_881_200b8fc

.thumb_func_start OvlFunc_881_200b95c
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r3, #0xa
	ldrsh	r5, [r0, r3]
	ldr	r3, =iwram_3001e40
	mov	r2, #0x12
	ldrsh	r6, [r0, r2]
	mov	r1, #3
	ldr	r0, [r3]
	bl	_Func_8000b50
	cmp	r0, #0
	bne	.L39e8
	bl	__Func_8004458
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #1
	beq	.L39ac
	cmp	r0, #1
	bcc	.L399c
	cmp	r0, #2
	beq	.L39bc
	cmp	r0, #3
	beq	.L39d4
	b	.L39e8
.L399c:
	ldr	r3, =0xffff0000
	lsl	r0, r5, #16
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r2, r6, #16
	mov	r1, #1
	b	.L39c8
.L39ac:
	mov	r2, #0x80
	lsl	r2, #9
	ldr	r3, =0xffff0000
	lsl	r0, r5, #16
	add	r0, r2
	mov	r1, #1
	lsl	r2, r6, #16
	b	.L39c8
.L39bc:
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r0, r5, #16
	lsl	r2, r6, #16
	mov	r1, #1
	add	r0, r3
.L39c8:
	add	r2, r3
	neg	r1, r1
	mov	r3, #1
	bl	__Func_80933f8
	b	.L39e8
.L39d4:
	ldr	r3, =0xffff0000
	lsl	r0, r5, #16
	lsl	r2, r6, #16
	mov	r1, #1
	add	r0, r3
	add	r2, r3
	neg	r1, r1
	mov	r3, #1
	bl	__Func_80933f8
.L39e8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b95c

.thumb_func_start OvlFunc_881_200b9fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r0, #0x80
	lsl	r0, #7
	bl	__Func_8004970
	mov	r7, r0
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x109
	bl	__Func_8079374
	bl	__Func_8011590
	mov	r1, r7
	ldr	r0, =.L47a6
	bl	__Func_8005340
	mov	r2, #0x80
	lsl	r2, #5
	add	r1, r7, r2
	ldr	r0, =.L44ec
	bl	__Func_8005340
	ldr	r6, =ewram_2002090
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r0, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3a6a
	lsl	r3, r2, #1
	add	r3, r2
	mov	r1, r8
	add	r2, #1
	lsl	r3, #2
	strh	r2, [r6]
	lsl	r2, r1, #5
	ldr	r1, =.L44ac
	add	r3, r6
	add	r3, #4
	add	r2, r1
	stmia	r3!, {r2}
	ldr	r2, =0x50001c0
	stmia	r3!, {r2}
	ldr	r2, =0x80000010
	str	r2, [r3]
.L3a6a:
	strh	r0, [r5]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3a90
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r6
	add	r3, #4
	add	r2, #1
	stmia	r3!, {r7}
	strh	r2, [r6]
	ldr	r2, =0x6001000
	stmia	r3!, {r2}
	ldr	r2, =0x84000400
	str	r2, [r3]
.L3a90:
	strh	r1, [r5]
	ldr	r0, =OvlFunc_881_200b8fc
	mov	r1, #0xc8
	lsl	r1, #4
	bl	__Func_80041d8
	bl	__Func_80916b0
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3aca
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xea
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3aca:
	strh	r1, [r5]
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x54
	strb	r3, [r0]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0xf6
	bl	__Func_80f9080
	ldr	r3, =.L67a0
	mov	r8, r3
	ldr	r3, .L3b34
	mov	r0, r8
	strh	r3, [r0]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3b78
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xd2
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
	b	.L3b78

	.align	2, 0
.L3b34:
	.word	0xe00
	.pool

.L3b78:
	strh	r1, [r5]
	mov	r0, #2
	bl	__Func_809163c
	ldr	r3, =0xd00
	mov	r1, r8
	strh	r3, [r1]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3bc0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xba
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
	b	.L3bc0

	.pool_aligned

.L3bc0:
	strh	r1, [r5]
	mov	r0, #2
	bl	__Func_809163c
	ldr	r3, =0xc00
	mov	r1, r8
	strh	r3, [r1]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3c08
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xa2
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
	b	.L3c08

	.pool_aligned

.L3c08:
	strh	r1, [r5]
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #4
	mov	r11, r1
	mov	r2, r11
	mov	r3, r8
	strh	r2, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3c46
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0x8a
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3c46:
	strh	r1, [r5]
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #4
	mov	r9, r1
	mov	r2, r9
	mov	r3, r8
	strh	r2, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3c84
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xe4
	add	r2, #1
	add	r3, r6
	lsl	r0, #5
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3c84:
	strh	r1, [r5]
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #0x90
	lsl	r1, #4
	mov	r10, r1
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3cc2
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xb4
	add	r2, #1
	add	r3, r6
	lsl	r0, #5
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3cc2:
	strh	r1, [r5]
	mov	r0, #2
	bl	__Func_809163c
	ldr	r3, .L3cfc	@ 0x800
	mov	r1, r8
	strh	r3, [r1]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3d08
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0x84
	add	r2, #1
	add	r3, r6
	lsl	r0, #5
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
	b	.L3d08

	.align	2, 0
.L3cfc:
	.word	0x800
	.pool

.L3d08:
	strh	r1, [r5]
	mov	r0, #0x8c
	bl	__Func_809163c
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3d3a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xb4
	add	r2, #1
	add	r3, r6
	lsl	r0, #5
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3d3a:
	strh	r1, [r5]
	mov	r0, #4
	bl	__Func_809163c
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3d6c
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xe4
	add	r2, #1
	add	r3, r6
	lsl	r0, #5
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3d6c:
	strh	r1, [r5]
	mov	r0, #4
	bl	__Func_809163c
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3d9e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0x8a
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3d9e:
	strh	r1, [r5]
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, r10
	mov	r2, r8
	strh	r1, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3dd6
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xa2
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3dd6:
	strh	r1, [r5]
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, r9
	mov	r2, r8
	strh	r1, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3e0e
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xba
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3e0e:
	strh	r1, [r5]
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, r11
	mov	r2, r8
	strh	r1, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3e46
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xd2
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
.L3e46:
	strh	r1, [r5]
	mov	r0, #4
	bl	__Func_809163c
	ldr	r3, .L3e80	@ 0xc00
	mov	r1, r8
	strh	r3, [r1]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L3e8c
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	mov	r0, #0xea
	add	r2, #1
	add	r3, r6
	lsl	r0, #6
	add	r3, #4
	strh	r2, [r6]
	add	r2, r7, r0
	stmia	r3!, {r2}
	ldr	r2, =0x6002000
	stmia	r3!, {r2}
	ldr	r2, =0x84000140
	str	r2, [r3]
	b	.L3e8c

	.align	2, 0
.L3e80:
	.word	0xc00
	.pool

.L3e8c:
	strh	r1, [r5]
	bl	__Func_8011644
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b95c
	bl	__Func_80041d8
	mov	r0, #0x8d
	bl	__Func_80f9080
	ldr	r3, .L3ed8	@ 0xd00
	mov	r1, r8
	strh	r3, [r1]
	mov	r0, #4
	bl	__Func_809163c
	ldr	r3, .L3edc	@ 0xe00
	mov	r2, r8
	strh	r3, [r2]
	mov	r0, #4
	bl	__Func_809163c
	ldr	r3, .L3ee0	@ 0xf00
	mov	r0, r8
	strh	r3, [r0]
	mov	r0, #4
	bl	__Func_809163c
	ldr	r3, .L3ee4	@ 0x1000
	mov	r1, r8
	strh	r3, [r1]
	mov	r0, #0x2d
	bl	__Func_809163c
	bl	__Func_8091df4
	b	.L3eec

	.align	2, 0
.L3ed8:
	.word	0xd00
.L3edc:
	.word	0xe00
.L3ee0:
	.word	0xf00
.L3ee4:
	.word	0x1000
	.pool

.L3eec:
	bl	__Func_8091e20
	mov	r0, r7
	bl	__Func_8002df0
	ldr	r0, =0x101
	bl	__Func_8079358
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b9fc

