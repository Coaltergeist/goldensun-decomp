	.include "macros.inc"
	.include "gba.inc"

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
	ldr	r5, =GFX_MenuArrowCursor_R
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
	ldr	r0, =GFX_MenuArrowCursor_L
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

