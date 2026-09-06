	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_920
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =.Lc1_43
	sub	sp, #0x14
	str	r0, [sp, #8]
	ldr	r3, =.Lc1_10
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	mov	r10, r0
	mov	r8, r3
.Lc1_948:
	ldr	r1, =.Lc1_36
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	ldrh	r3, [r1]
	cmp	r4, #0
	bne	.Lc1_a1e
	ldr	r5, =.Lc1_37
	ldr	r0, [r5]
	ldrh	r3, [r0]
	mov	r2, #0x80
	lsl	r3, #16
	add	r0, #2
	asr	r3, #16
	lsl	r2, #6
	str	r0, [r5]
	cmp	r3, r2
	beq	.Lc1_9e4
	cmp	r3, r2
	bgt	.Lc1_980
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.Lc1_a0c
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r3, r2
	beq	.Lc1_9cc
	b	.Lc1_948
.Lc1_980:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	beq	.Lc1_99e
	cmp	r3, r2
	bgt	.Lc1_996
	mov	r1, #0xc0
	lsl	r1, #6
	cmp	r3, r1
	beq	.Lc1_9b4
	b	.Lc1_948
.Lc1_996:
	ldr	r2, =0x7fff
	cmp	r3, r2
	beq	.Lc1_a02
	b	.Lc1_948
.Lc1_99e:
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	ldr	r2, =.Lc1_25
	lsl	r3, #8
	str	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.Lc1_46
	strh	r3, [r1]
	ldr	r3, =.Lc1_24
	b	.Lc1_9fa
.Lc1_9b4:
	ldr	r2, =.Lc1_46
	ldr	r1, =.Lc1_44
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.Lc1_24
	strh	r3, [r1]
	ldr	r3, =.Lc1_28
	b	.Lc1_9fa
.Lc1_9cc:
	ldr	r2, =.Lc1_27
	ldr	r1, =.Lc1_23
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.Lc1_18
	strh	r3, [r1]
	ldr	r3, =.Lc1_47
	b	.Lc1_9fa
.Lc1_9e4:
	ldr	r2, =.Lc1_34
	ldr	r1, =.Lc1_35
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.Lc1_39
	strh	r3, [r1]
	ldr	r3, =.Lc1_30
.Lc1_9fa:
	add	r2, #2
	str	r2, [r5]
	strh	r4, [r3]
	b	.Lc1_948
.Lc1_a02:
	ldrh	r3, [r0]
	strh	r3, [r1]
	add	r3, r0, #2
	str	r3, [r5]
	b	.Lc1_948
.Lc1_a0c:
	ldr	r0, =OvlFunc_common1_920
	bl	__StopTask
	ldr	r3, =.Lc1_10
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8003f3c
	b	.Lc1_dd4
.Lc1_a1e:
	sub	r3, #1
	strh	r3, [r1]
	ldr	r3, =.Lc1_18
	mov	r5, #0
	ldrsh	r7, [r3, r5]
	mov	r9, r3
	cmp	r7, #0
	bne	.Lc1_a38
	ldr	r3, =.Lc1_27
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	b	.Lc1_a6a
.Lc1_a38:
	ldr	r3, =.Lc1_23
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.Lc1_47
	ldr	r3, =.Lc1_27
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	add	r6, r0
	mov	r11, r6
	cmp	r5, r7
	blt	.Lc1_a6a
	ldr	r3, .Lc1_a80	@ 0
	mov	r0, r9
	strh	r3, [r0]
.Lc1_a6a:
	ldr	r1, =.Lc1_39
	mov	r2, #0
	ldrsh	r7, [r1, r2]
	mov	r9, r1
	cmp	r7, #0
	bne	.Lc1_ad4
	ldr	r3, =.Lc1_34
	mov	r0, #0
	ldrsh	r5, [r3, r0]
	str	r5, [sp, #4]
	b	.Lc1_b06

	.align	2, 0
.Lc1_a80:
	.word	0
	.pool

.Lc1_ad4:
	ldr	r3, =.Lc1_35
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	ldr	r3, =.Lc1_34
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.Lc1_30
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	add	r6, r0
	str	r6, [sp, #4]
	cmp	r5, r7
	blt	.Lc1_b06
	ldr	r3, .Lc1_b1c	@ 0
	mov	r5, r9
	strh	r3, [r5]
.Lc1_b06:
	ldr	r0, =.Lc1_24
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	mov	r9, r0
	cmp	r7, #0
	bne	.Lc1_b34
	ldr	r3, =.Lc1_46
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	b	.Lc1_b64

	.align	2, 0
.Lc1_b1c:
	.word	0
	.pool

.Lc1_b34:
	ldr	r2, =.Lc1_28
	ldr	r3, =.Lc1_44
	mov	r5, #0
	ldrsh	r6, [r3, r5]
	ldrh	r5, [r2]
	ldr	r3, =.Lc1_46
	add	r5, #1
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	add	r6, r0
	cmp	r5, r7
	blt	.Lc1_b64
	ldr	r3, .Lc1_b98	@ 0
	mov	r1, r9
	strh	r3, [r1]
.Lc1_b64:
	add	r0, sp, #0xc
	ldr	r3, [r0, #4]
	ldr	r2, =0xffff0000
	and	r3, r2
	str	r3, [r0, #4]
	mov	r3, r11
	lsl	r1, r3, #16
	ldr	r3, [sp, #0xc]
	lsr	r1, #16
	and	r3, r2
	ldr	r2, =0xffff
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #0xc]
	bl	__Func_8003d28
	ldr	r2, =.Lc1_25
	ldr	r3, [r2]
	lsl	r0, #16
	add	r3, r6
	asr	r0, #16
	str	r3, [r2]
	b	.Lc1_bb4

	.align	2, 0
.Lc1_b98:
	.word	0
	.pool

.Lc1_bb4:
	cmp	r3, #0
	bge	.Lc1_bba
	add	r3, #0xff
.Lc1_bba:
	asr	r6, r3, #8
	ldr	r3, =.Lc1_33
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	cmp	r3, #2
	bne	.Lc1_bc8
	b	.Lc1_d20
.Lc1_bc8:
	cmp	r3, #2
	bgt	.Lc1_bd2
	cmp	r3, #1
	beq	.Lc1_bdc
	b	.Lc1_d72
.Lc1_bd2:
	cmp	r3, #3
	beq	.Lc1_c52
	cmp	r3, #4
	beq	.Lc1_cce
	b	.Lc1_d72
.Lc1_bdc:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x38
	mov	r9, r0
.Lc1_be6:
	lsl	r3, r5, #5
	sub	r3, #0x30
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lc1_bf6
	add	r3, #0xff
.Lc1_bf6:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.Lc1_c46
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	mov	r3, #0xf4
	mov	r0, r1
	lsl	r3, #8
	mov	r1, r8
	orr	r3, r1
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_8003dec
	ldr	r4, [sp]
.Lc1_c46:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #3
	ble	.Lc1_be6
	b	.Lc1_d72
.Lc1_c52:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x30
	mov	r9, r0
.Lc1_c5c:
	lsl	r3, r5, #5
	sub	r3, #0x10
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lc1_c6c
	add	r3, #0xff
.Lc1_c6c:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.Lc1_cc2
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	ldr	r3, =.Lc1_22
	mov	r0, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	lsl	r2, #8
	add	r3, r8
	orr	r3, r2
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_8003dec
	ldr	r4, [sp]
.Lc1_cc2:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #1
	ble	.Lc1_c5c
	b	.Lc1_d72
.Lc1_cce:
	mov	r3, r6
	mov	r5, #0x98
	mov	r2, r6
	add	r3, #0x78
	lsl	r5, #1
	mov	r7, #0x30
	ldr	r4, =0xc0004000
	add	r2, #0x38
	cmp	r3, r5
	bcs	.Lc1_d72
	ldr	r3, =0x1ff
	mov	r1, r10
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r5, r1
	orr	r3, r2
	str	r5, [sp, #8]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #8]
	ldr	r3, =.Lc1_22
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r1]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_8003dec
	b	.Lc1_d72
.Lc1_d20:
	mov	r3, r6
	mov	r1, #0x98
	mov	r4, #0x80
	mov	r2, r6
	add	r3, #0x98
	lsl	r1, #1
	mov	r7, #0x30
	lsl	r4, #24
	add	r2, #0x58
	cmp	r3, r1
	bcs	.Lc1_d72
	ldr	r3, =0x1ff
	mov	r5, r10
	and	r2, r3
	mov	r3, #0
	stmia	r5!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r1, r5
	orr	r3, r2
	str	r1, [sp, #8]
	stmia	r5!, {r3}
	mov	r0, r5
	str	r0, [sp, #8]
	ldr	r3, =.Lc1_22
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r5]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_8003dec
.Lc1_d72:
	ldr	r0, =gDMATaskCount
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.Lc1_da0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r0
	strh	r2, [r0]
	mov	r2, #0xfc
	add	r3, #4
	lsl	r2, #6
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lc1_da0:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.Lc1_dd2
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r0]
	ldr	r5, [sp, #4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r0
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.Lc1_dd2:
	strh	r4, [r1]
.Lc1_dd4:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_920

