	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DeleteSprite  @ 0x0800bdd4
	push	{r5, r6, r7, lr}
	mov	r7, r0
	sub	sp, #4
	cmp	r7, #0
	beq	.Lbe10
	ldrb	r2, [r7, #0x1d]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lbdee
	ldrb	r0, [r7, #0x1c]
	bl	Func_8003f3c
.Lbdee:
	mov	r5, r7
	add	r5, #0x28
	mov	r6, #3
.Lbdf4:
	ldmia	r5!, {r0}
	sub	r6, #1
	bl	DeleteSpriteLayer
	cmp	r6, #0
	bge	.Lbdf4
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r7
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8500000e
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lbe10:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end DeleteSprite

