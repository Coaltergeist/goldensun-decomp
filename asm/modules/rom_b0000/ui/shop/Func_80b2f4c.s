	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2f4c  @ 0x080b2f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0x40
	add	r2, r6
	mov	r7, #0
	ldrsb	r7, [r2, r7]
	sub	sp, #0xc
	mov	r8, r2
	cmp	r7, #0
	bne	.Lb2fc2
	ldr	r3, [r6, #0x14]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r0
	mov	r0, #0xa0
	lsl	r0, #14
	mov	r2, r5
	bl	vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, r6
	bl	_Func_809ba5c
	ldr	r3, [r6, #0x14]
	str	r3, [r5]
	ldr	r3, [r6, #0x18]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x20]
	ldr	r3, =0x6666
	str	r3, [r6, #0x24]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.Lb2fea
.Lb2fc2:
	cmp	r7, #1
	bne	.Lb2fd6
	mov	r0, r6
	bl	_Func_809ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r3, r8
	strb	r0, [r3]
	b	.Lb2fea
.Lb2fd6:
	cmp	r7, #2
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_809ba34
	cmp	r0, #0
	bne	.Lb2fea
	mov	r0, r6
	bl	_Func_809bb34
.Lb2fea:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2f4c

