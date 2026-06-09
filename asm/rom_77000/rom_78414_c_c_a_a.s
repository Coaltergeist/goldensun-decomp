	.include "macros.inc"

.thumb_func_start Func_8078500  @ 0x08078500
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0x14
	bl	FindEmptyInventorySlot
	cmp	r0, #0xf
	beq	.L7851a
.L78516:
	mov	r0, #1
	b	.L78542
.L7851a:
	mov	r5, sp
	mov	r0, r5
	bl	Func_80796c4
	mov	r7, r5
	mov	r6, r0
	mov	r5, #0
	cmp	r5, r6
	bge	.L78540
.L7852c:
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r7, #2
	bl	FindEmptyInventorySlot
	cmp	r0, #0xf
	bne	.L78516
	add	r5, #1
	cmp	r5, r6
	blt	.L7852c
.L78540:
	mov	r0, #0
.L78542:
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078500

.thumb_func_start Func_8078550  @ 0x08078550
	push	{r5, r6, r7, lr}
	sub	sp, #0x14
	mov	r5, sp
	mov	r0, r5
	bl	Func_80796c4
	mov	r7, #0
	mov	r6, r5
	cmp	r7, r0
	bge	.L7857c
	mov	r5, r0
.L78566:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	FindEmptyInventorySlot
	sub	r0, r7, r0
	mov	r7, r0
	sub	r5, #1
	add	r6, #2
	add	r7, #0xf
	cmp	r5, #0
	bne	.L78566
.L7857c:
	mov	r0, r7
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078550

.thumb_func_start GiveItemTo  @ 0x08078588
	push	{r5, r6, lr}
	mov	r5, r1
	bl	GetUnit
	mov	r6, r0
	mov	r0, r5
	bl	GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L785ee
	mov	r3, #0xd8
	ldrh	r3, [r6, r3]
	ldr	r2, =0x1ff
	eor	r3, r5
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	beq	.L785ca
	mov	r1, r2
	mov	r2, r6
	add	r2, #0xd8
.L785b8:
	add	r0, #1
	cmp	r0, #0xe
	bgt	.L785ca
	add	r2, #2
	ldrh	r3, [r2]
	eor	r3, r5
	and	r3, r1
	cmp	r3, #0
	bne	.L785b8
.L785ca:
	cmp	r0, #0xf
	beq	.L785ee
	lsl	r3, r0, #1
	mov	r4, r3
	add	r4, #0xd8
	ldrh	r1, [r6, r4]
	lsr	r3, r1, #11
	add	r2, r3, #1
	cmp	r2, #0x1d
	bhi	.L78606
	ldr	r3, =0x7ff
	lsl	r2, #11
	and	r3, r1
	orr	r3, r2
	strh	r3, [r6, r4]
	b	.L7860a
.L785ea:
	strh	r5, [r6, r1]
	b	.L7860a
.L785ee:
	mov	r2, r6
	mov	r0, #0
	add	r2, #0xd8
	mov	r1, #0xd8
.L785f6:
	ldrh	r3, [r2]
	add	r2, #2
	cmp	r3, #0
	beq	.L785ea
	add	r0, #1
	add	r1, #2
	cmp	r0, #0xe
	ble	.L785f6
.L78606:
	mov	r0, #1
	neg	r0, r0
.L7860a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end GiveItemTo

.thumb_func_start GiveItem  @ 0x08078618
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	add	r5, sp, #4
	mov	r8, r0
	mov	r0, r5
	bl	Func_80796c4
	mov	r6, #0
	mov	r7, r0
	mov	r3, r5
	cmp	r6, r7
	bge	.L78654
.L78634:
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r1, r8
	add	r3, #2
	mov	r0, r5
	str	r3, [sp]
	bl	GiveItemTo
	ldr	r3, [sp]
	cmp	r0, #0
	blt	.L7864e
	mov	r0, r5
	b	.L78658
.L7864e:
	add	r6, #1
	cmp	r6, r7
	blt	.L78634
.L78654:
	mov	r0, #1
	neg	r0, r0
.L78658:
	add	sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GiveItem

