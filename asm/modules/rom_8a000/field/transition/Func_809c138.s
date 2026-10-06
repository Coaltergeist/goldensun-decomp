	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809c138  @ 0x0809c138
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001e70
	ldr	r1, =0xccc
	mov	r0, #0x1b
	ldr	r6, [r5]
	sub	sp, #0x18
	bl	galloc_ewram
	mov	r2, #0xcf
	ldr	r1, =0x1b
	mov	r7, r0
	lsl	r2, #1
	sub	r5, #8
	add	r3, r7, r2
	ldr	r5, [r5]
	mov	r9, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r11, r5
	cmp	r3, #3
	beq	.L9c170
	b	.L9c2c0
.L9c170:
	add	r2, #0x42
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r1, [r2]
	mov	r3, #6
	str	r1, [sp, #4]
	str	r3, [r2]
	bl	MapTransitionOut
	bl	WaitMapTransition
	mov	r1, r6
	add	r1, #0x18
	add	r2, sp, #8
	mov	r0, sp
	str	r1, [sp]
	mov	r8, r2
	mov	r4, #1
	add	r0, #0x17
.L9c1a2:
	ldrh	r3, [r1, #0xa]
	strb	r3, [r2]
	add	r2, #1
	strh	r4, [r1, #0xa]
	add	r1, #0xc
	cmp	r2, r0
	ble	.L9c1a2
	mov	r1, r11
	mov	r3, #1
	strh	r3, [r1, #4]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =REG_BLDALPHA
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #16
	mov	r0, r9
	mov	r10, r3
	bl	GetFile
	mov	r1, #0xa0
	mov	r5, #0
	mov	r4, r0
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r2, #0xe0
	strh	r5, [r3]
	lsl	r2, #1
	ldr	r5, =gBuffer
	add	r4, r2
	mov	r1, r5
	mov	r0, r4
	bl	DecompressLZ
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r1, =0x6006a00
	ldr	r2, =0x84002580
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =0x682
	sub	r3, #0xca
	strh	r2, [r3]
	mov	r2, #0x9a
	lsl	r2, #5
	sub	r3, #0xa
	strh	r2, [r3]
	bl	Func_809bb64
	mov	r1, #0xc8
	ldr	r0, =Func_809bcf8
	lsl	r1, #4
	bl	StartTask
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L9c22e
	ldr	r0, =0x985
	mov	r1, #1
	bl	_Func_801776c
.L9c22e:
	ldr	r6, =gKeyRepeat
	mov	r5, #3
.L9c232:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L9c232
	ldr	r0, =Func_809bcf8
	bl	StopTask
	bl	Func_809bcd4
	mov	r2, #0x40
	mov	r3, #0x80
	lsl	r3, #19
	strh	r2, [r3]
	bl	_Func_8011644
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9c286
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #2
	add	r3, #1
	add	r2, r1
	strh	r3, [r1]
	mov	r1, r10
	lsl	r3, r1, #16
	add	r2, #4
	lsr	r3, #16
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L9c286:
	strh	r4, [r0]
	ldr	r1, [sp]
	mov	r2, r8
	mov	r0, r2
	add	r0, #0xf
.L9c290:
	ldrb	r3, [r2]
	add	r2, #1
	strh	r3, [r1, #0xa]
	add	r1, #0xc
	cmp	r2, r0
	ble	.L9c290
	mov	r3, #0
	mov	r2, r11
	strh	r3, [r2, #4]
	bl	MapTransitionIn
	bl	WaitMapTransition
	mov	r1, #0xe4
	lsl	r1, #1
	ldr	r2, [sp, #4]
	add	r3, r7, r1
	add	r1, #0x18
	str	r2, [r3]
	add	r3, r7, r1
	ldr	r3, [r3]
	ldr	r5, .L9c2d4	@ 0
	add	r3, #0x5b
	strb	r5, [r3]
.L9c2c0:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.L9c2d4:
	.word	0
.func_end Func_809c138

