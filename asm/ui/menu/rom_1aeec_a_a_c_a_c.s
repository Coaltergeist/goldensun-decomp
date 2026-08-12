	.include "macros.inc"

.thumb_func_start DisplayMenuArrowCursor2  @ 0x0801b248
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x34
	mul	r3, r1
	mov	r6, r0
	add	r2, r6, r3
	mov	r0, #0
	add	r2, #0x28
	mov	r11, r0
	add	r3, #8
	mov	r10, r2
	add	r4, r6, r3
	mov	r2, r11
	strh	r2, [r4, #2]
	cmp	r1, #0
	beq	.L1b2ac
	mov	r0, #0xe5
	lsl	r0, #2
	add	r3, r6, r0
	ldrh	r2, [r3]
	mov	r3, #0xe7
	lsl	r3, #2
	add	r0, r6, r3
	ldrh	r3, [r0]
	ldr	r5, =.L342f8
	cmp	r3, #0
	beq	.L1b28a
	sub	r2, r3
.L1b28a:
	cmp	r2, #5
	bls	.L1b294
	mov	r3, #1
	strh	r3, [r4, #2]
	mov	r2, #5
.L1b294:
	ldr	r4, =0x396
	add	r3, r6, r4
	ldrh	r3, [r3]
	sub	r2, #1
	lsl	r2, #4
	add	r3, r2
	mov	r2, r6
	add	r3, #0x11
	add	r2, #0x44
	mov	r11, r5
	strh	r3, [r2]
	b	.L1b2cc
.L1b2ac:
	ldr	r2, =0x396
	add	r3, r6, r2
	ldr	r0, =.L33ef8
	ldrh	r3, [r3]
	ldr	r4, =0xfff7
	mov	r11, r0
	add	r3, r4
	mov	r0, #0xe7
	strh	r3, [r6, #0x10]
	lsl	r0, #2
	add	r3, r6, r0
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1b2cc
	mov	r3, #1
	strh	r3, [r6, #0xa]
.L1b2cc:
	mov	r3, #0x34
	mov	r7, r1
	mul	r7, r3
	mov	r3, r7
	add	r3, #0x10
	add	r3, r6
	mov	r4, #2
	ldrsh	r2, [r3, r4]
	mov	r8, r3
	mov	r9, r2
	cmp	r2, #0
	bne	.L1b34c
	bl	AllocSpriteSlot
	mov	r5, r7
	add	r5, #0xc
	strh	r0, [r6, r5]
	mov	r1, #0x80
	ldrh	r0, [r6, r5]
	mov	r2, r11
	bl	UploadSpriteGFX
	add	r5, r6, r5
	strh	r0, [r5, #2]
	mov	r0, #0xe6
	lsl	r0, #2
	add	r3, r6, r0
	ldrh	r3, [r3]
	mov	r2, r8
	strh	r3, [r2, #2]
	mov	r3, r7
	add	r3, #8
	mov	r4, r9
	strh	r4, [r6, r3]
	mov	r0, r10
	ldrb	r3, [r0, #5]
	mov	r0, #0xd
	neg	r0, r0
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	neg	r3, r3
	and	r2, r3
	mov	r3, r10
	ldrb	r1, [r3, #7]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r1
	mov	r1, #0x3f
	mov	r4, r10
	and	r3, r1
	strb	r3, [r4, #7]
	and	r2, r1
	mov	r3, #0x80
	orr	r2, r3
	ldrb	r3, [r4, #9]
	and	r0, r3
	strb	r2, [r4, #5]
	strb	r0, [r4, #9]
.L1b34c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end DisplayMenuArrowCursor2

.thumb_func_start Func_801b36c  @ 0x0801b36c
	push	{lr}
	mov	r2, #0xd2
	lsl	r2, #2
	ldr	r4, =0x39e
	add	r3, r0, r2
	ldr	r2, [r3]
	add	r3, r0, r4
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #0
	beq	.L1b38e
	add	r3, r0, r4
	ldrh	r0, [r3]
.L1b386:
	add	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, r0
	bne	.L1b386
.L1b38e:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_801b36c

.thumb_func_start Func_801b398  @ 0x0801b398
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e98
	ldr	r5, [r3]
	mov	r6, r0
	mov	r1, #0
	mov	r0, r5
	bl	Func_801b9ec
	ldr	r7, =gKeyPress
.L1b3aa:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xe8
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1b3aa
	ldr	r3, =0x3e7
	cmp	r6, r3
	beq	.L1b3fa
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3d6
	mov	r0, r5
	bl	Func_801b664
	b	.L1b3fa
.L1b3d6:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3e8
	mov	r0, r5
	bl	Func_801b810
	b	.L1b3fa
.L1b3e8:
	ldr	r3, [r7]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3fa
	mov	r0, r5
	bl	Func_801be80
	b	.L1b40c
.L1b3fa:
	cmp	r6, #0
	beq	.L1b3aa
	ldr	r3, [r7]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3aa
	mov	r0, #1
	neg	r0, r0
.L1b40c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801b398

.thumb_func_start Func_801b424  @ 0x0801b424
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e98
	ldr	r5, [r3]
	mov	r6, r0
.L1b42c:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xe8
	lsl	r1, #2
	add	r3, r5, r1
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1b42c
	ldr	r2, =0x3e7
	cmp	r6, r2
	beq	.L1b4bc
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1b45e
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, r5
	bl	Func_801b664
	b	.L1b474
.L1b45e:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1b474
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, r5
	bl	Func_801b810
.L1b474:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b4bc
	mov	r1, #0xe7
	lsl	r1, #2
	add	r3, r5, r1
	add	r1, #2
	ldrh	r2, [r3]
	add	r3, r5, r1
	ldrh	r3, [r3]
	add	r6, r2, r3
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r5, r2
	ldr	r3, [r3]
	ldrh	r3, [r3, #0xa]
	cmp	r3, #6
	bne	.L1b4b2
	cmp	r6, #0
	bne	.L1b4aa
	mov	r0, #0x70
	bl	_PlaySound
	b	.L1b4b8
.L1b4aa:
	mov	r0, #0x71
	bl	_PlaySound
	b	.L1b4b8
.L1b4b2:
	mov	r0, #0x70
	bl	_PlaySound
.L1b4b8:
	mov	r0, r6
	b	.L1b4d6
.L1b4bc:
	cmp	r6, #0
	beq	.L1b42c
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1b42c
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
.L1b4d6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_801b424

.thumb_func_start Func_801b4ec  @ 0x0801b4ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	ldr	r1, =0x39e
	mov	r0, #0xe7
	lsl	r0, #2
	add	r7, r5, r0
	add	r6, r5, r1
	ldrh	r3, [r7]
	ldrh	r1, [r6]
	mov	r2, #0xe5
	add	r3, r1
	lsl	r2, #2
	add	r3, #1
	add	r2, r5
	mov	r10, r3
	ldrh	r3, [r2]
	mov	r8, r2
	cmp	r10, r3
	beq	.L1b5aa
	mov	r0, r5
	bl	Func_801b9a8
	ldr	r3, =0x3a2
	add	r2, r5, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldrh	r1, [r6]
	mov	r0, #0x80
	add	r3, r1, #1
	strh	r3, [r6]
	lsl	r0, #11
	lsl	r3, #16
	cmp	r3, r0
	bne	.L1b57a
	mov	r0, r8
	mov	r2, r10
	ldrh	r3, [r0]
	add	r2, #1
	cmp	r2, r3
	bcs	.L1b57a
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r1, r2
	strh	r3, [r6]
	mov	r3, #8
	strh	r3, [r5, #0x3c]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	mov	r0, r5
	mov	r1, #1
	bl	Func_801ba68
	ldrh	r2, [r6]
	ldrh	r3, [r7]
	mov	r0, r8
	add	r3, r2
	ldrh	r2, [r0]
	add	r3, #2
	cmp	r3, r2
	bne	.L1b576
	mov	r3, #0
	strh	r3, [r5, #0x3e]
.L1b576:
	mov	r3, #1
	strh	r3, [r5, #0xa]
.L1b57a:
	ldr	r1, =0x3a2
	mov	r3, #1
	add	r2, r5, r1
	strh	r3, [r2]
	ldr	r2, =0x39e
	add	r3, r5, r2
	ldrh	r1, [r3]
	mov	r0, r5
	bl	Func_801b9ec
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r5, r0
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_801b010
	mov	r0, #1
	bl	WaitFrames
.L1b5aa:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b4ec

.thumb_func_start Func_801b5c0  @ 0x0801b5c0
	push	{r5, r6, r7, lr}
	mov	r1, #0xe7
	mov	r6, r0
	lsl	r1, #2
	add	r7, r6, r1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1b650
	ldr	r2, =0x39e
	add	r5, r6, r2
	ldrh	r1, [r5]
	bl	Func_801b9a8
	ldr	r3, =0x3a2
	add	r2, r6, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldrh	r5, [r5]
	cmp	r5, #1
	bne	.L1b614
	ldrh	r3, [r7]
	cmp	r3, #0
	beq	.L1b614
	mov	r3, #8
	strh	r3, [r6, #8]
	ldrh	r3, [r7]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	Func_801ba68
	ldrh	r3, [r7]
	cmp	r3, #0
	bne	.L1b610
	strh	r3, [r6, #0xa]
.L1b610:
	strh	r5, [r6, #0x3e]
	b	.L1b620
.L1b614:
	ldr	r3, =0x39e
	add	r2, r6, r3
	ldrh	r3, [r2]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r2]
.L1b620:
	ldr	r3, =0x3a2
	ldr	r1, =0x39e
	add	r2, r6, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r6, r1
	ldrh	r1, [r3]
	mov	r0, r6
	bl	Func_801b9ec
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_801b010
	mov	r0, #1
	bl	WaitFrames
.L1b650:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b5c0

.thumb_func_start Func_801b664  @ 0x0801b664
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	ldr	r0, =0x39e
	add	r5, r7, r0
	ldrh	r1, [r5]
	mov	r0, r7
	bl	Func_801b9a8
	ldr	r1, =0x3a2
	mov	r3, #0
	add	r2, r7, r1
	mov	r10, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldrh	r3, [r5]
	mov	r0, #0xe5
	add	r3, #1
	strh	r3, [r5]
	lsl	r0, #2
	add	r0, r7
	ldrh	r2, [r0]
	mov	r8, r0
	cmp	r2, #5
	bhi	.L1b6a2
	b	.L1b7b2
.L1b6a2:
	mov	r1, #0xe7
	lsl	r1, #2
	add	r6, r7, r1
	ldrh	r3, [r6]
	ldrh	r2, [r5]
	ldrh	r1, [r0]
	add	r3, r2
	cmp	r3, r1
	bne	.L1b776
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r5, [r3]
	mov	r3, r10
	strh	r3, [r7, #0xa]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L1b6e4
	ldr	r0, =0x396
	mov	r3, #0xe6
	add	r1, r7, r0
	lsl	r3, #2
	ldr	r0, =0xfff4
	add	r2, r7, r3
.L1b6d2:
	ldrh	r3, [r1]
	strh	r3, [r5, #0x18]
	ldrh	r3, [r2]
	strh	r0, [r5, #0x14]
	strh	r3, [r5, #0x1a]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bne	.L1b6d2
.L1b6e4:
	ldr	r0, =0x396
	add	r3, r7, r0
	ldrh	r2, [r3]
	mov	r1, #0xe6
	strh	r2, [r5, #0x18]
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r3, [r3]
	strh	r3, [r5, #0x1a]
	ldr	r3, =0xfff4
	lsl	r2, #16
	strh	r3, [r5, #0x14]
	mov	r0, #0x10
	ldrsh	r3, [r5, r0]
	asr	r2, #16
	cmp	r2, r3
	beq	.L1b718
.L1b706:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x18
	ldrsh	r2, [r5, r1]
	mov	r0, #0x10
	ldrsh	r3, [r5, r0]
	cmp	r2, r3
	bne	.L1b706
.L1b718:
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L1b73e
	mov	r2, #0xd5
	lsl	r2, #2
	add	r6, r7, r2
.L1b72a:
	ldrh	r0, [r6]
	ldrh	r1, [r6, #0x20]
	mov	r2, r5
	mov	r3, #1
	bl	Func_801bd98
	ldr	r5, [r5, #4]
	add	r6, #2
	cmp	r5, #0
	bne	.L1b72a
.L1b73e:
	ldr	r0, =0x39e
	mov	r1, #0xe7
	add	r3, r7, r0
	mov	r2, #0
	lsl	r1, #2
	strh	r2, [r3]
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r5, [r3]
	mov	r0, #0x10
	ldrsh	r3, [r5, r0]
	ldr	r5, [r5, #4]
	add	r3, #0x10
	cmp	r5, #0
	beq	.L1b770
	mov	r2, #0xc
.L1b764:
	strh	r3, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	add	r3, #0x10
	cmp	r5, #0
	bne	.L1b764
.L1b770:
	mov	r3, #1
	strh	r3, [r7, #0x3e]
	b	.L1b7be
.L1b776:
	cmp	r2, #4
	bne	.L1b7be
	add	r3, #1
	cmp	r3, r1
	bcs	.L1b7be
	ldr	r1, =0xffff
	add	r3, r2, r1
	strh	r3, [r5]
	mov	r3, #8
	strh	r3, [r7, #0x3c]
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r0, r7
	mov	r1, #1
	bl	Func_801ba68
	ldrh	r2, [r5]
	ldrh	r3, [r6]
	mov	r0, r8
	add	r3, r2
	ldrh	r2, [r0]
	add	r3, #2
	cmp	r3, r2
	bne	.L1b7ac
	mov	r1, r10
	strh	r1, [r7, #0x3e]
.L1b7ac:
	mov	r3, #1
	strh	r3, [r7, #0xa]
	b	.L1b7be
.L1b7b2:
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r2
	bne	.L1b7be
	mov	r2, r10
	strh	r2, [r5]
.L1b7be:
	ldr	r3, =0x3a2
	ldr	r0, =0x39e
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r7, r0
	ldrh	r1, [r3]
	mov	r0, r7
	bl	Func_801b9ec
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_801b010
	mov	r0, #1
	bl	WaitFrames
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b664

.thumb_func_start Func_801b810  @ 0x0801b810
	push	{r5, r6, r7, lr}
	ldr	r1, =0x39e
	mov	r7, r0
	add	r6, r7, r1
	ldrh	r1, [r6]
	bl	Func_801b9a8
	ldr	r3, =0x3a2
	add	r2, r7, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xe5
	lsl	r1, #2
	add	r3, r7, r1
	ldrh	r1, [r3]
	mov	r3, r1
	cmp	r3, #5
	bhi	.L1b83c
	b	.L1b948
.L1b83c:
	mov	r2, #0xe7
	lsl	r2, #2
	add	r5, r7, r2
	ldrh	r1, [r5]
	ldrh	r2, [r6]
	mov	r3, r1
	orr	r3, r2
	cmp	r3, #0
	beq	.L1b888
	mov	r6, r2
	cmp	r6, #1
	bne	.L1b87a
	mov	r3, r1
	cmp	r3, #0
	beq	.L1b87a
	mov	r3, #8
	strh	r3, [r7, #8]
	ldr	r1, =0xffff
	ldrh	r3, [r5]
	add	r3, r1
	strh	r3, [r5]
	mov	r0, r7
	mov	r1, #0
	bl	Func_801ba68
	ldrh	r3, [r5]
	cmp	r3, #0
	bne	.L1b876
	strh	r3, [r7, #0xa]
.L1b876:
	strh	r6, [r7, #0x3e]
	b	.L1b95c
.L1b87a:
	ldr	r3, =0x39e
	add	r2, r7, r3
	ldrh	r3, [r2]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r2]
	b	.L1b95c
.L1b888:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	mov	r0, #0
	ldr	r5, [r3]
	strh	r0, [r7, #0x3e]
	ldr	r3, [r5, #4]
	mov	r1, #0x40
	cmp	r3, #0
	beq	.L1b8b0
	mov	r2, #0xc
.L1b89e:
	ldrh	r3, [r5, #0x10]
	add	r3, r1
	strh	r3, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	sub	r1, #0x10
	cmp	r3, #0
	bne	.L1b89e
.L1b8b0:
	mov	r1, #0xd2
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r5, [r3]
	b	.L1b8c0
.L1b8ba:
	mov	r0, #1
	bl	WaitFrames
.L1b8c0:
	mov	r3, #0x10
	ldrsh	r2, [r5, r3]
	mov	r1, #0x18
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	bne	.L1b8ba
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r7, r2
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #5
	beq	.L1b8e6
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #5
.L1b8e0:
	add	r1, #1
	cmp	r1, r3
	bne	.L1b8e0
.L1b8e6:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	add	r2, #0x54
	ldr	r5, [r3]
	add	r3, r7, r2
	strh	r1, [r3]
	ldr	r3, =0x39e
	add	r2, r7, r3
	mov	r3, #4
	strh	r3, [r2]
	cmp	r5, #0
	beq	.L1b91e
	lsl	r3, r1, #1
	mov	r1, #0xd5
	add	r3, r7
	lsl	r1, #2
	add	r6, r3, r1
.L1b90a:
	ldrh	r0, [r6]
	ldrh	r1, [r6, #0x20]
	mov	r2, r5
	mov	r3, #1
	bl	Func_801bd98
	ldr	r5, [r5, #4]
	add	r6, #2
	cmp	r5, #0
	bne	.L1b90a
.L1b91e:
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r1, =0x396
	ldr	r5, [r3]
	add	r3, r7, r1
	ldrh	r1, [r3]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L1b942
	ldr	r2, =0xfff4
.L1b934:
	strh	r1, [r5, #0x18]
	strh	r2, [r5, #0x14]
	ldr	r5, [r5, #4]
	ldr	r3, [r5, #4]
	add	r1, #0x10
	cmp	r3, #0
	bne	.L1b934
.L1b942:
	mov	r3, #1
	strh	r3, [r7, #0xa]
	b	.L1b95c
.L1b948:
	ldrh	r2, [r6]
	mov	r3, r2
	cmp	r3, #0
	beq	.L1b956
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.L1b95a
.L1b956:
	ldr	r2, =0xffff
	add	r3, r1, r2
.L1b95a:
	strh	r3, [r6]
.L1b95c:
	ldr	r3, =0x3a2
	ldr	r1, =0x39e
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r7, r1
	ldrh	r1, [r3]
	mov	r0, r7
	bl	Func_801b9ec
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_801b010
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b810

.thumb_func_start Func_801b9a8  @ 0x0801b9a8
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	sub	sp, #0xc
	ldr	r2, [r0]
	cmp	r1, #0
	beq	.L1b9c0
.L1b9b8:
	sub	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, #0
	bne	.L1b9b8
.L1b9c0:
	ldrh	r3, [r2, #0xa]
	cmp	r3, #1
	beq	.L1b9ca
	cmp	r3, #6
	bne	.L1b9e2
.L1b9ca:
	ldrh	r0, [r2, #0x20]
	ldr	r3, =0x1f
	sub	r0, r3
	ldrh	r3, [r2, #0xc]
	mov	r1, #1
	str	r3, [sp, #8]
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #0
	bl	LoadOldUIIcon
.L1b9e2:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_801b9a8

.thumb_func_start Func_801b9ec  @ 0x0801b9ec
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	sub	sp, #0xc
	ldr	r2, [r0]
	cmp	r1, #0
	beq	.L1ba04
.L1b9fc:
	sub	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, #0
	bne	.L1b9fc
.L1ba04:
	ldrh	r3, [r2, #0xa]
	cmp	r3, #1
	beq	.L1ba0e
	cmp	r3, #6
	bne	.L1ba2a
.L1ba0e:
	ldrh	r0, [r2, #0x20]
	ldr	r3, =0x1f
	sub	r0, r3
	ldrh	r3, [r2, #0xc]
	mov	r1, #1
	str	r3, [sp, #8]
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #0
	bl	LoadOldUIIcon
	bl	Func_801c188
.L1ba2a:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_801b9ec

