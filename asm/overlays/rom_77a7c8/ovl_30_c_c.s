	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_77a7c8_37d8
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
.func_end OvlFunc_77a7c8_37d8

.thumb_func_start OvlFunc_77a7c8_384c
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
.func_end OvlFunc_77a7c8_384c

.thumb_func_start OvlFunc_77a7c8_38fc
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
.func_end OvlFunc_77a7c8_38fc

.thumb_func_start OvlFunc_77a7c8_395c
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
.func_end OvlFunc_77a7c8_395c

.thumb_func_start OvlFunc_77a7c8_39fc
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
	ldr	r0, =OvlFunc_77a7c8_38fc
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
	ldr	r0, =OvlFunc_77a7c8_395c
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
.func_end OvlFunc_77a7c8_39fc

.thumb_func_start OvlFunc_77a7c8_3f10
	push	{r5, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L3f28
	mov	r1, #7
	bl	__Func_800c598
	b	.L3f30
.L3f28:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c598
.L3f30:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L3f42
	mov	r0, r5
	bl	OvlFunc_77a7c8_4058
.L3f42:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_77a7c8_3f10

.thumb_func_start OvlFunc_77a7c8_3f4c
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L3f6e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_800c598
.L3f6e:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L3f7e
	mov	r0, r6
	bl	OvlFunc_77a7c8_4058
.L3f7e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_77a7c8_3f4c

.thumb_func_start OvlFunc_77a7c8_3f88
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_3001e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3faa
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r5
	bl	__Func_800c598
.L3faa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_77a7c8_3f88

.thumb_func_start OvlFunc_77a7c8_3fb4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L3fd4
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L3ffe
.L3fd4:
	lsl	r0, #10
	bl	__Func_8002322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L3ffe:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_77a7c8_3fb4

.thumb_func_start OvlFunc_77a7c8_4004
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L4024
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L4050
.L4024:
	lsl	r0, #10
	bl	__Func_8002322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L4050:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_77a7c8_4004

.thumb_func_start OvlFunc_77a7c8_4058
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #8
	mov	r1, #0x3f
	mov	r6, r0
	mov	r11, r3
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L4078:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_800c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L4124
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L40ac	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L4124
	b	.L40b4

	.align	2, 0
.L40ac:
	.word	0
	.pool

.L40b4:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_8003f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_3001b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L411c	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L4124

	.align	2, 0
.L411c:
	.word	0xfffffc00
	.pool

.L4124:
	add	r7, #1
	cmp	r7, #1
	ble	.L4078
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_77a7c8_4004
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #4
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	mov	r3, r10
	ldr	r1, [r3, #4]
	ldr	r0, [r1, #0x50]
	ldrb	r3, [r0, #9]
	and	r2, r3
	ldr	r3, =OvlFunc_77a7c8_3fb4
	orr	r2, r4
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r2, [r0, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_77a7c8_4058

	.section .data
	.global .L49e4
	.global .L4a78
	.global .L4ac4
	.global .L4af4
	.global .L4b50
	.global .L4be4
	.global .L4c30
	.global .L4c74
	.global .L4d08
	.global .L4d54
	.global .L4d98
	.global .L4e2c
	.global .L4e78
	.global .L4ebc
	.global .L4f20
	.global .L4f7c
	.global .L501c
	.global .L50a8
	.global .L514c
	.global .L5158
	.global .L51b8
	.global .L5218
	.global .L5a2c
	.global .L5b84
	.global .L604c
	.global .L6154
	.global .L61e4
	.global .L625c
	.global .L628c
	.global .L62ec
	.global .L6394
	.global .L63c4
	.global .L63f4
	.global .L6718
	.global .L673c
	.global .L527c

.L44ac:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x44ac, (0x44ec-0x44ac)
.L44ec:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x44ec, (0x47a6-0x44ec)
.L47a6:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x47a6, (0x49e4-0x47a6)
.L49e4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x49e4, (0x4a78-0x49e4)
.L4a78:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4a78, (0x4ac4-0x4a78)
.L4ac4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4ac4, (0x4af4-0x4ac4)
.L4af4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4af4, (0x4b50-0x4af4)
.L4b50:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4b50, (0x4be4-0x4b50)
.L4be4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4be4, (0x4c30-0x4be4)
.L4c30:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4c30, (0x4c74-0x4c30)
.L4c74:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4c74, (0x4d08-0x4c74)
.L4d08:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4d08, (0x4d54-0x4d08)
.L4d54:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4d54, (0x4d98-0x4d54)
.L4d98:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4d98, (0x4e2c-0x4d98)
.L4e2c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4e2c, (0x4e78-0x4e2c)
.L4e78:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4e78, (0x4ebc-0x4e78)
.L4ebc:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4ebc, (0x4f20-0x4ebc)
.L4f20:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4f20, (0x4f7c-0x4f20)
.L4f7c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4f7c, (0x501c-0x4f7c)
.L501c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x501c, (0x50a8-0x501c)
.L50a8:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x50a8, (0x514c-0x50a8)
.L514c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x514c, (0x5158-0x514c)
.L5158:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5158, (0x51b8-0x5158)
.L51b8:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x51b8, (0x5218-0x51b8)
.L5218:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5218, (0x527c-0x5218)
.L527c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x527c, (0x5a2c-0x527c)
.L5a2c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5a2c, (0x5b84-0x5a2c)
.L5b84:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5b84, (0x604c-0x5b84)
.L604c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x604c, (0x6154-0x604c)
.L6154:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x6154, (0x61e4-0x6154)
.L61e4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x61e4, (0x625c-0x61e4)
.L625c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x625c, (0x628c-0x625c)
.L628c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x628c, (0x62ec-0x628c)
.L62ec:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x62ec, (0x6394-0x62ec)
.L6394:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x6394, (0x63c4-0x6394)
.L63c4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x63c4, (0x63f4-0x63c4)
.L63f4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x63f4, (0x6718-0x63f4)
.L6718:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x6718, (0x673c-0x6718)
.L673c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x673c, (0x679c-0x673c)

	.section .bss
	.global .L679c

	.lcomm	.L679c, 4
	.lcomm	.L67a0, 4
