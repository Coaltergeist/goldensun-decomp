	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CreateSpriteLayer  @ 0x0800bbc0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r4, #0
	str	r4, [sp]
	mov	r7, r0
	bl	_GetSpriteInfo
	ldr	r3, =iwram_3001e5c
	mov	r6, r0
	ldr	r2, [r3]
	ldrb	r3, [r6]
	mov	r5, #0
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbc38
	ldrb	r3, [r2, #4]
	mov	r1, #0
	b	.Lbbf6

	.pool_aligned

.Lbbec:
	add	r1, #1
	add	r2, #0x18
	cmp	r1, #0x3f
	bgt	.Lbbfc
	ldrb	r3, [r2, #4]
.Lbbf6:
	cmp	r3, #0
	bne	.Lbbec
	mov	r4, r2
.Lbbfc:
	cmp	r4, #0
	beq	.Lbc38
	ldr	r3, =0
	ldr	r0, [r6, #0xc]
	mov	r5, r4
	mov	r8, r3
	strh	r7, [r5]
	cmp	r0, #0
	bne	.Lbc14
	mov	r0, r7
	bl	GetCachedSpriteGFX
.Lbc14:
	ldr	r2, [r6, #0x10]
	str	r0, [r5, #8]
	str	r2, [r5, #0xc]
	ldrb	r3, [r6, #0xa]
	strb	r3, [r5, #7]
	mov	r3, #0xff
	strb	r3, [r5, #0x16]
	ldr	r3, [r2]
	str	r3, [r5, #0x10]
	mov	r3, r8
	strb	r3, [r5, #0x14]
	ldrb	r3, [r6, #4]
	strb	r3, [r5, #4]
	mov	r3, r8
	strb	r3, [r5, #5]
	b	.Lbc38

	.pool_aligned

.Lbc38:
	mov	r0, r5
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CreateSpriteLayer

