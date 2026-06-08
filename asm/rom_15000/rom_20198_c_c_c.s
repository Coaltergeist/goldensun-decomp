	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8020b14
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r4, [r3]
	ldrb	r3, [r0]
	sub	sp, #8
	mov	r1, #0
	cmp	r3, #0
	beq	.L20b3a
	mov	r3, #0xeb
	lsl	r3, #4
	add	r2, r4, r3
.L20b2a:
	ldrb	r3, [r0]
	strh	r3, [r2]
	add	r0, #1
	ldrb	r3, [r0]
	add	r2, #2
	add	r1, #1
	cmp	r3, #0
	bne	.L20b2a
.L20b3a:
	mov	r2, #0xeb
	lsl	r3, r1, #1
	lsl	r2, #4
	add	r3, r2
	ldr	r2, .L20b58	@ 0
	add	r1, sp, #4
	strh	r2, [r4, r3]
	mov	r0, #0
	mov	r2, sp
	mov	r3, #0
	bl	Func_8018850
	ldr	r0, [sp, #4]
	add	sp, #8
	b	.L20b60

	.align	2, 0
.L20b58:
	.word	0
	.pool

.L20b60:
	pop	{r1}
	bx	r1
.func_end Func_8020b14

.thumb_func_start Func_8020b64
	push	{r5, r6, lr}
	ldrb	r2, [r1]
	mov	r3, r2
	sub	sp, #0x14
	mov	r6, r0
	mov	r4, #0
	cmp	r3, #0
	beq	.L20b8c
	mov	r0, sp
	mov	r5, r0
.L20b78:
	strb	r2, [r5]
	add	r1, #1
	ldrb	r3, [r1]
	mov	r2, r3
	mov	r3, r2
	add	r5, #1
	add	r4, #1
	cmp	r3, #0
	bne	.L20b78
	b	.L20b8e
.L20b8c:
	mov	r0, sp
.L20b8e:
	mov	r3, #8
	strb	r3, [r0, r4]
	add	r4, #1
	mov	r3, #2
	strb	r3, [r0, r4]
	add	r4, #1
	cmp	r4, #6
	bgt	.L20bb2
	mov	r3, #7
	add	r2, r4, r0
	mov	r1, #0x5f
	sub	r4, r3, r4
.L20ba6:
	sub	r4, #1
	strb	r1, [r2]
	add	r2, #1
	cmp	r4, #0
	bne	.L20ba6
	mov	r4, #7
.L20bb2:
	mov	r3, #8
	strb	r3, [r0, r4]
	add	r4, #1
	mov	r3, #0xf
	strb	r3, [r0, r4]
	add	r4, #1
	mov	r3, #0
	strb	r3, [r0, r4]
	mov	r3, #2
	neg	r3, r3
	mov	r1, r6
	mov	r2, #0
	bl	Func_801e858
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8020b64

.thumb_func_start Func_8020bd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x60
	mov	r2, sp
	mov	r1, #0
	add	r2, #0x51
	str	r1, [sp, #0x24]
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x1c]
	add	r6, sp, #0x50
	str	r2, [sp, #0x18]
	str	r0, [sp, #0x2c]
	bl	_Func_8077394
	ldr	r3, =iwram_3001e8c
	str	r0, [sp, #0x14]
	ldr	r3, [r3]
	str	r3, [sp, #0x10]
	mov	r3, #1
	str	r3, [sp, #0xc]
	mov	r9, r3
	bl	Func_800479c
	mov	r5, #2
	mov	r1, #6
	mov	r2, #0x18
	mov	r3, #9
	mov	r0, #3
	str	r5, [sp]
	bl	Func_80162d4
	mov	r1, #3
	mov	r8, r0
	mov	r2, #8
	mov	r3, #3
	mov	r0, #8
	str	r5, [sp]
	bl	Func_80162d4
	str	r0, [sp, #0x28]
	ldr	r0, [sp, #0x2c]
	bl	Func_8019d2c
	mov	r2, #3
	mov	r3, #1
	mov	r1, #0
	bl	Func_8019da8
	ldr	r1, =Data_73864
	mov	r0, r8
	bl	Func_80209d0
	mov	r3, #7
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0x12
	mov	r2, #0
	mov	r3, #0x12
	bl	Func_801e41c
	ldr	r2, =0xea3
	ldr	r1, [sp, #0x10]
	add	r3, r1, r2
	add	r1, sp, #0xc
	add	r2, sp, #0x24
	ldrb	r1, [r1]
	ldrb	r2, [r2]
	strb	r1, [r3]
	strb	r2, [r6]
	mov	r0, sp
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x14]
	add	r0, #0x5e
.L20c74:
	ldrb	r3, [r2]
	add	r2, #1
	strb	r3, [r1]
	add	r1, #1
	cmp	r3, #0
	beq	.L20c8c
	ldr	r3, [sp, #0x20]
	add	r3, #1
	str	r3, [sp, #0x20]
	ldr	r3, [sp, #0x1c]
	add	r3, #1
	str	r3, [sp, #0x1c]
.L20c8c:
	cmp	r1, r0
	ble	.L20c74
	ldr	r1, [sp, #0x18]
	mov	r3, #0
	strb	r3, [r1, #0xe]
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x14]
	bl	Func_8020b64
	bl	Func_8004080
	mov	r5, r0
	mov	r6, #0x12
	mov	r7, #5
	cmp	r5, #0x5f
	bgt	.L20ce2
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	Func_8003fa4
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	str	r3, [sp]
	bl	Func_801eadc
	add	r2, sp, #0x40
	mov	r5, r0
	str	r5, [r2]
	mov	r3, r8
	mov	r11, r2
	ldrh	r1, [r3, #0xc]
	ldrh	r2, [r3, #0xe]
	lsl	r1, #3
	lsl	r2, #3
	add	r1, #0x8c
	add	r2, #0x34
	mov	r0, r11
	bl	_Func_80b0a20
	b	.L20ce6
.L20ce2:
	add	r1, sp, #0x40
	mov	r11, r1
.L20ce6:
	bl	Func_8004080
	mov	r5, r0
	cmp	r5, #0x5f
	bgt	.L20d68
	ldr	r2, =Data_317e4
	mov	r1, #0x80
	bl	Func_8003fa4
	mov	r1, #0x80
	lsl	r1, #23
	mov	r3, #0
	mov	r0, r5
	mov	r2, r8
	str	r3, [sp]
	bl	Func_801eadc
	mov	r2, #0x30
	mov	r5, r0
	add	r2, sp
	str	r5, [r2]
	mov	r3, #0xff
	strb	r3, [r5, #0xf]
	mov	r10, r2
	mov	r3, #0xd
	ldrb	r2, [r5, #0x19]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r5, #0x19]
	ldr	r0, [sp, #0x18]
	bl	Func_8020b14
	mov	r1, r0
	add	r1, #0x46
	mov	r0, r10
	mov	r2, #0x16
	bl	_Func_80b0a20
	b	.L20d6c
.L20d34:
	mov	r3, r10
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r0, [sp, #0x28]
	bl	Func_8016478
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x14]
	bl	Func_8020b64
	mov	r0, #0xa
	bl	Func_80030f8
	b	.L21034

	.pool_aligned

.L20d68:
	add	r1, sp, #0x30
	mov	r10, r1
.L20d6c:
	ldr	r4, =0x50001c0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	mov	r1, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, .L20d9c	@ 0x6318
	strh	r3, [r4, #8]
	ldr	r2, [sp, #0x20]
	ldr	r3, [sp, #0x18]
	add	r2, r3
	str	r2, [sp, #8]
.L20d86:
	mov	r5, #1
	cmp	r6, #0x12
	bne	.L20db0
	cmp	r7, #4
	bne	.L20d92
	mov	r5, #3
.L20d92:
	cmp	r7, #5
	bne	.L20db0
	mov	r5, #3
	b	.L20db0

	.align	2, 0
.L20d9c:
	.word	0x6318
	.pool

.L20db0:
	mov	r1, #1
	mov	r3, #0xe
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r1, r6
	mov	r2, r7
	mov	r3, r5
	mov	r0, r8
	bl	Func_8020a60
	mov	r0, #1
	bl	Func_80030f8
	mov	r2, #1
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r8
	mov	r3, r5
	mov	r1, r6
	mov	r2, r7
	bl	Func_8020a60
	mov	r3, r9
	cmp	r3, #0
	beq	.L20e02
	mov	r1, #0
	mov	r2, r8
	mov	r9, r1
	ldrh	r1, [r2, #0xc]
	ldrh	r2, [r2, #0xe]
	add	r1, r6
	add	r2, r7
	lsl	r1, #3
	lsl	r2, #3
	sub	r1, #7
	add	r2, #0xf
	mov	r0, r11
	mov	r3, #3
	bl	_Func_80b09fc
.L20e02:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.L20e20
	mov	r1, #0
	ldr	r0, [sp, #0x18]
	str	r1, [sp, #0xc]
	bl	Func_8020b14
	mov	r1, r0
	add	r1, #0x46
	mov	r0, r10
	mov	r2, #0x16
	mov	r3, #3
	bl	_Func_80b09fc
.L20e20:
	mov	r0, r11
	bl	_Func_80b08b8
	mov	r0, r10
	bl	_Func_80b0958
	ldr	r3, =iwram_3001800
	ldr	r0, [r3]
	mov	r3, r10
	ldr	r5, [r3]
	mov	r2, #7
	ldr	r4, =.L371f6
	lsr	r0, #1
	and	r0, r2
	ldrsb	r3, [r4, r0]
	ldrh	r1, [r5, #6]
	add	r1, r3
	ldr	r3, .L20e6c	@ 0x1ff
	ldr	r2, .L20e70	@ 0xfffffe00
	and	r1, r3
	ldrh	r3, [r5, #0x16]
	and	r3, r2
	orr	r3, r1
	add	r0, #5
	mov	r1, #7
	and	r0, r1
	strh	r3, [r5, #0x16]
	ldrb	r2, [r5, #8]
	ldrb	r3, [r4, r0]
	add	r2, r3
	strb	r2, [r5, #0x14]
	ldr	r5, =iwram_3001b04
	ldr	r2, [r5]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L20eaa
	b	.L20e80

	.align	2, 0
.L20e6c:
	.word	0x1ff
.L20e70:
	.word	0xfffffe00
	.pool

.L20e80:
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	mov	r9, r2
	sub	r7, #1
	cmp	r6, #0x12
	beq	.L20e9c
	mov	r3, #1
	neg	r3, r3
	cmp	r7, r3
	bne	.L20eaa
	mov	r7, #5
	b	.L20eaa
.L20e9c:
	mov	r3, #3
	eor	r3, r7
	neg	r2, r3
	orr	r2, r3
	lsr	r7, r2, #31
	mov	r3, #5
	sub	r7, r3, r7
.L20eaa:
	ldr	r2, [r5]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L20ed8
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r1, #1
	mov	r9, r1
	add	r7, #1
	cmp	r6, #0x12
	beq	.L20ecc
	cmp	r7, #6
	bne	.L20ed8
	mov	r7, #0
	b	.L20ed8
.L20ecc:
	mov	r2, #6
	eor	r2, r7
	neg	r3, r2
	orr	r3, r2
	lsr	r7, r3, #31
	add	r7, #4
.L20ed8:
	ldr	r2, [r5]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L20f12
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r3, #1
	mov	r2, #1
	sub	r6, #1
	neg	r3, r3
	mov	r9, r2
	cmp	r6, r3
	bne	.L20f02
	sub	r3, r7, #4
	mov	r6, #0x12
	cmp	r3, #1
	bls	.L20f12
	mov	r6, #0x10
	b	.L20f12
.L20f02:
	cmp	r6, #5
	beq	.L20f0e
	cmp	r6, #0xb
	beq	.L20f0e
	cmp	r6, #0x11
	bne	.L20f12
.L20f0e:
	ldr	r5, =iwram_3001b04
	sub	r6, #1
.L20f12:
	ldr	r2, [r5]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L20f4a
	mov	r0, #0x6f
	bl	_Func_80f9080
	add	r6, #1
	mov	r1, #1
	mov	r9, r1
	cmp	r6, #0x13
	bne	.L20f30
	mov	r6, #0
	b	.L20f3e
.L20f30:
	cmp	r6, #5
	beq	.L20f3c
	cmp	r6, #0xb
	beq	.L20f3c
	cmp	r6, #0x11
	bne	.L20f3e
.L20f3c:
	add	r6, #1
.L20f3e:
	cmp	r6, #0x12
	bne	.L20f4a
	sub	r3, r7, #4
	cmp	r3, #1
	bls	.L20f4a
	mov	r6, #0
.L20f4a:
	ldr	r3, =gKeyPress
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L20f64
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	mov	r9, r2
	mov	r6, #0x12
	mov	r7, #5
.L20f64:
	ldr	r2, =iwram_3001b04
	ldr	r5, [r2]
	mov	r3, #2
	and	r5, r3
	cmp	r5, #0
	beq	.L20fa6
	mov	r0, #0x71
	bl	_Func_80f9080
.L20f76:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.L20f9e
	ldr	r1, [sp, #8]
	sub	r3, #1
	str	r3, [sp, #0x1c]
	sub	r1, #1
	mov	r3, #0
	str	r1, [sp, #8]
	strb	r3, [r1]
	ldr	r0, [sp, #0x28]
	bl	Func_8016478
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x18]
	bl	Func_8020b64
	mov	r2, #1
	str	r2, [sp, #0xc]
	b	.L20d86
.L20f9e:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x24]
	b	.L21034
.L20fa6:
	ldr	r3, [r2]
	mov	r1, #1
	and	r3, r1
	cmp	r3, #0
	bne	.L20fb2
	b	.L20d86
.L20fb2:
	mov	r0, #0x70
	bl	_Func_80f9080
	cmp	r6, #0x12
	bne	.L20fe6
	cmp	r7, #5
	bne	.L20fde
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L20fc8
	b	.L20d34
.L20fc8:
	ldr	r2, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	mov	r0, #0
.L20fce:
	ldrb	r3, [r1]
	add	r0, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r0, #0xe
	ble	.L20fce
	b	.L21034
.L20fde:
	cmp	r7, #4
	beq	.L20fe4
	b	.L20d86
.L20fe4:
	b	.L20f76
.L20fe6:
	mov	r3, r8
	ldrh	r2, [r3, #0xc]
	ldrh	r3, [r3, #0xe]
	add	r3, r7
	add	r2, r6
	add	r3, #1
	add	r2, #1
	lsl	r3, #5
	add	r3, r2
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0x1c]
	lsl	r3, #1
	ldrb	r3, [r3, r1]
	cmp	r2, #5
	bne	.L21006
	b	.L20d86
.L21006:
	ldr	r1, [sp, #8]
	add	r2, #1
	strb	r3, [r1]
	add	r1, #1
	str	r1, [sp, #8]
	strb	r5, [r1]
	str	r2, [sp, #0x1c]
	cmp	r2, #5
	bne	.L21020
	mov	r2, #1
	mov	r6, #0x12
	mov	r7, #5
	mov	r9, r2
.L21020:
	ldr	r0, [sp, #0x28]
	bl	Func_8016478
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x18]
	bl	Func_8020b64
	mov	r3, #1
	str	r3, [sp, #0xc]
	b	.L20d86
.L21034:
	mov	r0, r8
	mov	r1, #2
	bl	Func_8016418
	mov	r1, #2
	ldr	r0, [sp, #0x28]
	bl	Func_8016418
	ldr	r0, [sp, #0x2c]
	bl	Func_8019e48
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, [sp, #0x24]
	add	sp, #0x60
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8020bd8

.thumb_func_start Func_802106c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r2, #1
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r3, #7
	mov	r10, r2
	mov	r0, #7
	mov	r2, #0x12
	bl	Func_80162d4
	ldr	r5, =0x2080
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #8
	mov	r3, #0
	bl	Func_801e7c0
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x10
	add	r5, #2
	bl	Func_801e7c0
	mov	r0, r5
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x20
	bl	Func_801e7c0
	bl	Func_8004080
	mov	r7, #0
	str	r0, [sp, #8]
	cmp	r0, #0x5f
	bgt	.L2110c
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	Func_8003fa4
	mov	r1, #0x80
	lsl	r1, #23
	mov	r2, r6
	mov	r3, #0
	ldr	r0, [sp, #8]
	str	r7, [sp]
	bl	Func_801eadc
	add	r3, sp, #0xc
	str	r0, [r3]
	ldrh	r1, [r6, #0xc]
	ldrh	r2, [r6, #0xe]
	mov	r8, r3
	lsl	r1, #3
	lsl	r2, #3
	sub	r1, #3
	add	r2, #9
	mov	r0, r8
	bl	_Func_80b0a20
	b	.L21110
.L210f8:
	mov	r0, #0x71
	mov	r7, #1
	bl	_Func_80f9080
	neg	r7, r7
	b	.L211fa

	.pool_aligned

.L2110c:
	add	r2, sp, #0xc
	mov	r8, r2
.L21110:
	ldr	r4, =0x50001c0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	mov	r1, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, .L2112c	@ 0x6318
	ldr	r2, =iwram_3001b04
	strh	r3, [r4, #8]
	mov	r3, #1
	mov	r11, r3
	mov	r9, r2
	b	.L21144

	.align	2, 0
.L2112c:
	.word	0x6318
	.pool

.L21144:
	lsl	r5, r7, #1
	mov	r3, r11
	str	r3, [sp]
	mov	r1, #1
	mov	r3, #0xe
	mov	r2, r5
	mov	r0, r6
	str	r3, [sp, #4]
	bl	Func_8020a60
	mov	r0, #1
	bl	Func_80030f8
	mov	r2, r11
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #0xe
	mov	r1, #1
	mov	r2, r5
	bl	Func_8020a60
	mov	r3, r10
	cmp	r3, #0
	beq	.L21192
	mov	r2, #0
	mov	r10, r2
	ldrh	r2, [r6, #0xe]
	ldrh	r1, [r6, #0xc]
	add	r2, r5
	lsl	r1, #3
	lsl	r2, #3
	sub	r1, #3
	add	r2, #9
	mov	r0, r8
	mov	r3, #3
	bl	_Func_80b09fc
.L21192:
	mov	r0, r8
	bl	_Func_80b08b8
	mov	r1, r9
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L211bc
	mov	r0, #0x6f
	bl	_Func_80f9080
	mov	r2, #1
	mov	r3, #1
	sub	r7, #1
	neg	r2, r2
	mov	r10, r3
	cmp	r7, r2
	bne	.L211ba
	mov	r7, #2
.L211ba:
	ldr	r1, =iwram_3001b04
.L211bc:
	mov	r2, r9
	ldr	r3, [r2]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L211dc
	mov	r0, #0x6f
	bl	_Func_80f9080
	add	r7, #1
	mov	r3, #1
	mov	r10, r3
	cmp	r7, #3
	bne	.L211da
	mov	r7, #0
.L211da:
	ldr	r1, =iwram_3001b04
.L211dc:
	mov	r2, r9
	ldr	r3, [r2]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L211ea
	b	.L210f8
.L211ea:
	ldr	r3, [r1]
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L21144
	mov	r0, #0x70
	bl	_Func_80f9080
.L211fa:
	mov	r1, #2
	mov	r0, r6
	bl	Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, [sp, #8]
	bl	Func_8003f3c
	mov	r0, r7
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_802106c

.thumb_func_start Func_8021228
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r2, [sp, #8]
	ldr	r3, =iwram_3001e8c
	mov	r6, r1
	ldr	r5, [r3]
	mov	r3, #3
	ldr	r2, =.L371fe
	and	r3, r6
	lsl	r3, #1
	mov	r11, r0
	mov	r0, #0
	mov	r9, r0
	mov	r10, r0
	ldrsh	r1, [r2, r3]
	mov	r8, r1
	mov	r1, r9
	str	r1, [sp]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x1a
	mov	r3, #5
	add	r7, sp, #0x14
	bl	Func_80162d4
	mov	r9, r0
	cmp	r0, #0
	beq	.L2132a
	mov	r3, #4
	mov	r1, #4
	mov	r2, #0
	str	r3, [sp]
	bl	Func_801e41c
	ldr	r3, =0xea3
	add	r2, r5, r3
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r8
	bl	Func_8019d2c
	mov	r1, #0xe
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r1, [sp]
	mov	r1, r10
	str	r1, [sp, #4]
	bl	Func_801a4fc
	mov	r2, r10
	ldr	r3, =0x8014000c
	str	r2, [r7]
	str	r3, [sp, #0x18]
	mov	r2, #0xe0
	ldr	r3, [sp, #0xc]
	lsl	r2, #8
	ldr	r0, =0x12f4
	orr	r3, r2
	ldr	r2, =0x12f6
	str	r3, [sp, #0x1c]
	mov	r1, r10
	add	r3, r5, r0
	strh	r1, [r3]
	mov	r0, r10
	add	r3, r5, r2
	strh	r0, [r3]
	mov	r1, #1
	mov	r0, r11
	bl	Func_8019908
	lsl	r0, r6, #2
	ldr	r1, [sp, #8]
	add	r0, r6
	lsl	r0, #2
	mov	r2, #0x96
	lsl	r2, #1
	add	r0, r1
	add	r0, r2
	mov	r1, #4
	bl	Func_8019908
	ldr	r0, =0x980
	add	r0, r6, r0
	bl	Func_8019ba0
	mov	r3, r10
	mov	r1, r0
	str	r3, [sp]
	mov	r2, #0x24
	mov	r3, #2
	mov	r0, r9
	bl	Func_80165d8
	mov	r0, #0x51
	bl	_Func_80f9080
	ldr	r5, =0x303
	ldr	r6, =gKeyPress
.L212f8:
	mov	r0, r7
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, #1
	bl	Func_80030f8
	bl	_Func_80f954c
	cmp	r0, #0
	beq	.L21316
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L212f8
.L21316:
	mov	r0, r9
	mov	r1, #2
	bl	Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, [sp, #0x10]
	bl	Func_8003f3c
.L2132a:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021228

.thumb_func_start Func_8021360
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #8
	bhi	.L21382
	mov	r0, #0x20
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L2137c
	ldr	r3, =.L37206
	lsl	r2, r5, #1
	ldrsh	r0, [r3, r2]
	b	.L21382
.L2137c:
	ldr	r3, =.L37216
	lsl	r2, r5, #1
	ldrsh	r0, [r3, r2]
.L21382:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021360

.thumb_func_start Func_8021390
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e8c
	sub	sp, #0x1c
	mov	r2, #0
	ldr	r5, [r3]
	mov	r10, r0
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x1a
	mov	r3, #5
	add	r7, sp, #0x10
	bl	Func_80162d4
	mov	r6, #0
	mov	r8, r0
	cmp	r0, #0
	beq	.L2145c
	mov	r1, #4
	mov	r3, #4
	mov	r2, #0
	str	r3, [sp]
	bl	Func_801e41c
	ldr	r3, =0xea3
	add	r2, r5, r3
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r10
	bl	Func_8021360
	bl	Func_8019d2c
	mov	r1, #0xe
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp]
	mov	r1, #0
	str	r6, [sp, #4]
	bl	Func_801a4fc
	ldr	r3, =0x8014000c
	str	r6, [r7]
	mov	r2, #0xe0
	str	r3, [sp, #0x14]
	ldr	r3, [sp, #8]
	lsl	r2, #8
	orr	r3, r2
	ldr	r2, =0x12f4
	str	r3, [sp, #0x18]
	add	r3, r5, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r5, r2
	strh	r6, [r3]
	mov	r1, #1
	mov	r0, r10
	bl	Func_8019908
	ldr	r0, =0x1b
	bl	Func_8019ba0
	mov	r2, #0x24
	mov	r1, r0
	mov	r3, #2
	mov	r0, r8
	str	r6, [sp]
	bl	Func_80165d8
	mov	r0, #0x51
	bl	_Func_80f9080
	ldr	r5, =0x303
	ldr	r6, =gKeyPress
.L2142a:
	mov	r0, r7
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, #1
	bl	Func_80030f8
	bl	_Func_80f954c
	cmp	r0, #0
	beq	.L21448
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L2142a
.L21448:
	mov	r0, r8
	mov	r1, #2
	bl	Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, [sp, #0xc]
	bl	Func_8003f3c
.L2145c:
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021390

.thumb_func_start Func_8021488
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	str	r1, [sp, #8]
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, #0
	mov	r9, r3
	add	r3, sp, #0x18
	mov	r10, r3
	mov	r3, r9
	str	r3, [sp]
	mov	r11, r0
	mov	r1, #1
	mov	r0, #1
	mov	r2, #0x1c
	mov	r3, #5
	bl	Func_80162d4
	mov	r6, #0
	mov	r9, r0
	cmp	r0, #0
	beq	.L215aa
	mov	r1, #8
	mov	r3, #4
	mov	r2, #0
	str	r3, [sp]
	bl	Func_801e41c
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	mov	r0, r11
	bl	Func_8021360
	bl	Func_8019d2c
	mov	r3, #0xe
	add	r5, sp, #0x10
	add	r2, sp, #0x14
	str	r3, [sp]
	mov	r1, #0
	mov	r3, r5
	str	r6, [sp, #4]
	bl	Func_801a4fc
	mov	r3, r10
	str	r6, [r3]
	ldr	r3, =0x800c000c
	mov	r2, #0xe0
	str	r3, [sp, #0x1c]
	ldr	r3, [sp, #0x10]
	lsl	r2, #8
	ldr	r0, [sp, #8]
	orr	r3, r2
	str	r3, [sp, #0x20]
	add	r7, sp, #0x24
	bl	Func_8021360
	bl	Func_8019d2c
	mov	r3, #0xf
	add	r2, sp, #0xc
	str	r3, [sp]
	mov	r1, #0
	mov	r3, r5
	str	r6, [sp, #4]
	bl	Func_801a4fc
	ldr	r3, =0x802c000c
	str	r6, [r7]
	mov	r2, #0xf0
	str	r3, [sp, #0x28]
	ldr	r3, [sp, #0x10]
	lsl	r2, #8
	orr	r3, r2
	str	r3, [sp, #0x2c]
	ldr	r3, =0x12f4
	add	r3, r8
	strh	r6, [r3]
	ldr	r3, =0x12f6
	add	r3, r8
	strh	r6, [r3]
	mov	r0, r11
	mov	r1, #1
	bl	Func_8019908
	mov	r1, #1
	ldr	r0, [sp, #8]
	bl	Func_8019908
	ldr	r0, =0x1d
	bl	Func_8019ba0
	mov	r2, #0x44
	mov	r1, r0
	mov	r3, #2
	mov	r0, r9
	str	r6, [sp]
	bl	Func_80165d8
	mov	r0, #0x51
	bl	_Func_80f9080
.L21566:
	mov	r0, r10
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, r7
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, #1
	bl	Func_80030f8
	bl	_Func_80f954c
	cmp	r0, #0
	beq	.L21590
	ldr	r3, =gKeyPress
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.L21566
.L21590:
	mov	r1, #2
	mov	r0, r9
	bl	Func_8016418
	mov	r0, #1
	bl	Func_80030f8
	ldr	r0, [sp, #0x14]
	bl	Func_8003f3c
	ldr	r0, [sp, #0xc]
	bl	Func_8003f3c
.L215aa:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021488

.thumb_func_start Func_80215e0
	push	{r5, r6, r7, lr}
	mov	r7, r1
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #3
	mov	r0, #0xe
	bl	Func_80048f4
	ldr	r3, =Data_31864
	lsl	r5, #2
	mov	r6, r0
	ldr	r0, [r3, r5]
	cmp	r7, #0x5f
	bgt	.L21614
	mov	r1, r6
	bl	Func_80053e8
	mov	r1, #0x80
	lsl	r1, #2
	mov	r0, r7
	mov	r2, r6
	bl	Func_8003fa4
	mov	r0, #0xe
	bl	Func_8002dd8
.L21614:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80215e0

.thumb_func_start Func_8021620
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r9, r1
	mov	r6, r2
	mov	r10, r3
	bl	Func_8004080
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0x5f
	bgt	.L216a0
	mov	r0, r5
	mov	r1, r7
	bl	Func_80215e0
	ldr	r2, =0x80004000
	mov	r3, r10
	mov	r11, r2
	str	r3, [sp]
	mov	r1, r11
	mov	r2, r9
	mov	r3, r6
	mov	r0, r7
	bl	Func_801eadc
	mov	r5, #0xfd
	mov	r2, r10
	mov	r3, r6
	strb	r5, [r0, #0xf]
	mov	r8, r0
	add	r3, #0x20
	str	r2, [sp]
	mov	r1, r11
	mov	r2, r9
	mov	r0, r7
	bl	Func_801eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .L21694	@ 0x3ff
	lsr	r2, #22
	add	r2, #8
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strb	r5, [r0, #0xf]
	strh	r3, [r0, #0x18]
	mov	r0, r8
	b	.L216a0

	.align	2, 0
.L21694:
	.word	0x3ff
	.pool

.L216a0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021620

.thumb_func_start Func_80216b4
	push	{r5, lr}
	ldr	r4, =iwram_3001800
	ldr	r3, [r4]
	ldr	r5, =.L37226
	mov	r1, #7
	lsr	r3, #2
	and	r3, r1
	ldrb	r2, [r0, #8]
	ldrb	r3, [r5, r3]
	add	r2, r3
	ldr	r3, [r4]
	strb	r2, [r0, #0x14]
	lsr	r3, #2
	ldr	r0, [r0]
	and	r3, r1
	ldrb	r2, [r0, #8]
	ldrb	r3, [r5, r3]
	add	r2, r3
	strb	r2, [r0, #0x14]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80216b4

.thumb_func_start Func_80216e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0x80
	lsl	r3, #3
	mov	r10, r3
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0xe
	mov	r1, r10
	mov	r8, r2
	bl	Func_80048f4
	mov	r5, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	mov	r2, r0
	cmp	r7, #0x5f
	bgt	.L2173e
	lsl	r3, r6, #1
	ldrh	r0, [r3, r2]
	mov	r1, r5
	add	r0, r2, r0
	bl	Func_80053e8
	mov	r3, r8
	cmp	r3, #0
	beq	.L2172e
	mov	r1, #0xc0
	lsl	r1, #2
	mov	r0, r5
	bl	_Func_800f9cc
.L2172e:
	mov	r0, r7
	mov	r1, r10
	mov	r2, r5
	bl	Func_8003fa4
	mov	r0, #0xe
	bl	Func_8002dd8
.L2173e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80216e8

.thumb_func_start Func_8021750
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	Func_8004080
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0x60
	beq	.L21796
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	Func_80216e8
	ldr	r3, [sp, #0x1c]
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, r8
	mov	r3, r10
	lsl	r1, #24
	mov	r0, r5
	bl	Func_801eadc
	ldrb	r3, [r0, #0x15]
	mov	r2, #0x20
	orr	r3, r2
	strb	r3, [r0, #0x15]
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
.L21796:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021750

.thumb_func_start Func_80217a4
	push	{r5, lr}
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #7
	lsr	r3, #1
	ldr	r1, =.L37230
	and	r3, r2
	lsl	r3, #2
	ldr	r1, [r1, r3]
	sub	sp, #8
	mov	r5, r0
	cmp	r1, #0
	bge	.L217c0
	add	r1, #0xff
.L217c0:
	asr	r1, #8
	cmp	r5, #0
	beq	.L21840
	ldr	r3, [sp]
	ldr	r4, =0xffff0000
	lsl	r1, #16
	ldr	r2, =0xffff
	lsr	r1, #16
	and	r3, r4
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp]
	mov	r0, sp
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r5, #0x17]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r5, #0x17]
	ldrb	r3, [r5, #0x15]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #0x15]
	ldrh	r2, [r5, #6]
	ldr	r3, =0xfff0
	add	r2, r3
	ldr	r3, .L21824	@ 0x1ff
	ldrh	r1, [r5, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
	ldrb	r3, [r5, #8]
	add	r3, #0xf0
	strb	r3, [r5, #0x14]
	mov	r3, #0xfc
	strb	r3, [r5, #0xf]
	b	.L21840

	.align	2, 0
.L21824:
	.word	0x1ff
	.pool

.L21840:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80217a4

.thumb_func_start Func_8021848
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =.L37250
	ldr	r3, =Func_80008d8
	mov	r7, #0
	mov	r8, r2
	mov	r10, r3
.L2185a:
	lsl	r3, r7, #1
	add	r3, r7
	ldr	r2, =0x6006280
	lsl	r3, #7
	mov	r6, #0
	add	r5, r3, r2
.L21866:
	mov	r0, r5
	mov	r1, #0x40
	ldr	r2, =0x44444444
	bl	_call_via_r10
	mov	r4, #1
	add	r0, r5, #4
.L21874:
	mov	r1, r6
	cmp	r7, #1
	bne	.L2187e
	cmp	r4, #1
	ble	.L218a8
.L2187e:
	cmp	r7, #0
	bne	.L21890
	sub	r3, r4, #2
	cmp	r6, r3
	ble	.L21890
	mov	r1, r3
	cmp	r1, #0
	bge	.L21890
	mov	r1, #0
.L21890:
	lsl	r1, #3
	mov	r3, r8
	ldr	r3, [r3, r1]
	ldr	r2, [r0]
	eor	r2, r3
	str	r2, [r0]
	add	r1, #4
	mov	r3, r8
	ldr	r2, [r0, #0x20]
	ldr	r1, [r3, r1]
	eor	r2, r1
	str	r2, [r0, #0x20]
.L218a8:
	add	r4, #1
	add	r0, #4
	cmp	r4, #7
	ble	.L21874
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #5
	ble	.L21866
	add	r7, #1
	cmp	r7, #1
	ble	.L2185a
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021848

.thumb_func_start Func_80218dc
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	lsl	r5, r3, #1
	ldr	r3, =0xf315
	mov	r8, r1
	mov	r1, #0x80
	mov	r9, r2
	add	r3, r5
	lsl	r1, #3
	sub	sp, #4
	mov	r6, #0
	mov	r11, r3
	orr	r1, r3
	mov	r2, r8
	mov	r3, r9
	str	r6, [sp]
	mov	r10, r0
	bl	Func_8019000
	ldr	r3, =0xf314
	mov	r2, r8
	add	r5, r3
	mov	r0, r10
	mov	r1, r5
	mov	r3, r9
	add	r2, #1
	str	r6, [sp]
	bl	Func_8019000
	mov	r3, #2
	add	r8, r3
	mov	r0, r10
	mov	r1, r11
	mov	r2, r8
	mov	r3, r9
	str	r6, [sp]
	bl	Func_8019000
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80218dc

.thumb_func_start Func_8021950
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	sub	sp, #8
	neg	r3, r6
	str	r0, [sp, #4]
	mov	r7, r2
	mov	r0, #0
	lsl	r3, #2
	lsl	r2, r6, #2
	str	r1, [sp]
	mov	r12, r0
	mov	r8, r3
	mov	r14, r2
.L2196e:
	ldr	r0, [sp]
	ldmia	r0!, {r4}
	mov	r3, r0
	str	r3, [sp]
	ldr	r0, [sp, #4]
	ldmia	r0!, {r1}
	mov	r3, r0
	mov	r2, #0
	str	r3, [sp, #4]
	cmp	r6, #0
	bge	.L2198a
	mov	r3, r8
	lsr	r4, r3
	b	.L2198e
.L2198a:
	mov	r0, r14
	lsl	r4, r0
.L2198e:
	ldr	r5, =0xfffffff
	mov	r0, #7
.L21992:
	lsl	r2, #4
	cmp	r4, r5
	bls	.L2199c
	lsr	r3, r4, #28
	b	.L2199e
.L2199c:
	lsr	r3, r1, #28
.L2199e:
	add	r2, r3
	sub	r0, #1
	lsl	r4, #4
	lsl	r1, #4
	cmp	r0, #0
	bge	.L21992
	stmia	r7!, {r2}
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	cmp	r3, #7
	ble	.L2196e
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021950

.thumb_func_start Func_80219c8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsr	r6, r3, #2
	mov	r3, #3
	and	r6, r3
	mov	r7, r0
	cmp	r6, #2
	ble	.L219dc
	mov	r6, #2
.L219dc:
	cmp	r6, #0
	bgt	.L219e2
	mov	r6, #1
.L219e2:
	ldr	r5, =.L37280
	add	r6, #1
	neg	r3, r6
	mov	r1, r5
	mov	r2, r7
	ldr	r0, =0x6000220
	bl	Func_8021950
	add	r5, #0x20
	mov	r2, r7
	ldr	r0, =0x6000240
	add	r2, #0x20
	mov	r1, r5
	mov	r3, r6
	bl	Func_8021950
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80219c8

.thumb_func_start Func_8021a18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r9, r0
	mov	r10, r2
	mov	r8, r2
	mov	r11, r2
.L21a30:
	mov	r3, #0
	mov	r14, r3
	mov	r3, r11
	add	r3, r10
	lsl	r7, r3, #6
.L21a3a:
	mov	r2, r9
	add	r6, r2, r7
	mov	r2, r14
	lsl	r3, r2, #5
	ldr	r2, =0x6000600
	add	r5, r3, r2
	mov	r3, #0
	mov	r12, r3
.L21a4a:
	ldrh	r1, [r5]
	mov	r0, #0
	add	r5, #2
	mov	r4, #0
.L21a52:
	mov	r3, r1
	mov	r2, #0xf
	and	r3, r2
	add	r3, r8
	lsl	r2, r3, #1
	ldr	r3, =.L372c0
	ldrh	r2, [r3, r2]
	lsl	r3, r4, #2
	lsl	r2, r3
	add	r4, #1
	lsr	r1, #4
	orr	r0, r2
	cmp	r4, #3
	ble	.L21a52
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	strh	r0, [r6]
	add	r6, #2
	cmp	r3, #0xf
	ble	.L21a4a
	add	r14, r2
	mov	r2, r14
	add	r7, #0x20
	cmp	r2, #9
	ble	.L21a3a
	mov	r3, #0x10
	add	r8, r3
	mov	r3, #1
	mov	r2, #4
	add	r10, r3
	add	r11, r2
	mov	r2, r10
	cmp	r2, #1
	ble	.L21a30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021a18

.thumb_func_start Func_8021ab0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_80048f4
	mov	r5, r0
	mov	r0, r6
	bl	Func_801a4c0
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r8
	bl	Func_80040d0
	mov	r5, r0
	mov	r0, #0x11
	bl	Func_8002dd8
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021ab0

.thumb_func_start Func_8021af0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_80048f4
	mov	r1, #0x1a
	mov	r5, r0
	mov	r0, r6
	bl	Func_801a088
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r8
	bl	Func_80040d0
	mov	r5, r0
	mov	r0, #0x11
	bl	Func_8002dd8
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021af0

.thumb_func_start Func_8021b30
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r1, #0xc1
	mov	r8, r0
	lsl	r1, #3
	mov	r0, #0x11
	sub	sp, #0xc
	bl	Func_80048f4
	mov	r1, #1
	add	r2, sp, #8
	add	r3, sp, #4
	str	r1, [sp]
	mov	r5, r0
	mov	r1, #0
	mov	r0, r8
	str	r6, [sp, #8]
	bl	Func_801a3d0
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, r5
	mov	r0, r6
	bl	Func_80040d0
	mov	r5, r0
	mov	r0, #0x11
	bl	Func_8002dd8
	mov	r0, r5
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021b30

.thumb_func_start Func_8021b80
	push	{r5, lr}
	sub	sp, #0x10
	mov	r5, r0
	str	r1, [sp, #0xc]
	cmp	r5, #7
	bls	.L21b8e
	mov	r5, #0
.L21b8e:
	mov	r0, #0x20
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L21ba8
	cmp	r5, #0
	beq	.L21ba2
	cmp	r5, #1
	beq	.L21ba6
	b	.L21ba8
.L21ba2:
	mov	r5, #0x38
	b	.L21ba8
.L21ba6:
	mov	r5, #0x39
.L21ba8:
	mov	r1, #0xe
	str	r1, [sp]
	mov	r1, #1
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp, #4]
	mov	r0, r5
	mov	r1, #0
	bl	Func_801a4fc
	ldr	r0, [sp, #8]
	add	sp, #0x10
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021b80

.thumb_func_start Func_8021bc8
	push	{lr}
	cmp	r0, #0
	beq	.L21bd0
	mov	r0, #0
.L21bd0:
	ldr	r3, =Data_73968
	lsl	r2, r0, #2
	ldr	r0, [r3, r2]
	pop	{r1}
	bx	r1
.func_end Func_8021bc8

.thumb_func_start Func_8021be0
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r5, =0x278
	mov	r0, #0x31
	mov	r1, r5
	bl	Func_80048b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8015afc
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_3001e50
	ldr	r1, =0x604
	add	r3, #0xc4
	add	r2, r6, r1
	ldr	r0, [r2]
	ldr	r3, [r3]
	mov	r1, r6
	bl	_call_via_r3
	mov	r0, #0x31
	bl	Func_8002dd8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8021be0

.thumb_func_start Func_8021c34
	push	{r5, lr}
	sub	sp, #4
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	mov	r0, #0
	bl	Func_80162d4
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L37300
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e940
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021c34

.thumb_func_start Func_8021c64
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	mov	r1, #0xc1
	mov	r8, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_80048b0
	mov	r6, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	ldr	r3, =0x604
	lsl	r5, #1
	add	r2, r6, r3
	ldrh	r3, [r5, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r6
	bl	Func_80053e8
	mov	r1, r6
	mov	r0, r8
	bl	Func_80040d0
	mov	r5, r0
	mov	r0, #0x11
	bl	Func_8002dd8
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8021c64

.thumb_func_start Func_8021cb8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r1
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r7, r0
	mov	r0, #0x11
	mov	r8, r2
	bl	Func_80048b0
	mov	r6, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	ldr	r3, =0x604
	lsl	r5, #1
	add	r2, r6, r3
	ldrh	r3, [r5, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r6
	bl	Func_80053e8
	mov	r0, #0x80
	lsl	r0, #3
	bl	Func_8004938
	mov	r2, #0
	mov	r14, r0
	mov	r5, r14
	mov	r12, r2
.L21cfa:
	ldrb	r4, [r6]
	ldrb	r2, [r7, r4]
	mov	r3, r2
	add	r6, #1
	cmp	r3, #0xff
	bne	.L21d36
	mov	r3, #0x80
	lsl	r3, #1
	add	r0, r7, r3
	ldr	r3, [r0]
	strb	r3, [r7, r4]
	ldr	r1, [r0]
	cmp	r1, #0x3f
	bgt	.L21d34
	mov	r3, #0xa0
	lsl	r2, r1, #1
	lsl	r3, #19
	add	r3, r2
	ldr	r2, =0x5000200
	mov	r10, r3
	lsl	r3, r4, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, r10
	strh	r3, [r2]
	add	r3, r1, #1
	str	r3, [r0]
	ldrb	r2, [r7, r4]
	b	.L21d36
.L21d34:
	mov	r2, r3
.L21d36:
	strb	r2, [r5]
	mov	r3, #1
	mov	r2, #0x80
	add	r12, r3
	lsl	r2, #3
	add	r5, #1
	cmp	r12, r2
	blt	.L21cfa
	mov	r3, r8
	ldr	r2, =0x6004000
	lsl	r1, r3, #6
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r14
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r14
	bl	free
	mov	r0, #0x11
	bl	Func_8002dd8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021cb8

.thumb_func_start Func_8021d88
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r3, r1
	lsl	r5, r3, #3
	sub	r5, r3
	mov	r4, r0
	mov	r8, r2
	lsl	r5, #2
	mov	r2, #0x82
	add	r6, r4, r5
	lsl	r3, #4
	lsl	r2, #1
	sub	sp, #4
	add	r6, r2
	mov	r1, r8
	mov	r2, r3
	str	r4, [sp]
	bl	Func_8021cb8
	mov	r2, #0x8e
	lsl	r2, #1
	ldr	r4, [sp]
	add	r3, r5, r2
	mov	r2, r8
	str	r2, [r4, r3]
	ldr	r3, =0x80002000
	str	r3, [r6, #4]
	mov	r3, #0
	str	r3, [r6, #8]
	mov	r3, #0x88
	lsl	r3, #1
	add	r5, r3
	ldrh	r0, [r4, r5]
	mov	r1, r8
	bl	Func_8021c64
	ldr	r3, .L21de4	@ 0x3ff
	ldrh	r2, [r6, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r6, #8]
	add	sp, #4
	b	.L21df0

	.align	2, 0
.L21de4:
	.word	0x3ff
	.pool

.L21df0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8021d88

	.section .rodata
	.global .L371e0

.L371e0:
	.incrom 0x371e0, 0x371f6
.L371f6:
	.incrom 0x371f6, 0x371fe
.L371fe:
	.incrom 0x371fe, 0x37206
.L37206:
	.incrom 0x37206, 0x37216
.L37216:
	.incrom 0x37216, 0x37226
.L37226:
	.incrom 0x37226, 0x37230
.L37230:
	.incrom 0x37230, 0x37250
.L37250:
	.incrom 0x37250, 0x37280
.L37280:
	.incrom 0x37280, 0x372c0
.L372c0:
	.incrom 0x372c0, 0x37300
.L37300:
	.incrom 0x37300, 0x37308
