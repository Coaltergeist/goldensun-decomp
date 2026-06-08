	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80944ec
	ldr	r3, =iwram_3001ed8
	mov	r2, #0xf0
	ldr	r0, [r3]
	lsl	r2, #4
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #7
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r1, =REG_BG1HOFS
	ldrh	r2, [r3, #0xa]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldr	r2, =0xa6600003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_80944ec

.thumb_func_start Func_8094544
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ed8
	ldr	r7, [r3]
	ldr	r3, =iwram_3001ad0
	mov	r4, #0xe
	ldrsh	r2, [r3, r4]
	sub	sp, #0x18
	mov	r1, #0xc
	ldrsh	r0, [r3, r1]
	str	r2, [sp, #0x14]
	mov	r2, #0xa
	ldrsh	r1, [r3, r2]
	mov	r12, r0
	mov	r5, #8
	ldrsh	r0, [r3, r5]
	str	r1, [sp, #0x10]
	mov	r2, #6
	ldrsh	r5, [r3, r2]
	mov	r4, #4
	ldrsh	r1, [r3, r4]
	mov	r4, #0xf0
	str	r5, [sp, #0xc]
	lsl	r4, #4
	add	r3, r7, r4
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	mov	r5, #0xf1
	lsl	r3, #7
	lsl	r5, #4
	add	r4, r7, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r2, =0xf02
	mov	r14, r3
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r3, [sp, #0x14]
	lsl	r3, #16
	str	r3, [sp, #8]
	sub	r5, #8
	lsr	r3, #16
	add	r2, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r6, r3
	mul	r6, r2
	mov	r2, r14
	cmp	r2, #0
	bne	.L945ce
	mov	r5, #0
	mov	r3, r4
.L945bc:
	mov	r4, r12
	add	r5, #1
	strh	r4, [r3]
	strh	r0, [r3, #4]
	strh	r1, [r3, #8]
	add	r3, #0xc
	cmp	r5, #0xa0
	bne	.L945bc
	b	.L9462c
.L945ce:
	ldr	r5, =0xf18
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r2, r12
	mov	r8, r3
	lsl	r3, r2, #16
	lsl	r1, #16
	lsl	r2, r0, #16
	lsr	r3, #16
	ldr	r0, =Func_8000888
	lsr	r2, #16
	lsr	r1, #16
	str	r3, [sp, #4]
	mov	r5, #0
	mov	r10, r0
	mov	r11, r2
	mov	r9, r1
.L945f0:
	mov	r2, #0xff
	asr	r3, r6, #16
	and	r3, r2
	ldr	r1, =.L9ed84
	lsl	r3, #1
	ldrsh	r0, [r1, r3]
	mov	r1, r8
	.call_via r10
	cmp	r0, #0
	bge	.L9460a
	add	r0, #0xff
.L9460a:
	lsl	r3, r0, #8
	ldr	r0, [sp, #4]
	lsr	r3, #16
	add	r2, r0, r3
	mov	r1, r11
	strh	r2, [r4]
	add	r4, #4
	add	r2, r1, r3
	strh	r2, [r4]
	add	r3, r9
	add	r4, #4
	add	r5, #1
	strh	r3, [r4]
	add	r6, r14
	add	r4, #4
	cmp	r5, #0xa0
	bne	.L945f0
.L9462c:
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r5, =0xf14
	lsl	r3, #7
	add	r3, r7, r3
	add	r4, r3, #2
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r0, =0xf02
	mov	r14, r3
	ldr	r1, [sp, #8]
	add	r3, r7, r0
	ldrh	r2, [r3]
	sub	r5, #8
	lsr	r3, r1, #16
	add	r2, r3
	add	r3, r7, r5
	ldr	r3, [r3]
	mov	r0, r14
	mov	r6, r3
	mul	r6, r2
	cmp	r0, #0
	bne	.L94686
	mov	r5, #0
	mov	r3, r4
.L9466a:
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r4, sp, #0xc
	ldrh	r1, [r1]
	ldrh	r2, [r2]
	ldrh	r4, [r4]
	add	r5, #1
	strh	r1, [r3]
	strh	r2, [r3, #4]
	strh	r4, [r3, #8]
	add	r3, #0xc
	cmp	r5, #0xa0
	bne	.L9466a
	b	.L946e4
.L94686:
	ldr	r5, =0xf1c
	ldr	r1, [sp, #0xc]
	add	r3, r7, r5
	ldr	r3, [r3]
	ldr	r0, [sp, #0x10]
	lsl	r2, r1, #16
	ldr	r1, [sp, #8]
	mov	r8, r3
	lsr	r1, #16
	lsl	r3, r0, #16
	ldr	r0, =Func_8000888
	lsr	r3, #16
	lsr	r2, #16
	str	r1, [sp]
	mov	r5, #0
	mov	r10, r0
	mov	r11, r3
	mov	r9, r2
.L946aa:
	asr	r3, r6, #16
	mov	r2, #0xff
	and	r3, r2
	ldr	r2, =.L9ed84
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r8
	.call_via r10
	cmp	r0, #0
	bge	.L946c2
	add	r0, #0xff
.L946c2:
	lsl	r3, r0, #8
	ldr	r0, [sp]
	lsr	r3, #16
	add	r2, r0, r3
	mov	r1, r11
	strh	r2, [r4]
	add	r4, #4
	add	r2, r1, r3
	strh	r2, [r4]
	add	r3, r9
	add	r4, #4
	add	r5, #1
	strh	r3, [r4]
	add	r6, r14
	add	r4, #4
	cmp	r5, #0xa0
	bne	.L946aa
.L946e4:
	ldr	r3, =0xf02
	add	r2, r7, r3
	ldrh	r3, [r2]
	mov	r4, #0xf0
	add	r3, #1
	strh	r3, [r2]
	lsl	r4, #4
	add	r1, r7, r4
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8094544

.thumb_func_start Func_8094730
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r1, #0xf2
	mov	r5, r0
	lsl	r1, #4
	mov	r0, #0x22
	sub	sp, #4
	mov	r8, r2
	mov	r7, r3
	bl	galloc_ewram
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850003c8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	mov	r1, r3
	lsl	r2, #24
.L94762:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L94762
	ldr	r2, =0xf01
	add	r3, r4, r2
	add	r2, #7
	strb	r5, [r3]
	add	r3, r4, r2
	str	r6, [r3]
	ldr	r3, =0xf0c
	add	r2, r4, r3
	ldr	r3, [sp, #0x18]
	str	r3, [r2]
	ldr	r2, =0xf18
	add	r3, r4, r2
	str	r7, [r3]
	ldr	r3, =0xf1c
	add	r2, r4, r3
	ldr	r3, [sp, #0x20]
	str	r3, [r2]
	mov	r2, #0xf1
	lsl	r2, #4
	add	r3, r4, r2
	mov	r2, r8
	str	r2, [r3]
	ldr	r3, =0xf14
	add	r2, r4, r3
	ldr	r3, [sp, #0x1c]
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_8094544
	bl	StartTask
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_80944ec
	bl	StartTask
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8094730

.thumb_func_start Func_80947e4
	push	{lr}
	ldr	r0, =Func_80944ec
	bl	StopTask
	ldr	r0, =Func_8094544
	bl	StopTask
	ldr	r2, =REG_DMA0SAD
	ldr	r3, =0xc5ff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldr	r3, =0x7fff
	ldrh	r1, [r2, #0xa]
	and	r3, r1
	strh	r3, [r2, #0xa]
	ldrh	r3, [r2, #0xa]
	pop	{r0}
	bx	r0
.func_end Func_80947e4

.thumb_func_start Task_Rain
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r0, [r3]
	ldr	r3, [r3, #0x54]
	mov	r10, r0
	mov	r8, r3
	mov	r3, r10
	add	r3, #0xe4
	ldr	r1, [r3]
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, [r3, #4]
	mov	r7, r8
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x3f
	add	r7, #8
	mov	r9, r2
	mov	r11, r3
.L94852:
	ldrh	r3, [r7, #0x1c]
	ldr	r1, =0xffff
	add	r3, r1
	mov	r2, r1
	and	r2, r3
	strh	r3, [r7, #0x1c]
	cmp	r2, r1
	bne	.L94864
	b	.L94984
.L94864:
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94876
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
.L94876:
	ldrh	r2, [r7, #0x1c]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, =.L9ef84
	lsl	r3, #1
	add	r4, r3, r2
	ldr	r5, [sp, #8]
	ldr	r3, [r7, #0xc]
	sub	r2, r3, r5
	cmp	r2, #0
	bge	.L94890
	ldr	r0, =0xffff
	add	r2, r0
.L94890:
	mov	r1, #0
	ldrsh	r3, [r4, r1]
	asr	r2, #16
	add	r1, r2, r3
	ldr	r2, [r7, #0x10]
	ldr	r3, [r7, #0x14]
	sub	r3, r2
	ldr	r2, [sp, #4]
	sub	r3, r2
	add	r4, #2
	cmp	r3, #0
	bge	.L948ac
	ldr	r5, =0xffff
	add	r3, r5
.L948ac:
	mov	r0, #0
	ldrsh	r2, [r4, r0]
	asr	r3, #16
	add	r0, r3, r2
	mov	r3, r1
	add	r3, #0x10
	add	r4, #2
	cmp	r3, #0xff
	bhi	.L94946
	mov	r2, #0x20
	neg	r2, r2
	cmp	r0, r2
	blt	.L94946
	cmp	r0, #0x9f
	bgt	.L94946
	mov	r5, #0xd
	ldrb	r2, [r7, #9]
	neg	r5, r5
	mov	r3, r5
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	ldr	r3, .L9490c	@ 0x1ff
	strb	r2, [r7, #9]
	and	r1, r3
	ldr	r2, .L94910	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	strb	r0, [r7, #4]
	mov	r0, r8
	ldrh	r3, [r4]
	ldr	r1, [r0, #4]
	add	r1, r3
	ldr	r3, .L94914	@ 0x3ff
	ldr	r2, .L94918	@ 0xfffffc00
	and	r1, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	add	r4, #2
	ldrb	r2, [r4]
	ldrb	r1, [r7, #5]
	mov	r3, r11
	b	.L94928

	.align	2, 0
.L9490c:
	.word	0x1ff
.L94910:
	.word	0xfffffe00
.L94914:
	.word	0x3ff
.L94918:
	.word	0xfffffc00
	.pool

.L94928:
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	strb	r3, [r7, #5]
	ldrb	r1, [r7, #7]
	ldrb	r2, [r4, #2]
	mov	r3, r11
	and	r3, r1
	lsl	r2, #6
	orr	r3, r2
	strb	r3, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_8003dec
.L94946:
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L94984
	mov	r1, r10
	ldr	r6, [r1]
	bl	Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r1, r3, r5
	str	r1, [sp]
	bl	Random
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	ldr	r1, [sp]
	add	r0, r3, r5
	str	r1, [r7, #0xc]
	str	r0, [r7, #0x14]
	asr	r2, r0, #16
	asr	r1, #16
	mov	r0, #0
	bl	_Func_8011f54
	mov	r3, #0x10
	lsl	r0, #16
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
.L94984:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L94992
	b	.L94852
.L94992:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Rain

.thumb_func_start Task_Thunder
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ec8
	mov	r1, #0xfc
	ldr	r6, [r3]
	lsl	r1, #5
	add	r5, r6, r1
	ldr	r7, [r3, #8]
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	blt	.L94aa2
	mov	r0, #0xb3
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.L949ce
	mov	r3, #0x80
	strh	r3, [r5]
.L949ce:
	ldrh	r3, [r5]
	sub	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	strh	r2, [r5]
	cmp	r3, #0xb
	bhi	.L94aa2
	ldr	r2, =.L949e4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L949e4:
	.word	.L94a14
	.word	.L94a86
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94a62
	.word	.L94a86
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94aa2
	.word	.L94a62
	.word	.L94a86
.L94a14:
	ldr	r1, =0x1f82
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L94a62
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r2, #0x64
	mul	r2, r0
	lsl	r3, r5, #1
	add	r3, r5
	lsl	r3, #3
	add	r3, r5
	lsl	r3, #4
	lsr	r2, #16
	lsr	r3, #16
	mov	r1, #0xfc
	sub	r3, r2
	lsl	r1, #5
	add	r2, r6, r1
	add	r3, #0x96
	strh	r3, [r2]
	ldr	r2, =0x1f84
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L94a5c
	mov	r0, #0xac
	bl	_PlaySound
	b	.L94a62
.L94a5c:
	mov	r0, #0xab
	bl	_PlaySound
.L94a62:
	mov	r0, r6
	mov	r1, #1
	bl	Func_8091200
	mov	r2, #0xa8
	lsl	r2, #5
	add	r0, r6, r2
	mov	r2, #0xc4
	lsl	r2, #5
	add	r1, r7, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x2a01
	add	r2, r7, r3
	mov	r3, #0xc
	b	.L94a98
.L94a86:
	mov	r3, #0xa8
	lsl	r3, #4
	add	r0, r6, r3
	mov	r1, #1
	bl	Func_8091200
	ldr	r1, =0x2a01
	mov	r3, #1
	add	r2, r7, r1
.L94a98:
	strb	r3, [r2]
	ldr	r2, =0x2a02
	mov	r1, #0
	add	r3, r7, r2
	strb	r1, [r3]
.L94aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Thunder

.thumb_func_start StartRain
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #8
	bl	galloc_ewram
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, #0xaa
	mov	r8, r3
	bl	Func_8091ff0
	mov	r6, #0
	mov	r7, r5
	add	r0, sp, #4
	add	r7, #8
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_9ff58
	bl	DecompressLZ1
	bl	AllocSpriteSlot
	mov	r1, #0xc0
	str	r0, [r5]
	lsl	r1, #2
	mov	r2, r6
	bl	UploadSpriteGFX
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	gfree
	mov	r5, #0
.L94b2c:
	mov	r4, #0
	mov	r6, r7
	stmia	r6!, {r4}
	ldr	r3, =0x40000400
	stmia	r6!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r6]
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	mov	r0, #0
	str	r1, [r7, #0xc]
	str	r2, [r7, #0x14]
	asr	r1, #16
	asr	r2, #16
	str	r4, [sp]
	bl	_Func_8011f54
	ldr	r2, .L94b8c	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	ldr	r4, [sp]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L94b2c
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfc
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1008
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r4, [r3]
	ldr	r0, =Task_Rain
	mov	r1, #0xc8
	lsl	r1, #4
	bl	StartTask
	add	sp, #8
	b	.L94bb0

	.align	2, 0
.L94b8c:
	.word	0xf
	.pool

.L94bb0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartRain

.thumb_func_start Task_Snow
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r0, [r3]
	sub	r3, #0x54
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r1, #0
	mov	r9, r0
	ldr	r2, =0xfffffc00
	mov	r7, r9
	str	r3, [sp, #0xc]
	str	r1, [sp, #8]
	str	r1, [sp, #4]
	add	r7, #8
	mov	r11, r2
.L94be6:
	ldrh	r3, [r7, #0x1c]
	ldr	r2, =0xffff
	add	r1, r3, r2
	mov	r3, r1
	and	r3, r2
	strh	r1, [r7, #0x1c]
	cmp	r3, r2
	bne	.L94bf8
	b	.L94d2c
.L94bf8:
	ldr	r3, [sp, #0xc]
	add	r3, #0xe4
	ldr	r6, [r3]
	ldr	r3, [r3, #4]
	mov	r0, #0xb3
	mov	r8, r3
	lsl	r3, r1, #16
	asr	r3, #16
	lsl	r0, #1
	mov	r10, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94c20
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
	ldr	r3, [r7, #0x18]
	sub	r3, #1
	str	r3, [r7, #0x18]
.L94c20:
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r3, #1
	ldr	r1, [r7, #0xc]
	and	r0, r3
	and	r3, r5
	add	r3, r0
	sub	r1, r6
	lsr	r3, #1
	asr	r1, #16
	add	r1, r3
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0x10]
	mov	r0, r10
	sub	r2, r3
	mov	r3, r8
	sub	r2, r3
	lsl	r3, r0, #16
	sub	r4, r1, #1
	asr	r2, #16
	lsr	r3, #16
	add	r1, #0xf
	sub	r0, r2, r3
	cmp	r1, #0xff
	bhi	.L94d28
	mov	r1, #0x20
	neg	r1, r1
	cmp	r0, r1
	blt	.L94d28
	cmp	r0, #0x9f
	bgt	.L94d28
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0x3b
	bhi	.L94c82
	mov	r2, r9
	ldr	r3, [r2, #4]
	ldr	r1, =0x3ff
	ldrh	r2, [r7, #8]
	add	r3, #0x10
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	ldr	r3, [r7, #0x18]
	add	r3, #3
	b	.L94c9c
.L94c82:
	cmp	r3, #0x59
	bhi	.L94ca2
	mov	r2, r9
	ldr	r3, [r2, #4]
	ldr	r1, =0x3ff
	ldrh	r2, [r7, #8]
	add	r3, #8
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	ldr	r3, [r7, #0x18]
	add	r3, #1
.L94c9c:
	strh	r2, [r7, #8]
	str	r3, [r7, #0x18]
	b	.L94cb4
.L94ca2:
	mov	r3, r9
	ldr	r2, [r3, #4]
	ldr	r1, =0x3ff
	ldrh	r3, [r7, #8]
	and	r2, r1
	mov	r1, r11
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #8]
.L94cb4:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L94cd6
	ldrh	r2, [r7, #8]
	lsl	r3, r2, #22
	ldr	r1, =0x3ff
	lsr	r3, #22
	add	r3, #4
	and	r3, r1
	mov	r1, r11
	and	r2, r1
	orr	r2, r3
	strh	r2, [r7, #8]
.L94cd6:
	ldr	r3, .L94d0c	@ 0x1ff
	ldr	r2, .L94d10	@ 0xfffffe00
	and	r4, r3
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r4
	strh	r3, [r7, #6]
	ldr	r3, [r7, #0x18]
	asr	r3, #2
	sub	r3, r0, r3
	ldrb	r1, [r7, #5]
	mov	r2, #0x3f
	strb	r3, [r7, #4]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]
	and	r2, r3
	mov	r3, #0x40
	orr	r2, r3
	strb	r2, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_8003dec
	b	.L94d2c

	.align	2, 0
.L94d0c:
	.word	0x1ff
.L94d10:
	.word	0xfffffe00
	.pool

.L94d28:
	mov	r3, #0
	strh	r3, [r7, #0x1c]
.L94d2c:
	ldr	r2, [sp, #8]
	cmp	r2, #7
	bhi	.L94d7c
	ldrh	r3, [r7, #0x1c]
	mov	r8, r3
	cmp	r3, #0
	bne	.L94d7c
	ldr	r0, [sp, #0xc]
	ldr	r6, [r0]
	bl	Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r4, r3, r5
	str	r4, [sp]
	bl	Random
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	ldr	r4, [sp]
	add	r0, r3, r5
	asr	r2, r0, #16
	str	r0, [r7, #0x14]
	asr	r1, r4, #16
	str	r4, [r7, #0xc]
	mov	r0, #0
	bl	_Func_8011f54
	mov	r3, #0x78
	lsl	r0, #16
	mov	r1, r8
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	str	r1, [r7, #0x18]
	ldr	r2, [sp, #8]
	add	r2, #1
	str	r2, [sp, #8]
.L94d7c:
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L94d8a
	b	.L94be6
.L94d8a:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Snow

.thumb_func_start StartSnow
	push	{r5, r6, r7, lr}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #4
	bl	galloc_ewram
	mov	r5, r0
	mov	r7, r5
	mov	r1, #0
	mov	r0, sp
	str	r1, [r0]
	add	r7, #8
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_a001e
	bl	DecompressLZ1
	bl	AllocSpriteSlot
	mov	r1, #0xc0
	str	r0, [r5]
	lsl	r1, #2
	mov	r2, r6
	bl	UploadSpriteGFX
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	gfree
	mov	r5, #0
.L94df2:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r1, r7
	mov	r6, #0
	stmia	r1!, {r6}
	ldr	r2, [r3]
	ldr	r3, =0x40000400
	stmia	r1!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #8]
	mov	r0, #0
	str	r1, [r7, #0xc]
	str	r2, [r7, #0x14]
	asr	r1, #16
	asr	r2, #16
	bl	_Func_8011f54
	ldr	r2, .L94e50	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L94df2
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfc
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1008
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	ldr	r0, =Task_Snow
	mov	r1, #0xc8
	lsl	r1, #4
	bl	StartTask
	add	sp, #4
	b	.L94e74

	.align	2, 0
.L94e50:
	.word	0xf
	.pool

.L94e74:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartSnow

.thumb_func_start Task_Earthquake
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r0, [r3]
	sub	sp, #0x1c
	mov	r1, #0
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	sub	r3, #0x54
	ldr	r3, [r3]
	str	r3, [sp, #0xc]
	add	r3, #0xe4
	mov	r7, r0
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	str	r1, [sp]
	str	r1, [sp, #0x10]
	add	r7, #8
	mov	r9, r1
	mov	r11, r1
	mov	r8, r1
.L94eb0:
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L94eb8
	b	.L94fc8
.L94eb8:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #8]
	ldr	r2, [r2]
	ldr	r3, [r3, #4]
	mov	r0, #0xb3
	lsl	r0, #1
	mov	r8, r2
	mov	r10, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94ed6
	ldrh	r3, [r7, #0x1c]
	add	r3, #1
	strh	r3, [r7, #0x1c]
.L94ed6:
	ldrh	r3, [r7, #0x1c]
	ldr	r2, =.L9f024
	lsr	r3, #1
	lsl	r3, #2
	add	r6, r3, r2
	bl	Random
	mov	r5, r0
	bl	Random
	mov	r3, #1
	ldr	r2, [r7, #0xc]
	and	r0, r3
	mov	r1, r8
	and	r3, r5
	sub	r2, r1
	add	r3, r0
	asr	r2, #16
	lsr	r3, #1
	add	r1, r2, r3
	sub	r2, r1, #1
	mov	r11, r2
	ldr	r3, [r7, #0x14]
	ldr	r2, [r7, #0x10]
	mov	r0, r10
	sub	r3, r2
	sub	r3, r0
	cmp	r3, #0
	bge	.L94f14
	ldr	r2, =0xffff
	add	r3, r2
.L94f14:
	mov	r0, #0
	ldrsh	r2, [r6, r0]
	asr	r3, #16
	add	r3, r2
	mov	r8, r3
	mov	r3, r1
	add	r3, #0xf
	add	r6, #2
	cmp	r3, #0xff
	bhi	.L94fb2
	mov	r1, #0x20
	neg	r1, r1
	cmp	r8, r1
	blt	.L94fb2
	mov	r2, r8
	cmp	r2, #0x9f
	bgt	.L94fb2
	ldr	r3, [sp, #0x18]
	ldr	r1, [r3, #4]
	ldrh	r3, [r6]
	add	r1, r3
	ldr	r3, .L94f70	@ 0x3ff
	ldr	r2, .L94f74	@ 0xfffffc00
	and	r1, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #8]
	ldr	r3, .L94f78	@ 0x1ff
	mov	r1, r11
	and	r1, r3
	ldr	r2, .L94f7c	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	ldrb	r2, [r7, #5]
	mov	r1, #0x3f
	strh	r3, [r7, #6]
	mov	r3, r1
	and	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]
	and	r1, r3
	mov	r3, #0x40
	b	.L94f8c

	.align	2, 0
.L94f70:
	.word	0x3ff
.L94f74:
	.word	0xfffffc00
.L94f78:
	.word	0x1ff
.L94f7c:
	.word	0xfffffe00
	.pool

.L94f8c:
	orr	r1, r3
	ldr	r3, =iwram_3001e40
	mov	r0, r8
	ldr	r3, [r3]
	ldr	r2, .L94fbc	@ 1
	strb	r0, [r7, #4]
	mov	r0, #0x3f
	neg	r0, r0
	lsr	r3, #1
	and	r3, r2
	mov	r2, r0
	lsl	r3, #4
	and	r1, r2
	orr	r1, r3
	strb	r1, [r7, #7]
	mov	r0, r7
	mov	r1, #0xf0
	bl	Func_8003dec
.L94fb2:
	ldrh	r3, [r7, #0x1c]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r7, #0x1c]
	b	.L94fc8

	.align	2, 0
.L94fbc:
	.word	1
	.pool

.L94fc8:
	ldr	r2, [sp, #0x14]
	cmp	r2, #3
	bhi	.L95078
	ldrh	r3, [r7, #0x1c]
	cmp	r3, #0
	bne	.L95078
	ldr	r0, [sp, #0x18]
	ldr	r1, =0x40c
	add	r3, r0, r1
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.L95078
	mov	r2, r9
	cmp	r2, #0
	beq	.L95020
	ldr	r3, [sp, #4]
	str	r3, [r7, #0xc]
	ldr	r0, [sp]
	mov	r3, r8
	mov	r2, r11
	asr	r1, r2, #16
	str	r0, [r7, #0x14]
	asr	r2, r3, #16
	mov	r0, #0
	bl	_Func_8011f54
	ldr	r3, .L95018	@ 0x3e
	lsl	r0, #16
	str	r0, [r7, #0x10]
	mov	r0, r9
	sub	r3, r0
	strh	r3, [r7, #0x1c]
	str	r5, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	mov	r2, #4
	add	r1, #1
	str	r1, [sp, #0x14]
	add	r9, r2
	b	.L95078

	.align	2, 0
.L95018:
	.word	0x3e
	.pool

.L95020:
	bl	Random
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, #0
	bne	.L95078
	ldr	r3, [sp, #0xc]
	ldr	r6, [r3]
	bl	Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r5, =0xff800000
	add	r3, r0
	add	r3, r5
	str	r3, [sp, #4]
	bl	Random
	ldr	r3, [r6, #8]
	lsl	r0, #8
	add	r3, r0
	add	r3, r5
	ldr	r0, [sp, #4]
	str	r3, [sp]
	mov	r2, r11
	str	r3, [r7, #0x14]
	mov	r3, r8
	asr	r1, r2, #16
	str	r0, [r7, #0xc]
	asr	r2, r3, #16
	mov	r0, #0
	bl	_Func_8011f54
	lsl	r0, #16
	str	r0, [r7, #0x10]
	mov	r3, #0x1e
	mov	r0, r9
	strh	r3, [r7, #0x1c]
	str	r0, [r7, #0x18]
	ldr	r1, [sp, #0x14]
	add	r1, #1
	mov	r2, #4
	str	r1, [sp, #0x14]
	mov	r9, r2
.L95078:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
	add	r7, #0x20
	cmp	r3, #0x1f
	bhi	.L95086
	b	.L94eb0
.L95086:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Earthquake

.thumb_func_start StartEarthquake
	push	{r5, r6, r7, lr}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #4
	bl	galloc_ewram
	mov	r5, r0
	mov	r7, r5
	mov	r1, #0
	mov	r0, sp
	str	r1, [r0]
	add	r7, #8
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_a00b8
	bl	DecompressLZ1
	bl	AllocSpriteSlot
	mov	r1, #0x80
	mov	r2, r6
	str	r0, [r5]
	lsl	r1, #2
	bl	UploadSpriteGFX
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	gfree
	mov	r5, #0
	mov	r6, #0
.L950f0:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r1, r7
	stmia	r1!, {r6}
	ldr	r2, [r3]
	ldr	r3, =0x40000400
	stmia	r1!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #8]
	asr	r1, #16
	str	r6, [r7, #0xc]
	str	r6, [r7, #0x14]
	asr	r2, #16
	mov	r0, #0
	bl	_Func_8011f54
	ldr	r2, .L9513c	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L950f0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Task_Earthquake
	bl	StartTask
	add	sp, #4
	b	.L95158

	.align	2, 0
.L9513c:
	.word	0xf
	.pool

.L95158:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartEarthquake

.thumb_func_start StartThunder
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	sub	sp, #4
	bl	galloc_ewram
	ldr	r3, =iwram_3001ed0
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850007e2
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	ldr	r0, =0x10003
	bl	Func_8090a5c
	mov	r3, #0xa8
	lsl	r3, #4
	add	r6, r5, r3
	mov	r1, r8
	mov	r2, r6
	mov	r3, #1
	ldr	r0, =0x10005
	bl	Func_8090a5c
	mov	r3, #0xa8
	lsl	r3, #5
	add	r2, r5, r3
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0xc
	bl	Func_809088c
	mov	r3, #0xe0
	lsl	r3, #4
	add	r8, r3
	mov	r2, r8
	mov	r0, r5
	mov	r1, #0
	mov	r3, #1
	bl	Func_8090a5c
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r5, r3
	mov	r3, #0x96
	lsl	r3, #2
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0xc8
	add	r5, r3
	mov	r3, #1
	strh	r3, [r5]
	lsl	r1, #4
	ldr	r0, =Task_Thunder
	bl	StartTask
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end StartThunder

.thumb_func_start Func_8095214
	push	{lr}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	bl	galloc_ewram
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r0, r3
	ldr	r3, =0x7fff
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0
	add	r0, r3
	strh	r1, [r0]
	pop	{r0}
	bx	r0
.func_end Func_8095214

.thumb_func_start Func_8095240
	push	{lr}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	bl	galloc_ewram
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r0, r3
	mov	r3, #0xc
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0
	add	r0, r3
	strh	r1, [r0]
	pop	{r0}
	bx	r0
.func_end Func_8095240

.thumb_func_start Func_8095268
	push	{lr}
	ldr	r1, =0x1f88
	mov	r0, #0x1e
	bl	galloc_ewram
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r0, r3
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r3, =0x1f82
	add	r0, r3
	mov	r3, #1
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_8095268

.thumb_func_start StartThunder2
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r10, r1
	mov	r0, #0x1e
	ldr	r1, =0x1f88
	sub	sp, #4
	bl	galloc_ewram
	ldr	r3, =iwram_3001ed0
	ldr	r3, [r3]
	mov	r5, r0
	mov	r8, r3
	mov	r0, sp
	mov	r3, #0
	mov	r9, r3
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850007e2
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r8
	mov	r2, r5
	mov	r0, r6
	mov	r3, #1
	bl	Func_8090a5c
	mov	r3, #0xa8
	lsl	r3, #4
	add	r6, r5, r3
	mov	r1, r8
	mov	r2, r6
	mov	r0, r10
	mov	r3, #1
	bl	Func_8090a5c
	mov	r3, #0xa8
	lsl	r3, #5
	add	r2, r5, r3
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0xc
	bl	Func_809088c
	mov	r3, #0xe0
	lsl	r3, #4
	add	r8, r3
	mov	r2, r8
	mov	r0, r5
	mov	r1, #0
	mov	r3, #1
	bl	Func_8090a5c
	mov	r3, #0xfc
	lsl	r3, #5
	add	r2, r5, r3
	mov	r3, #0x78
	strh	r3, [r2]
	ldr	r3, =0x1f82
	mov	r1, #0xc8
	add	r5, r3
	mov	r3, r9
	strh	r3, [r5]
	lsl	r1, #4
	ldr	r0, =Task_Thunder
	bl	StartTask
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end StartThunder2

.thumb_func_start Func_8095348
	ldr	r4, [r0, #0x68]
	ldr	r1, [r0, #8]
	ldr	r3, [r4, #8]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #8]
	ldr	r1, [r0, #0xc]
	ldr	r3, [r4, #0xc]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0xc]
	ldr	r1, [r0, #0x10]
	ldr	r3, [r4, #0x10]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0x10]
	bx	lr
.func_end Func_8095348

.thumb_func_start Func_809537c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r10, r0
	bl	MapActor_GetActor
	ldr	r3, =gState
	mov	r6, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	MapActor_GetActor
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r1, r3
	mov	r11, r1
	bl	CutsceneStart
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0xad
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r10
	bl	Func_80925cc
	mov	r5, #0x80
	mov	r0, #0xaf
	bl	_PlaySound
	lsl	r5, #8
	mov	r1, #1
	mov	r0, r10
	bl	Func_80925cc
	add	r5, r11
	mov	r0, #0x14
	bl	WaitFrames
	mov	r1, r5
	mov	r2, #0
	mov	r0, r10
	bl	Func_8092adc
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	strh	r5, [r6, #6]
	mov	r0, r10
	bl	MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r5, #0x80
	mov	r2, r6
	strb	r3, [r0]
	add	r2, #0x55
	mov	r3, #2
	lsl	r5, #13
	str	r2, [sp, #4]
	mov	r1, r5
	strb	r3, [r2]
	mov	r0, r6
	mov	r2, r11
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r2, #9
	mov	r8, r0
	str	r2, [sp, #8]
	cmp	r0, #0x5a
	bne	.L9549c
	mov	r3, #2
	str	r3, [sp, #8]
.L9549c:
	mov	r0, r8
	cmp	r0, #0x5c
	bne	.L954a6
	mov	r1, #0xa
	str	r1, [sp, #8]
.L954a6:
	mov	r2, r8
	cmp	r2, #0x5b
	bne	.L954b0
	mov	r3, #9
	str	r3, [sp, #8]
.L954b0:
	mov	r1, sp
	mov	r0, #0
	add	r1, #0x10
	str	r0, [sp, #0xc]
	str	r1, [sp]
	mov	r9, r6
	mov	r7, #0
.L954be:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r8
	bl	_CreateActor
	ldr	r2, [sp]
	mov	r5, r0
	lsl	r3, r7, #2
	str	r5, [r2, r3]
	cmp	r5, #0
	beq	.L95536
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =Func_8095348
	str	r3, [r5, #0x6c]
	ldr	r1, [r5, #0x50]
	ldrh	r3, [r6, #6]
	mov	r0, #0xd
	strh	r3, [r5, #6]
	neg	r0, r0
	ldrb	r3, [r1, #9]
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	ldr	r1, [sp, #8]
	mov	r0, r5
	bl	_Actor_SetColorswap
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r0, [r5, #0x50]
	ldr	r1, [sp, #0xc]
	bl	Func_8096c48
	mov	r1, r9
	str	r0, [sp, #0xc]
	str	r1, [r5, #0x68]
	mov	r9, r5
.L95536:
	add	r7, #1
	cmp	r7, #7
	ble	.L954be
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r2, #8
	add	r2, r11
	lsl	r1, #15
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x88
	bl	_PlaySound
	mov	r0, r10
	mov	r1, #0xc
	mov	r2, #0
	bl	MapActor_Jump
	mov	r0, #0x18
	bl	WaitFrames
	ldr	r2, [sp, #4]
	mov	r3, #0
	strb	r3, [r2]
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x40]
	str	r3, [r6, #0x3c]
	mov	r0, r6
	mov	r1, #0
	bl	_Actor_SetAnim
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	bl	CutsceneEnd
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809537c

.thumb_func_start Func_80955b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xb7
	lsl	r0, #1
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_GetFlag
	cmp	r0, #0
	beq	.L955e2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #2
	add	r0, r8
	mov	r2, #0
	add	r0, #0x30
	mov	r10, r2
	bl	_SetFlag
	b	.L955ec
.L955e2:
	mov	r0, r5
	mov	r1, r8
	bl	_Func_807a0f4
	mov	r10, r0
.L955ec:
	mov	r3, r10
	cmp	r3, #0
	blt	.L9566e
	bl	CutsceneStart
	bl	Func_808c44c
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	beq	.L9565c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L95614
	bl	Func_808b8e8
.L95614:
	cmp	r5, #0
	bne	.L95620
	mov	r0, r6
	bl	GetVenusDjinni
	b	.L95642
.L95620:
	cmp	r5, #1
	bne	.L9562c
	mov	r0, r6
	bl	GetMercuryDjinni
	b	.L95642
.L9562c:
	cmp	r5, #2
	bne	.L95638
	mov	r0, r6
	bl	GetMarsDjinni
	b	.L95642
.L95638:
	cmp	r5, #3
	bne	.L95642
	mov	r0, r6
	bl	GetJupiterDjinni
.L95642:
	lsl	r3, r6, #2
	add	r3, #0x14
	mov	r2, #0
	str	r2, [r7, r3]
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L9565c
	bl	Func_808b98c
.L9565c:
	mov	r0, r10
	mov	r1, r5
	mov	r2, r8
	bl	_Func_8021228
	bl	Func_808c4c0
	bl	CutsceneEnd
.L9566e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80955b0

.thumb_func_start Func_8095680
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r5, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	add	r3, r5, r0
	ldrh	r2, [r3]
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	mov	r3, #0xf0
	lsl	r3, #8
	and	r7, r3
	ldr	r3, =0xfff
	mov	r10, r3
	mov	r0, r10
	and	r0, r2
	mov	r10, r0
	ldr	r0, =0x109
	bl	_GetFlag
	cmp	r0, #0
	beq	.L9574c
	cmp	r7, #0
	bne	.L9574c
	ldr	r3, =0x7ff
	mov	r7, #0x80
	mov	r1, r10
	lsl	r7, #4
	and	r7, r1
	and	r1, r3
	ldr	r3, =0xfffffed4
	mov	r10, r1
	add	r3, r10
	cmp	r3, #0x50
	bhi	.L9574c
	ldr	r2, =0x236
	add	r3, r5, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L9574c
	sub	r2, #0x42
	mov	r1, #8
	add	r2, r5
	mov	r8, r1
	mov	r9, r2
.L956e2:
	mov	r0, r8
	bl	Func_808d394
	mov	r5, r0
	cmp	r5, #0
	beq	.L95742
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	ldr	r2, =0xfffffed4
	sub	r3, #0x30
	add	r2, r10
	cmp	r3, r2
	bne	.L95742
	mov	r0, r8
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L95742
	cmp	r7, #0
	bne	.L95722
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #3
	str	r7, [r6, #0x14]
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	bl	_Actor_SetPos
	b	.L9573a
.L95722:
	mov	r1, r9
	ldr	r0, [r1]
	bl	GetFieldActor
	ldr	r3, [r0, #0x10]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r0, =0xffe00000
	add	r3, r0
	mov	r0, r6
	bl	_Actor_SetPos
.L9573a:
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
.L95742:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x41
	ble	.L956e2
.L9574c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095680

.thumb_func_start Func_8095778
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r1, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	add	r7, r1, r0
	mov	r3, #0
	ldrsh	r5, [r7, r3]
	ldrh	r2, [r7]
	mov	r3, #0xf0
	ldr	r6, =0xfff
	lsl	r3, #8
	mov	r0, r8
	and	r5, r3
	and	r6, r2
	cmp	r0, #0
	bne	.L957ec
	cmp	r5, #0
	bne	.L957cc
	ldr	r3, =0x7ff
	ldr	r2, =0xfffffed4
	and	r6, r3
	add	r3, r6, r2
	cmp	r3, #0x50
	bhi	.L95860
	ldr	r0, =0x236
	add	r3, r1, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, #0
	ble	.L957c0
	ldr	r3, =0x3e7
	cmp	r2, r3
	bne	.L95860
.L957c0:
	mov	r0, r6
	sub	r0, #0xac
	bl	_SetFlag
	strh	r5, [r7]
	b	.L95860
.L957cc:
	mov	r0, #0x80
	lsl	r0, #5
	cmp	r5, r0
	bne	.L95860
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L957e6
	mov	r0, r6
	bl	_SetFlag
.L957e6:
	mov	r1, r8
	strh	r1, [r7]
	b	.L95860
.L957ec:
	cmp	r5, #0
	bne	.L95856
	ldr	r2, =0x7ff
	ldr	r0, =0xfffffed4
	and	r6, r2
	add	r3, r6, r0
	cmp	r3, #0x50
	bhi	.L95856
	and	r6, r2
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L95856
	ldr	r1, =0xfffffed4
	add	r5, r6, r1
	mov	r0, r5
	mov	r1, #0x14
	bl	__divsi3
	mov	r1, #0x14
	mov	r8, r0
	mov	r0, r5
	bl	__modsi3
	mov	r5, #8
	mov	r7, r0
	b	.L95828
.L95826:
	add	r5, #1
.L95828:
	cmp	r5, #0x41
	bgt	.L95854
	mov	r0, r5
	bl	Func_808d394
	cmp	r0, #0
	beq	.L95826
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	ldr	r0, =0xfffffed4
	sub	r3, #0x30
	add	r2, r6, r0
	cmp	r3, r2
	bne	.L95826
	mov	r0, #0x28
	bl	WaitFrames
	mov	r1, r8
	mov	r0, r5
	mov	r2, r7
	bl	Func_80955b0
.L95854:
	ldr	r1, =gState
.L95856:
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0
	strh	r3, [r2]
.L95860:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095778

