	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6b40  @ 0x080b6b40
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0xb6
	mov	r6, r1
	mov	r2, #6
	mov	r1, #0
	lsl	r0, #1
	sub	sp, #0x14
	mov	r8, r1
	mov	r9, r2
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb6b68
	mov	r3, #3
	mov	r9, r3
.Lb6b68:
	mov	r3, #1
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lb6baa
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_80b6a60
	cmp	r8, r0
	bge	.Lb6baa
	mov	r2, r5
	mov	r5, r0
.Lb6b82:
	ldrh	r7, [r2]
	add	r2, #2
	mov	r0, r7
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	ble	.Lb6ba4
	cmp	r6, #0
	beq	.Lb6ba0
	strh	r7, [r6]
	add	r6, #2
.Lb6ba0:
	mov	r3, #1
	add	r8, r3
.Lb6ba4:
	sub	r5, #1
	cmp	r5, #0
	bne	.Lb6b82
.Lb6baa:
	mov	r3, #2
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.Lb6bea
	mov	r7, r9
	mov	r5, #0x80
	add	r7, #0x80
	cmp	r5, r7
	bge	.Lb6bea
.Lb6bbe:
	mov	r0, r5
	bl	_GetUnit
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6be4
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	ble	.Lb6be4
	cmp	r6, #0
	beq	.Lb6be0
	strh	r5, [r6]
	add	r6, #2
.Lb6be0:
	mov	r2, #1
	add	r8, r2
.Lb6be4:
	add	r5, #1
	cmp	r5, r7
	blt	.Lb6bbe
.Lb6bea:
	cmp	r6, #0
	beq	.Lb6bf2
	ldr	r3, =0xff
	strh	r3, [r6]
.Lb6bf2:
	mov	r0, r8
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6b40

