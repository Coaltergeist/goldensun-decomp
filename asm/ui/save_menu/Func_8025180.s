	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8025180  @ 0x08025180
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r0
	mov	r0, #1
	cmp	r6, #0
	beq	.L251cc
	mov	r0, r6
	bl	_GetItemInfo
	mov	r5, r0
	ldrb	r3, [r5, #0xc]
	mov	r0, #1
	cmp	r3, #3
	beq	.L251cc
	ldrh	r3, [r5, #0x28]
	cmp	r3, #0
	beq	.L251cc
	ldrb	r3, [r5, #2]
	cmp	r3, #0
	beq	.L251b8
	mov	r0, r7
	mov	r1, r6
	bl	_CanEquipItem
	cmp	r0, #0
	bne	.L251b8
	mov	r0, #1
	b	.L251cc
.L251b8:
	ldrh	r0, [r5, #0x28]
	bl	_GetMoveInfo
	ldrb	r2, [r0, #1]
	mov	r3, #0x80
	and	r3, r2
	mov	r0, #2
	cmp	r3, #0
	beq	.L251cc
	mov	r0, #0
.L251cc:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8025180
