	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c08ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r2
	ldr	r2, =iwram_3001f00
	ldr	r2, [r2]
	mov	r9, r0
	mov	r0, r1
	mov	r10, r2
	bl	GetFile
	ldr	r3, =iwram_3001f00
	sub	r3, #0x8c
	ldr	r6, [r3]
	mov	r8, r0
	ldr	r5, =0x230
	mov	r0, #0x31
	mov	r1, r5
	bl	Func_80048b0
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_80b5138
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	ldr	r2, =iwram_3001f00
	lsl	r0, #1
	ldr	r3, [r2, #0x14]
	ldr	r1, =0x6008000
	add	r0, r8
	bl	_call_via_r3
	mov	r0, #0x31
	bl	Func_8002dd8
	ldr	r3, =0x544
	add	r4, r6, r3
	mov	r0, r8
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	cmp	r7, #0
	blt	.Lc0974
	lsl	r3, r7, #4
	ldr	r2, =0x644
	add	r3, r7
	lsl	r3, #4
	add	r0, r6, r2
	add	r3, r7
	mov	r2, #0x80
	lsl	r3, #2
	lsl	r2, #9
	sub	r2, r3
	str	r2, [r0]
	ldr	r1, =0x50000c0
	mov	r0, r4
	mov	r3, #0x80
	bl	Func_80c1724
.Lc0974:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50000a0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x50001e8
	ldr	r2, =0x50000bc
	ldrh	r3, [r3]
	ldr	r0, =0x6003800
	strh	r3, [r2]
	bl	Func_80c0098
	ldr	r0, =0x600f800
	bl	Func_80c00d8
	ldr	r3, =Func_80008d4
	ldr	r0, =0x600ffc0
	mov	r1, #0x40
	bl	_call_via_r3
	mov	r2, r10
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bne	.Lc09ae
	ldr	r0, =Func_80c0130
	ldr	r1, =0x4ff
	bl	Func_80041d8
.Lc09ae:
	mov	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	cmp	r3, #1
	bne	.Lc09be
	ldr	r2, =REG_BG1CNT
	ldr	r3, .Lc09cc	@ 0x1f83
	strh	r3, [r2]
.Lc09be:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc09cc:
	.word	0x1f83
.func_end Func_80c08ec

.thumb_func_start Func_80c0a24
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r3, [sp, #4]
	ldr	r3, =iwram_3001f00
	str	r2, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r2, r3
	sub	r2, #0x88
	ldr	r2, [r2]
	mov	r10, r0
	mov	r0, #0x80
	ldr	r1, [r3]
	lsl	r0, #4
	mov	r9, r2
	sub	r3, #0x80
	mov	r2, #0
	ldr	r3, [r3]
	mov	r11, r0
	str	r2, [sp]
	ldr	r0, [sp, #0x30]
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r0, r2
	blt	.Lc0a78
	mov	r0, #0x80
	lsl	r0, #6
	str	r0, [sp]
	mov	r0, #0x36
	ldrsh	r2, [r3, r0]
	neg	r2, r2
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0xd0
	lsl	r2, #7
	add	r2, r3
	mov	r11, r2
.Lc0a78:
	mov	r3, r9
	cmp	r3, #0
	bne	.Lc0a80
	b	.Lc0bd2
.Lc0a80:
	ldr	r0, [r1, #8]
	cmp	r0, #1
	beq	.Lc0a8c
	ldr	r3, [r1, #0xc]
	cmp	r3, #1
	bne	.Lc0a9a
.Lc0a8c:
	ldr	r3, [r1, #0x10]
	cmp	r3, #0
	bne	.Lc0a9a
	ldr	r2, =iwram_3001ad0
	mov	r1, r11
	asr	r3, r1, #8
	strh	r3, [r2, #4]
.Lc0a9a:
	cmp	r0, #2
	beq	.Lc0aa0
	b	.Lc0bd2
.Lc0aa0:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #1
	eor	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #6
	mov	r1, #0x80
	add	r3, r9
	ldr	r0, [sp, #0x30]
	lsl	r1, #9
	ldr	r2, =Func_80008ac
	mov	r7, r3
	bl	_call_via_r2
	mov	r6, r9
	add	r6, #0x10
	asr	r5, r0, #8
	mov	r3, #0
	strh	r5, [r6]
	strh	r3, [r6, #2]
	strh	r3, [r6, #4]
	strh	r5, [r6, #6]
	mov	r14, r0
	ldr	r3, [sp, #0x30]
	ldr	r0, =0xffff0000
	add	r3, r0
	mov	r8, r3
	add	r7, #0x20
	ldr	r4, =Func_8000888
	mov	r0, r10
	mov	r1, r8
	.call_via r4
	mov	r1, r0
	mov	r0, r14
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	ldr	r0, [sp, #0xc]
	.call_via r4
	mov	r1, r0
	mov	r0, r14
	.call_via r4
	ldr	r2, =0x7fff
	ldr	r1, [sp, #8]
	add	r3, r2
	asr	r3, #8
	add	r3, r1
	add	r3, r11
	str	r3, [r6, #8]
	add	r0, r2
	ldr	r2, [sp, #4]
	ldr	r3, =0xfffff000
	asr	r0, #8
	add	r0, r2
	lsl	r5, #16
	mov	r1, #0x80
	add	r0, r3
	asr	r5, #16
	lsl	r1, #7
	str	r0, [r6, #0xc]
	sub	r1, r0
	ldr	r2, =Func_80008ac
	mov	r0, r5
	bl	_call_via_r2
	asr	r0, #16
	add	r6, r0, #1
	ldr	r0, =0x16b
	mov	r5, #0
	bl	_Func_8079338
	cmp	r0, #0
	bne	.Lc0b4a
	ldr	r3, .Lc0b6c	@ 0x3f8e
.Lc0b40:
	add	r5, #1
	strh	r3, [r7]
	add	r7, #2
	cmp	r5, #0xf
	bls	.Lc0b40
.Lc0b4a:
	cmp	r6, #0x88
	bls	.Lc0b50
	mov	r6, #0x88
.Lc0b50:
	cmp	r5, r6
	bcs	.Lc0b94
	ldr	r3, [sp]
	lsl	r2, r3, #16
	ldr	r3, .Lc0b70	@ 0x478a
	lsr	r2, #16
	orr	r2, r3
.Lc0b5e:
	add	r5, #1
	strh	r2, [r7]
	add	r7, #2
	cmp	r5, r6
	bcc	.Lc0b5e
	b	.Lc0b94

	.align	2, 0
.Lc0b6c:
	.word	0x3f8e
.Lc0b70:
	.word	0x478a
	.pool

.Lc0b94:
	cmp	r5, #0x87
	bhi	.Lc0bac
	ldr	r0, [sp]
	ldr	r3, =0x478e
	lsl	r2, r0, #16
	lsr	r2, #16
	orr	r2, r3
.Lc0ba2:
	add	r5, #1
	strh	r2, [r7]
	add	r7, #2
	cmp	r5, #0x87
	bls	.Lc0ba2
.Lc0bac:
	cmp	r5, #0x9f
	bhi	.Lc0bc8
	ldr	r3, =0x3f8e
.Lc0bb2:
	add	r5, #1
	strh	r3, [r7]
	add	r7, #2
	cmp	r5, #0x9f
	bls	.Lc0bb2
	b	.Lc0bc8

	.pool_aligned

.Lc0bc8:
	mov	r1, r9
	ldr	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r1]
.Lc0bd2:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0a24

.thumb_func_start Func_80c0be4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e80
	ldr	r3, [r3]
	mov	r11, r2
	mov	r8, r3
	mov	r2, #0xc
	add	r2, r8
	mov	r5, r0
	mov	r9, r1
	lsl	r0, r4, #16
	mov	r1, #0x64
	sub	sp, #0x28
	mov	r10, r2
	bl	Func_af0_from_thumb
	mov	r3, r10
	mov	r2, r9
	str	r2, [r3, #4]
	mov	r2, r11
	str	r5, [r3]
	str	r2, [r3, #8]
	mov	r6, #0xff
	ldr	r2, =Func_80008ac
	add	r3, sp, #4
	mov	r5, #0
	lsl	r6, #17
	mov	r1, #0xc0
	str	r5, [r3]
	str	r5, [r3, #4]
	str	r5, [r3, #8]
	mov	r7, r0
	mov	r11, r2
	mov	r0, r6
	lsl	r1, #8
	mov	r9, r3
	bl	_call_via_r11
	lsl	r2, r6, #1
	mov	r1, r0
	mov	r0, r6
	bl	Func_8005258
	bl	Func_80049ac
	mov	r0, r10
	bl	Func_8004cb4
	mov	r2, r8
	mov	r3, #0x36
	ldrsh	r0, [r2, r3]
	bl	Func_8004c1c
	mov	r2, r8
	mov	r3, #0x34
	ldrsh	r0, [r2, r3]
	bl	Func_8004bd4
	add	r0, sp, #0x1c
	str	r5, [r0]
	str	r5, [r0, #4]
	mov	r2, r8
	ldr	r3, [r2, #0x20]
	mov	r1, r8
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	ldr	r3, =iwram_3001ce0
	mov	r5, #0x78
	str	r5, [r3, #0xc]
	str	r5, [r3, #0x10]
	bl	Func_80049ac
	mov	r0, r8
	mov	r1, r10
	bl	Func_80051d8
	add	r6, sp, #0x10
	mov	r1, r6
	mov	r0, r9
	bl	Func_8005268
	ldr	r3, [r6, #4]
	ldr	r2, [r6]
	sub	r2, r5, r2
	sub	r5, r3
	lsl	r5, #8
	mov	r1, #0xf0
	mov	r3, r5
	lsl	r1, #15
	lsl	r5, r7, #8
	lsl	r2, #8
	mov	r0, r1
	sub	r5, r7
	str	r7, [sp]
	lsl	r6, r5, #1
	bl	Func_80c0a24
	mov	r1, #0xc0
	mov	r0, r6
	lsl	r1, #8
	bl	_call_via_r11
	lsl	r5, #2
	mov	r1, r0
	mov	r2, r5
	mov	r0, r6
	bl	Func_8005258
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0be4

.thumb_func_start Func_80c0cec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r2
	ldr	r2, =iwram_3001e80
	ldr	r2, [r2]
	lsl	r3, #16
	mov	r8, r2
	mov	r2, #0xc
	add	r2, r8
	mov	r5, r0
	mov	r9, r1
	mov	r0, r3
	mov	r1, #0x64
	sub	sp, #0x28
	mov	r10, r2
	bl	Func_af0_from_thumb
	mov	r3, r10
	mov	r2, r9
	str	r2, [r3, #4]
	mov	r2, r11
	str	r5, [r3]
	str	r2, [r3, #8]
	mov	r6, #0xff
	ldr	r2, =Func_80008ac
	add	r3, sp, #4
	mov	r5, #0
	lsl	r6, #17
	mov	r1, #0xc0
	str	r5, [r3]
	str	r5, [r3, #4]
	str	r5, [r3, #8]
	mov	r7, r0
	mov	r11, r2
	mov	r0, r6
	lsl	r1, #8
	mov	r9, r3
	bl	_call_via_r11
	lsl	r2, r6, #1
	mov	r1, r0
	mov	r0, r6
	bl	Func_8005258
	bl	Func_80049ac
	mov	r0, r10
	bl	Func_8004cb4
	mov	r2, r8
	mov	r3, #0x36
	ldrsh	r0, [r2, r3]
	bl	Func_8004c1c
	mov	r2, r8
	mov	r3, #0x34
	ldrsh	r0, [r2, r3]
	bl	Func_8004bd4
	add	r0, sp, #0x1c
	mov	r1, r8
	str	r5, [r0]
	str	r5, [r0, #4]
	str	r6, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	ldr	r3, =iwram_3001ce0
	mov	r5, #0x78
	str	r5, [r3, #0xc]
	str	r5, [r3, #0x10]
	bl	Func_80049ac
	mov	r0, r8
	mov	r1, r10
	bl	Func_80051d8
	add	r6, sp, #0x10
	mov	r1, r6
	mov	r0, r9
	bl	Func_8005268
	ldr	r3, [r6, #4]
	ldr	r2, [r6]
	sub	r2, r5, r2
	sub	r5, r3
	lsl	r5, #8
	mov	r1, #0xf0
	mov	r3, r5
	lsl	r1, #15
	lsl	r5, r7, #8
	lsl	r2, #8
	mov	r0, r1
	sub	r5, r7
	str	r7, [sp]
	lsl	r6, r5, #1
	bl	Func_80c0a24
	mov	r1, #0xc0
	mov	r0, r6
	lsl	r1, #8
	bl	_call_via_r11
	lsl	r5, #2
	mov	r1, r0
	mov	r2, r5
	mov	r0, r6
	bl	Func_8005258
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0cec

.thumb_func_start Func_80c0df4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	bl	Func_80b7dd0
	ldr	r5, [r0]
	mov	r0, r6
	bl	Func_80b7dd0
	ldr	r3, [r0]
	ldr	r1, [r5, #8]
	ldr	r0, [r3, #8]
	ldr	r4, [r5, #0x10]
	ldr	r2, [r3, #0x10]
	add	r0, r1
	add	r2, r4
	lsr	r3, r0, #31
	add	r0, r3
	lsr	r3, r2, #31
	add	r2, r3
	asr	r0, #1
	asr	r2, #1
	mov	r1, #0
	mov	r3, r8
	bl	Func_80c0cec
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c0df4

.thumb_func_start Func_80c0e38
	push	{r5, r6, r7, lr}
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc0e48	@ 0x2044
	ldr	r7, =REG_BLDALPHA
	strh	r3, [r2]
	ldr	r6, .Lc0e4c	@ 0x1010
	mov	r5, #1
	b	.Lc0e58

	.align	2, 0
.Lc0e48:
	.word	0x2044
.Lc0e4c:
	.word	0x1010
	.pool

.Lc0e58:
	sub	r3, r6, r5
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #2
	bl	Func_80030f8
	cmp	r5, #0x10
	ble	.Lc0e58
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0e38

.thumb_func_start Func_80c0e70
	push	{r5, r6, r7, lr}
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc0e80	@ 0x2044
	ldr	r7, =REG_BLDALPHA
	strh	r3, [r2]
	ldr	r6, .Lc0e84	@ 0x1000
	mov	r5, #1
	b	.Lc0e90

	.align	2, 0
.Lc0e80:
	.word	0x2044
.Lc0e84:
	.word	0x1000
	.pool

.Lc0e90:
	add	r3, r5, r6
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #2
	bl	Func_80030f8
	cmp	r5, #0x10
	ble	.Lc0e90
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0e70

