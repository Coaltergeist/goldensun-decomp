	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2009be4
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_Face
	ldr	r3, =.Lm959_5fa4
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.Lm959_1c22
	cmp	r2, #1
	bgt	.Lm959_1c10
	cmp	r2, #0
	beq	.Lm959_1c1a
	b	.Lm959_1c3a
.Lm959_1c10:
	cmp	r2, #2
	beq	.Lm959_1c2a
	cmp	r2, #3
	beq	.Lm959_1c32
	b	.Lm959_1c3a
.Lm959_1c1a:
	mov	r0, r5
	bl	OvlFunc_959_2009c4c
	b	.Lm959_1c40
.Lm959_1c22:
	mov	r0, r5
	bl	OvlFunc_959_2009ca4
	b	.Lm959_1c40
.Lm959_1c2a:
	mov	r0, r5
	bl	OvlFunc_959_2009cf0
	b	.Lm959_1c40
.Lm959_1c32:
	mov	r0, r5
	bl	OvlFunc_959_2009d60
	b	.Lm959_1c40
.Lm959_1c3a:
	mov	r0, r5
	bl	OvlFunc_959_2009ca4
.Lm959_1c40:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009be4

