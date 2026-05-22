	.include "macros.inc"

.thumb_func_start Func_91780
	push	{r5, lr}
	mov	r5, r0
	bl	Func_9177c
	mov	r0, r5
	bl	Func_8b674
	mov	r0, #1
	bl	Func_30f8
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_8ba1c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_91780

.thumb_func_start Func_917ac
	push	{r5, lr}
	mov	r5, r0
	bl	Func_8b824
	mov	r1, r0
	mov	r0, r5
	bl	Func_8b3ec
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_917ac

.thumb_func_start Func_917c4
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	str	r0, [r3, #0x10]
	bx	lr
.func_end Func_917c4

.thumb_func_start Func_917d0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	_Func_77394
	mov	r0, r5
	bl	_Func_7961c
	cmp	r6, #0
	beq	.L917ec
	mov	r0, r5
	mov	r1, r6
	bl	_Func_21390
.L917ec:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_917d0

.thumb_func_start Func_917f4
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, r0
	bl	_Func_7961c
	mov	r0, r6
	bl	_Func_7961c
	mov	r0, r5
	mov	r1, r6
	bl	_Func_21488
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_917f4

.thumb_func_start Func_91814
	push	{r5, r6, lr}
	lsr	r5, r0, #10
	mov	r3, #0xf
	ldr	r6, =0x3ff
	and	r5, r3
	and	r6, r0
	cmp	r5, #7
	ble	.L9182a
	mov	r0, #1
	neg	r0, r0
	b	.L9184e
.L9182a:
	mov	r0, r5
	bl	_Func_79338
	cmp	r0, #0
	bne	.L9183a
	mov	r0, #2
	neg	r0, r0
	b	.L9184e
.L9183a:
	mov	r0, r5
	mov	r1, r6
	bl	_Func_78bc0
	cmp	r0, #0
	bne	.L9184c
	mov	r0, #3
	neg	r0, r0
	b	.L9184e
.L9184c:
	mov	r0, #0
.L9184e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_91814

.thumb_func_start Func_91858
	push	{r5, r6, lr}
	ldr	r6, =ewram_240
	mov	r3, #0x88
	lsl	r3, #2
	add	r5, r6, r3
	ldrh	r0, [r5]
	bl	Func_91814
	cmp	r0, #0
	beq	.L91870
	mov	r3, #0
	strh	r3, [r5]
.L91870:
	ldr	r3, =0x222
	add	r5, r6, r3
	ldrh	r0, [r5]
	bl	Func_91814
	cmp	r0, #0
	beq	.L91882
	mov	r3, #0
	strh	r3, [r5]
.L91882:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_91858

.thumb_func_start Func_91890
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	bl	_Func_79664
	bl	Func_91858
	mov	r0, r5
	bl	_Func_77394
	mov	r6, r0
	ldrh	r1, [r6, #0x34]
	ldrh	r3, [r6, #0x36]
	strh	r1, [r6, #0x38]
	strh	r3, [r6, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L918ca
	mov	r3, #0
	cmp	r0, #0
	blt	.L918ca
	mov	r3, r0
.L918ca:
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L918de
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L918de
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L918de:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L918fc
	mov	r3, #0
	cmp	r0, #0
	blt	.L918fc
	mov	r3, r0
.L918fc:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L91910
	mov	r2, #0x3a
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L91910
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L91910:
	ldr	r3, =0x131
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r8, r3
	bl	_Func_795fc
	cmp	r8, r0
	bge	.L91948
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r5, r0
.L9192c:
	ldrb	r0, [r7]
	bl	_Func_77394
	mov	r6, r0
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	add	r7, #1
	cmp	r3, #0
	beq	.L91942
	mov	r3, #1
	add	r8, r3
.L91942:
	sub	r5, #1
	cmp	r5, #0
	bne	.L9192c
.L91948:
	mov	r2, r8
	cmp	r2, #0
	bne	.L919c4
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	_Func_77394
	mov	r5, #1
	mov	r6, r0
	strh	r5, [r6, #0x38]
	lsl	r5, #14
	mov	r3, #0x34
	ldrsh	r1, [r6, r3]
	mov	r0, r5
	bl	Func_af0_from_thumb
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bgt	.L9197e
	mov	r5, #0
	cmp	r0, #0
	blt	.L9197e
	mov	r5, r0
.L9197e:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L91992
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L91992
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L91992:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L919b0
	mov	r3, #0
	cmp	r0, #0
	blt	.L919b0
	mov	r3, r0
.L919b0:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L919c4
	mov	r2, #0x3a
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L919c4
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L919c4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_91890

.thumb_func_start Func_919d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	mov	r8, r0
	mov	r10, r2
	bl	_Func_795fc
	mov	r6, r0
	cmp	r10, r6
	bge	.L91a0c
	ldr	r3, =ewram_240
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r5, r6
.L919fa:
	ldrb	r0, [r7]
	mov	r1, r8
	bl	_Func_78af8
	sub	r5, #1
	add	r7, #1
	add	r10, r0
	cmp	r5, #0
	bne	.L919fa
.L91a0c:
	lsl	r3, r6, #4
	sub	r3, r6
	lsl	r3, #1
	cmp	r10, r3
	blt	.L91a40
	mov	r0, r8
	mov	r1, #2
	bl	_Func_19908
	ldr	r5, =0x97d
	mov	r1, #1
	mov	r0, r5
	bl	_Func_1776c
	add	r5, #1
	mov	r0, r8
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_1776c
	mov	r0, #1
	neg	r0, r0
	b	.L91a42
.L91a40:
	mov	r0, #0
.L91a42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_919d8

.thumb_func_start Func_91a58
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_1ebc
	ldr	r3, [r3]
	mov	r7, #0xec
	mov	r11, r3
	lsl	r7, #1
	add	r7, r11
	mov	r3, #0
	ldrsh	r2, [r7, r3]
	sub	sp, #0xc
	str	r2, [sp]
	mov	r6, r0
	bl	_Func_78618
	mov	r2, #1
	mov	r8, r0
	neg	r2, r2
	cmp	r8, r2
	beq	.L91a8c
	b	.L91baa
.L91a8c:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0x96a
	mov	r1, #1
	bl	_Func_1776c
	ldr	r0, =0x977
	mov	r1, #1
	bl	_Func_1776c
	mov	r3, #8
	mov	r2, #4
	add	r3, sp
	add	r2, sp
	mov	r9, r3
	mov	r10, r2
.L91ab0:
	ldr	r7, =0x978
	mov	r1, #1
	mov	r0, r7
	bl	_Func_1776c
	mov	r0, r9
	mov	r1, r10
	bl	_Func_b3444
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bne	.L91b34
	mov	r0, r6
	bl	_Func_78414
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L91aee
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	add	r0, r7, #4
	mov	r1, #1
	bl	_Func_1776c
	b	.L91ab0
.L91aee:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	add	r0, r7, #1
	mov	r1, #5
	bl	_Func_1776c
	mov	r0, #1
	bl	Func_91d84
	mov	r5, r0
	bl	_Func_19a54
	cmp	r5, #0
	bne	.L91ab0
	mov	r1, #1
	mov	r0, r6
	bl	_Func_78ad0
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	add	r0, r7, #2
	mov	r1, #1
	bl	_Func_1776c
	mov	r3, #0xec
	mov	r2, sp
	lsl	r3, #1
	ldrh	r2, [r2]
	add	r3, r11
	strh	r2, [r3]
	b	.L91bee
.L91b34:
	ldr	r0, [sp, #8]
	bl	_Func_77394
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_Func_784b0
	cmp	r0, #0
	ble	.L91b56
	mov	r5, r0
.L91b48:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	sub	r5, #1
	bl	_Func_78948
	cmp	r5, #0
	bne	.L91b48
.L91b56:
	mov	r0, r6
	bl	_Func_78618
	mov	r8, r0
	mov	r0, #0x53
	bl	_Func_f9080
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	bne	.L91b84
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	ldr	r0, =0x96a
	mov	r1, #3
	bl	_Func_1776c
	b	.L91b9c
.L91b84:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r8
	mov	r1, #1
	bl	_Func_19908
	ldr	r0, =0x96b
	mov	r1, #3
	bl	_Func_1776c
.L91b9c:
	mov	r3, #0xec
	mov	r2, sp
	lsl	r3, #1
	ldrh	r2, [r2]
	add	r3, r11
	strh	r2, [r3]
	b	.L91bee
.L91baa:
	mov	r0, #0x53
	bl	_Func_f9080
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	ldr	r5, =0x96a
	mov	r1, #3
	mov	r0, r5
	bl	_Func_1776c
	ldr	r3, =ewram_240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	beq	.L91be8
	mov	r0, r6
	mov	r1, #2
	bl	_Func_19908
	mov	r0, r8
	mov	r1, #1
	bl	_Func_19908
	add	r0, r5, #1
	mov	r1, #3
	bl	_Func_1776c
.L91be8:
	mov	r3, sp
	ldrh	r3, [r3]
	strh	r3, [r7]
.L91bee:
	mov	r0, r8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_91a58

.thumb_func_start Func_91c1c
	push	{r5, lr}
	mov	r5, r2
	mov	r1, r0
	mov	r0, r5
	bl	_Func_78588
	cmp	r0, #0
	blt	.L91c30
	mov	r0, r5
	b	.L91c34
.L91c30:
	mov	r0, #1
	neg	r0, r0
.L91c34:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_91c1c

