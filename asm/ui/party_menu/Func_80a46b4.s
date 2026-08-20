	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a46b4  @ 0x080a46b4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0x1ff
	mov	r6, r1
	and	r6, r3
	mov	r10, r0
	mov	r0, r6
	bl	_GetItemInfo
	mov	r7, #1
	mov	r5, r0
	mov	r0, r6
	neg	r7, r7
	bl	_Func_808e990
	cmp	r0, #0
	beq	.La46de
	mov	r0, #0
	b	.La473e
.La46de:
	ldrh	r3, [r5, #0x28]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	ldrh	r3, [r5, #0x28]
	mov	r8, r0
	cmp	r3, #0
	beq	.La473c
	ldrb	r3, [r5, #2]
	cmp	r3, #0
	beq	.La4708
	ldrb	r3, [r5, #0xc]
	cmp	r3, #3
	beq	.La470a
	mov	r0, r10
	mov	r1, r6
	bl	_CanEquipItem
	cmp	r0, #0
	beq	.La470a
.La4708:
	mov	r7, #1
.La470a:
	cmp	r7, #1
	bne	.La473c
	mov	r3, r8
	ldrb	r2, [r3, #1]
	mov	r3, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.La472c
	mov	r3, r8
	ldrb	r2, [r3, #8]
	mov	r3, #0xff
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	lsr	r7, r3, #31
	mov	r3, #2
	b	.La473a
.La472c:
	mov	r3, #0x80
	and	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r2, #31
	mov	r7, r2
	mov	r3, #0
.La473a:
	sub	r7, r3, r7
.La473c:
	mov	r0, r7
.La473e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a46b4

