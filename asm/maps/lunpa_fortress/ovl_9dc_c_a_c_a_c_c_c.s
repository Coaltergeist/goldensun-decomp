	.include "macros.inc"

.thumb_func_start OvlFunc_959_200981c
	push	{r5, r6, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.Lm959_1836
	ldr	r2, =0xfffff
	add	r3, r2
.Lm959_1836:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.Lm959_1842
	ldr	r3, =0xfffff
	add	r0, r3
.Lm959_1842:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.Lm959_184e
	ldr	r3, =0xfffff
	add	r2, r3
.Lm959_184e:
	ldr	r0, [r1, #8]
	asr	r3, r2, #20
	cmp	r0, #0
	bge	.Lm959_185a
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_185a:
	sub	r3, r6, r3
	add	r3, #6
	asr	r0, #20
	cmp	r3, #0xc
	bhi	.Lm959_1874
	sub	r3, r4, #1
	cmp	r3, r0
	bge	.Lm959_1874
	add	r3, r4, #1
	cmp	r3, r0
	ble	.Lm959_1874
	mov	r0, #1
	b	.Lm959_1876
.Lm959_1874:
	mov	r0, #0
.Lm959_1876:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_200981c

.thumb_func_start OvlFunc_959_2009880
	push	{r5, r6, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.Lm959_189a
	ldr	r2, =0xfffff
	add	r3, r2
.Lm959_189a:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.Lm959_18a6
	ldr	r3, =0xfffff
	add	r0, r3
.Lm959_18a6:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.Lm959_18b2
	ldr	r3, =0xfffff
	add	r2, r3
.Lm959_18b2:
	ldr	r0, [r1, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.Lm959_18be
	ldr	r3, =0xfffff
	add	r0, r3
.Lm959_18be:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r3, #6
	mov	r0, #0
	cmp	r3, #0xc
	bhi	.Lm959_18da
	sub	r3, r6, #2
	cmp	r3, r2
	bge	.Lm959_18d8
	add	r3, r6, #2
	mov	r0, #1
	cmp	r3, r2
	bgt	.Lm959_18da
.Lm959_18d8:
	mov	r0, #0
.Lm959_18da:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009880

