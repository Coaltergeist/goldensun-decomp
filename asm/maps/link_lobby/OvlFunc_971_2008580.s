	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008580
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, #0xaa
	lsl	r5, #1
	mov	r0, r5
	sub	sp, #0x20
	bl	__alloc_ewram
	add	r5, sp, #0x10
	mov	r1, #0
	mov	r8, r0
	mov	r0, r5
	str	r1, [sp, #4]
	bl	OvlFunc_971_200853c
	mov	r2, sp
	add	r2, #8
	str	r2, [sp]
	ldr	r1, [sp]
	mov	r6, #0x96
	mov	r3, sp
	lsl	r6, #2
	mov	r11, r0
	mov	r2, #0
	add	r3, #0xf
	mov	r12, r1
.L5be:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.L5be
	mov	r7, #0
	cmp	r7, r11
	bge	.L68a
	mov	r2, #0
	mov	r9, r5
	mov	r10, r2
.L5d2:
	mov	r3, r10
	mov	r1, r9
	ldrh	r0, [r3, r1]
	bl	__GetUnit
	mov	r2, #0xaa
	mov	r1, r0
	lsl	r2, #1
	ldr	r3, =iwram_3001388
	mov	r0, r8
	bl	_call_via_r3
	mov	r2, #0x95
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r10
	mov	r3, r9
	ldrh	r2, [r1, r3]
	ldr	r1, [sp]
	mov	r3, r7
	sub	r3, #0x80
	strb	r3, [r1, r2]
	mov	r1, #0xaa
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_80063bc
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L63a
	str	r0, [sp, #4]
	b	.L78e
.L61a:
	mov	r0, #1
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	blt	.L632
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L63a
.L632:
	add	r5, #1
	cmp	r5, #0x18
	ble	.L63a
	b	.L772
.L63a:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L61a
	mov	r0, #2
	bl	__WaitFrames
	add	r7, #1
	mov	r1, #2
	add	r10, r1
	cmp	r7, r11
	blt	.L5d2
	b	.L68a
.L654:
	mov	r0, #1
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	blt	.L66c
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L67a
.L66c:
	add	r5, #1
	cmp	r5, #0x18
	ble	.L67a
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.L78e
.L67a:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L654
	mov	r0, #2
	bl	__WaitFrames
	add	r7, #1
.L68a:
	cmp	r7, #2
	bgt	.L6ae
	mov	r3, #0x95
	lsl	r3, #1
	add	r3, r8
	mov	r5, #0
	mov	r1, #0xaa
	strb	r5, [r3]
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_80063bc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L67a
	str	r0, [sp, #4]
	b	.L78e
.L6ae:
	mov	r5, #0xa0
	mov	r0, r8
	lsl	r5, #1
	bl	__free
	mov	r0, r5
	bl	__alloc_ewram
	mov	r8, r0
	mov	r0, #0
	bl	__Func_8077330
	ldr	r3, =iwram_3001388
	mov	r1, r0
	mov	r2, r5
	mov	r0, r8
	bl	_call_via_r3
	mov	r5, r8
	mov	r2, #0x84
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0
	ldr	r3, [r2]
	mov	r10, r1
	mov	r7, #0x96
	mov	r1, #0x80
	add	r5, #8
	lsl	r7, #2
	mov	r4, #0
	lsl	r1, #1
	cmp	r10, r3
	bge	.L73a
	ldr	r3, [sp]
	mov	r6, r2
	mov	r12, r3
	mov	r0, r5
.L6f8:
	ldrb	r3, [r0, #2]
	mov	r2, r12
	ldrb	r3, [r2, r3]
	strb	r3, [r0, #2]
	lsl	r3, #24
	cmp	r3, #0
	bne	.L72c
	ldr	r3, [r6]
	sub	r3, #1
	cmp	r4, r3
	bge	.L722
	ldr	r2, [r5, r1]
	lsl	r3, r4, #2
	sub	r2, #1
	add	r1, r3, r5
	sub	r2, r4
.L718:
	ldr	r3, [r1, #4]
	sub	r2, #1
	stmia	r1!, {r3}
	cmp	r2, #0
	bne	.L718
.L722:
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
	sub	r0, #4
	sub	r4, #1
.L72c:
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r3, [r5, r1]
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	blt	.L6f8
.L73a:
	mov	r1, #0xa0
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_80063bc
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L77a
	str	r0, [sp, #4]
	b	.L78e
.L750:
	mov	r0, #1
	sub	r7, #1
	bl	__WaitFrames
	cmp	r7, #0
	blt	.L768
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L77a
.L768:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x18
	ble	.L77a
.L772:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #4]
	b	.L78e
.L77a:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L750
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #2
	bl	__WaitFrames
.L78e:
	mov	r0, r8
	bl	__free
	ldr	r0, [sp, #4]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008580
