	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cd508  @ 0x080cd508
	push	{lr}
	ldr	r3, =iwram_3001eec
	ldr	r0, [r3]
	ldr	r3, =0x7818
	mov	r1, #8
	add	r0, r3
	ldr	r3, =Func_80008d4
	bl	_call_via_r3
	pop	{r0}
	bx	r0
.func_end Func_80cd508

.thumb_func_start Func_80cd52c  @ 0x080cd52c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	mov	r1, #1
	ldr	r6, [r3]
	ldr	r3, =0x7818
	neg	r1, r1
	sub	sp, #8
	mov	r4, #0
	mov	r8, r1
	mov	r7, #0x24
	add	r5, r6, r3
.Lcd546:
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lcd572
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.Lcd572
	ldr	r1, =0x7828
	add	r3, r6, r1
	ldr	r3, [r3]
	ldrsh	r0, [r3, r7]
	str	r2, [sp]
	mov	r1, #0
	mov	r2, r8
	mov	r3, r8
	str	r4, [sp, #4]
	bl	Func_80d6888
	ldr	r4, [sp, #4]
.Lcd572:
	add	r4, #1
	add	r7, #2
	add	r5, #1
	cmp	r4, #8
	bne	.Lcd546
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80cd52c

.thumb_func_start AnimStart  @ 0x080cd594
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldr	r2, [r3]
	mov	r9, r2
	mov	r2, r3
	sub	r2, #0x78
	ldr	r2, [r2]
	mov	r10, r2
	ldr	r2, [r3, #4]
	sub	sp, #4
	str	r2, [sp]
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r7, r0
	bl	Func_80cd508
	mov	r2, r11
	mov	r3, #1
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, .Lcd604	@ 0
	ldr	r2, =REG_BLDCNT
	ldr	r6, =gDMATaskCount
	strh	r3, [r2]
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd61c
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd61c

	.align	2, 0
.Lcd604:
	.word	0
	.pool

.Lcd61c:
	strh	r1, [r5]
	ldr	r2, =iwram_3001ad0
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x20
	strh	r3, [r2, #6]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r10
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0
	bl	_Func_80c0774
	ldr	r3, =0x77b4
	mov	r2, r8
	add	r3, r9
	str	r2, [r3]
	ldr	r3, =0x77b8
	mov	r1, #0xc8
	add	r3, r9
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =Func_80cd4b4
	bl	StartTask
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd680
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcd680:
	strh	r1, [r5]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, .Lcd6bc	@ 0x784
	ldr	r3, =REG_BG2CNT
	orr	r7, r2
	strh	r7, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd6d8
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd6d8

	.align	2, 0
.Lcd6bc:
	.word	0x784
	.pool

.Lcd6d8:
	strh	r1, [r5]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	_Func_80c0cec
	mov	r3, r8
	mov	r2, r11
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, .Lcd728	@ 0x3f44
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	ldr	r3, .Lcd72c	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =REG_BG2X
	mov	r2, r8
	str	r2, [r3]
	ldr	r2, =REG_BG2Y
	ldr	r3, =0xfffff000
	str	r3, [r2]
	ldr	r3, .Lcd730	@ 0x80
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =REG_BG2PB
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =REG_BG2PD
	ldr	r3, .Lcd734	@ 0x100
	ldr	r1, .Lcd738	@ 0xf0
	strh	r3, [r2]
	ldr	r3, =REG_WIN0H
	b	.Lcd758

	.align	2, 0
.Lcd728:
	.word	0x3f44
.Lcd72c:
	.word	0x100e
.Lcd730:
	.word	0x80
.Lcd734:
	.word	0x100
.Lcd738:
	.word	0xf0
	.pool

.Lcd758:
	ldr	r2, .Lcd784	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcd788	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcd78c	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd7b2
	b	.Lcd794

	.align	2, 0
.Lcd784:
	.word	0x1088
.Lcd788:
	.word	0x3537
.Lcd78c:
	.word	0x3f21
	.pool

.Lcd794:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcd7b2:
	strh	r1, [r5]
	mov	r5, #0
	ldr	r3, =0x6003800
	mov	r2, #0x80
	mov	r8, r3
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #2
	mov	r12, r5
	mov	r7, #0
	mov	r10, r2
	mov	r14, r3
	mov	r6, #0
.Lcd7cc:
	mov	r2, r10
	mov	r4, #0
	add	r0, r6, r2
	lsl	r1, r7, #1
.Lcd7d4:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r11, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r11
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcd7d4
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #5
	add	r12, r3
	add	r6, r2
	mov	r2, r12
	add	r7, #8
	cmp	r2, #0x10
	bne	.Lcd7cc
	mov	r1, #0x80
	ldr	r0, [sp]
	ldr	r5, =Func_80008d4
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	ldr	r3, =0x77a8
	ldr	r1, =iwram_3001ad0
	add	r3, r9
	mov	r6, #0
	ldr	r2, =0x77a0
	str	r6, [r3]
	ldrh	r3, [r1, #4]
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x77a4
	ldrh	r3, [r1, #6]
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end AnimStart

.thumb_func_start AnimStart2  @ 0x080cd86c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldr	r2, [r3]
	mov	r10, r2
	mov	r2, r3
	sub	r2, #0x78
	ldr	r2, [r2]
	mov	r9, r2
	ldr	r2, [r3, #4]
	sub	sp, #4
	str	r2, [sp]
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r7, r0
	bl	Func_80cd508
	mov	r2, r11
	mov	r3, #1
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, .Lcd8dc	@ 0
	ldr	r2, =REG_BLDCNT
	ldr	r6, =gDMATaskCount
	strh	r3, [r2]
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd8f4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x1741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd8f4

	.align	2, 0
.Lcd8dc:
	.word	0
	.pool

.Lcd8f4:
	strh	r1, [r5]
	ldr	r2, =iwram_3001ad0
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0x20
	strh	r3, [r2, #6]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0xc9
	lsl	r3, #3
	add	r3, r9
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0x80
	bl	_Func_80c0774
	ldr	r2, =0x77b4
	mov	r3, #0x18
	add	r2, r10
	str	r3, [r2]
	ldr	r3, =0x77b8
	mov	r2, r8
	add	r3, r10
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =Func_80cd4b4
	bl	StartTask
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd95a
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x1341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcd95a:
	strh	r1, [r5]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, .Lcd998
	ldr	r3, =REG_BG2CNT
	orr	r7, r2
	strh	r7, [r3]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcd9b4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x1341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
	b	.Lcd9b4

	.align	2, 0
.Lcd998:
	.word	0x784
	.pool

.Lcd9b4:
	strh	r1, [r5]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	_Func_80c0cec
	mov	r3, r8
	mov	r2, r11
	str	r3, [r2, #0xc]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, .Lcda04	@ 0x3f44
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	ldr	r3, .Lcda08	@ 0x100e
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =REG_BG2X
	mov	r2, r8
	str	r2, [r3]
	ldr	r2, =REG_BG2Y
	ldr	r3, =0xfffff000
	str	r3, [r2]
	ldr	r3, .Lcda0c	@ 0x80
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =REG_BG2PB
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, =REG_BG2PD
	ldr	r3, .Lcda10	@ 0x100
	ldr	r1, .Lcda14	@ 0xf0
	strh	r3, [r2]
	ldr	r3, =REG_WIN0H
	b	.Lcda34

	.align	2, 0
.Lcda04:
	.word	0x3f44
.Lcda08:
	.word	0x100e
.Lcda0c:
	.word	0x80
.Lcda10:
	.word	0x100
.Lcda14:
	.word	0xf0
	.pool

.Lcda34:
	ldr	r2, .Lcda60	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcda64	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcda68	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lcda8e
	b	.Lcda70

	.align	2, 0
.Lcda60:
	.word	0x1088
.Lcda64:
	.word	0x3537
.Lcda68:
	.word	0x3f21
	.pool

.Lcda70:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcda8e:
	strh	r1, [r5]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =0x6003800
	mov	r2, #0x80
	mov	r8, r3
	mov	r3, #0x80
	mov	r5, #0
	lsl	r2, #1
	lsl	r3, #2
	mov	r12, r5
	mov	r7, #0
	mov	r10, r2
	mov	r14, r3
	mov	r6, #0
.Lcdaae:
	mov	r2, r10
	mov	r4, #0
	add	r0, r6, r2
	lsl	r1, r7, #1
.Lcdab6:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r9, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r9
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdab6
	mov	r2, #0x80
	mov	r3, #1
	lsl	r2, #5
	add	r12, r3
	add	r6, r2
	mov	r2, r12
	add	r7, #8
	cmp	r2, #0x10
	bne	.Lcdaae
	mov	r1, #0x80
	ldr	r0, [sp]
	ldr	r5, =Func_80008d4
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r0, #1
	bl	WaitFrames
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end AnimStart2

.thumb_func_start Func_80cdb24  @ 0x080cdb24
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	bl	AnimStart
	ldr	r3, =0x6784
	orr	r5, r3
	ldr	r3, =0x6003800
	ldr	r2, =REG_BG2CNT
	mov	r8, r3
	mov	r3, #0x80
	strh	r5, [r2]
	lsl	r3, #2
	mov	r5, #0
	mov	r12, r5
	mov	r7, #0
	mov	r14, r3
	mov	r6, #0
.Lcdb4c:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r4, #0
	add	r0, r6, r3
	lsl	r1, r7, #1
	b	.Lcdb64

	.pool_aligned

.Lcdb64:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r10, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r10
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdb64
	ldr	r1, =0x6003800
	ldr	r2, .Lcdb8c	@ 0
	mov	r4, #0
	b	.Lcdb94

	.align	2, 0
.Lcdb8c:
	.word	0
	.pool

.Lcdb94:
	add	r3, r5, r1
	add	r4, #1
	strh	r2, [r3]
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdb94
	mov	r3, #0x80
	lsl	r3, #5
	add	r6, r3
	mov	r3, #1
	add	r12, r3
	mov	r3, r12
	add	r7, #8
	cmp	r3, #0x10
	bne	.Lcdb4c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80cdb24

.thumb_func_start AnimEnd  @ 0x080cdbc0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldr	r0, =0x121
	ldr	r5, [r3]
	sub	r3, #0x78
	ldr	r7, [r3]
	bl	_PlaySound
	ldr	r2, =0x77a0
	add	r3, r5, r2
	ldr	r6, =iwram_3001ad0
	ldr	r3, [r3]
	strh	r3, [r6, #4]
	ldr	r3, =0x77a4
	add	r5, r3
	ldr	r3, [r5]
	ldr	r2, =gPhysVec
	strh	r3, [r6, #6]
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	str	r3, [r2, #0x10]
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lcdc1c	@ 0x787
	mov	r1, #0x80
	strh	r3, [r2]
	lsl	r1, #7
	ldr	r3, =Func_80008d4
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r0, =Func_80cd4b4
	bl	StopTask
	ldr	r1, =gDMATaskCount
	mov	r3, #0x20
	strh	r3, [r6, #6]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcdc6e
	b	.Lcdc50

	.align	2, 0
.Lcdc1c:
	.word	0x787
	.pool

.Lcdc50:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7341
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcdc6e:
	strh	r4, [r0]
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lcdca4	@ 0
	mov	r0, #1
	strh	r3, [r2]
	bl	WaitFrames
	mov	r2, #0xc9
	lsl	r2, #3
	add	r3, r7, r2
	ldrh	r1, [r3]
	mov	r2, #7
	mov	r0, #2
	bl	_Func_80c0774
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0xc9
	lsl	r3, #3
	mov	r2, #0x15
	mov	r6, #0
	add	r7, r3
	mov	r5, #0
	mov	r8, r2
	b	.Lcdcb0

	.align	2, 0
.Lcdca4:
	.word	0
	.pool

.Lcdcb0:
	mov	r3, r8
	sub	r1, r3, r5
	ldrh	r0, [r7]
	bl	_Func_80c0700
	add	r6, #1
	mov	r0, #1
	bl	WaitFrames
	add	r5, #3
	cmp	r6, #8
	bne	.Lcdcb0
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcdcf6
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7541
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcdcf6:
	strh	r4, [r0]
	mov	r0, #1
	bl	WaitFrames
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end AnimEnd

