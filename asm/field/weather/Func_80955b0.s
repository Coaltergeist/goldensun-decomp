	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80955b0  @ 0x080955b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xb7
	lsl	r0, #1
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_GetFlag
	cmp	r0, #0
	beq	.L955e2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #2
	add	r0, r8
	mov	r2, #0
	add	r0, #0x30
	mov	r10, r2
	bl	_SetFlag
	b	.L955ec
.L955e2:
	mov	r0, r5
	mov	r1, r8
	bl	_Func_807a0f4
	mov	r10, r0
.L955ec:
	mov	r3, r10
	cmp	r3, #0
	blt	.L9566e
	bl	CutsceneStart
	bl	Func_808c44c
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	beq	.L9565c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L95614
	bl	Func_808b8e8
.L95614:
	cmp	r5, #0
	bne	.L95620
	mov	r0, r6
	bl	GetVenusDjinni
	b	.L95642
.L95620:
	cmp	r5, #1
	bne	.L9562c
	mov	r0, r6
	bl	GetMercuryDjinni
	b	.L95642
.L9562c:
	cmp	r5, #2
	bne	.L95638
	mov	r0, r6
	bl	GetMarsDjinni
	b	.L95642
.L95638:
	cmp	r5, #3
	bne	.L95642
	mov	r0, r6
	bl	GetJupiterDjinni
.L95642:
	lsl	r3, r6, #2
	add	r3, #0x14
	mov	r2, #0
	str	r2, [r7, r3]
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L9565c
	bl	Func_808b98c
.L9565c:
	mov	r0, r10
	mov	r1, r5
	mov	r2, r8
	bl	_Func_8021228
	bl	Func_808c4c0
	bl	CutsceneEnd
.L9566e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80955b0

