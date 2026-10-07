	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Sprite_DeleteLayerIndex  @ 0x0800b9a4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r7, r1
	cmp	r5, #0
	beq	.Lb9ee
	cmp	r7, #3
	bhi	.Lb9ee
	lsl	r3, r7, #2
	mov	r6, r3
	add	r6, #0x28
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.Lb9ee
	bl	DeleteSpriteLayer
	mov	r3, #0
	add	r2, r7, #1
	str	r3, [r5, r6]
	mov	r0, #0
	cmp	r2, #3
	bhi	.Lb9e4
	lsl	r3, r2, #2
	add	r3, r5
	mov	r1, r3
	add	r1, #0x28
.Lb9d6:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lb9de
	add	r0, #1
.Lb9de:
	add	r2, #1
	cmp	r2, #3
	bls	.Lb9d6
.Lb9e4:
	cmp	r0, #0
	bne	.Lb9ee
	mov	r3, r5
	add	r3, #0x27
	strb	r7, [r3]
.Lb9ee:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Sprite_DeleteLayerIndex

