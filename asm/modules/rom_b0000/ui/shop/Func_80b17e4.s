	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b17e4  @ 0x080b17e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r7, r0
	mov	r0, r8
	mov	r5, r2
	bl	_GetItemInfo
	mov	r6, r0
	mov	r3, #0
	ldrb	r1, [r6, #2]
	mov	r0, r7
	mov	r10, r3
	bl	_GetEquippedItem
	mov	r9, r0
	mov	r0, #0x65
	bl	_PlaySound
	cmp	r10, r5
	bge	.Lb183a
.Lb1814:
	mov	r1, r8
	mov	r0, r7
	bl	_GiveItemTo
	mov	r10, r0
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	neg	r0, r0
	bl	_AddCoins
	sub	r5, #1
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	_AddCoinsSpent
	bl	Func_80b10cc
	cmp	r5, #0
	bne	.Lb1814
.Lb183a:
	ldr	r0, =0xca1
	bl	Func_80b0574
	mov	r0, r7
	mov	r1, r10
	bl	Func_80b1868
	cmp	r0, #0
	beq	.Lb1854
	mov	r0, r7
	mov	r1, r9
	bl	Func_80b196c
.Lb1854:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b17e4

