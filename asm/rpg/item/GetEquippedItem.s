	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetEquippedItem  @ 0x080787dc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r1
	bl	GetUnit
	mov	r2, #0x80
	lsl	r2, #2
	mov	r7, r0
	mov	r6, #0
	mov	r5, #0xd8
	mov	r10, r2
	b	.L787fc
.L787f8:
	add	r5, #2
	add	r6, #1
.L787fc:
	cmp	r6, #0xe
	bgt	.L78816
	ldrh	r3, [r5, r7]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L787f8
	ldrh	r0, [r5, r7]
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	cmp	r3, r8
	bne	.L787f8
.L78816:
	cmp	r6, #0xf
	bne	.L7881e
	mov	r6, #1
	neg	r6, r6
.L7881e:
	mov	r0, r6
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GetEquippedItem

