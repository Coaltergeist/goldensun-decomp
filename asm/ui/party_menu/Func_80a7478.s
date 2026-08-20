	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7478  @ 0x080a7478
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #4
	bl	galloc_iwram
	mov	r7, r0
	mov	r0, #0x40
	bl	alloc_ewram
	mov	r6, #0x80
	lsl	r6, #6
	mov	r9, r0
	mov	r0, r6
	bl	alloc_ewram
	ldr	r3, =iwram_3001e68
	ldr	r2, [r3]
	mov	r3, #1
	mov	r1, #0
	strh	r3, [r2, #4]
	mov	r11, r0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_FillUIRegion
	mov	r0, #1
	bl	WaitFrames
	bl	Func_80a1070
	mov	r0, #0
	bl	Func_80a1090
	mov	r0, #0x88
	lsl	r0, #2
	mov	r2, #0x82
	add	r3, r7, r0
	lsl	r2, #2
	mov	r5, #0
	strh	r5, [r3]
	add	r0, r7, r2
	bl	_Func_80796c4
	ldr	r2, =0x219
	add	r3, r7, r2
	strb	r0, [r3]
	mov	r1, #3
	mov	r3, #7
	mov	r0, #0
	mov	r2, #0
	bl	Func_80a8034
	mov	r1, #0xa0
	lsl	r1, #19
	mov	r2, #0x40
	ldr	r5, =Func_8001af8
	mov	r0, r9
	bl	_call_via_r5
	mov	r0, #0xe
	bl	Func_80a2144
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	lsl	r1, #19
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001c8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #4
	ldr	r0, =0x5000200
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r6
	ldr	r1, =0x6004000
	mov	r0, r11
	bl	_call_via_r5
	ldr	r3, =Func_80008d8
	mov	r1, r6
	ldr	r2, =0x33333333
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #1
	bl	_Func_801e3c8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #5
	mov	r0, #0xd
	bl	_CreateUIBox
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	mov	r0, #0xa9
	lsl	r0, #1
	ldr	r1, .La75a0	@ 0x1e
	mov	r2, #7
	add	r3, r7, r0
.La7570:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7570
	mov	r0, #1
	neg	r0, r0
	bl	_GetNumDjinn
	cmp	r0, #0
	beq	.La7594
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_80ad274
.La7594:
	mov	r2, #0x8d
	lsl	r2, #2
	ldr	r0, .La75a4	@ 0x80
	add	r3, r7, r2
	b	.La75d8

	.align	2, 0
.La75a0:
	.word	0x1e
.La75a4:
	.word	0x80
	.pool

.La75d8:
	mov	r1, #0x82
	mov	r2, #3
.La75dc:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #8]
	add	r1, #0x20
	add	r3, #2
	cmp	r2, #0
	bge	.La75dc
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	bl	Func_80a2474
	mov	r2, #0
	mov	r0, #0x88
	mov	r8, r2
	lsl	r0, #2
	add	r3, r7, r0
	mov	r0, r8
	strh	r0, [r3]
	bl	Func_80a76d0
	mov	r10, r0
	bl	Func_80a2490
	ldr	r0, [r7, #0x24]
	bl	_Func_80164ac
	bl	Func_80ad318
	bl	Func_80a1050
	mov	r3, #0x14
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #0
	bl	_FillUIRegion
	mov	r0, #1
	bl	WaitFrames
	bl	_Func_801e318
	mov	r0, #0
	bl	_Func_801e3c8
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0xa0
	ldr	r5, =Func_8001af8
	mov	r1, r9
	mov	r2, #0x40
	lsl	r0, #19
	bl	_call_via_r5
	mov	r2, #0x80
	mov	r1, r11
	lsl	r2, #6
	ldr	r0, =0x6004000
	bl	_call_via_r5
	mov	r0, r11
	bl	free
	mov	r0, r9
	bl	free
	ldr	r5, =iwram_3001e8c
	ldr	r6, =0xea6
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, r6]
	bl	Func_80a34c0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_FillUIRegion
	mov	r0, #0x37
	bl	gfree
	mov	r3, r5
	sub	r3, #0x24
	ldr	r3, [r3]
	mov	r2, r8
	strh	r2, [r3, #4]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_ClearUIRegion
	ldr	r3, [r5]
	mov	r0, #0
	add	r3, r6
	strb	r0, [r3]
	add	sp, #4
	mov	r0, r10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a7478

