	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CanRemoveItem  @ 0x08078980
	push	{r5, r6, r7, lr}
	mov	r5, r1
	bl	GetUnit
	lsl	r5, #1
	mov	r6, r5
	mov	r7, r0
	add	r6, #0xd8
	ldrh	r3, [r7, r6]
	ldr	r5, =0x1ff
	and	r5, r3
	mov	r0, r5
	bl	GetItemInfo
	cmp	r5, #0
	bne	.L789a6
	mov	r0, #1
	neg	r0, r0
	b	.L789d2
.L789a6:
	ldrb	r0, [r0, #3]
	mov	r3, #8
	and	r3, r0
	cmp	r3, #0
	beq	.L789b6
	mov	r0, #4
	neg	r0, r0
	b	.L789d2
.L789b6:
	ldrh	r2, [r7, r6]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L789d0
	mov	r3, #2
	and	r3, r0
	cmp	r3, #0
	beq	.L789d0
	mov	r0, #3
	neg	r0, r0
	b	.L789d2
.L789d0:
	mov	r0, #0
.L789d2:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CanRemoveItem

