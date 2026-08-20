	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5e14  @ 0x080b5e14
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xaa
	lsl	r0, #1
	sub	sp, #0x30
	bl	alloc_ewram
	mov	r2, #0
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
	b	.Lb5eaa
.Lb5e30:
	bl	Func_8006488
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb5e44
	mov	r3, #1
	add	r10, r3
.Lb5e44:
	mov	r0, #2
	bl	WaitFrames
	mov	r5, sp
	ldr	r0, =0x80c
	mov	r1, r5
	bl	_DecompressString2
	mov	r0, #0
	ldrh	r3, [r5, r0]
	cmp	r3, #0
	beq	.Lb5e6c
	mov	r2, r5
.Lb5e5e:
	add	r0, #1
	cmp	r0, #4
	bgt	.Lb5e6c
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.Lb5e5e
.Lb5e6c:
	mov	r4, r0
	mov	r0, #0xe
	cmp	r0, r4
	blt	.Lb5e8c
	sub	r3, r6, r4
	mov	r1, r6
	mov	r2, r3
	add	r1, #0xe
	add	r2, #0xe
.Lb5e7e:
	ldrb	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	sub	r2, #1
	sub	r1, #1
	cmp	r0, r4
	bge	.Lb5e7e
.Lb5e8c:
	cmp	r4, #0
	ble	.Lb5ea4
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
.Lb5e96:
	ldrh	r3, [r1]
	sub	r0, #1
	strb	r3, [r2]
	add	r1, #2
	add	r2, #1
	cmp	r0, #0
	bne	.Lb5e96
.Lb5ea4:
	mov	r3, #0
	strb	r3, [r6, #0xe]
	add	r7, #1
.Lb5eaa:
	cmp	r7, #2
	bgt	.Lb5ec4
	mov	r0, r7
	add	r0, #0x80
	bl	_GetUnit
	mov	r6, r0
	bl	Func_8006408
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb5e30
.Lb5ec4:
	mov	r0, r8
	bl	free
	mov	r0, #0xa0
	lsl	r0, #1
	bl	alloc_ewram
	mov	r8, r0
	mov	r0, #1
	bl	_Func_8077330
	bl	Func_8006408
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lb5ef0
	bl	Func_8006488
	mov	r0, #2
	bl	WaitFrames
.Lb5ef0:
	mov	r0, r8
	bl	free
	mov	r0, r10
	add	sp, #0x30
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5e14

