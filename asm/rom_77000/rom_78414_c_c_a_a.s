	.include "macros.inc"

	.section .text.after_8550, "ax", %progbits

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
