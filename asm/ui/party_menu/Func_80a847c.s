	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a847c  @ 0x080a847c
	push	{r5, r6, r7, lr}
	mov	r12, r3
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #8
	mov	r14, r3
	cmp	r0, #0
	bne	.La84c0
	lsl	r3, r1, #1
	add	r5, r3, #5
	ldrb	r3, [r2]
	mov	r7, #0
	mov	r6, #5
	mov	r4, #0
	mov	r0, #0
	cmp	r3, #0
	beq	.La84aa
	cmp	r1, #0
	bne	.La84a8
	ldr	r3, =.Laf2fc
	ldrb	r6, [r3]
	b	.La84d2
.La84a8:
	add	r4, #1
.La84aa:
	add	r0, #1
	cmp	r0, #4
	bgt	.La84d2
	ldrb	r3, [r2, r0]
	cmp	r3, #0
	beq	.La84aa
	cmp	r1, r4
	bne	.La84a8
	ldr	r3, =.Laf2fc
	ldrb	r6, [r3, r0]
	b	.La84d2
.La84c0:
	cmp	r1, #3
	bgt	.La84cc
	mov	r5, r1
	mov	r7, #5
	mov	r6, #0xd
	b	.La84d2
.La84cc:
	add	r5, r1, #4
	mov	r7, #8
	mov	r6, #0x14
.La84d2:
	mov	r1, #1
	mov	r2, r12
	mov	r3, r1
	eor	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r2, #31
	mov	r3, #0xf
	sub	r3, r2
	mov	r2, r14
	ldr	r0, [r2, #0x24]
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r1, r7
	mov	r2, r5
	mov	r3, r6
	bl	Func_80a2268
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a847c

