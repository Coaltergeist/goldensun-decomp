	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_2e00
	push	{r5, lr}
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	sub	sp, #4
	ldr	r2, =0x4014
	ldr	r3, =REG_WAITCNT
	strh	r2, [r3]
	mov	r0, sp
	mov	r5, #0
	mov	r1, #0xc0
	str	r5, [r0]
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #18
	ldr	r2, =0x85001e00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	Func_4858
	bl	Func_300c
	ldr	r3, =ewram_2090
	str	r5, [r3]
	ldr	r3, =iwram_1ac4
	strb	r5, [r3]
	ldr	r3, =iwram_1f54
	strb	r5, [r3]
	ldr	r3, =iwram_1f58
	strb	r5, [r3]
	bl	Func_2f10
	bl	Func_479c
	bl	Func_4760
	ldr	r3, .L2e90	@ 0x140
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #0
	ldr	r2, =Func_3650
	mov	r1, #1
	bl	Func_307c
	ldr	r2, =0xc00f
	ldr	r3, =REG_KEYCNT
	strh	r2, [r3]
	bl	_Func_f9438
	bl	Func_403c
	bl	Func_40e8
	ldr	r3, =iwram_7800
	ldr	r2, =iwram_1d18
	str	r5, [r3]
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_1ca0
	mov	r0, #0xa
	strb	r5, [r3]
	bl	Func_30f8
	mov	r0, #0
	b	.L2ed8

	.align	2, 0
.L2e90:
	.word	0x140
	.pool

.L2ed8:
	bl	_Func_8a8e4
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_2e00

.thumb_func_start Func_2ee4
	push	{r5, lr}
	ldr	r5, =iwram_1c94
.L2ee8:
	mov	r0, #1
	ldr	r3, [r5]
	bl	Func_30f8
	b	.L2ee8
.func_end Func_2ee4
