	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b874c  @ 0x080b874c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	bne	.Lb8766
	mov	r0, #1
	neg	r0, r0
	b	.Lb87f6
.Lb8766:
	mov	r0, r7
	bl	Func_80b8f08
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	strh	r0, [r7, #0xa]
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8780
	mov	r1, #0x80
	lsl	r1, #6
.Lb8780:
	mov	r3, #0x3c
	str	r1, [r2]
	str	r3, [r2, #4]
	bl	_Func_80198dc
	mov	r2, #6
	ldrsh	r3, [r7, r2]
	cmp	r3, #2
	beq	.Lb87ca
	cmp	r3, #2
	bgt	.Lb87a0
	cmp	r3, #0
	beq	.Lb87d8
	cmp	r3, #1
	beq	.Lb87ea
	b	.Lb87d8
.Lb87a0:
	cmp	r3, #3
	beq	.Lb87bc
	cmp	r3, #0x63
	bne	.Lb87d8
	ldr	r0, =0x843
	bl	_Func_80175a0
	mov	r0, r7
	bl	Func_80b8824
	cmp	r0, #0
	beq	.Lb87f0
	mov	r0, #1
	b	.Lb87f6
.Lb87bc:
	mov	r0, #0x2d
	bl	WaitFrames
	mov	r0, r7
	bl	Func_80b8888
	b	.Lb87f0
.Lb87ca:
	mov	r0, #0x2d
	bl	WaitFrames
	mov	r0, r7
	bl	Func_80b8c1c
	b	.Lb87f0
.Lb87d8:
	ldr	r3, =iwram_3001f00
	ldr	r6, [r3]
	mov	r5, #0
	str	r5, [r6, #0x14]
	mov	r0, r7
	bl	Func_80b8c1c
	str	r5, [r6, #0x14]
	b	.Lb87f0
.Lb87ea:
	mov	r0, r7
	bl	Func_80b88d0
.Lb87f0:
	bl	_Func_8016758
	mov	r0, #0
.Lb87f6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b874c
