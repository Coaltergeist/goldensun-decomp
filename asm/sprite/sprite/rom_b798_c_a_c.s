	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Sprite_SetAnim  @ 0x0800ba30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r2, #0x24
	mov	r6, r1
	mov	r3, #0x7f
	add	r2, r7
	mov	r4, #0x80
	and	r4, r6
	and	r6, r3
	ldrb	r3, [r2]
	sub	sp, #8
	mov	r10, r2
	cmp	r3, r6
	beq	.Lbaba
	mov	r3, #0x27
	add	r3, r7
	mov	r1, #0
	mov	r8, r3
	b	.Lbaae
.Lba5c:
	lsl	r3, r1, #2
	add	r3, #0x28
	ldr	r5, [r7, r3]
	cmp	r5, #0
	beq	.Lbaac
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	beq	.Lbaac
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #5]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r6, r3
	bge	.Lbaac
	ldr	r2, [r5, #0xc]
	lsl	r3, r6, #2
	ldr	r2, [r3, r2]
	ldrb	r3, [r0, #4]
	strb	r3, [r5, #4]
	mov	r3, #0x10
	str	r2, [r5, #0x10]
	strb	r3, [r5, #0x15]
	cmp	r4, #0
	bne	.Lba9a
	strb	r4, [r5, #0x14]
	strh	r4, [r5, #2]
.Lba9a:
	cmp	r1, #0
	bne	.Lbaac
	ldrb	r3, [r0, #7]
	mov	r2, r7
	add	r2, #0x23
	strb	r3, [r2]
	ldrb	r3, [r0, #6]
	sub	r2, #1
	strb	r3, [r2]
.Lbaac:
	add	r1, #1
.Lbaae:
	mov	r2, r8
	ldrb	r3, [r2]
	cmp	r1, r3
	blt	.Lba5c
	mov	r3, r10
	strb	r6, [r3]
.Lbaba:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Sprite_SetAnim

