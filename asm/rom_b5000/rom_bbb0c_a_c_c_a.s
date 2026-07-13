	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf250  @ 0x080bf250
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_GetUnit
	mov	r2, #0x99
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf2a4
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf282
	ldr	r2, =0x133
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf2a6
.Lbf282:
	ldr	r3, =0x133
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf2a4
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x1e
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf2a4
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf2a6
.Lbf2a4:
	mov	r0, #0
.Lbf2a6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf250

.thumb_func_start Func_80bf2b4  @ 0x080bf2b4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_GetUnit
	mov	r2, #0x9a
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf308
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf2e6
	ldr	r2, =0x135
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf30a
.Lbf2e6:
	ldr	r3, =0x135
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf308
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x14
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf308
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf30a
.Lbf308:
	mov	r0, #0
.Lbf30a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf2b4

.thumb_func_start Func_80bf318  @ 0x080bf318
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_GetUnit
	mov	r2, #0x9b
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf36c
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf34a
	ldr	r2, =0x137
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf36e
.Lbf34a:
	ldr	r3, =0x137
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf36c
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x14
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf36c
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf36e
.Lbf36c:
	mov	r0, #0
.Lbf36e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf318

.thumb_func_start Func_80bf37c  @ 0x080bf37c
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	mov	r3, #0x9c
	lsl	r3, #1
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf3b4
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf3b6
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x1e
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf3b4
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf3b6
.Lbf3b4:
	mov	r0, #0
.Lbf3b6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf37c

.thumb_func_start Func_80bf3bc  @ 0x080bf3bc
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	ldr	r3, =0x139
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf3f2
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf3f4
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x3c
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf3f2
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf3f4
.Lbf3f2:
	mov	r0, #0
.Lbf3f4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf3bc

.thumb_func_start Func_80bf400  @ 0x080bf400
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	mov	r3, #0x9d
	lsl	r3, #1
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf438
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf43a
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x46
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf438
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf43a
.Lbf438:
	mov	r0, #0
.Lbf43a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf400

.thumb_func_start Func_80bf440  @ 0x080bf440
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	ldr	r3, =0x13b
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf476
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf478
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x28
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf476
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf478
.Lbf476:
	mov	r0, #0
.Lbf478:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf440

.thumb_func_start Func_80bf484  @ 0x080bf484
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	mov	r3, #0x9e
	lsl	r3, #1
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf4bc
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf4be
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x32
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf4bc
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf4be
.Lbf4bc:
	mov	r0, #0
.Lbf4be:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf484

.thumb_func_start Func_80bf4c4  @ 0x080bf4c4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	ldr	r3, =0x13d
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf516
	cmp	r3, #7
	bls	.Lbf4e2
	add	r3, #0xf8
	strb	r3, [r5]
	mov	r2, r3
.Lbf4e2:
	mov	r3, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbf4f2
	mov	r3, r2
	add	r3, #0xff
	strb	r3, [r5]
	mov	r2, r3
.Lbf4f2:
	lsl	r3, r2, #24
	lsr	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf518
	cmp	r3, #7
	bhi	.Lbf516
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x1e
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf516
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf518
.Lbf516:
	mov	r0, #0
.Lbf518:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf4c4

.thumb_func_start Func_80bf524  @ 0x080bf524
	push	{lr}
	bl	_GetUnit
	mov	r3, #0x9f
	lsl	r3, #1
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf544
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf546
.Lbf544:
	mov	r0, #0
.Lbf546:
	pop	{r1}
	bx	r1
.func_end Func_80bf524

	.section .text.after, "ax", %progbits
.thumb_func_start Func_80bf574  @ 0x080bf574
	push	{lr}
	bl	_GetUnit
	mov	r3, #0xa3
	lsl	r3, #1
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf59e
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	lsr	r3, #24
	cmp	r3, #0
	bne	.Lbf59e
	ldr	r1, =0x147
	add	r2, r0, r1
	strb	r3, [r2]
	mov	r0, #1
	b	.Lbf5a0
.Lbf59e:
	mov	r0, #0
.Lbf5a0:
	pop	{r1}
	bx	r1
.func_end Func_80bf574

.thumb_func_start Func_80bf5a8  @ 0x080bf5a8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #4
	bl	_Func_8077330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	mov	r7, r3
	add	r3, r1
	ldr	r3, [r3]
	mov	r2, #0
	add	r7, #8
	mov	r8, r2
	cmp	r2, r3
	bge	.Lbf600
	mov	r5, r7
.Lbf5ce:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	ble	.Lbf5ee
	ldrb	r0, [r5, #2]
	str	r2, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r2, [sp]
	cmp	r3, #0
	beq	.Lbf5ee
	ldrb	r3, [r5, #3]
	sub	r3, #1
	strb	r3, [r5, #3]
.Lbf5ee:
	mov	r1, #0x80
	mov	r3, #1
	lsl	r1, #1
	add	r8, r3
	add	r3, r7, r1
	ldr	r3, [r3]
	add	r5, #4
	cmp	r8, r3
	blt	.Lbf5ce
.Lbf600:
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #1
	mov	r8, r3
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r8, r3
	bge	.Lbf64c
	mov	r6, r7
.Lbf612:
	mov	r3, #3
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bne	.Lbf63a
	ldrb	r5, [r6, #2]
	ldrb	r1, [r6]
	ldrb	r2, [r6, #1]
	mov	r0, r5
	bl	_SetDjinni
	ldrb	r2, [r6, #1]
	ldrb	r1, [r6]
	mov	r0, r5
	bl	_Func_807a3a8
	mov	r0, r5
	bl	_CalcStats
	mov	r2, #1
	b	.Lbf640
.Lbf63a:
	mov	r3, #1
	add	r6, #4
	add	r8, r3
.Lbf640:
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r8, r3
	blt	.Lbf612
.Lbf64c:
	mov	r0, r2
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf5a8
