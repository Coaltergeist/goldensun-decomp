.include "macros.inc"
.include "gba.inc"
.thumb_func_start Actor_SetAnimAndSpeed  @ 0x0800c388
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r1
	mov	r10, r2
	cmp	r5, #0
	beq	.Lc3e0
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc3ae
	cmp	r2, #2
	beq	.Lc3c0
	b	.Lc3e0
.Lc3ae:
	mov	r1, r8
	ldr	r0, [r5, #0x50]
	bl	Sprite_SetAnim
	ldr	r0, [r5, #0x50]
	mov	r1, r10
	bl	Sprite_SetAnimSpeed
	b	.Lc3e0
.Lc3c0:
	ldr	r6, [r5, #0x50]
	mov	r7, #3
.Lc3c4:
	ldmia	r6!, {r5}
	cmp	r5, #0
	beq	.Lc3da
	mov	r1, r8
	mov	r0, r5
	bl	Sprite_SetAnim
	mov	r0, r5
	mov	r1, r10
	bl	Sprite_SetAnimSpeed
.Lc3da:
	sub	r7, #1
	cmp	r7, #0
	bge	.Lc3c4
.Lc3e0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Actor_SetAnimAndSpeed
