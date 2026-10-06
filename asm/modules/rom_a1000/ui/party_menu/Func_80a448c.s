	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a448c  @ 0x080a448c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r1, #0xbc
	ldr	r7, [r3]
	lsl	r1, #1
	add	r3, r7, r1
	ldrh	r3, [r3]
	mov	r5, r0
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r8, r0
	cmp	r3, #0
	bne	.La44bc
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	strb	r3, [r5]
	mov	r3, r2
	b	.La44c6
.La44bc:
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5]
	mov	r3, #1
.La44c6:
	strb	r3, [r5, #1]
	ldr	r2, =0x21a
	mov	r1, #0xbc
	add	r3, r7, r2
	lsl	r1, #1
	ldrb	r0, [r3]
	add	r3, r7, r1
	ldrh	r1, [r3]
	bl	Func_80a46b4
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.La44e8
	mov	r3, #1
	strb	r3, [r5]
	b	.La44ea
.La44e8:
	strb	r0, [r5]
.La44ea:
	mov	r3, #0xbc
	lsl	r3, #1
	add	r6, r7, r3
	ldrh	r2, [r6]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.La4506
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5]
	ldrh	r2, [r6]
.La4506:
	ldr	r1, =0x21a
	add	r3, r7, r1
	sub	r1, #0x1b
	ldrb	r0, [r3]
	and	r1, r2
	bl	_CanEquipItem
	cmp	r0, #0
	bne	.La4520
	mov	r2, #1
	neg	r2, r2
	mov	r3, r2
	strb	r3, [r5, #1]
.La4520:
	mov	r1, #1
	strb	r1, [r5, #3]
	strb	r1, [r5, #5]
	strb	r1, [r5, #2]
	mov	r3, #0x80
	ldrh	r2, [r6]
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4540
	strb	r1, [r5, #4]
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #1]
	b	.La4548
.La4540:
	mov	r2, #1
	neg	r2, r2
	mov	r3, r2
	strb	r3, [r5, #4]
.La4548:
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4572
	mov	r2, #1
	neg	r2, r2
	mov	r1, r2
	mov	r2, #0xbc
	lsl	r2, #1
	strb	r1, [r5, #4]
	add	r3, r7, r2
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4572
	strb	r1, [r5, #3]
	strb	r1, [r5, #5]
.La4572:
	mov	r1, #0xbc
	lsl	r1, #1
	add	r3, r7, r1
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	_Func_808e990
	cmp	r0, #0
	beq	.La458a
	mov	r3, #1
	strb	r3, [r5]
.La458a:
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bhi	.La459c
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #3]
.La459c:
	mov	r3, r8
	ldrb	r2, [r3, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La45b0
	mov	r1, #1
	neg	r1, r1
	mov	r3, r1
	strb	r3, [r5, #5]
.La45b0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a448c

