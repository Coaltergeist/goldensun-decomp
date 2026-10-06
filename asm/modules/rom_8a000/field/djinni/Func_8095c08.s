	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095c08  @ 0x08095c08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
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
	mov	r6, #0
	ldrsb	r6, [r2, r6]
	mov	r9, r0
	mov	r10, r2
	cmp	r6, #0
	bne	.L95cc2
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0x18]
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	mov	r8, sp
	str	r2, [sp]
	str	r3, [sp, #8]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r1, r5, #1
	lsl	r3, r0, #1
	add	r3, r0
	add	r1, r5
	lsl	r1, #11
	lsl	r3, #11
	lsr	r3, #16
	lsr	r1, #16
	sub	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0xf0
	add	r1, r3
	lsl	r0, #15
	mov	r2, r8
	bl	vec3_translate
	mov	r1, r8
	ldr	r3, [r1]
	str	r3, [r7, #0xc]
	ldr	r3, [r1, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r1, r9
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, [r1, #0x50]
	ldr	r0, [r7]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r0, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	mov	r3, r7
	add	r3, #0x47
	strb	r6, [r3]
	strh	r6, [r7, #0x38]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L95db6
	mov	r0, #0x86
	bl	_PlaySound
	b	.L95db6
.L95cc2:
	cmp	r6, #1
	bne	.L95ce4
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	cmp	r3, #3
	bne	.L95d8e
	ldr	r1, [r7]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r7
	strb	r3, [r1, #9]
	add	r2, #0x47
	mov	r3, #4
	strb	r3, [r2]
	b	.L95d8e
.L95ce4:
	cmp	r6, #2
	bne	.L95d22
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L95db6
	ldr	r3, [r7, #4]
	str	r3, [r7, #0x14]
	ldr	r3, [r7, #8]
	ldr	r1, [r7]
	str	r3, [r7, #0x18]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r7
	add	r2, #0x47
	strb	r3, [r1, #9]
	mov	r3, #4
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x44
	strb	r0, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r3, #0x28
	strh	r3, [r7, #0x3a]
	b	.L95db6
.L95d22:
	cmp	r6, #3
	bne	.L95d8a
	mov	r1, #1
	mov	r8, r1
	mov	r3, r7
	add	r3, #0x44
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, [r7, #0x14]
	str	r3, [r7, #4]
	ldr	r3, [r7, #0x18]
	str	r3, [r7, #8]
	mov	r1, r9
	ldr	r3, [r1, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r2, #0xa0
	ldr	r3, [r1, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r1, #0x10]
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
	mov	r1, r10
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L95db6
	mov	r0, #0x91
	bl	_PlaySound
	b	.L95db6
.L95d8a:
	cmp	r6, #4
	bne	.L95da2
.L95d8e:
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L95db6
	mov	r1, r10
	ldrb	r3, [r1]
	sub	r3, #1
	strb	r3, [r1]
	b	.L95db6
.L95da2:
	cmp	r6, #5
	bne	.L95db6
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L95db6
	mov	r0, r7
	bl	Func_809bb34
.L95db6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095c08

