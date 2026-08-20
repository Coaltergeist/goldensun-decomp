	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7994  @ 0x080b7994
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r3, #0x1f
	ldrsb	r3, [r5, r3]
	mov	r2, #0
	mov	r8, r2
	ldrb	r2, [r5, #0x1f]
	cmp	r3, #0
	blt	.Lb79ae
	sub	r3, r2, #1
	strb	r3, [r5, #0x1f]
.Lb79ae:
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	bne	.Lb79c0
	mov	r2, #0x1c
	ldrsh	r3, [r5, r2]
	ldrh	r1, [r5, #0x1c]
	cmp	r3, #0
	bne	.Lb79da
	b	.Lb79d2
.Lb79c0:
	mov	r2, #0x1c
	ldrsh	r3, [r5, r2]
	ldrb	r2, [r5, #0x1e]
	asr	r3, r2
	mov	r2, #1
	and	r3, r2
	ldrh	r1, [r5, #0x1c]
	cmp	r3, #0
	beq	.Lb79da
.Lb79d2:
	mov	r3, #0x1f
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	bne	.Lb7a9c
.Lb79da:
	lsl	r3, r1, #16
	mov	r6, #1
	asr	r3, #16
	neg	r6, r6
	ldr	r0, [r5]
	cmp	r3, #0
	beq	.Lb7a18
	ldrb	r2, [r5, #0x1e]
	mov	r12, r3
	add	r6, r2, #1
	mov	r1, #1
	b	.Lb79f4
.Lb79f2:
	add	r6, #1
.Lb79f4:
	cmp	r6, #0xd
	ble	.Lb79fa
	mov	r6, #0
.Lb79fa:
	mov	r3, r12
	asr	r3, r6
	and	r3, r1
	cmp	r3, #0
	beq	.Lb79f2
	cmp	r2, r6
	bne	.Lb7a0c
	cmp	r4, #0
	bne	.Lb7a12
.Lb7a0c:
	mov	r3, #1
	strb	r6, [r5, #0x1e]
	mov	r8, r3
.Lb7a12:
	mov	r3, #0x50
	strb	r3, [r5, #0x1f]
	b	.Lb7a1c
.Lb7a18:
	mov	r2, #1
	mov	r8, r2
.Lb7a1c:
	mov	r1, #0
	bl	Func_80b7f70
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb7a9c
	cmp	r6, #0
	blt	.Lb7a42
	mov	r3, r7
	add	r3, #0x20
	ldrb	r3, [r3]
	cmp	r3, #0x20
	bne	.Lb7a3e
	mov	r3, #0xaa
	lsl	r3, #1
	add	r6, r3
	b	.Lb7a42
.Lb7a3e:
	ldr	r2, =0x163
	add	r6, r2
.Lb7a42:
	ldr	r1, [r5, #0x20]
	cmp	r1, #0
	beq	.Lb7a58
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb7a58
	mov	r0, r7
	bl	_Sprite_DeleteLayer
	mov	r3, #0
	str	r3, [r5, #0x20]
.Lb7a58:
	cmp	r6, #0
	blt	.Lb7a88
	mov	r2, r8
	cmp	r2, #0
	beq	.Lb7a88
	mov	r0, r7
	mov	r1, r6
	bl	_Sprite_AddLayer
	mov	r3, #1
	neg	r3, r3
	str	r0, [r5, #0x20]
	cmp	r0, r3
	bne	.Lb7a78
	mov	r3, #0
	str	r3, [r5, #0x20]
.Lb7a78:
	ldr	r0, [r5, #0x20]
	cmp	r0, #0
	beq	.Lb7a88
	mov	r3, #3
	strb	r3, [r0, #6]
	mov	r1, #0
	bl	_SpriteLayer_SetAnim
.Lb7a88:
	mov	r2, r7
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
	cmp	r6, #0
	blt	.Lb7a98
	strh	r6, [r5, #8]
	b	.Lb7a9c
.Lb7a98:
	mov	r3, #0
	strh	r3, [r5, #8]
.Lb7a9c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b7994

