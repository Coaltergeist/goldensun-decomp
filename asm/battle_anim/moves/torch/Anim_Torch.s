	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Torch  @ 0x080e6638
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r2}
	ldr	r5, =0x7828
	mov	r11, r2
	ldr	r3, [r3]
	sub	sp, #0x28
	add	r5, r11
	mov	r6, r0
	mov	r0, #0x80
	str	r3, [sp, #0x14]
	lsl	r0, #6
	str	r6, [r5]
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	add	r3, sp, #0x24
	str	r3, [sp]
	add	r3, sp, #0x20
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #6
	mov	r3, #2
	bl	Anim_Djinni
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Le66b4	@ 0x2784
	strh	r3, [r2]
	ldr	r3, .Le66b8	@ 0x1000
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r3, .Le66bc	@ 0xaa
	sub	r2, #0x32
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r1, sp, #0x18
	ldr	r0, [r3, #4]
	bl	BuildDraw2DFuncs
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r11
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r3, #0xfe
	b	.Le66d4

	.align	2, 0
.Le66b4:
	.word	0x2784
.Le66b8:
	.word	0x1000
.Le66bc:
	.word	0xaa
	.pool

.Le66d4:
	lsl	r3, #6
	mov	r1, #0
	mov	r9, r3
	mov	r5, r11
	add	r5, r9
	str	r1, [sp, #0x10]
	mov	r10, r5
.Le66e2:
	ldr	r3, [sp, #0x10]
	mov	r2, #0x7f
	add	r3, r11
	add	r2, r10
	mov	r7, r9
	mov	r6, r3
	mov	r4, #0
	mov	r8, r2
	add	r7, r11
	add	r6, #0x7f
	mov	r5, r3
.Le66f8:
	mov	r2, r1
	cmp	r1, #0
	bge	.Le6700
	add	r2, r1, #7
.Le6700:
	asr	r2, #3
	mov	r3, r4
	add	r2, #0x40
	sub	r2, r1, r2
	sub	r3, #0x40
	mov	r0, r3
	mul	r0, r3
	mov	r3, r2
	mul	r3, r2
	str	r1, [sp, #0xc]
	add	r0, r3
	str	r4, [sp, #8]
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r0, r3, #1
	ldr	r1, [sp, #0xc]
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Le672e
	mov	r0, #1
.Le672e:
	cmp	r0, #0x3f
	ble	.Le6734
	mov	r0, #0x3f
.Le6734:
	mov	r2, #1
	mov	r3, r8
	neg	r2, r2
	add	r4, #1
	strb	r0, [r5]
	add	r8, r2
	strb	r0, [r6]
	add	r5, #1
	strb	r0, [r7]
	sub	r6, #1
	add	r7, #1
	strb	r0, [r3]
	cmp	r4, #0x40
	bne	.Le66f8
	ldr	r3, [sp, #0x10]
	mov	r5, #0x80
	neg	r5, r5
	add	r3, #0x80
	add	r1, #1
	str	r3, [sp, #0x10]
	add	r9, r5
	add	r10, r5
	cmp	r1, #0x40
	bne	.Le66e2
	ldr	r4, =ewram_2010002
	mov	r7, #1
.Le6768:
	cmp	r7, #0x1f
	ble	.Le6772
	mov	r3, #0x40
	sub	r2, r3, r7
	b	.Le6774
.Le6772:
	mov	r2, r7
.Le6774:
	lsl	r3, r2, #3
	add	r0, r3, r2
	sub	r3, r2
	mov	r1, r3
	mov	r2, r3
	sub	r1, #0x2a
	sub	r2, #0x38
	cmp	r0, #0
	bge	.Le6788
	mov	r0, #0
.Le6788:
	cmp	r1, #0
	bge	.Le678e
	mov	r1, #0
.Le678e:
	cmp	r2, #0
	bge	.Le6794
	mov	r2, #0
.Le6794:
	cmp	r0, #0xff
	ble	.Le679a
	mov	r0, #0xff
.Le679a:
	cmp	r1, #0xff
	ble	.Le67a0
	mov	r1, #0xff
.Le67a0:
	cmp	r2, #0xfa
	ble	.Le67a6
	mov	r2, #0xfa
.Le67a6:
	asr	r1, #3
	asr	r2, #3
	mov	r5, #0xa0
	lsl	r2, #10
	lsl	r1, #5
	lsl	r3, r7, #1
	asr	r0, #3
	lsl	r5, #19
	orr	r2, r1
	orr	r2, r0
	add	r3, r5
	add	r7, #1
	strh	r2, [r3]
	strh	r2, [r4]
	add	r4, #2
	cmp	r7, #0x40
	bne	.Le6768
	mov	r3, #0x80
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	mov	r1, r11
	mov	r2, #0
	mov	r3, #0
	bl	_call_via_r4
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Func_80dbb9c
	lsl	r1, #3
	bl	StartTask
	ldr	r2, =ewram_201007e
	ldr	r3, =REG_IME
	mov	r4, #0
	mov	r9, r2
	mov	r10, r3
	mov	r8, r4
.Le67fa:
	cmp	r4, #8
	bgt	.Le682c
	ldr	r2, .Le680c	@ 0x1000
	mov	r3, r8
	ldr	r5, =REG_BLDALPHA
	orr	r3, r2
	mov	r1, r8
	strh	r3, [r5]
	b	.Le682e

	.align	2, 0
.Le680c:
	.word	0x1000
	.pool

.Le682c:
	lsl	r1, r4, #1
.Le682e:
	cmp	r4, #0x58
	ble	.Le6840
	ldr	r3, =0xc0
	mov	r2, r8
	sub	r3, r2
	ldr	r2, =0x1000
	ldr	r5, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r5]
.Le6840:
	mov	r6, #0xd3
	lsl	r6, #7
	lsl	r3, r1, #9
	add	r6, r11
	mov	r7, #0
	neg	r5, r3
	b	.Le685c

	.pool_aligned

.Le685c:
	mov	r0, r5
	str	r4, [sp, #8]
	bl	sin
	lsl	r3, r7, #18
	lsl	r0, #7
	mov	r2, #0x80
	sub	r3, r0
	lsl	r2, #11
	add	r3, r2
	asr	r3, #10
	stmia	r6!, {r3}
	mov	r3, #0x80
	lsl	r3, #2
	add	r7, #1
	add	r5, r3
	ldr	r4, [sp, #8]
	cmp	r7, #0xa0
	bne	.Le685c
	cmp	r4, #0x7f
	ble	.Le6890
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r11
	str	r3, [r2]
	b	.Le68d6
.Le6890:
	mov	r5, r9
	ldrh	r3, [r5]
	ldr	r2, =gBuffer
	ldr	r0, =ewram_201007c
	strh	r3, [r2, #2]
	mov	r1, r9
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x80a0003e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =gDMATaskCount
	mov	r5, r10
	ldrh	r3, [r5]
	mov	r0, r3
	mov	r2, r10
	mov	r3, r10
	strh	r2, [r3]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Le68d2
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =ewram_2010002
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =0x5000002
	stmia	r3!, {r2}
	ldr	r2, =0x8000003f
	str	r2, [r3]
.Le68d2:
	mov	r5, r10
	strh	r0, [r5]
.Le68d6:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
	ldr	r4, [sp, #8]
	mov	r2, #2
	add	r4, #1
	add	r8, r2
	cmp	r4, #0x60
	beq	.Le68ec
	b	.Le67fa
.Le68ec:
	ldr	r0, =Func_80dbb9c
	bl	StopTask
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Torch
