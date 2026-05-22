	.include "macros.inc"

.thumb_func_start OvlFunc_314
	push	{r5, lr}
	ldmia	r0!, {r5}
	ldmia	r1!, {r3}
	ldmia	r0!, {r4}
	sub	r5, r3
	ldmia	r1!, {r3}
	ldr	r2, [r1]
	sub	r4, r3
	ldr	r3, [r0]
	sub	r3, r2
	asr	r5, #16
	asr	r4, #16
	asr	r3, #16
	mov	r0, r5
	mul	r0, r5
	mov	r2, r4
	mul	r2, r4
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_948
	bl	_call_via_r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_314

.thumb_func_start OvlFunc_350
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	mov	r7, r8
	mov	r5, r6
	add	r7, #8
	add	r5, #8
	mov	r10, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r5
	mov	r11, r3
	mov	r9, r2
	bl	OvlFunc_314
	cmp	r0, r10
	blt	.L384
	mov	r3, r11
	cmp	r3, #0
	beq	.L3da
.L384:
	mov	r2, r8
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r5]
	sub	r1, r3
	bl	__Func_44d0
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r6, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L3c4
	cmp	r1, r3
	beq	.L3c4
	cmp	r4, r3
	beq	.L3c4
	mov	r3, r11
	cmp	r3, #0
	beq	.L3ea
.L3c4:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_c300
	mov	r2, #1
	mov	r9, r2
	b	.L3ea
.L3da:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Func_c300
.L3ea:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_350

.thumb_func_start OvlFunc_400
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_1e8c
	mov	r5, r0
	ldr	r2, [r3]
	mov	r6, r5
	mov	r8, r2
	add	r6, #0x64
	mov	r2, #0x12
	ldr	r7, [r3, #0x30]
	mov	r10, r2
	mov	r3, #0
	ldrh	r2, [r6]
	mov	r9, r3
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L42e
	mov	r0, #0xf
	b	.L430
.L42e:
	mov	r0, #0xe
.L430:
	bl	__Func_92054
	mov	r1, r0
	mov	r0, r5
	mov	r2, #0x20
	mov	r3, #0
	bl	OvlFunc_350
	cmp	r0, #0
	bne	.L480
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r1, r0
	cmp	r3, #0
	bne	.L464
	ldr	r3, =0xea4
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L476
.L464:
	mov	r3, #0x1a
	ldrh	r2, [r6]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L476
	mov	r2, #1
	mov	r9, r2
.L476:
	mov	r0, r5
	mov	r2, r10
	mov	r3, r9
	bl	OvlFunc_350
.L480:
	mov	r0, #0
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_400

.thumb_func_start OvlFunc_498
	ldr	r0, =.L1450
	bx	lr
.func_end OvlFunc_498

