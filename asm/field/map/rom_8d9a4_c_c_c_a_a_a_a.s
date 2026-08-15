	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80903bc  @ 0x080903bc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r3, #0x5c
	ldr	r7, [r3]
	cmp	r2, #0
	beq	.L9042a
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L903f6
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Func_80903bc
	bl	StopTask
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	SetIntrHandler
	b	.L9045e
.L903f6:
	ldr	r2, =0x53b
	add	r3, r6, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =divsi3_RAM
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r1, =0x52a
	add	r3, r0
	add	r2, r6, r1
	strh	r3, [r2]
.L9042a:
	ldr	r2, =0x52a
	add	r3, r6, r2
	ldrh	r2, [r3]
	cmp	r2, #0x4f
	bls	.L9044a
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xc8
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xfa
	strh	r3, [r2]
	b	.L9045e
.L9044a:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	strh	r2, [r3]
	ldr	r3, .L90464	@ 0x9f
	sub	r3, r2
	mov	r2, #0x81
	lsl	r2, #1
	add	r1, r7, r2
	strh	r3, [r1]
.L9045e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
	.align	2, 0
.L90464:
	.word	0x9f
.func_end Func_80903bc

.thumb_func_start Func_8090488  @ 0x08090488
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	sub	r3, #0x5c
	ldr	r7, [r3]
	cmp	r2, #0
	beq	.L904f6
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L904c2
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Func_8090488
	bl	StopTask
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	SetIntrHandler
	b	.L9057c
.L904c2:
	ldr	r2, =0x53b
	add	r3, r6, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =divsi3_RAM
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldr	r1, =0x52a
	add	r3, r0
	add	r2, r6, r1
	strh	r3, [r2]
.L904f6:
	ldr	r2, =0x52a
	add	r3, r6, r2
	ldrh	r5, [r3]
	cmp	r5, #0x4f
	bls	.L90514
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xc8
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xfa
	b	.L9057a
.L90514:
	cmp	r5, #0
	beq	.L90568
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L90568
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r5
	add	r3, r7, r1
	add	r2, #0x50
	strh	r2, [r3]
	ldr	r3, .L90540	@ 0x50
	mov	r2, #0x81
	lsl	r2, #1
	sub	r3, r5
	add	r1, r7, r2
	strh	r3, [r1]
	b	.L9057c

	.align	2, 0
.L90540:
	.word	0x50
	.pool

.L90568:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0
	strh	r2, [r3]
	mov	r3, #0x81
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x9f
.L9057a:
	strh	r3, [r2]
.L9057c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8090488

.thumb_func_start Func_8090584  @ 0x08090584
	push	{lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	mov	r4, r3
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r12, r3
.L90592:
	mov	r0, #0x84
	lsl	r0, #1
	add	r0, r12
	ldrh	r3, [r0]
	cmp	r3, #1
	beq	.L905fc
	cmp	r3, #1
	bgt	.L905a8
	cmp	r3, #0
	beq	.L90648
	b	.L90652
.L905a8:
	cmp	r3, #2
	beq	.L905cc
	cmp	r3, #3
	bne	.L90652
	mov	r3, #0x82
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	ldr	r2, .L905ec
	orr	r3, r2
	b	.L905e2
.L905cc:
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
.L905e2:
	strh	r3, [r1]
	mov	r3, #9
	strh	r3, [r0]
	b	.L90652

	.align	2, 0
.L905ec:
	.word	2
	.pool

.L905fc:
	mov	r3, #0x82
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90620
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	ldr	r2, .L90640	@ 2
	orr	r3, r2
	strh	r3, [r1]
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	b	.L90592
.L90620:
	mov	r3, #0x83
	lsl	r3, #1
	add	r3, r12
	ldrh	r3, [r3]
	cmp	r4, r3
	bcc	.L90652
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xfff8
	and	r3, r2
	strh	r3, [r1]
	mov	r3, #3
	strh	r3, [r0]
	b	.L90592

	.align	2, 0
.L90640:
	.word	2
	.pool

.L90648:
	cmp	r4, #0x9e
	bhi	.L90652
	mov	r3, #1
	strh	r3, [r0]
	b	.L90592
.L90652:
	pop	{r0}
	bx	r0
.func_end Func_8090584

.thumb_func_start Task_Transition300  @ 0x08090658
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ecc
	ldr	r1, =0x53c
	ldr	r6, [r3]
	add	r4, r6, r1
	mov	r2, #0
	ldrsb	r2, [r4, r2]
	cmp	r2, #0
	beq	.L906cc
	ldr	r3, =0x53d
	add	r1, r6, r3
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r0, [r1]
	cmp	r3, r2
	blt	.L90698
	mov	r3, #0
	strb	r3, [r4]
	ldr	r0, =Task_Transition300
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
	b	.L9076a
.L90698:
	ldr	r7, =0x53b
	add	r3, r6, r7
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, =0x53a
	add	r5, r6, r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r2, r3
	add	r3, r0, #1
	strb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, r3
	mul	r0, r2
	mov	r1, #0
	ldrsb	r1, [r4, r1]
	ldr	r3, =divsi3_RAM
	bl	_call_via_r3
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	sub	r7, #0x11
	add	r3, r0
	add	r2, r6, r7
	strh	r3, [r2]
.L906cc:
	ldr	r1, =0x52a
	ldr	r2, =0x539
	add	r3, r6, r1
	ldrh	r3, [r3]
	add	r1, r6, r2
	sub	r0, r3, #1
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	mov	r3, #0x20
	and	r3, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L906ec
	mov	r5, #0xf
.L906ec:
	mov	r3, #0x1f
	and	r3, r0
	lsl	r0, r3, #1
	ldr	r3, =gScript_0809e8ee
	mov	r7, #0x3f
	mov	r4, #0
	mov	r12, r3
	mov	r14, r7
.L906fc:
	mov	r1, r14
	mov	r3, r0
	and	r3, r1
	mov	r7, r12
	ldrb	r2, [r7, r3]
	mov	r7, #0xa1
	lsr	r3, r2, #1
	add	r3, r6, r3
	lsl	r7, #3
	add	r1, r3, r7
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L90726
	ldrb	r3, [r1]
	mov	r2, #0xf
	and	r2, r3
	lsl	r3, r5, #4
	orr	r2, r3
	strb	r2, [r1]
	b	.L90730
.L90726:
	ldrb	r2, [r1]
	mov	r3, #0xf0
	and	r3, r2
	orr	r3, r5
	strb	r3, [r1]
.L90730:
	add	r4, #1
	add	r0, #1
	cmp	r4, #1
	bls	.L906fc
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L90768
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	mov	r1, #0xa1
	lsl	r1, #3
	add	r3, #4
	add	r2, r6, r1
	stmia	r3!, {r2}
	mov	r2, #0xc0
	lsl	r2, #19
	stmia	r3!, {r2}
	ldr	r2, =0x84000008
	str	r2, [r3]
.L90768:
	strh	r4, [r0]
.L9076a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_Transition300

.thumb_func_start Func_80907b0  @ 0x080907b0
	push	{r5, lr}
	ldr	r3, =iwram_3001ecc
	sub	sp, #4
	ldr	r5, [r3]
	ldr	r3, =0xf000f000
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	beq	.L90802
	mov	r1, #0
	mov	r3, #7
.L907d6:
	lsl	r1, #4
	sub	r3, #1
	orr	r1, r4
	cmp	r3, #0
	bge	.L907d6
	mov	r3, #0xa1
	lsl	r3, #3
	add	r2, r5, r3
	mov	r3, #7
.L907e8:
	sub	r3, #1
	stmia	r2!, {r1}
	cmp	r3, #0
	bge	.L907e8
	mov	r2, #0xa1
	lsl	r2, #3
	mov	r1, #0xc0
	add	r0, r5, r2
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L90802:
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80907b0

