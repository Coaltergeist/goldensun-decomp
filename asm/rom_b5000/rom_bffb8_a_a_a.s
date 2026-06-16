	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bffb8  @ 0x080bffb8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	ldr	r2, =REG_BG0CNT
	mov	r0, #6
	add	r0, sp
	ldrh	r3, [r2]
	mov	r9, r0
	mov	r1, r9
	strh	r3, [r1]
	ldr	r1, .Lc0008	@ 0x40
	orr	r3, r1
	strh	r3, [r2]
	add	r3, sp, #4
	add	r2, #2
	mov	r10, r3
	ldrh	r3, [r2]
	mov	r0, r10
	strh	r3, [r0]
	orr	r3, r1
	strh	r3, [r2]
	mov	r3, #2
	add	r3, sp
	add	r2, #2
	mov	r8, r3
	ldrh	r3, [r2]
	mov	r0, r8
	strh	r3, [r0]
	orr	r3, r1
	strh	r3, [r2]
	add	r2, #2
	ldrh	r3, [r2]
	mov	r7, sp
	strh	r3, [r7]
	orr	r3, r1
	b	.Lc0010

	.align	2, 0
.Lc0008:
	.word	0x40
	.pool

.Lc0010:
	strh	r3, [r2]
	ldr	r3, .Lc004c	@ 0x3eee
	add	r2, #0x42
	strh	r3, [r2]
	mov	r0, #0x10
	bl	Func_8003b70
	ldr	r6, =REG_MOSAIC
	mov	r5, #0
.Lc0022:
	bl	Random
	bl	Random
	bl	Random
	bl	Random
	lsl	r3, r5, #8
	orr	r3, r5
	strh	r3, [r6]
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0xf
	ble	.Lc0022
	ldr	r3, .Lc0050	@ 1
	mov	r2, #0x80
	b	.Lc0058

	.align	2, 0
.Lc004c:
	.word	0x3eee
.Lc0050:
	.word	1
	.pool

.Lc0058:
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #4
	bl	WaitFrames
	mov	r1, r9
	ldrh	r3, [r1]
	ldr	r2, =REG_BG0CNT
	strh	r3, [r2]
	mov	r0, r10
	ldrh	r3, [r0]
	add	r2, #2
	strh	r3, [r2]
	mov	r1, r8
	ldrh	r3, [r1]
	add	r2, #2
	strh	r3, [r2]
	ldrh	r3, [r7]
	add	r2, #2
	mov	r0, #0
	strh	r3, [r2]
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bffb8

.thumb_func_start Func_80c0098  @ 0x080c0098
	push	{lr}
	ldr	r2, =0x3020100
	ldr	r1, =0x4040404
	mov	r3, #0
.Lc00a0:
	add	r3, #1
	stmia	r0!, {r2}
	add	r2, r1
	cmp	r3, #0x3f
	bls	.Lc00a0
	ldr	r2, =0x3020100
	ldr	r1, =0x4040404
	mov	r3, #0
.Lc00b0:
	add	r3, #1
	stmia	r0!, {r2}
	add	r2, r1
	cmp	r3, #0x37
	bls	.Lc00b0
	mov	r1, #0x88
	mov	r2, #1
	ldr	r3, =Func_80008d8
	lsl	r1, #2
	neg	r2, r2
	bl	_call_via_r3
	pop	{r0}
	bx	r0
.func_end Func_80c0098

.thumb_func_start Func_80c00d8  @ 0x080c00d8
	push	{r5, r6, lr}
	mov	r1, #0x80
	mov	r2, #1
	ldr	r5, =Func_80008d8
	lsl	r1, #1
	neg	r2, r2
	mov	r6, r0
	bl	_call_via_r5
	mov	r3, #0x80
	lsl	r3, #1
	add	r6, r3
	mov	r0, r6
	mov	r1, #0x80
	ldr	r2, =0x3ff03ff
	bl	_call_via_r5
	ldr	r2, =ewram_2010200
	ldr	r1, =0x20002
	add	r6, #0x80
	mov	r3, #0
.Lc0102:
	add	r3, #1
	stmia	r6!, {r2}
	add	r2, r1
	cmp	r3, #0xef
	bls	.Lc0102
	mov	r1, #0xa0
	ldr	r3, =Func_80008d8
	mov	r0, r6
	lsl	r1, #2
	ldr	r2, =0x3ff03ff
	bl	_call_via_r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c00d8

.thumb_func_start Func_80c0130  @ 0x080c0130
	push	{lr}
	ldr	r2, =iwram_3001f00
	ldr	r3, [r2]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.Lc016a
	mov	r3, r2
	sub	r3, #0x88
	ldr	r4, [r3]
	ldr	r3, [r4]
	lsl	r0, r3, #2
	add	r0, r3
	lsl	r0, #6
	add	r0, r4, r0
	ldrh	r3, [r0, #0x20]
	ldr	r1, =REG_BG2CNT
	strh	r3, [r1]
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xa2600001
	add	r0, #0x22
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	add	r3, #0x24
	add	r0, #0x10
	add	r1, #0x14
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lc016a:
	pop	{r0}
	bx	r0
.func_end Func_80c0130

