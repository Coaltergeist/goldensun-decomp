	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800d14c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r9, r3
	ldr	r3, [r7, #8]
	sub	r0, r1, r3
	mov	r8, r1
	mov	r10, r2
	cmp	r0, #0
	bge	.Ld16a
	ldr	r2, =0xffff
	add	r0, r2
.Ld16a:
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	asr	r1, r0, #16
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.Ld17a
	ldr	r3, =0xffff
	add	r0, r3
.Ld17a:
	ldr	r3, [r7, #0x10]
	mov	r2, r9
	asr	r5, r0, #16
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.Ld18a
	ldr	r3, =0xffff
	add	r0, r3
.Ld18a:
	mov	r3, r5
	mul	r3, r5
	asr	r6, r0, #16
	mov	r0, r1
	mul	r0, r1
	mov	r2, r6
	mul	r2, r6
	add	r0, r3
	add	r0, r2
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r2, #0x80
	lsl	r5, r0, #16
	lsl	r2, #13
	cmp	r5, r2
	bge	.Ld1ec
	ldr	r3, [r7, #8]
	mov	r2, r8
	sub	r1, r2, r3
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r5, r2, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r9
	sub	r6, r2, r3
	mov	r0, r1
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r4, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r3
	mov	r5, r0
	mov	r1, r6
	mov	r0, r6
	.call_via r3
	add	r4, r5
	add	r4, r0
	mov	r0, r4
	bl	Func_80045d4
	mov	r5, r0
.Ld1ec:
	mov	r3, #0x80
	lsl	r3, #9
	cmp	r5, r3
	bge	.Ld20c
	mov	r3, r10
	mov	r2, r8
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #24
	str	r2, [r7, #8]
	mov	r2, r9
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	b	.Ld2e4
.Ld20c:
	mov	r3, r7
	add	r3, #0x58
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Ld27c
	ldr	r1, [r7, #0x30]
	ldr	r3, =Func_8000888
	mov	r0, r1
	.call_via r3
	mov	r1, r0
	ldr	r3, =Func_80008ac
	ldr	r0, [r7, #0x34]
	bl	_call_via_r3
	mov	r1, r0
	cmp	r5, r1
	ble	.Ld23a
	lsr	r3, r1, #31
	add	r3, r1, r3
	asr	r3, #1
	sub	r1, r5, r3
	b	.Ld240
.Ld23a:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r1, r3, #1
.Ld240:
	ldr	r3, =Func_80008ac
	mov	r0, r5
	bl	_call_via_r3
	ldr	r4, [r7, #8]
	mov	r5, r0
	mov	r2, r8
	ldr	r3, =Func_8000888
	sub	r0, r2, r4
	mov	r1, r5
	.call_via r3
	add	r4, r0
	mov	r8, r4
	ldr	r4, [r7, #0xc]
	mov	r2, r10
	sub	r0, r2, r4
	mov	r1, r5
	.call_via r3
	add	r4, r0
	mov	r10, r4
	ldr	r4, [r7, #0x10]
	mov	r2, r9
	sub	r0, r2, r4
	mov	r1, r5
	.call_via r3
	add	r4, r0
	mov	r9, r4
.Ld27c:
	mov	r3, r8
	str	r3, [r7, #0x38]
	mov	r3, r9
	mov	r2, r10
	str	r3, [r7, #0x40]
	ldr	r3, [r7, #8]
	str	r2, [r7, #0x3c]
	mov	r2, r8
	sub	r1, r2, r3
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r5, r2, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r9
	sub	r6, r2, r3
	mov	r3, #0x56
	add	r3, r7
	mov	r12, r3
	mov	r2, r12
	mov	r3, #0x10
	strb	r3, [r2]
	mov	r2, r1
	cmp	r1, #0
	bge	.Ld2ae
	neg	r2, r1
.Ld2ae:
	mov	r3, r6
	cmp	r6, #0
	bge	.Ld2b6
	neg	r3, r6
.Ld2b6:
	cmp	r2, r3
	bge	.Ld2c2
	mov	r3, #0x12
	mov	r2, r12
	strb	r3, [r2]
	mov	r1, r6
.Ld2c2:
	mov	r3, r7
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Ld2e4
	cmp	r1, #0
	bge	.Ld2d2
	neg	r1, r1
.Ld2d2:
	mov	r0, r5
	cmp	r0, #0
	bge	.Ld2da
	neg	r0, r0
.Ld2da:
	cmp	r1, r0
	bge	.Ld2e4
	mov	r3, #0x11
	mov	r2, r12
	strb	r3, [r2]
.Ld2e4:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800d14c

.thumb_func_start Func_800d304
	push	{r5, r6, lr}
	ldr	r5, =0x4e8
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_800a494
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	_call_via_r6
	mov	r0, r6
	bl	free
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800d304

.thumb_func_start Func_800d340
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e64
	ldr	r5, [r3]
	mov	r2, r5
	sub	sp, #0x10
	mov	r0, #0xd
	add	r2, #0x55
	str	r0, [sp, #0xc]
	str	r2, [sp]
.Ld35e:
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Ld366
	b	.Ld62a
.Ld366:
	ldr	r4, [r5, #0xc]
	ldr	r3, [r5, #8]
	ldr	r2, [sp]
	str	r4, [sp, #8]
	mov	r11, r3
	ldr	r0, [r5, #0x10]
	ldrb	r3, [r2, #0xc]
	mov	r9, r0
	cmp	r3, #0
	beq	.Ld37c
	b	.Ld528
.Ld37c:
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r4, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r4, #24
	cmp	r3, r4
	bne	.Ld38c
	b	.Ld472
.Ld38c:
	mov	r2, r11
	sub	r0, r3, r2
	cmp	r0, #0
	bge	.Ld398
	ldr	r3, =0xffff
	add	r0, r3
.Ld398:
	ldr	r3, [r5, #0x40]
	mov	r4, r9
	asr	r6, r0, #16
	sub	r0, r3, r4
	cmp	r0, #0
	bge	.Ld3a8
	ldr	r2, =0xffff
	add	r0, r2
.Ld3a8:
	asr	r7, r0, #16
	mov	r3, r7
	mul	r3, r7
	mov	r0, r6
	mul	r0, r6
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	ldr	r4, =0xffffff
	lsl	r0, #16
	cmp	r0, r4
	bgt	.Ld3f0
	ldr	r3, [r5, #0x38]
	mov	r0, r11
	sub	r6, r3, r0
	ldr	r3, [r5, #0x40]
	mov	r2, r9
	sub	r7, r3, r2
	mov	r0, r6
	mov	r1, r6
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r3, r0
	mov	r1, r7
	mov	r0, r7
	ldr	r4, =Func_8000888
	.call_via r4
	add	r3, r0
	mov	r0, r3
	ldr	r2, =Func_8000948
	bl	_call_via_r2
	lsl	r0, #8
.Ld3f0:
	cmp	r0, #0
	bne	.Ld3fe
	ldr	r3, [r5, #0x38]
	ldr	r4, [r5, #0x40]
	mov	r11, r3
	mov	r9, r4
	b	.Ld4dc
.Ld3fe:
	ldr	r1, [r5, #0x34]
	ldr	r2, =Func_80008ac
	bl	_call_via_r2
	ldr	r3, =Func_8000888
	mov	r4, r0
	mov	r8, r3
	mov	r0, r6
	mov	r1, r4
	.call_via r8
	ldr	r3, [r5, #0x24]
	add	r3, r0
	mov	r10, r3
	str	r3, [r5, #0x24]
	mov	r0, r7
	mov	r1, r4
	.call_via r8
	ldr	r3, [r5, #0x2c]
	add	r6, r3, r0
	str	r6, [r5, #0x2c]
	mov	r0, r10
	mov	r1, r10
	.call_via r8
	mov	r3, r0
	mov	r1, r6
	mov	r0, r6
	.call_via r8
	add	r3, r0
	mov	r0, r3
	ldr	r4, =Func_8000948
	bl	_call_via_r4
	ldr	r1, [r5, #0x30]
	lsl	r0, #8
	cmp	r0, r1
	ble	.Ld4dc
	ldr	r2, =Func_80008ac
	bl	_call_via_r2
	mov	r4, r0
	mov	r1, r4
	mov	r0, r10
	.call_via r8
	str	r0, [r5, #0x24]
	mov	r1, r4
	mov	r0, r6
	.call_via r8
	b	.Ld4da
.Ld472:
	ldr	r6, [r5, #0x24]
	ldr	r7, [r5, #0x2c]
	mov	r3, r6
	orr	r3, r7
	cmp	r3, #0
	beq	.Ld4dc
	ldr	r3, =Func_8000888
	mov	r0, r6
	mov	r8, r3
	mov	r1, r6
	.call_via r8
	mov	r3, r0
	mov	r1, r7
	mov	r0, r7
	.call_via r8
	add	r3, r0
	ldr	r2, =Func_8000948
	mov	r0, r3
	bl	_call_via_r2
	lsl	r0, #8
	cmp	r0, #0
	beq	.Ld4d6
	ldr	r3, [r5, #0x34]
	sub	r1, r0, r3
	cmp	r1, #0
	bge	.Ld4b8
	ldr	r4, [sp, #4]
	str	r4, [r5, #0x24]
	str	r4, [r5, #0x2c]
	b	.Ld4dc
.Ld4b8:
	ldr	r3, =Func_80008ac
	bl	_call_via_r3
	mov	r4, r0
	mov	r1, r4
	mov	r0, r6
	.call_via r8
	str	r0, [r5, #0x24]
	mov	r1, r4
	mov	r0, r7
	.call_via r8
	b	.Ld4da
.Ld4d6:
	ldr	r0, [sp, #4]
	str	r0, [r5, #0x24]
.Ld4da:
	str	r0, [r5, #0x2c]
.Ld4dc:
	ldr	r3, [sp]
	ldrb	r2, [r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Ld528
	ldr	r3, [r5, #0x14]
	ldr	r4, [sp, #8]
	cmp	r4, r3
	ble	.Ld4fc
	ldr	r2, [r5, #0x28]
	ldr	r3, [r5, #0x48]
	sub	r2, r3
	str	r2, [r5, #0x28]
	mov	r0, r2
	b	.Ld52a
.Ld4fc:
	ldr	r0, [r5, #0x28]
	cmp	r0, #0
	bge	.Ld52a
	str	r3, [sp, #8]
	ldr	r3, =Func_8000888
	ldr	r1, [r5, #0x44]
	.call_via r3
	mov	r3, r0
	neg	r0, r3
	mov	r1, r0
	str	r0, [r5, #0x28]
	cmp	r1, #0
	bge	.Ld51a
	mov	r1, r3
.Ld51a:
	ldr	r3, [r5, #0x48]
	cmp	r1, r3
	bgt	.Ld52a
	mov	r3, #0
	str	r3, [r5, #0x28]
	mov	r0, #0
	b	.Ld52a
.Ld528:
	ldr	r0, [r5, #0x28]
.Ld52a:
	ldr	r4, [sp, #8]
	add	r4, r0
	ldr	r3, [r5, #0x24]
	str	r4, [sp, #8]
	add	r11, r3
	ldr	r0, [sp]
	ldr	r3, [r5, #0x2c]
	add	r9, r3
	ldrb	r3, [r0, #1]
	mov	r1, r5
	add	r1, #0x56
	cmp	r3, #0
	beq	.Ld5a4
	cmp	r3, #0x11
	beq	.Ld564
	cmp	r3, #0x11
	bgt	.Ld552
	cmp	r3, #0x10
	beq	.Ld558
	b	.Ld5a4
.Ld552:
	cmp	r3, #0x12
	beq	.Ld58c
	b	.Ld5a4
.Ld558:
	ldr	r2, [r5, #0x38]
	cmp	r11, r2
	beq	.Ld5a0
	ldr	r3, [r5, #8]
	mov	r4, r11
	b	.Ld596
.Ld564:
	ldr	r2, [r5, #0x3c]
	ldr	r3, [sp, #8]
	cmp	r3, r2
	beq	.Ld5a0
	ldr	r3, [r5, #0xc]
	ldr	r4, [sp, #8]
	b	.Ld596

	.pool_aligned

.Ld58c:
	ldr	r2, [r5, #0x40]
	cmp	r9, r2
	beq	.Ld5a0
	ldr	r3, [r5, #0x10]
	mov	r4, r9
.Ld596:
	sub	r3, r2
	sub	r2, r4, r2
	eor	r3, r2
	cmp	r3, #0
	bge	.Ld5a4
.Ld5a0:
	mov	r0, #1
	str	r0, [sp, #4]
.Ld5a4:
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.Ld5da
	ldr	r4, [sp]
	ldrb	r3, [r4, #3]
	cmp	r3, #0
	beq	.Ld5cc
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	ldr	r0, [r5, #0x38]
	ldr	r2, [r5, #0x40]
	ldrb	r3, [r4]
	mov	r11, r0
	mov	r9, r2
	cmp	r3, #0
	bne	.Ld5cc
	ldr	r4, [r5, #0x3c]
	str	r4, [sp, #8]
	str	r3, [r5, #0x28]
.Ld5cc:
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r3, #0
	strb	r3, [r1]
.Ld5da:
	mov	r0, r11
	str	r0, [r5, #8]
	ldr	r2, [sp, #8]
	mov	r3, r9
	str	r3, [r5, #0x10]
	str	r2, [r5, #0xc]
	ldr	r4, [sp]
	ldrb	r2, [r4, #5]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld62a
	ldr	r0, [r5, #0x24]
	ldr	r2, [r5, #0x2c]
	mov	r11, r0
	mov	r9, r2
	cmp	r0, #0
	bne	.Ld602
	cmp	r2, #0
	beq	.Ld62a
.Ld602:
	mov	r0, r9
	mov	r1, r11
	bl	Func_80044d0
	ldrh	r3, [r5, #6]
	sub	r0, r3
	lsl	r0, #16
	mov	r4, #0x80
	asr	r0, #16
	lsl	r4, #5
	cmp	r0, r4
	ble	.Ld61e
	mov	r0, #0x80
	lsl	r0, #5
.Ld61e:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.Ld626
	ldr	r0, =0xfffff000
.Ld626:
	add	r3, r0
	strh	r3, [r5, #6]
.Ld62a:
	ldr	r3, [sp, #0xc]
	ldr	r4, [sp]
	sub	r3, #1
	add	r4, #0x70
	str	r3, [sp, #0xc]
	str	r4, [sp]
	add	r5, #0x70
	cmp	r3, #0
	blt	.Ld63e
	b	.Ld35e
.Ld63e:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800d340

	.section .rodata
	.global .L131c0

.L131c0:
	.incrom 0x131c0, 0x13240
