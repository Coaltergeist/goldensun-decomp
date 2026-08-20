	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809641c  @ 0x0809641c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r2, #0x40
	add	r2, r7
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	mov	r5, r0
	mov	r8, r2
	ldrb	r3, [r2]
	mov	r10, r1
	cmp	r1, #0
	bne	.L964d0
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	bl	Random
	ldr	r3, [r5, #0xc]
	lsl	r2, r0, #2
	add	r2, r0
	add	r3, r2
	mov	r2, #0xf0
	lsl	r2, #12
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r5, #1
	add	r5, r3
	bl	Random
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	ldr	r2, [r6]
	str	r2, [r7, #0xc]
	ldr	r1, =0xff9c0000
	ldr	r3, [r6, #8]
	mov	r5, #0xc0
	str	r3, [r7, #0x10]
	lsl	r5, #10
	add	r3, r1
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	str	r5, [r7, #0x24]
	bl	Random
	lsl	r3, r0, #1
	add	r3, r0
	add	r3, r5
	str	r3, [r7, #0x20]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	mov	r3, r7
	add	r3, #0x42
	mov	r2, r10
	strb	r2, [r3]
	mov	r2, r7
	mov	r3, #1
	add	r2, #0x41
	strb	r3, [r2]
	mov	r1, r8
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	b	.L9655a
.L964d0:
	sub	r3, #1
	mov	r2, #0x80
	lsl	r3, #24
	lsl	r2, #17
	cmp	r3, r2
	bhi	.L9654e
	mov	r0, r7
	bl	Func_809ba34
	mov	r6, r0
	cmp	r6, #0
	bne	.L9655a
	ldr	r3, [r7, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #8]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r0
	mov	r0, #0xc0
	mov	r2, r5
	lsl	r0, #12
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, r7
	add	r3, #0x41
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x1c]
	str	r6, [r7, #0x24]
	bl	Random
	ldr	r3, =0x23333
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #8
	str	r0, [r7, #0x20]
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	mov	r0, #0x8f
	bl	_PlaySound
	mov	r1, r8
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1]
	cmp	r3, #1
	bne	.L96542
	sub	r3, r2, #1
	strb	r3, [r1]
	b	.L96548
.L96542:
	add	r3, r2, #1
	mov	r2, r8
	strb	r3, [r2]
.L96548:
	mov	r3, #6
	strh	r3, [r7, #0x3a]
	b	.L9655a
.L9654e:
	mov	r3, r10
	cmp	r3, #3
	bne	.L9655a
	mov	r0, r7
	bl	Func_809bb34
.L9655a:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809641c

