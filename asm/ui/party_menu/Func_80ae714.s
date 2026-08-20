	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ae714  @ 0x080ae714
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r2, #0
	sub	sp, #4
	mov	r7, r1
	mov	r6, #0
	cmp	r2, r3
	bge	.Lae760
	mov	r5, r0
.Lae734:
	mov	r3, #0
	strb	r3, [r5]
	cmp	r6, r7
	beq	.Lae752
	mov	r0, r7
	mov	r1, r6
	str	r2, [sp]
	bl	Func_80ae778
	ldr	r2, [sp]
	cmp	r0, #0
	bne	.Lae752
	mov	r3, #1
	strb	r3, [r5]
	add	r2, #1
.Lae752:
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	add	r6, #1
	add	r5, #1
	cmp	r6, r3
	blt	.Lae734
.Lae760:
	mov	r0, r2
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ae714

