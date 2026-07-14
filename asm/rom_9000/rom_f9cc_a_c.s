	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecodeMetatileset  @ 0x0800f9f4
	push	{r5, r6, r7, lr}
	sub	r3, r0, #1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r4, r3, #1
	mov	r3, #1
	and	r3, r0
	ldr	r6, =ewram_2010002
	ldr	r5, =ewram_2020000
	cmp	r3, #0
	beq	.Lfa7a
	ldr	r3, =ewram_2010001
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lfa38
	cmp	r3, #1
	bgt	.Lfa1c
	cmp	r3, #0
	beq	.Lfa22
	b	.Lfa7a
.Lfa1c:
	cmp	r3, #2
	beq	.Lfa60
	b	.Lfa7a
.Lfa22:
	mov	r1, #0
	cmp	r1, r4
	bge	.Lfa7a
.Lfa28:
	ldrh	r3, [r6]
	add	r1, #1
	strh	r3, [r5]
	add	r6, #2
	add	r5, #2
	cmp	r1, r4
	blt	.Lfa28
	b	.Lfa7a
.Lfa38:
	ldr	r6, =ewram_2010002
	mov	r1, #0
	mov	r7, #0
	add	r0, r4, r6
	cmp	r1, r4
	bge	.Lfa7a
.Lfa44:
	ldrb	r3, [r6]
	ldrb	r2, [r0]
	lsl	r3, #8
	orr	r3, r2
	eor	r3, r7
	add	r1, #1
	strh	r3, [r5]
	add	r0, #1
	add	r6, #1
	add	r5, #2
	mov	r7, r3
	cmp	r1, r4
	blt	.Lfa44
	b	.Lfa7a
.Lfa60:
	mov	r2, #0
	cmp	r4, #0
	ble	.Lfa7a
	mov	r1, r4
.Lfa68:
	ldrh	r3, [r6]
	sub	r1, #1
	eor	r3, r2
	strh	r3, [r5]
	add	r6, #2
	add	r5, #2
	mov	r2, r3
	cmp	r1, #0
	bne	.Lfa68
.Lfa7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end DecodeMetatileset

	.section .text.after_fa8c, "ax", %progbits


	.section .text.after_fac8, "ax", %progbits

.thumb_func_start LoadMapData  @ 0x0800fb38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xc1ff
	and	r3, r2
	mov	r6, r0
	strh	r3, [r1]
	mov	r0, #0
	sub	sp, #0xc
	bl	Func_8003bb4
	lsl	r3, r6, #1
	ldr	r2, =.L13784
	add	r3, r6
	mov	r6, #0xca
	lsl	r6, #1
	lsl	r3, #2
	add	r3, r2
	mov	r1, r6
	mov	r0, #8
	str	r3, [sp, #8]
	bl	galloc_ewram
	mov	r1, r6
	ldr	r3, =Func_80008d4
	mov	r8, r0
	bl	_call_via_r3
	ldr	r2, [sp, #8]
	ldr	r3, =0x128
	ldrh	r0, [r2]
	add	r0, r3
	bl	GetFile
	mov	r5, r0
	ldr	r3, [r5, #0x24]
	ldr	r1, =ewram_2010001
	add	r0, r5, r3
	bl	DecompressLZ
	bl	DecodeMetatileset
	ldr	r3, [r5, #0x28]
	ldr	r1, =ewram_202c000
	add	r0, r5, r3
	bl	DecompressLZ
	ldr	r3, [r5, #0x2c]
	ldr	r1, =gBuffer
	add	r0, r5, r3
	bl	DecompressLZ
	bl	UnpackTilemap
	ldr	r0, [r5, #0x30]
	cmp	r0, #0
	beq	.Lfbc8
	ldr	r6, =ewram_202d000
	add	r0, r5, r0
	mov	r1, r6
	bl	DecompressLZ
	mov	r0, r6
	bl	Func_80118d8
.Lfbc8:
	ldr	r0, [r5, #0x34]
	cmp	r0, #0
	beq	.Lfbde
	ldr	r6, =ewram_202de00
	add	r0, r5, r0
	mov	r1, r6
	bl	DecompressLZ
	mov	r0, r6
	bl	Func_8011a84
.Lfbde:
	ldr	r3, [r5, #0x38]
	mov	r2, r8
	add	r3, r5, r3
	str	r3, [r2, #0x10]
	ldrb	r3, [r5]
	add	r2, #0xec
	lsl	r3, #19
	str	r3, [r2]
	ldrb	r3, [r5, #1]
	add	r2, #4
	lsl	r3, #19
	str	r3, [r2]
	ldrb	r3, [r5, #2]
	add	r2, #4
	lsl	r3, #19
	str	r3, [r2]
	ldrb	r3, [r5, #3]
	add	r2, #4
	lsl	r3, #19
	str	r3, [r2]
	mov	r3, r8
	add	r3, #0xe4
	str	r3, [sp, #4]
	ldr	r2, [sp, #4]
	mov	r3, #0
	str	r3, [r2]
	mov	r2, r8
	add	r2, #0xe8
	str	r2, [sp]
	str	r3, [r2]
	mov	r3, #0x80
	ldrb	r2, [r5, #4]
	lsl	r3, #1
	add	r3, r8
	strb	r2, [r3]
	ldr	r2, =0x101
	ldrb	r3, [r5, #5]
	add	r2, r8
	strb	r3, [r2]
	mov	r2, #0x81
	ldrb	r3, [r5, #6]
	lsl	r2, #1
	add	r2, r8
	strb	r3, [r2]
	mov	r7, #0x82
	ldr	r3, =Func_8000888
	lsl	r7, #1
	mov	r6, r5
	mov	r2, #2
	add	r7, r8
	add	r6, #0xc
	mov	r9, r3
	mov	r11, r2
.Lfc48:
	ldrb	r0, [r6]
	ldrb	r2, [r6, #1]
	lsl	r3, r0, #19
	str	r3, [r7, #8]
	mov	r14, r3
	lsl	r3, r2, #19
	str	r3, [r7, #0xc]
	mov	r10, r3
	mov	r3, #4
	ldrsb	r3, [r6, r3]
	lsl	r3, #12
	str	r3, [r7, #0x18]
	mov	r3, #5
	ldrsb	r3, [r6, r3]
	lsl	r3, #12
	str	r3, [r7, #0x1c]
	ldrb	r3, [r6, #6]
	strh	r3, [r7, #0x28]
	ldrb	r3, [r6, #7]
	lsr	r2, #1
	strh	r3, [r7, #0x2a]
	lsr	r0, #1
	mov	r3, #0
	lsl	r2, #7
	str	r3, [r7, #0x20]
	str	r3, [r7, #0x24]
	mov	r1, #2
	ldrsb	r1, [r6, r1]
	mov	r4, #3
	ldrsb	r4, [r6, r4]
	add	r2, r0
	ldr	r3, =gBuffer
	lsl	r2, #2
	add	r2, r3
	lsl	r1, #12
	lsl	r4, #12
	str	r1, [r7, #0x10]
	str	r4, [r7, #0x14]
	str	r2, [r7, #0x2c]
	ldr	r2, [sp, #4]
	ldr	r0, [r2]
	.call_via r9
	add	r0, r14
	str	r0, [r7]
	ldr	r3, [sp]
	mov	r1, r4
	ldr	r0, [r3]
	.call_via r9
	mov	r2, #1
	neg	r2, r2
	add	r11, r2
	add	r0, r10
	mov	r3, r11
	str	r0, [r7, #4]
	add	r6, #8
	add	r7, #0x30
	cmp	r3, #0
	bge	.Lfc48
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, r8
	mov	r1, #0x80
	strh	r3, [r2, #0x14]
	lsl	r1, #1
	add	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lfcde
	mov	r3, #0xc0
	lsl	r3, #5
	strh	r3, [r2, #0x14]
.Lfcde:
	ldr	r0, =0x101
	add	r0, r8
	ldrb	r3, [r0]
	cmp	r3, #0
	beq	.Lfcf4
	mov	r2, r8
	ldrh	r3, [r2, #0x14]
	ldr	r2, .Lfd24	@ 0x400
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r2, #0x14]
.Lfcf4:
	mov	r3, #0x81
	lsl	r3, #1
	add	r3, r8
	mov	r12, r3
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lfd0e
	mov	r2, r8
	ldrh	r3, [r2, #0x14]
	ldr	r2, .Lfd28	@ 0x200
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r2, #0x14]
.Lfd0e:
	ldrb	r3, [r5, #7]
	ldrb	r2, [r1]
	lsl	r3, #2
	orr	r2, r3
	mov	r3, #0xa0
	lsl	r3, #3
	orr	r2, r3
	ldr	r3, =REG_BG3CNT
	strh	r2, [r3]
	b	.Lfd5c

	.align	2, 0
.Lfd24:
	.word	0x400
.Lfd28:
	.word	0x200
	.pool

.Lfd5c:
	ldrb	r2, [r0]
	ldrb	r3, [r5, #8]
	lsl	r3, #2
	orr	r2, r3
	mov	r3, #0xc0
	lsl	r3, #3
	orr	r2, r3
	ldr	r3, =REG_BG2CNT
	strh	r2, [r3]
	mov	r3, r12
	ldrb	r2, [r3]
	ldrb	r3, [r5, #9]
	lsl	r3, #2
	orr	r2, r3
	mov	r3, #0xe0
	lsl	r3, #3
	orr	r2, r3
	ldr	r3, =REG_BG1CNT
	strh	r2, [r3]
	mov	r5, #0xb8
	lsl	r5, #1
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lfd98
	mov	r0, r5
	bl	_ClearFlag
	b	.Lfe42
.Lfd98:
	mov	r2, #0x80
	lsl	r2, #7
	mov	r11, r2
	mov	r0, r11
	bl	Func_8004938
	mov	r7, r0
	cmp	r7, #0
	beq	.Lfe42
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r8, r3
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [sp, #8]
	mov	r10, r3
	ldr	r3, =0x128
	ldrh	r0, [r2, #2]
	mov	r9, r3
	add	r0, r9
	bl	GetFile
	mov	r1, r7
	bl	DecompressLZ
	ldr	r3, =Func_8001af8
	mov	r2, r10
	strh	r2, [r7]
	mov	r2, #0xe0
	mov	r10, r3
	mov	r1, r7
	lsl	r2, #1
	mov	r0, r8
	bl	_call_via_r10
	ldr	r2, [sp, #8]
	ldrh	r0, [r2, #4]
	add	r0, r9
	bl	GetFile
	mov	r1, r7
	bl	DecompressLZ2
	mov	r2, r11
	mov	r1, r7
	ldr	r0, =0x6004000
	bl	_call_via_r10
	ldr	r3, [sp, #8]
	ldrh	r0, [r3, #6]
	add	r0, r9
	bl	GetFile
	mov	r1, r7
	bl	DecompressLZ2
	mov	r1, r7
	mov	r2, r11
	ldr	r0, =0x6008000
	bl	_call_via_r10
	ldr	r2, [sp, #8]
	ldrh	r0, [r2, #8]
	add	r0, r9
	bl	GetFile
	mov	r1, r7
	bl	DecompressLZ2
	mov	r1, r7
	mov	r2, r11
	ldr	r0, =0x600c000
	bl	_call_via_r10
	ldr	r3, [sp, #8]
	ldrh	r0, [r3, #0xa]
	add	r0, r9
	bl	GetFile
	ldr	r1, =ewram_2028000
	bl	DecompressLZ2
	mov	r0, r7
	bl	free
.Lfe42:
	ldr	r3, =REG_MOSAIC
	mov	r2, #0
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	mov	r2, #0xa0
	lsl	r2, #1
	sub	r3, #0x50
	strh	r2, [r3]
	ldr	r0, =UpdateFieldScreen
	ldr	r1, =0xc85
	bl	StartTask
	mov	r0, #2
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end LoadMapData
