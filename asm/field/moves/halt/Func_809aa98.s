	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809aa98  @ 0x0809aa98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r2, #0x40
	add	r2, r7
	sub	sp, #0xc
	mov	r8, r3
	mov	r10, r2
.L9aab0:
	mov	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	cmp	r6, #0
	bne	.L9ab06
	ldr	r3, [r7, #0x14]
	str	r3, [sp]
	ldr	r3, [r7, #0x18]
	mov	r8, sp
	str	r3, [sp, #8]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r5, #16
	mov	r3, r0
	lsl	r0, r3, #4
	asr	r5, #16
	sub	r0, r3
	mov	r2, #0xa0
	lsl	r5, #16
	lsl	r2, #14
	lsl	r0, #1
	lsr	r5, #16
	add	r0, r2
	mov	r1, r5
	mov	r2, r8
	bl	vec3_translate
	mov	r2, r8
	ldr	r3, [r2]
	str	r3, [r7, #0xc]
	ldr	r3, [r2, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	b	.L9ab66
.L9ab06:
	cmp	r6, #1
	bne	.L9ab1e
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9aab0
.L9ab1e:
	cmp	r6, #2
	bne	.L9ab70
	mov	r2, r8
	ldr	r3, [r2, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #4]
	mov	r2, r8
	ldr	r3, [r2, #0xc]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_80974d8
	bl	Random
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, r7
	strh	r3, [r7, #0x32]
	add	r2, #0x42
	mov	r3, #1
	strb	r3, [r2]
.L9ab66:
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9ab84
.L9ab70:
	cmp	r6, #3
	bne	.L9ab84
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r0, r7
	bl	Func_809bb34
.L9ab84:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809aa98
