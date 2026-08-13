	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8010e14  @ 0x08010e14
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r0
	mov	r0, #0x80
	mov	r2, #0
	lsl	r0, #2
	sub	sp, #4
	mov	r6, r1
	mov	r9, r2
	bl	alloc_iwram
	ldr	r3, =iwram_3001e70
	mov	r10, r0
	ldr	r7, [r3]
	cmp	r5, #0
	bge	.L10e3e
	ldr	r3, =0x1fffff
	add	r5, r3
.L10e3e:
	asr	r5, #21
	mov	r2, #0x1f
	mov	r1, r6
	and	r5, r2
	cmp	r1, #0
	bge	.L10e4e
	ldr	r3, =0x1fffff
	add	r1, r3
.L10e4e:
	asr	r3, r1, #21
	and	r3, r2
	lsl	r3, #5
	add	r3, r5, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r3]
	lsl	r3, #1
	lsr	r3, #25
	cmp	r3, #0x15
	bne	.L10e6a
	mov	r3, #1
	mov	r9, r3
.L10e6a:
	mov	r2, r9
	lsl	r6, r2, #1
	ldr	r3, =.L132cc
	add	r6, r9
	mov	r2, #0x8e
	lsl	r2, #1
	lsl	r6, #3
	mov	r5, #0xa0
	add	r6, r3
	lsl	r5, #19
	add	r3, r7, r2
	str	r6, [r3]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	ldr	r0, [r6]
	mov	r8, r3
	bl	GetFile
	mov	r1, r10
	bl	DecompressLZ1
	mov	r3, r8
	mov	r2, r10
	strh	r3, [r2]
	mov	r0, r10
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_2038000
	ldr	r0, [r6, #4]
	bl	GetFile
	mov	r1, r5
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6008000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_203a000
	ldr	r0, [r6, #8]
	bl	GetFile
	mov	r1, r5
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x600a000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_203c000
	ldr	r0, [r6, #0xc]
	bl	GetFile
	mov	r1, r5
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x600c000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, =ewram_203e000
	ldr	r0, [r6, #0x10]
	bl	GetFile
	mov	r1, r5
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x600e000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [r6, #0x14]
	bl	GetFile
	ldr	r1, =ewram_2028000
	bl	DecompressLZ
	ldr	r3, =0xf07ff07f
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002800
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000180
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0x6003000
	ldr	r2, =0x1a901a8
	ldr	r4, =0x20002
	mov	r0, #0
.L10f32:
	mov	r3, #0xe
.L10f34:
	sub	r3, #1
	stmia	r1!, {r2}
	add	r2, r4
	cmp	r3, #0
	bge	.L10f34
	add	r0, #1
	add	r1, #4
	cmp	r0, #0x13
	ble	.L10f32
	mov	r3, r9
	cmp	r3, #1
	bne	.L10f82
	mov	r3, #0xa6
	lsl	r3, #1
	add	r2, r7, r3
	sub	r3, #0x42
	strh	r3, [r2]
	add	r3, #0x44
	add	r2, r7, r3
	sub	r3, #0x43
	strh	r3, [r2]
	add	r3, #0x45
	add	r2, r7, r3
	sub	r3, #0x44
	strh	r3, [r2]
	add	r3, #0x60
	add	r2, r7, r3
	sub	r3, #0x52
	strh	r3, [r2]
	add	r3, #0x54
	add	r2, r7, r3
	sub	r3, #0x53
	strh	r3, [r2]
	add	r3, #0x55
	add	r2, r7, r3
	sub	r3, #0x54
	strh	r3, [r2]
	bl	Func_80113e4
.L10f82:
	mov	r0, r10
	bl	free
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8010e14
