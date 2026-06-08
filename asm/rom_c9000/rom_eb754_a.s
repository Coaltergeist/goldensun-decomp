	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80eb754
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001ef0
	ldr	r1, [r5]
	sub	sp, #0xb0
	str	r1, [sp, #0x50]
	sub	r3, r5, #4
	ldr	r3, [r3]
	str	r3, [sp, #0x4c]
	ldr	r4, =0x7828
	ldr	r2, [r5, #4]
	add	r6, r3, r4
	str	r2, [sp, #0x44]
	str	r0, [r6]
	mov	r0, #0
	bl	Func_80cd594
	bl	Func_80c9048
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Leb7bc	@ 0x784
	strh	r3, [r2]
	ldr	r2, .Leb7c0	@ 0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r7, [sp, #0x4c]
	mov	r0, #0xef
	lsl	r0, #7
	mov	r3, #0
	add	r7, r0
	mov	r1, #0x90
	str	r3, [r7]
	lsl	r1, #3
	ldr	r0, =Func_80cd260
	bl	StartTask
	mov	r0, #1
	mov	r1, #0
	bl	Func_80cd104
	ldr	r1, =0x175
	mov	r0, #9
	mov	r2, #1
	b	.Leb7d8

	.align	2, 0
.Leb7bc:
	.word	0x784
.Leb7c0:
	.word	0
	.pool

.Leb7d8:
	bl	Func_80dbb24
	ldr	r2, =gPhysVec
	mov	r3, #0xf0
	str	r3, [r2, #0x10]
	ldr	r0, [r6]
	bl	Func_80d6750
	ldr	r2, =REG_WININ
	ldr	r3, .Leb824	@ 0x2737
	strh	r3, [r2]
	ldr	r3, .Leb828	@ 0xca
	sub	r2, #8
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	mov	r2, #0
	ldr	r1, =0x3a
	mov	r0, #1
	bl	_Func_80c08ec
	mov	r0, #1
	mov	r1, #1
	bl	Func_80cd104
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x44]
	mov	r2, #0
	mov	r3, #0
	bl	Func_80e0524
	ldr	r0, =_FILE_95
	ldr	r1, [sp, #0x4c]
	mov	r2, #1
	mov	r3, #1
	b	.Leb840

	.align	2, 0
.Leb824:
	.word	0x2737
.Leb828:
	.word	0xca
	.pool

.Leb840:
	bl	Func_80e0524
	ldr	r3, =0x7741
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	ldr	r3, =0x80
	add	r2, #0x20
	strh	r3, [r2]
	ldr	r3, =0x100e
	add	r2, #0x32
	strh	r3, [r2]
	ldr	r3, =0x3f44
	mov	r1, #0
	sub	r2, #2
	strh	r3, [r2]
	str	r1, [sp, #0x40]
	str	r1, [sp, #0x3c]
	ldr	r3, =iwram_3001ad0
	ldrh	r3, [r3, #4]
	str	r3, [sp, #0x38]
	ldr	r5, [r5, #0x10]
	mov	r2, #1
	str	r5, [sp, #0x34]
	str	r1, [sp, #0x30]
	str	r2, [r7]
	b	.Leb88c

	.pool_aligned

.Leb88c:
	ldr	r4, [sp, #0x4c]
	ldr	r7, =0x7784
	ldr	r0, [sp, #0x40]
	add	r3, r4, r7
	str	r0, [r3]
	ldr	r1, [sp, #0x34]
	mov	r3, #0xe1
	str	r2, [r1, #0x10]
	lsl	r3, #7
	mov	r2, #0
	mov	r8, r2
	mov	r6, #0x1f
	add	r5, r4, r3
.Leb8a6:
	bl	Random
	and	r0, r6
	add	r0, #0x10
	str	r0, [r5]
	bl	Random
	and	r0, r6
	add	r0, #0x30
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x10
	lsl	r0, #16
	str	r0, [r5, #0x10]
	bl	Random
	mov	r1, #0x30
	bl	Func_b50_from_thumb
	mov	r4, #1
	add	r8, r4
	add	r0, #2
	mov	r7, r8
	str	r0, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Leb8a6
	mov	r3, #3
	mov	r2, #7
	mov	r0, #0x2e
	mov	r1, #7
	str	r3, [sp]
	bl	Func_80ed408
	ldr	r3, =gPtrs
	add	r3, #0xb8
	ldr	r3, [r3]
	ldr	r2, =REG_BG2CNT
	str	r3, [sp, #0x48]
	mov	r0, #0
	ldr	r3, .Leb904	@ 0x786
	mov	r11, r0
	strh	r3, [r2]
	b	.Lebc56

	.align	2, 0
.Leb904:
	.word	0x786
	.pool

.Leb914:
	mov	r3, r11
	sub	r3, #0x18
	cmp	r3, #0x1f
	bhi	.Leb922
	ldr	r1, [sp, #0x30]
	add	r1, #1
	str	r1, [sp, #0x30]
.Leb922:
	ldr	r2, [sp, #0x30]
	cmp	r2, #0x18
	ble	.Leb92c
	mov	r3, #0x18
	str	r3, [sp, #0x30]
.Leb92c:
	mov	r4, r11
	cmp	r4, #0x87
	bgt	.Leb944
	ldr	r7, =iwram_3001ad0
	ldr	r0, [sp, #0x30]
	ldrh	r3, [r7, #4]
	mov	r1, r7
	sub	r3, r0
	strh	r3, [r1, #4]
	ldr	r2, [sp, #0x3c]
	add	r2, r0
	str	r2, [sp, #0x3c]
.Leb944:
	mov	r3, r11
	cmp	r3, #0x95
	bgt	.Leba18
	ldr	r3, =Data_edad8
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r7, r11
	str	r3, [sp, #0x5c]
	str	r4, [sp, #0x60]
	mov	r4, #0
	mov	r10, r4
	cmp	r7, #0x67
	ble	.Leb966
	ldr	r0, =0xfffff980
	lsl	r3, r7, #4
	add	r0, r3
	mov	r10, r0
.Leb966:
	mov	r3, r11
	sub	r3, #8
	cmp	r3, #0x17
	bhi	.Leb978
	ldr	r1, [sp, #0x40]
	ldr	r2, [sp, #0x30]
	add	r3, r1, r2
	sub	r3, #8
	str	r3, [sp, #0x40]
.Leb978:
	mov	r3, r11
	cmp	r3, #7
	ble	.Leb9be
	mov	r5, #0x60
	cmp	r3, #0x68
	bgt	.Leb986
	mov	r5, #0x20
.Leb986:
	mov	r4, r11
	ldr	r7, =0xffffe000
	lsl	r3, r4, #10
	add	r0, r3, r7
	ldr	r3, =0xffff
	mov	r1, #0x80
	and	r0, r3
	lsl	r1, #8
	cmp	r0, r1
	ble	.Leb99e
	ldr	r2, =0xffff8000
	add	r0, r2
.Leb99e:
	bl	Func_8002322
	mov	r3, r5
	mul	r3, r0
	asr	r3, #16
	str	r3, [sp, #0x2c]
	mov	r4, r11
	mov	r3, #0x1f
	and	r3, r4
	cmp	r3, #8
	bne	.Leb9be
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x77a8
	mov	r3, #4
	add	r2, r7, r0
	str	r3, [r2]
.Leb9be:
	add	r3, sp, #0xa0
	mov	r2, #0
	str	r2, [r3, #0xc]
	mov	r2, #0xff
	lsl	r2, #16
	str	r2, [r3, #4]
	mov	r6, r3
	ldr	r2, [sp, #0x4c]
	ldr	r3, =0x77d8
	mov	r1, #0
	mov	r8, r1
	add	r7, sp, #0x5c
	add	r5, r2, r3
.Leb9d8:
	ldr	r3, =.Leef56
	mov	r4, r8
	ldr	r0, [sp, #0x40]
	ldrb	r3, [r3, r4]
	mov	r1, r10
	add	r3, r0, r3
	sub	r3, r1
	mov	r2, #0xe0
	lsl	r2, #16
	lsl	r3, #16
	add	r3, r2
	str	r3, [r6]
	ldr	r3, =.Leef5f
	ldrb	r3, [r3, r4]
	ldr	r4, [sp, #0x2c]
	mov	r0, #0x90
	sub	r3, r4
	lsl	r0, #15
	lsl	r3, #16
	add	r3, r0
	str	r3, [r6, #8]
	mov	r1, r6
	mov	r2, r7
	ldmia	r5!, {r0}
	mov	r3, #0
	bl	_Func_800b168
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #9
	bne	.Leb9d8
.Leba18:
	mov	r3, r11
	cmp	r3, #0x1a
	bgt	.Lebab0
	ldr	r7, [sp, #0x3c]
	lsl	r3, #3
	add	r7, #4
	mov	r10, r3
	cmp	r7, #0xa
	ble	.Leba2c
	mov	r7, #0xa
.Leba2c:
	mov	r4, r10
	cmp	r4, #0x40
	ble	.Leba36
	mov	r0, #0x40
	mov	r10, r0
.Leba36:
	mov	r1, #0
	mov	r2, r10
	mov	r8, r1
	cmp	r2, #0
	beq	.Lebab0
	ldr	r3, [sp, #0x3c]
	ldr	r4, [sp, #0x3c]
	lsl	r3, #1
	str	r3, [sp, #0x28]
	add	r3, r4
	lsl	r3, #2
	add	r3, #0x30
	str	r3, [sp, #0x24]
	lsr	r3, r7, #31
	add	r3, r7, r3
	asr	r3, #1
	lsl	r0, r7, #1
	str	r3, [sp, #0x20]
	mov	r9, r0
.Leba5c:
	mov	r1, r8
	lsl	r6, r1, #10
	mov	r0, r6
	bl	Func_8002322
	ldr	r3, [sp, #0x28]
	add	r3, #8
	mov	r5, r3
	mul	r5, r0
	ldr	r2, [sp, #0x3c]
	asr	r5, #16
	mov	r0, r6
	add	r5, r2
	bl	Func_800231c
	ldr	r4, [sp, #0x24]
	mov	r3, r4
	mul	r3, r0
	mov	r2, r9
	ldr	r0, =Data_ede48
	ldr	r4, [sp, #0x20]
	sub	r2, #2
	ldrh	r1, [r0, r2]
	add	r5, #0x60
	ldr	r2, [sp, #0x44]
	asr	r3, #16
	sub	r5, r4
	mov	r0, r9
	add	r3, #0x40
	add	r1, r2, r1
	str	r0, [sp, #4]
	sub	r3, r7
	str	r7, [sp]
	ldr	r0, [sp, #0x50]
	mov	r2, r5
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	cmp	r8, r10
	bne	.Leba5c
.Lebab0:
	mov	r1, r11
	cmp	r1, #0x18
	bne	.Lebacc
	ldr	r3, [sp, #0x4c]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x7784
	mov	r3, #0x32
	add	r2, r7, r0
	str	r3, [r2]
.Lebacc:
	mov	r1, r11
	cmp	r1, #0x1c
	bne	.Lebad8
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lebb08	@ 0x784
	strh	r3, [r2]
.Lebad8:
	mov	r2, r11
	cmp	r2, #0x11
	ble	.Lebbbe
	ldr	r4, [sp, #0x4c]
	mov	r7, #0xe1
	mov	r3, #0
	lsl	r7, #7
	mov	r8, r3
	mov	r6, #0x1f
	add	r5, r4, r7
.Lebaec:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Lebb78
	mov	r1, #3
	mov	r0, r8
	bl	Func_b1c_from_thumb
	add	r0, #1
	lsl	r4, r0, #1
	ldr	r2, =Data_ede48
	sub	r3, r4, #2
	ldrh	r1, [r2, r3]
	b	.Lebb40

	.align	2, 0
.Lebb08:
	.word	0x784
	.pool

.Lebb40:
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	ldr	r2, [sp, #0x44]
	sub	r3, r0
	add	r1, r2, r1
	ldr	r2, [r5]
	str	r0, [sp]
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x50]
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	ldr	r3, [r5]
	add	r3, #2
	ldr	r2, [r5, #0x10]
	str	r3, [r5]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #4
	cmp	r3, #0
	bge	.Lebb72
	add	r3, #0x3f
.Lebb72:
	asr	r3, #6
	str	r3, [r5, #0x10]
	b	.Lebb7c
.Lebb78:
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lebb7c:
	ldr	r3, [r5]
	cmp	r3, #0x80
	bgt	.Lebb88
	ldr	r3, [r5, #0x18]
	cmp	r3, #1
	bne	.Lebbb2
.Lebb88:
	bl	Random
	ldr	r7, [sp, #0x40]
	and	r0, r6
	add	r0, r7
	add	r0, #0xac
	str	r0, [r5]
	bl	Random
	ldr	r1, [sp, #0x2c]
	and	r0, r6
	sub	r0, r1
	add	r0, #0x38
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	and	r0, r6
	sub	r0, #0x10
	lsl	r0, #15
	str	r0, [r5, #0x10]
.Lebbb2:
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r5, #0x1c
	cmp	r3, #0x30
	bne	.Lebaec
.Lebbbe:
	mov	r4, r11
	cmp	r4, #0x1f
	ble	.Lebc0e
	mov	r3, r11
	sub	r3, #0x20
	lsr	r2, r3, #31
	add	r3, r2
	asr	r5, r3, #1
	cmp	r5, #0x28
	ble	.Lebbd4
	mov	r5, #0x28
.Lebbd4:
	mov	r7, #0
	mov	r8, r7
	mov	r6, #0
	mov	r7, #0x78
.Lebbdc:
	bl	Random
	mov	r3, #3
	and	r0, r3
	lsl	r1, r0, #1
	add	r1, r0
	mov	r3, #0x30
	ldr	r0, [sp, #0x4c]
	str	r3, [sp]
	lsl	r1, #9
	mov	r3, #0x20
	add	r1, r0, r1
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x50]
	mov	r3, r6
	sub	r2, r7, r5
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x12
	cmp	r1, #6
	bne	.Lebbdc
.Lebc0e:
	ldr	r3, [sp, #0x4c]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.Lebc3c
	sub	r3, #1
	str	r3, [r2]
	bl	Random
	ldr	r3, .Lebc30	@ 7
	ldr	r7, =iwram_3001ad0
	and	r0, r3
	add	r0, #0x1c
	strh	r0, [r7, #6]
	b	.Lebc42

	.align	2, 0
.Lebc30:
	.word	7
	.pool

.Lebc3c:
	ldr	r0, =iwram_3001ad0
	mov	r3, #0x20
	strh	r3, [r0, #6]
.Lebc42:
	ldr	r1, [sp, #0x4c]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	mov	r4, #1
	add	r11, r4
.Lebc56:
	mov	r7, r11
	cmp	r7, #0x78
	beq	.Lebcb0
	mov	r0, #0
	str	r0, [sp, #0x2c]
	cmp	r7, #0
	bne	.Lebc6a
	mov	r0, #0x88
	bl	_Func_80f9080
.Lebc6a:
	mov	r1, r11
	cmp	r1, #0x1a
	bne	.Lebc76
	mov	r0, #0x8d
	bl	_Func_80f9080
.Lebc76:
	mov	r2, r11
	cmp	r2, #0x28
	bne	.Lebc82
	mov	r0, #0x9a
	bl	_Func_80f9080
.Lebc82:
	mov	r3, r11
	cmp	r3, #0x48
	bne	.Lebc8e
	mov	r0, #0x9a
	bl	_Func_80f9080
.Lebc8e:
	mov	r4, r11
	cmp	r4, #0x68
	bne	.Lebc9a
	mov	r0, #0x9a
	bl	_Func_80f9080
.Lebc9a:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lebca8
	b	.Leb914
.Lebca8:
	mov	r7, r11
	cmp	r7, #0x10
	bgt	.Lebcb0
	b	.Leb914
.Lebcb0:
	add	r0, sp, #0x38
	ldr	r3, =iwram_3001ad0
	ldrh	r0, [r0]
	strh	r0, [r3, #4]
	ldr	r1, [sp, #0x34]
	mov	r2, #0
	str	r2, [r1, #0x10]
	bl	Func_80d67dc
	ldr	r2, =REG_WIN0H
	ldr	r3, .Lebcfc	@ 0xf0
	strh	r3, [r2]
	ldr	r3, [sp, #0x4c]
	ldr	r4, =0x77d8
	mov	r2, #0
	mov	r8, r2
	mov	r0, #0xc
	add	r1, r3, r4
.Lebcd4:
	ldmia	r1!, {r2}
	ldrb	r3, [r2, #9]
	mov	r7, #1
	orr	r3, r0
	add	r8, r7
	strb	r3, [r2, #9]
	mov	r2, r8
	cmp	r2, #9
	bne	.Lebcd4
	mov	r4, sp
	add	r4, #0x74
	mov	r3, #0xe0
	mov	r2, sp
	str	r4, [sp, #0x18]
	str	r3, [sp, #0x1c]
	mov	r1, #0
	mov	r3, r4
	add	r2, #0x82
	b	.Lebd14

	.align	2, 0
.Lebcfc:
	.word	0xf0
	.pool

.Lebd14:
	strb	r1, [r3]
	add	r3, #1
	cmp	r3, r2
	bne	.Lebd14
	mov	r7, sp
	add	r7, #0x84
	str	r7, [sp, #0x14]
	ldr	r5, [sp, #0x14]
	mov	r7, #0x1f
	add	r6, sp, #0x94
.Lebd28:
	bl	Random
	and	r0, r7
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Lebd28
	mov	r0, #0
	mov	r2, #0xa0
	ldr	r3, =ewram_2010018
	mov	r8, r0
	mov	r1, #0
	lsl	r2, #1
.Lebd42:
	mov	r4, #1
	add	r8, r4
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Lebd42
	ldr	r7, [sp, #0x4c]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r7, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r7, r1
	mov	r3, #0x4b
	str	r3, [r2]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lebd94	@ 0x784
	strh	r3, [r2]
	ldr	r3, .Lebd98	@ 0x1010
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r3, =0xfffffe20
	mov	r2, #0
	str	r3, [sp, #0x10]
	mov	r11, r2
.Lebd76:
	mov	r4, r11
	cmp	r4, #0x17
	bgt	.Lebe3c
	ldr	r3, =Data_edae0
	ldr	r7, [sp, #0x1c]
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	sub	r7, #0x10
	mov	r0, r11
	str	r3, [sp, #0x54]
	str	r4, [sp, #0x58]
	str	r7, [sp, #0x1c]
	cmp	r0, #8
	bgt	.Lebdcc
	b	.Lebdb0

	.align	2, 0
.Lebd94:
	.word	0x784
.Lebd98:
	.word	0x1010
	.pool

.Lebdb0:
	mov	r1, #0x80
	lsl	r3, r0, #11
	lsl	r1, #7
	mov	r2, #0x80
	add	r0, r3, r1
	lsl	r2, #8
	cmp	r0, r2
	ble	.Lebdc4
	ldr	r4, =0xffffc000
	add	r0, r3, r4
.Lebdc4:
	bl	Func_8002322
	lsl	r0, #6
	b	.Lebde8
.Lebdcc:
	mov	r7, r11
	mov	r1, #0x80
	lsl	r3, r7, #11
	lsl	r1, #7
	mov	r2, #0x80
	add	r0, r3, r1
	lsl	r2, #8
	cmp	r0, r2
	ble	.Lebde2
	ldr	r4, =0xffffc000
	add	r0, r3, r4
.Lebde2:
	bl	Func_8002322
	lsl	r0, #5
.Lebde8:
	asr	r4, r0, #16
	add	r3, sp, #0x64
	mov	r2, #0
	str	r2, [r3, #0xc]
	mov	r2, #0xff
	lsl	r2, #16
	str	r2, [r3, #4]
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x77d8
	mov	r7, #0
	mov	r8, r7
	mov	r6, r3
	add	r7, sp, #0x54
	add	r5, r0, r1
.Lebe04:
	ldr	r3, =.Leef56
	mov	r2, r8
	ldr	r0, [sp, #0x1c]
	ldrb	r3, [r3, r2]
	add	r3, r0, r3
	lsl	r3, #16
	str	r3, [r6]
	ldr	r3, =.Leef5f
	ldrb	r3, [r3, r2]
	mov	r1, #0x90
	sub	r3, r4
	lsl	r1, #15
	lsl	r3, #16
	add	r3, r1
	str	r3, [r6, #8]
	mov	r2, r7
	mov	r3, #0
	ldmia	r5!, {r0}
	mov	r1, r6
	str	r4, [sp, #8]
	bl	_Func_800b168
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	ldr	r4, [sp, #8]
	cmp	r3, #9
	bne	.Lebe04
.Lebe3c:
	mov	r4, r11
	cmp	r4, #8
	bne	.Lebe50
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x77a8
	add	r3, r7, r0
	str	r4, [r3]
	mov	r0, #0x91
	bl	_Func_80f9080
.Lebe50:
	mov	r1, r11
	cmp	r1, #0xb
	bne	.Lebe5c
	mov	r0, #0x91
	bl	_Func_80f9080
.Lebe5c:
	mov	r2, r11
	cmp	r2, #0x2e
	bne	.Lebe68
	mov	r0, #0x89
	bl	_Func_80f9080
.Lebe68:
	ldr	r2, =0x7828
	ldr	r4, [sp, #0x4c]
	mov	r3, #0
	mov	r8, r3
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Lebf3a
	mov	r0, #0
	mov	r7, #0x24
	str	r0, [sp, #0xc]
	mov	r9, r7
.Lebe80:
	ldr	r1, [sp, #0x18]
	mov	r4, r8
	ldrb	r3, [r1, r4]
	cmp	r3, #0
	bne	.Lebf1c
	ldr	r7, [sp, #0x4c]
	ldr	r3, [r7, r2]
	add	r5, sp, #0x94
	mov	r1, r9
	ldrsh	r0, [r3, r1]
	mov	r1, r5
	bl	Func_80e3980
	ldr	r3, [r5]
	ldr	r4, [sp, #0x1c]
	cmp	r3, r4
	ble	.Lebf1c
	ldr	r7, [sp, #0x18]
	mov	r3, #1
	mov	r0, r8
	strb	r3, [r7, r0]
	ldr	r1, [sp, #0xc]
	ldr	r2, =gBuffer
	mov	r10, r5
	mov	r6, #0
	mov	r7, #0xff
	add	r5, r1, r2
.Lebeb6:
	mov	r4, r10
	ldr	r3, [r4]
	lsl	r3, #15
	str	r3, [r5]
	ldr	r3, [r4, #4]
	sub	r3, #0x10
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	and	r0, r7
	sub	r0, #0x80
	lsl	r0, #10
	str	r0, [r5, #0xc]
	bl	Random
	and	r0, r7
	sub	r0, #0xc0
	lsl	r3, r0, #11
	ldr	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r5, #4]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	add	r3, #8
	add	r6, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lebeb6
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x7828
	add	r3, r7, r0
	ldr	r3, [r3]
	mov	r1, r9
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_80b8228
	mov	r0, #0x86
	bl	_Func_80f9080
.Lebf1c:
	ldr	r4, [sp, #0xc]
	mov	r7, #0xe0
	lsl	r7, #2
	add	r4, r7
	str	r4, [sp, #0xc]
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x4c]
	mov	r3, #2
	add	r9, r3
	ldr	r3, [r1, r2]
	mov	r0, #1
	ldr	r3, [r3, #0x14]
	add	r8, r0
	cmp	r8, r3
	bne	.Lebe80
.Lebf3a:
	mov	r2, #0
	ldr	r5, =gBuffer
	mov	r8, r2
	mov	r7, #3
	mov	r6, #6
.Lebf44:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	ble	.Lebf80
	ldr	r3, =Data_ede48
	ldrh	r1, [r3, #4]
	ldr	r3, [sp, #0x44]
	mov	r4, #2
	ldrsh	r2, [r5, r4]
	add	r1, r3, r1
	mov	r0, #6
	ldrsh	r3, [r5, r0]
	sub	r2, #1
	sub	r3, #3
	str	r7, [sp]
	str	r6, [sp, #4]
	ldr	r0, [sp, #0x50]
	ldr	r4, [sp, #0x48]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r2, [r5, #0x10]
	ldr	r3, [r5, #4]
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r5, #0x18]
	sub	r3, #1
	str	r3, [r5, #0x18]
.Lebf80:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0xc0
	bne	.Lebf44
	mov	r2, r11
	cmp	r2, #0x30
	bne	.Lebf98
	mov	r0, #0x88
	bl	_Func_80f9080
.Lebf98:
	mov	r3, r11
	cmp	r3, #0x28
	ble	.Lebff6
	ldr	r4, [sp, #0x4c]
	mov	r7, #0xef
	lsl	r7, #7
	ldr	r0, =0x7784
	add	r2, r4, r7
	mov	r3, #0
	ldr	r6, [sp, #0x10]
	str	r3, [r2]
	add	r2, r4, r0
	mov	r3, #0x4b
	mov	r1, #0
	mov	r5, #8
	str	r3, [r2]
	mov	r8, r1
	neg	r5, r5
.Lebfbc:
	bl	Random
	mov	r3, #3
	and	r0, r3
	lsl	r1, r0, #1
	ldr	r2, [sp, #0x4c]
	ldr	r3, [sp, #0x14]
	add	r1, r0
	mov	r4, r8
	lsl	r1, #9
	add	r1, r2, r1
	ldrb	r2, [r3, r4]
	mov	r3, #0x30
	str	r3, [sp]
	sub	r2, r6
	mov	r3, #0x20
	str	r3, [sp, #4]
	add	r2, #0x78
	mov	r3, r5
	ldr	r0, [sp, #0x50]
	ldr	r7, [sp, #0x48]
	bl	_call_via_r7
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #8
	cmp	r1, #0x10
	bne	.Lebfbc
.Lebff6:
	mov	r2, r11
	cmp	r2, #0x40
	ble	.Lec008
	ldr	r3, [sp, #0x4c]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
.Lec008:
	mov	r7, r11
	cmp	r7, #0x3a
	bne	.Lec044
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x4c]
	ldr	r3, [r1, r3]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Lec044
	ldr	r2, =0x7828
	mov	r6, #0x24
	add	r5, r1, r2
.Lec024:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0xe
	sub	r3, #1
	mov	r2, #5
	bl	Func_80d6888
	ldr	r3, [r5]
	mov	r7, #1
	ldr	r3, [r3, #0x14]
	add	r8, r7
	add	r6, #2
	cmp	r8, r3
	bne	.Lec024
.Lec044:
	mov	r0, #8
	mov	r1, #8
	bl	Func_80e155c
	bl	Func_80cd52c
	ldr	r1, =0x7824
	ldr	r0, [sp, #0x4c]
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	mov	r3, #1
	ldr	r2, [sp, #0x10]
	add	r11, r3
	add	r2, #0xc
	mov	r4, r11
	str	r2, [sp, #0x10]
	cmp	r4, #0x60
	beq	.Lec072
	b	.Lebd76
.Lec072:
	mov	r0, #0x86
	bl	_Func_80bd7dc
	ldr	r1, =0x77d8
	ldr	r0, [sp, #0x4c]
	mov	r7, #0
	mov	r8, r7
	add	r6, r0, r1
.Lec082:
	ldmia	r6!, {r0}
	bl	_Func_800bdd4
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #9
	bne	.Lec082
	ldr	r0, =Func_80cd260
	bl	StopTask
	mov	r0, #0x2e
	bl	Func_8002dd8
	bl	Func_80cdbc0
	add	sp, #0xb0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80eb754

