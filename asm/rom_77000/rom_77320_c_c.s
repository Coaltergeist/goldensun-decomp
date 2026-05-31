	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80782a0
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #0x34
	ldrsh	r3, [r5, r2]
	mov	r0, r3
	cmp	r1, r3
	bgt	.L782b6
	mov	r0, #0
	cmp	r1, #0
	blt	.L782b6
	mov	r0, r1
.L782b6:
	strh	r0, [r5, #0x38]
	lsl	r0, #16
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	asr	r0, #2
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L782d4
	mov	r3, #0
	cmp	r0, #0
	blt	.L782d4
	mov	r3, r0
.L782d4:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L782e8
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L782e8
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L782e8:
	mov	r3, #0x3a
	ldrsh	r0, [r5, r3]
	mov	r2, #0x36
	ldrsh	r1, [r5, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L78306
	mov	r3, #0
	cmp	r0, #0
	blt	.L78306
	mov	r3, r0
.L78306:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L7831a
	mov	r2, #0x3a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L7831a
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L7831a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80782a0

.thumb_func_start Func_8078320
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #0x36
	ldrsh	r3, [r5, r2]
	mov	r2, r3
	cmp	r1, r3
	bgt	.L78336
	mov	r2, #0
	cmp	r1, #0
	blt	.L78336
	mov	r2, r1
.L78336:
	strh	r2, [r5, #0x3a]
	mov	r3, #0x38
	ldrsh	r0, [r5, r3]
	lsl	r0, #14
	mov	r2, #0x34
	ldrsh	r1, [r5, r2]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L78356
	mov	r3, #0
	cmp	r0, #0
	blt	.L78356
	mov	r3, r0
.L78356:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L7836a
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L7836a
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L7836a:
	mov	r3, #0x3a
	ldrsh	r0, [r5, r3]
	mov	r2, #0x36
	ldrsh	r1, [r5, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L78388
	mov	r3, #0
	cmp	r0, #0
	blt	.L78388
	mov	r3, r0
.L78388:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L7839c
	mov	r2, #0x3a
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L7839c
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L7839c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8078320

.thumb_func_start Func_80783a4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r0
	bl	Func_8077394
	mov	r6, r0
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r1, #0x34
	ldrsh	r2, [r6, r1]
	add	r3, r5
	mov	r1, r2
	cmp	r3, r2
	bgt	.L783c8
	mov	r1, #0
	cmp	r3, #0
	blt	.L783c8
	mov	r1, r3
.L783c8:
	mov	r0, r7
	strh	r1, [r6, #0x38]
	bl	Func_807822c
	mov	r2, #0x38
	ldrsh	r0, [r6, r2]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80783a4

.thumb_func_start Func_80783dc
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r0
	bl	Func_8077394
	mov	r6, r0
	mov	r1, #0x3a
	ldrsh	r3, [r6, r1]
	mov	r1, #0x36
	ldrsh	r2, [r6, r1]
	add	r3, r5
	mov	r1, r2
	cmp	r3, r2
	bgt	.L78400
	mov	r1, #0
	cmp	r3, #0
	blt	.L78400
	mov	r1, r3
.L78400:
	mov	r0, r7
	strh	r1, [r6, #0x3a]
	bl	Func_807822c
	mov	r2, #0x3a
	ldrsh	r0, [r6, r2]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80783dc

	.section .rodata
	.global .L7a828

.L7a828:
	.incrom 0x7a828, 0x7a830
