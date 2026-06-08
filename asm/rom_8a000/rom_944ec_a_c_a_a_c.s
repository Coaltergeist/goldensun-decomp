	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095938
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
	bl	Func_800447c
	ldr	r3, [r6]
	str	r3, [r5, #4]
	ldr	r3, [r6, #8]
	add	sp, #0xc
	str	r3, [r5, #8]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095938

.thumb_func_start Func_8095a44
	push	{r5, r6, r7, lr}
	sub	sp, #0xc
	mov	r6, r0
	bl	MapActor_GetActor
	mov	r7, r0
	cmp	r7, #0
	bne	.L95a56
	b	.L95b6e
.L95a56:
	bl	Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r0, =0x20118c
	ldr	r5, [r3]
	bl	_Func_80b0840
	mov	r0, #0xad
	bl	_Func_80f9080
	mov	r0, r6
	mov	r1, #1
	bl	Func_80925cc
	mov	r0, #0xae
	bl	_Func_80f9080
	mov	r0, r6
	mov	r1, #1
	bl	Func_80925cc
	mov	r0, #0xaf
	bl	_Func_80f9080
	mov	r1, #1
	mov	r0, r6
	bl	Func_80925cc
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r0, #0x8c
	bl	_Func_80f9080
	ldr	r3, =Func_809592c
	mov	r0, #0x28
	str	r3, [r7, #0x6c]
	bl	Func_80030f8
	mov	r0, #0x99
	bl	_Func_80f9080
	mov	r1, #0xc
	mov	r2, #0x16
	mov	r0, r6
	bl	Func_8092560
	ldr	r3, [r7, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	mov	r0, r7
	bl	_Func_800c0f4
	mov	r0, #0xa4
	bl	_Func_80f9080
	add	r5, #0x58
	mov	r7, #0x17
.L95ad8:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_8095938
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	bl	Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Func_800b684
	bl	Random
	mov	r1, #3
	bl	Func_b60_from_thumb
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r7, #1
	mov	r0, #1
	bl	Func_80030f8
	add	r5, #0x48
	cmp	r7, #0
	bge	.L95ad8
	mov	r0, #0x3c
	bl	Func_80030f8
	ldr	r5, =gState
	mov	r3, #0xfa
	lsl	r3, #1
	add	r5, r3
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r5]
	bl	Func_8092adc
	mov	r0, #0x14
	bl	Func_80030f8
	ldr	r0, [r5]
	bl	MapActor_GetActor
	mov	r1, #0x1c
	bl	_Func_800c300
	mov	r0, #0x28
	bl	Func_80030f8
	mov	r0, #0xa4
	bl	_Func_80f9080
	mov	r0, #0x64
	bl	Func_80030f8
	bl	_Func_80b0894
	bl	Func_80958e4
.L95b6e:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095a44

.thumb_func_start Func_8095b8c
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #2
	ldr	r1, =.L9f0a4
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r3, r1]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bx	lr
.func_end Func_8095b8c

