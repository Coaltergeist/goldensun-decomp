	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095938  @ 0x08095938
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r1, #0xfa
	mov	r5, r0
	lsl	r1, #1
	add	r3, r1
	mov	r7, r5
	ldr	r0, [r3]
	add	r7, #0x40
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r2, #0
	ldrsb	r2, [r7, r2]
	cmp	r2, #0
	bne	.L95976
	ldrh	r3, [r5, #0x3c]
	add	r3, #1
	strh	r3, [r5, #0x3c]
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x3c
	bne	.L95a12
	strh	r2, [r5, #0x38]
.L9596e:
	ldrb	r3, [r7]
	add	r3, #1
	strb	r3, [r7]
	b	.L95a12
.L95976:
	cmp	r2, #1
	bne	.L9598e
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x28
	bne	.L95a12
	mov	r3, #0
	strh	r3, [r5, #0x38]
	b	.L9596e
.L9598e:
	cmp	r2, #2
	bne	.L959ea
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	ldr	r3, [r0, #8]
	mov	r6, sp
	str	r3, [r6]
	mov	r1, #0xa0
	ldr	r3, [r0, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	ldr	r3, [r6]
	ldr	r2, [r5, #0x14]
	sub	r3, r2
	cmp	r3, #0
	bge	.L959be
	add	r3, #7
.L959be:
	asr	r3, #3
	add	r3, r2, r3
	str	r3, [r5, #0x14]
	ldr	r2, [r5, #0x18]
	ldr	r3, [r6, #8]
	sub	r3, r2
	cmp	r3, #0
	bge	.L959d0
	add	r3, #7
.L959d0:
	asr	r3, #3
	add	r3, r2, r3
	str	r3, [r5, #0x18]
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x28
	bne	.L95a14
	mov	r3, #0
	strh	r3, [r5, #0x38]
	ldrb	r3, [r7]
	add	r3, #1
	strb	r3, [r7]
	b	.L95a14
.L959ea:
	cmp	r2, #3
	bne	.L95a08
	ldrh	r3, [r5, #0x3c]
	sub	r3, #1
	strh	r3, [r5, #0x3c]
	ldrh	r3, [r5, #0x3e]
	add	r3, #1
	strh	r3, [r5, #0x3e]
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x3c
	bne	.L95a12
	mov	r3, #0
	strh	r3, [r5, #0x38]
	b	.L9596e
.L95a08:
	cmp	r2, #4
	bne	.L95a12
	mov	r0, r5
	bl	Func_809bb34
.L95a12:
	mov	r6, sp
.L95a14:
	ldr	r3, [r5, #0x14]
	str	r3, [r6]
	ldr	r3, [r5, #0x18]
	str	r3, [r6, #8]
	mov	r2, #0x3c
	ldrsh	r0, [r5, r2]
	mov	r3, #0x3e
	ldrsh	r1, [r5, r3]
	lsl	r0, #16
	lsl	r1, #11
	mov	r2, r6
	bl	vec3_translate
	ldr	r3, [r6]
	str	r3, [r5, #4]
	ldr	r3, [r6, #8]
	add	sp, #0xc
	str	r3, [r5, #8]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095938
