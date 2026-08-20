	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8096048  @ 0x08096048
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r3, #0x40
	add	r3, r7
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r10, r3
	mov	r8, r2
	cmp	r2, #0
	bne	.L960fa
	ldr	r3, [r0, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #8]
	bl	Random
	lsl	r5, r0, #2
	add	r5, r0
	mov	r3, #0xa0
	lsl	r3, #12
	lsl	r5, #1
	add	r5, r3
	bl	Random
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	mov	r0, r6
	bl	Func_80974d8
	ldr	r2, [r6]
	str	r2, [r7, #0x14]
	ldr	r3, [r6, #8]
	mov	r0, #0xf0
	mov	r1, #0xc0
	str	r3, [r7, #0x18]
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	lsl	r0, #15
	str	r2, [r6]
	lsl	r1, #8
	mov	r2, r6
	str	r3, [r6, #8]
	bl	vec3_translate
	ldr	r3, [r6]
	str	r3, [r7, #0xc]
	ldr	r3, [r6, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x24]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	mov	r2, r8
	strb	r2, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9612a
	mov	r0, #0x90
	bl	_PlaySound
	b	.L9612a
.L960fa:
	mov	r3, r8
	cmp	r3, #1
	bne	.L96114
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9612a
	mov	r2, r10
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	b	.L9612a
.L96114:
	mov	r3, r8
	cmp	r3, #2
	bne	.L9612a
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9612a
	mov	r0, r7
	bl	Func_809bb34
.L9612a:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8096048

