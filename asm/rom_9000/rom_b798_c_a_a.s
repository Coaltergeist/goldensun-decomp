	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitSprite  @ 0x0800b7c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r2, #0x27
	add	r2, r7
	ldrb	r3, [r2]
	mov	r1, #0
	sub	sp, #8
	mov	r8, r2
	cmp	r1, r3
	bge	.Lb858
	mov	r3, r7
	add	r3, #0x28
	str	r3, [sp, #4]
	mov	r10, r1
.Lb7e2:
	ldr	r3, [sp, #4]
	ldmia	r3!, {r6}
	mov	r2, r3
	str	r2, [sp, #4]
	mov	r2, #0
	ldrsh	r0, [r6, r2]
	str	r1, [sp]
	bl	_GetSpriteInfo
	mov	r5, r0
	ldrb	r2, [r5]
	mov	r3, r2
	ldr	r1, [sp]
	cmp	r3, #0
	beq	.Lb84e
	cmp	r1, #0
	bne	.Lb824
	mov	r3, r7
	add	r3, #0x20
	strb	r2, [r3]
	ldrb	r3, [r5, #1]
	mov	r2, r7
	add	r2, #0x21
	strb	r3, [r2]
	ldrh	r3, [r5, #2]
	lsl	r3, #8
	str	r3, [r7, #0x18]
	ldrb	r3, [r5, #7]
	add	r2, #2
	strb	r3, [r2]
	ldrb	r3, [r5, #6]
	sub	r2, #1
	strb	r3, [r2]
.Lb824:
	ldr	r0, [r5, #0xc]
	cmp	r0, #0
	bne	.Lb836
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	str	r1, [sp]
	bl	GetCachedSpriteGFX
	ldr	r1, [sp]
.Lb836:
	ldrb	r3, [r5, #4]
	strb	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r0, [r6, #8]
	str	r3, [r6, #0xc]
	ldrb	r3, [r5, #0xa]
	mov	r2, r10
	strb	r3, [r6, #7]
	mov	r3, #0xff
	strb	r3, [r6, #0x16]
	str	r2, [r6, #0x10]
	strb	r2, [r6, #0x14]
.Lb84e:
	mov	r2, r8
	ldrb	r3, [r2]
	add	r1, #1
	cmp	r1, r3
	blt	.Lb7e2
.Lb858:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end InitSprite

	.section .text.after_init_sprite_layer, "ax", %progbits


.thumb_func_start Sprite_AddLayer  @ 0x0800b8ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldr	r5, [r6, #0x28]
	mov	r8, r1
	mov	r7, #0
	cmp	r5, #0
	beq	.Lb8d0
	mov	r3, r6
	add	r3, #0x28
.Lb8c2:
	add	r7, #1
	cmp	r7, #3
	bgt	.Lb8d0
	add	r3, #4
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.Lb8c2
.Lb8d0:
	cmp	r7, #4
	bne	.Lb8da
	mov	r0, #1
	neg	r0, r0
	b	.Lb932
.Lb8da:
	mov	r0, r8
	bl	CreateSpriteLayer
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.Lb932
	lsl	r3, r7, #2
	add	r3, #0x28
	mov	r0, r8
	str	r5, [r6, r3]
	bl	_GetSpriteInfo
	mov	r2, #0x27
	add	r2, r6
	ldrb	r3, [r2]
	mov	r12, r2
	cmp	r3, #0
	bne	.Lb924
	ldrb	r2, [r0]
	mov	r3, r6
	add	r3, #0x20
	strb	r2, [r3]
	ldrb	r3, [r0, #1]
	mov	r2, r6
	add	r2, #0x21
	strb	r3, [r2]
	ldrh	r3, [r0, #2]
	lsl	r3, #8
	str	r3, [r6, #0x18]
	ldrb	r3, [r0, #7]
	add	r2, #2
	strb	r3, [r2]
	mov	r1, r6
	ldrb	r3, [r0, #6]
	add	r1, #0x22
	strb	r3, [r1]
.Lb924:
	mov	r2, r12
	ldrb	r3, [r2]
	cmp	r7, r3
	bne	.Lb930
	add	r3, r7, #1
	strb	r3, [r2]
.Lb930:
	mov	r0, r5
.Lb932:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Sprite_AddLayer
