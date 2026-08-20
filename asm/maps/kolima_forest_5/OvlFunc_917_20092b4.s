	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_20092b4
	push	{r5, lr}
	ldr	r5, =.Lm917_1dd4
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm917_12cc
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x14
	bl	__Func_8091254
	b	.Lm917_12dc
.Lm917_12cc:
	cmp	r3, #0x14
	bne	.Lm917_12dc
	mov	r0, #1
	bl	OvlFunc_917_20098b8
	mov	r0, #8
	bl	__Func_8091254
.Lm917_12dc:
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x1e
	bne	.Lm917_12ea
	mov	r3, #0
	str	r3, [r5]
.Lm917_12ea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20092b4

