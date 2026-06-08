	.include "macros.inc"

.thumb_func_start Func_8078480
	push	{lr}
	bl	GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r2, #0
	cmp	r3, #1
	bne	.L78492
	mov	r2, #1
	b	.L784a8
.L78492:
	cmp	r3, #2
	beq	.L784a6
	cmp	r3, #3
	beq	.L784a6
	cmp	r3, #4
	beq	.L784a6
	cmp	r3, #5
	beq	.L784a6
	cmp	r3, #9
	bne	.L784a8
.L784a6:
	mov	r2, #2
.L784a8:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_8078480

.thumb_func_start GetInventoryItem
	push	{r5, lr}
	mov	r5, r1
	bl	GetUnit
	lsl	r5, #1
	add	r5, #0xd8
	ldrh	r0, [r0, r5]
	ldr	r3, =0x1ff
	and	r3, r0
	lsr	r0, #11
	add	r0, #1
	cmp	r3, #0
	bne	.L784cc
	mov	r0, #0
.L784cc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end GetInventoryItem

