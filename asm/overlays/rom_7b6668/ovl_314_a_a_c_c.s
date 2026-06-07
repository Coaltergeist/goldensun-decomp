	.include "macros.inc"

.thumb_func_start OvlFunc_928_2008370
	push	{r5, lr}
	mov	r0, #0xe
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	bne	.L3b6
	add	r4, sp, #0x10
	mov	r3, #1
	str	r3, [r4]
	mov	r3, #9
	str	r3, [r4, #4]
	mov	r3, #0xa9
	strh	r3, [r4, #0x18]
	ldr	r3, =.L1740
	ldr	r2, [r5, #0x10]
	str	r3, [r4, #0x1c]
	ldr	r3, =0xffff0000
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	add	r2, r3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xcc
	lsl	r3, #14
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L3b6:
	add	sp, #0x38
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008370

.thumb_func_start OvlFunc_928_20083cc
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
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_20083cc

.thumb_func_start OvlFunc_928_2008408
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r11, r1
	mov	r1, #0
	str	r2, [sp, #4]
	mov	r5, r0
	str	r1, [sp]
	mov	r2, #0x5b
	add	r2, r5
	mov	r6, r3
	ldrb	r3, [r2]
	mov	r10, r2
	cmp	r3, #1
	bne	.L448
	mov	r3, #0x64
	add	r3, r5
	mov	r9, r3
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L44e
	mov	r1, #1
	bl	__Func_800c300
	mov	r0, #1
	b	.L4ea
.L448:
	mov	r2, #0x64
	add	r2, r5
	mov	r9, r2
.L44e:
	mov	r3, #8
	add	r3, r5
	mov	r7, r11
	mov	r8, r3
	add	r7, #8
	mov	r1, r8
	mov	r0, r7
	bl	OvlFunc_928_20083cc
	ldr	r1, [sp, #4]
	cmp	r0, r1
	blt	.L46a
	cmp	r6, #0
	beq	.L4d8
.L46a:
	mov	r2, r11
	ldr	r0, [r2, #0x10]
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	sub	r0, r3
	ldr	r1, [r7]
	ldr	r3, [r2]
	sub	r1, r3
	bl	__Func_80044d0
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r5, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L4bc
	cmp	r1, r3
	beq	.L4bc
	cmp	r4, r3
	beq	.L4bc
	cmp	r6, #0
	bne	.L4bc
	mov	r3, r10
	mov	r1, #2
	strb	r6, [r3]
	mov	r0, r5
	bl	__Func_800c300
	mov	r1, r9
	strh	r6, [r1]
	b	.L4e8
.L4bc:
	mov	r3, #1
	mov	r2, r10
	strb	r3, [r2]
	mov	r1, #1
	mov	r0, r5
	bl	__Func_800c300
	mov	r3, #1
	str	r3, [sp]
	mov	r1, sp
	ldrh	r1, [r1]
	mov	r2, r9
	strh	r1, [r2]
	b	.L4e8
.L4d8:
	mov	r2, r10
	strb	r6, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r3, r9
	strh	r6, [r3]
.L4e8:
	ldr	r0, [sp]
.L4ea:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_2008408

.thumb_func_start OvlFunc_928_2008500
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r3, #0x80
	ldr	r2, [r5, #0x38]
	lsl	r3, #24
	mov	r6, #0
	cmp	r2, r3
	bne	.L518
	ldr	r3, [r5, #0x40]
	mov	r0, #0
	cmp	r3, r2
	beq	.L594
.L518:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, r0
	ldr	r0, [r1, #8]
	asr	r3, r0, #20
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.L552
	ldr	r3, [r1, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	bne	.L552
	ldr	r2, [r5, #8]
	asr	r3, r2, #20
	cmp	r3, #0x13
	bgt	.L552
	ldr	r3, [r5, #0x24]
	cmp	r3, #0
	bgt	.L552
	cmp	r0, r2
	bgt	.L55a
	mov	r2, r5
	add	r2, #0x62
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r6, #1
	b	.L55a
.L552:
	mov	r2, r5
	add	r2, #0x62
	mov	r3, #0
	strb	r3, [r2]
.L55a:
	cmp	r6, #0
	beq	.L57e
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r12, r2
	cmp	r3, #0x77
	bls	.L57e
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xc1
	ldr	r3, [r3]
	lsl	r2, #1
	add	r0, r3, r2
	mov	r3, #0xc8
	ldr	r2, .L58c	@ 0
	strh	r3, [r0]
	mov	r3, r12
	strb	r2, [r3]
.L57e:
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, r6
	bl	OvlFunc_928_2008408
	mov	r0, #0
	b	.L594

	.align	2, 0
.L58c:
	.word	0
	.pool

.L594:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_2008500

