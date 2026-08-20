	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Sprite_DeleteLayer  @ 0x0800b93c
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	cmp	r6, #0
	beq	.Lb99e
	cmp	r5, #0
	beq	.Lb99e
	mov	r0, r5
	bl	DeleteSpriteLayer
	ldr	r3, [r6, #0x28]
	mov	r0, #0
	cmp	r5, r3
	beq	.Lb96a
	mov	r2, r6
	add	r2, #0x28
.Lb95c:
	add	r0, #1
	cmp	r0, #3
	bhi	.Lb96a
	add	r2, #4
	ldr	r3, [r2]
	cmp	r5, r3
	bne	.Lb95c
.Lb96a:
	cmp	r0, #4
	beq	.Lb99e
	lsl	r3, r0, #2
	mov	r2, #0
	add	r3, #0x28
	str	r2, [r6, r3]
	add	r2, r0, #1
	mov	r4, #0
	cmp	r2, #3
	bhi	.Lb994
	lsl	r3, r2, #2
	add	r3, r6
	mov	r1, r3
	add	r1, #0x28
.Lb986:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lb98e
	add	r4, #1
.Lb98e:
	add	r2, #1
	cmp	r2, #3
	bls	.Lb986
.Lb994:
	cmp	r4, #0
	bne	.Lb99e
	mov	r3, r6
	add	r3, #0x27
	strb	r0, [r3]
.Lb99e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Sprite_DeleteLayer

