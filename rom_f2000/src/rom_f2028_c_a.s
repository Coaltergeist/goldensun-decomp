	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_f2b70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r0, #0x6e
	bl	_Func_f9080
	ldr	r2, =iwram_1d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r5, =0x18
	bl	Func_40e8
	mov	r0, #1
	bl	Func_3b70
	bl	Func_4760
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2bd0	@ 0x681
	strh	r3, [r2]
	ldr	r3, .Lf2bd4	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r6, #0
	strh	r6, [r3, #0xa]
	mov	r0, r5
	bl	Func_2f40
	mov	r1, #0xa0
	ldr	r7, =0x1ff
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	ldr	r5, =ewram_10000
	add	r4, r3
	mov	r1, r5
	mov	r0, r4
	b	.Lf2bf8

	.align	2, 0
.Lf2bd0:
	.word	0x681
.Lf2bd4:
	.word	0x1440
	.pool

.Lf2bf8:
	bl	Func_5340
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6004000
	ldr	r2, =0x84002580
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	ldr	r1, =0x6003000
	lsl	r3, #1
	mov	r5, #0
.Lf2c10:
	mov	r0, #0
.Lf2c12:
	mov	r2, r3
	mov	r4, #0x80
	lsl	r3, r2, #16
	lsl	r4, #9
	add	r3, r4
	add	r0, #1
	strh	r2, [r1]
	asr	r3, #16
	add	r1, #2
	cmp	r0, #0x1d
	bls	.Lf2c12
	strh	r7, [r1]
	add	r5, #1
	add	r1, #2
	strh	r7, [r1]
	add	r1, #2
	cmp	r5, #0x13
	bls	.Lf2c10
	ldr	r3, =iwram_1ad0
	mov	r5, #0
	mov	r2, #0
.Lf2c3c:
	add	r5, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r5, #3
	bls	.Lf2c3c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_479c
	bl	Func_4760
	ldr	r3, .Lf2c80	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r3, r8
	cmp	r3, #0
	bne	.Lf2cc2
	mov	r0, #1
	bl	Func_3bb4
	bl	Func_3ce0
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	mov	r5, #0
	b	.Lf2cb8

	.align	2, 0
.Lf2c80:
	.word	0x1540
	.pool

.Lf2ca4:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x77
	bhi	.Lf2d42
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
.Lf2cb8:
	cmp	r3, #0
	beq	.Lf2ca4
	mov	r6, #1
	neg	r6, r6
	b	.Lf2d42
.Lf2cc2:
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	mov	r5, #0
	b	.Lf2ce2
.Lf2cce:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x3b
	bhi	.Lf2cea
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
.Lf2ce2:
	cmp	r3, #0
	beq	.Lf2cce
	mov	r6, #1
	neg	r6, r6
.Lf2cea:
	cmp	r6, #0
	beq	.Lf2cf6
	mov	r0, #8
	bl	Func_3bb4
	b	.Lf2cfc
.Lf2cf6:
	mov	r0, #0x3c
	bl	Func_3bb4
.Lf2cfc:
	bl	Func_3ce0
	cmp	r6, #0
	bne	.Lf2d30
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	mov	r5, #0
	b	.Lf2d24
.Lf2d10:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0xb3
	bhi	.Lf2d2c
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
.Lf2d24:
	cmp	r3, #0
	beq	.Lf2d10
	mov	r6, #1
	neg	r6, r6
.Lf2d2c:
	cmp	r6, #0
	beq	.Lf2d38
.Lf2d30:
	mov	r0, #8
	bl	Func_3b70
	b	.Lf2d3e
.Lf2d38:
	mov	r0, #0x3c
	bl	Func_3b70
.Lf2d3e:
	bl	Func_3ce0
.Lf2d42:
	mov	r0, r6
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_f2b70

.thumb_func_start Func_f2d54
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r2, =iwram_1d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r6, =0x19
	bl	Func_40e8
	mov	r0, #1
	bl	Func_3b70
	bl	Func_4760
	mov	r0, #1
	bl	Func_30f8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lf2db0	@ 0x685
	strh	r3, [r2]
	ldr	r3, .Lf2db4	@ 0x1440
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =iwram_1ad0
	mov	r5, #0
	strh	r5, [r3, #0xa]
	ldr	r5, =ewram_10000
	mov	r0, r6
	mov	r8, r3
	bl	Func_2f40
	mov	r1, r5
	bl	Func_5340
	mov	r6, r5
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r6
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r6, r3
	b	.Lf2dd4

	.align	2, 0
.Lf2db0:
	.word	0x685
.Lf2db4:
	.word	0x1440
	.pool

.Lf2dd4:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6003000
	ldr	r2, =0x84000200
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #4
	add	r6, r3
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6004000
	ldr	r2, =0x84001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0x80
	lsl	r3, #7
	add	r6, r3
	mov	r5, #0
	mov	r2, #0
	mov	r3, r8
.Lf2dfe:
	add	r5, #1
	strh	r2, [r3, #2]
	strh	r2, [r3]
	add	r3, #4
	cmp	r5, #3
	bls	.Lf2dfe
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =iwram_1ad0
	ldr	r1, =REG_BG0HOFS
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_479c
	bl	Func_4760
	mov	r0, #1
	bl	Func_3c3c
	bl	Func_3ce0
	ldr	r3, .Lf2e40	@ 0x1540
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	mov	r3, #3
	lsr	r0, #3
	and	r0, r3
	lsl	r0, #10
	mov	r5, #0
	b	.Lf2e80

	.align	2, 0
.Lf2e40:
	.word	0x1540
	.pool

.Lf2e68:
	mov	r0, #1
	add	r5, #1
	bl	Func_30f8
	cmp	r5, #0x77
	bhi	.Lf2e98
	ldr	r3, =iwram_1e40
	ldr	r0, [r3]
	mov	r3, #3
	lsr	r0, #3
	and	r0, r3
	lsl	r0, #10
.Lf2e80:
	ldr	r3, =REG_DMA3SAD
	add	r0, r6
	ldr	r1, =0x6004100
	ldr	r2, =0x840000d0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_1c94
	ldr	r3, [r3]
	mov	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lf2e68
.Lf2e98:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_f2d54

