	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Cast  @ 0x080c1470
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	str	r0, [sp, #4]
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	ldr	r1, =0x13d0
	mov	r0, #0x27
	bl	galloc_ewram
	mov	r1, #0x80
	mov	r11, r0
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r1, =Func_8000888
	mov	r7, #0x8e
	lsl	r7, #5
	mov	r2, #0xf
	mov	r10, r1
	add	r7, r11
	mov	r9, r2
.Lc14ac:
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r3, #0x80
	lsl	r3, #9
	add	r3, r0
	lsr	r6, r3, #1
	mov	r0, r5
	mov	r8, r3
	bl	cos
	mov	r1, r6
	.call_via r10
	str	r0, [r7]
	mov	r0, r5
	bl	sin
	mov	r1, r6
	.call_via r10
	ldr	r2, [r7]
	mov	r1, #1
	mov	r3, r2
	and	r3, r1
	str	r0, [r7, #4]
	cmp	r3, #0
	beq	.Lc14ee
	neg	r3, r2
	str	r3, [r7]
.Lc14ee:
	ldr	r2, [r7, #4]
	mov	r1, #1
	mov	r3, r2
	and	r3, r1
	cmp	r3, #0
	beq	.Lc14fe
	neg	r3, r2
	str	r3, [r7, #4]
.Lc14fe:
	bl	Random
	mov	r2, #0x80
	lsl	r2, #8
	add	r0, r2
	lsr	r0, #2
	ldr	r3, [r7, #4]
	str	r0, [r7, #8]
	ldr	r0, [r7]
	asr	r2, r3, #8
	neg	r0, r0
	neg	r3, r3
	asr	r1, r0, #7
	asr	r3, #7
	asr	r0, #8
	add	r1, r2
	add	r3, r0
	str	r1, [r7, #0xc]
	str	r3, [r7, #0x10]
	mov	r1, r8
	mov	r3, #0
	mov	r2, #1
	str	r3, [r7, #0x14]
	neg	r2, r2
	lsr	r3, r1, #13
	add	r3, #1
	add	r9, r2
	str	r3, [r7, #0x18]
	mov	r3, r9
	add	r7, #0x1c
	cmp	r3, #0
	bge	.Lc14ac
	mov	r1, #0x80
	mov	r5, #0x9c
	lsl	r1, #5
	lsl	r5, #5
	mov	r2, #2
	ldr	r6, =Func_8000888
	mov	r8, r1
	mov	r7, #0
	add	r5, r11
	mov	r9, r2
.Lc1552:
	mov	r0, r7
	bl	cos
	mov	r1, r8
	.call_via r6
	str	r0, [r5]
	mov	r0, r7
	bl	sin
	mov	r1, r8
	.call_via r6
	str	r0, [r5, #4]
	mov	r0, r7
	bl	cos
	mov	r1, #0x80
	lsl	r1, #2
	.call_via r6
	str	r0, [r5, #8]
	mov	r0, r7
	bl	sin
	mov	r1, #0x80
	lsl	r1, #2
	.call_via r6
	mov	r1, #1
	ldr	r3, =0x5555
	neg	r1, r1
	add	r9, r1
	mov	r2, #0
	add	r7, r3
	mov	r3, r9
	str	r0, [r5, #0xc]
	str	r2, [r5, #0x10]
	add	r5, #0x14
	cmp	r3, #0
	bge	.Lc1552
	ldr	r3, =0x13bc
	add	r3, r11
	str	r2, [r3]
	mov	r3, #0x9e
	lsl	r3, #5
	add	r3, r11
	str	r2, [r3]
	ldr	r3, =0x13cc
	add	r3, r11
	str	r2, [r3]
	ldr	r3, =gPtrs
	mov	r1, #0x80
	add	r3, #0xa0
	lsl	r1, #7
	ldr	r0, [r3]
	ldr	r3, =Func_80008d4
	bl	_call_via_r3
	ldr	r6, =0xc9
	mov	r0, r6
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	mov	r1, r5
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	add	r5, #0x80
	bl	_call_via_r3
	mov	r1, r11
	mov	r0, r5
	bl	DecompressLZ
	ldr	r1, [sp, #4]
	cmp	r1, #1
	beq	.Lc160a
	cmp	r1, #1
	bgt	.Lc15fe
	cmp	r1, #0
	beq	.Lc1606
	b	.Lc1612
.Lc15fe:
	ldr	r2, [sp, #4]
	cmp	r2, #2
	beq	.Lc160e
	b	.Lc1612
.Lc1606:
	ldr	r0, =_FILE_c8
	b	.Lc1614
.Lc160a:
	mov	r0, r6
	b	.Lc1614
.Lc160e:
	ldr	r0, =_FILE_ca
	b	.Lc1614
.Lc1612:
	ldr	r0, =_FILE_cb
.Lc1614:
	bl	GetFile
	mov	r5, r0
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	lsl	r1, #19
	ldr	r2, =0x84000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0
	sub	r3, #0xac
	str	r2, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r1, #0x80
	lsl	r1, #1
	sub	r3, #0xc
	strh	r1, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r1, [r3]
	mov	r3, #3
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2e
	str	r3, [sp]
	bl	_BuildDraw2DFuncEx
	mov	r5, #0xc8
	mov	r3, #2
	str	r3, [sp]
	mov	r2, #7
	mov	r3, #3
	lsl	r5, #4
	mov	r1, #7
	mov	r0, #0x2f
	bl	_BuildDraw2DFuncEx
	mov	r1, r5
	ldr	r0, =Func_80c11ec
	bl	StartTask
	mov	r1, r5
	ldr	r0, =Task_BlitPreAnim
	bl	StartTask
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Anim_Cast

