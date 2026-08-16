	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80be0b4  @ 0x080be0b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r1, #0
	sub	sp, #0x14
	mov	r11, r1
	mov	r0, #1
	cmp	r5, #7
	bls	.Lbe0d4
	mov	r0, #2
.Lbe0d4:
	add	r2, sp, #4
	mov	r9, r2
	mov	r1, r9
	bl	Func_80b6c08
	mov	r7, r0
	mov	r0, #0
	cmp	r5, #7
	bls	.Lbe0e8
	mov	r0, #1
.Lbe0e8:
	bl	_Func_8077330
	add	r0, #8
	mov	r8, r0
	cmp	r6, #0
	beq	.Lbe102
	mov	r2, #0
	add	r3, r6, #3
	mov	r12, r6
.Lbe0fa:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.Lbe0fa
.Lbe102:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r3, #0
	add	r2, r8
	mov	r10, r3
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lbe176
	mov	r1, #0
	str	r2, [sp]
	mov	r12, r9
	mov	r5, r8
	mov	r14, r1
.Lbe11c:
	mov	r2, #1
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	neg	r2, r2
	cmp	r3, r2
	bne	.Lbe164
	mov	r4, #0
	cmp	r4, r7
	bge	.Lbe14c
	mov	r3, r12
	ldrh	r2, [r3]
	ldrb	r3, [r5, #2]
	cmp	r2, r3
	beq	.Lbe14c
	mov	r1, r5
	mov	r0, r9
.Lbe13c:
	add	r4, #1
	cmp	r4, r7
	bge	.Lbe14c
	add	r0, #2
	ldrh	r2, [r0]
	ldrb	r3, [r1, #2]
	cmp	r2, r3
	bne	.Lbe13c
.Lbe14c:
	cmp	r4, r7
	beq	.Lbe164
	cmp	r6, #0
	beq	.Lbe160
	mov	r3, r8
	mov	r1, r14
	ldrb	r2, [r1, r3]
	ldrb	r3, [r6, r2]
	add	r3, #1
	strb	r3, [r6, r2]
.Lbe160:
	mov	r1, #1
	add	r11, r1
.Lbe164:
	ldr	r1, [sp]
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r1]
	mov	r2, #4
	add	r5, #4
	add	r14, r2
	cmp	r10, r3
	bne	.Lbe11c
.Lbe176:
	mov	r0, r11
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80be0b4
