	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b11c  @ 0x0809b11c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r1, #0x40
	add	r1, r7
	ldr	r2, [r3, #0x10]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	sub	sp, #0xc
	mov	r10, r1
	mov	r8, r3
	cmp	r3, #0
	bne	.L9b1c2
	ldr	r3, [r2, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r2, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	ldr	r2, [r6]
	str	r2, [r7, #4]
	mov	r1, #0x80
	ldr	r3, [r6, #8]
	lsl	r1, #12
	add	r3, r1
	str	r3, [r7, #8]
	str	r3, [r7, #0x18]
	str	r2, [r7, #0x14]
	str	r3, [r6, #8]
	str	r2, [r6]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r5, #13
	lsl	r0, #13
	lsr	r0, #16
	lsr	r5, #16
	mov	r2, #0xc0
	sub	r5, r0
	lsl	r2, #8
	add	r5, r2
	mov	r0, #0xf0
	mov	r1, r5
	mov	r2, r6
	lsl	r0, #15
	bl	vec3_translate
	ldr	r3, [r6]
	str	r3, [r7, #0xc]
	ldr	r3, [r6, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L9b1f2
	mov	r0, #0xf6
	bl	_PlaySound
	b	.L9b1f2
.L9b1c2:
	mov	r3, r8
	cmp	r3, #1
	bne	.L9b1dc
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9b1f2
	mov	r1, r10
	ldrb	r3, [r1]
	sub	r3, #1
	strb	r3, [r1]
	b	.L9b1f2
.L9b1dc:
	mov	r2, r8
	cmp	r2, #2
	bne	.L9b1f2
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9b1f2
	mov	r0, r7
	bl	Func_809bb34
.L9b1f2:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809b11c
