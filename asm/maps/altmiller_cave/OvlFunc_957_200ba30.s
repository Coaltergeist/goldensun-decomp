	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200ba30
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
	bne	.Lm957_3a98
	ldr	r3, [r6, #0x18]
	ldr	r2, [r6, #0x14]
	mov	r5, sp
	str	r3, [r6, #8]
	str	r3, [r5, #8]
	str	r2, [r6, #4]
	str	r2, [r5]
	bl	__Random
	mov	r1, r0
	mov	r0, #0xf0
	mov	r2, r5
	lsl	r0, #15
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x20]
	mov	r3, r6
	add	r3, #0x42
	strb	r7, [r3]
	mov	r2, r8
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lm957_3ac4
	mov	r0, #0x86
	bl	__PlaySound
	b	.Lm957_3ac4
.Lm957_3a98:
	cmp	r7, #1
	bne	.Lm957_3ab0
	mov	r0, r6
	bl	__Func_809ba34
	cmp	r0, #0
	bne	.Lm957_3ac4
	mov	r2, r8
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	b	.Lm957_3ac4
.Lm957_3ab0:
	cmp	r7, #2
	bne	.Lm957_3ac4
	mov	r0, r6
	bl	__Func_809ba34
	cmp	r0, #0
	bne	.Lm957_3ac4
	mov	r0, r6
	bl	__Func_809bb34
.Lm957_3ac4:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200ba30

