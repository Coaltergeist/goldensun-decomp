	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b1470  @ 0x080b1470
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r10, r0
	mov	r0, r5
	sub	sp, #4
	mov	r9, r2
	bl	_GetUnit
	mov	r1, r10
	mov	r8, r0
	mov	r6, #8
	mov	r7, #8
	cmp	r1, #0
	beq	.Lb1522
	mov	r0, r10
	bl	_Func_8016478
	mov	r0, r5
	mov	r1, r9
	bl	_CheckItem
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lb14ca
	lsl	r3, r0, #1
	add	r3, #0xd8
	mov	r1, r8
	ldrh	r0, [r1, r3]
	lsr	r0, #11
	add	r0, #1
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0xc90
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.Lb14d6
.Lb14ca:
	ldr	r0, =0xc8f
	mov	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.Lb14d6:
	mov	r3, #0xd8
	mov	r2, r8
	ldrh	r3, [r2, r3]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb1522
	mov	r2, #0
.Lb14e4:
	mov	r3, r2
	add	r3, #0xd8
	mov	r1, r8
	ldrh	r0, [r1, r3]
	mov	r2, r10
	mov	r3, r6
	mov	r1, #0x1b
	str	r7, [sp]
	bl	_Func_801eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
	add	r6, #0x10
	cmp	r5, #4
	bne	.Lb1506
	mov	r6, #8
	add	r7, #0x10
.Lb1506:
	cmp	r5, #9
	bne	.Lb150e
	mov	r6, #8
	add	r7, #0x10
.Lb150e:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.Lb1522
	lsl	r3, r5, #1
	mov	r2, r3
	mov	r1, r8
	add	r3, #0xd8
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lb14e4
.Lb1522:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1470

