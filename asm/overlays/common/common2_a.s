	.include "macros.inc"

.thumb_func_start OvlFunc_common2_0
	push	{r4, r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6, r7}
	sub	sp, #8
	mov	r10, r0
	mov	r9, r1
	mov	r8, r2
	bl	OvlFunc_common2_2d4
	cmp	r0, #0
	beq	.L20
.L1c:
	mov	r0, r10
	b	.L23e
.L20:
	mov	r0, r9
	bl	OvlFunc_common2_2d4
	cmp	r0, #0
	bne	.L94
	mov	r0, r10
	bl	OvlFunc_common2_2e4
	cmp	r0, #0
	beq	.L50
	mov	r0, r9
	bl	OvlFunc_common2_2e4
	cmp	r0, #0
	beq	.L1c
	mov	r0, r10
	mov	r1, r9
	ldr	r2, [r0, #4]
	ldr	r3, [r1, #4]
	cmp	r2, r3
	beq	.L1c
	bl	OvlFunc_common2_2cc
	b	.L23e
.L50:
	mov	r0, r9
	bl	OvlFunc_common2_2e4
	cmp	r0, #0
	bne	.L94
	mov	r0, r9
	bl	OvlFunc_common2_2f4
	cmp	r0, #0
	beq	.L8a
	mov	r0, r10
	bl	OvlFunc_common2_2f4
	cmp	r0, #0
	beq	.L1c
	mov	r2, r8
	mov	r3, r10
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r4}
	stmia	r2!, {r0, r4}
	mov	r1, r10
	mov	r4, r9
	ldr	r3, [r1, #4]
	ldr	r2, [r4, #4]
	mov	r0, r8
	and	r3, r2
	str	r3, [r0, #4]
	b	.L23e
.L8a:
	mov	r0, r10
	bl	OvlFunc_common2_2f4
	cmp	r0, #0
	beq	.L98
.L94:
	mov	r0, r9
	b	.L23e
.L98:
	mov	r1, r10
	ldr	r1, [r1, #8]
	mov	r2, r9
	ldr	r2, [r2, #8]
	mov	r14, r1
	mov	r1, r9
	mov	r3, r10
	ldr	r0, [r1, #0xc]
	ldr	r1, [r1, #0x10]
	mov	r4, r14
	ldr	r6, [r3, #0xc]
	ldr	r7, [r3, #0x10]
	sub	r3, r4, r2
	mov	r12, r2
	str	r0, [sp]
	str	r1, [sp, #4]
	cmp	r3, #0
	bge	.Lbe
	neg	r3, r3
.Lbe:
	cmp	r3, #0x3f
	bgt	.L12e
	cmp	r14, r12
	ble	.L104
	mov	r2, r12
	mov	r1, r14
	mov	r0, #1
	sub	r1, r2
	mov	r11, r0
	mov	r12, r1
.Ld2:
	mov	r3, #1
	ldr	r0, [sp, #4]
	neg	r3, r3
	add	r12, r3
	ldr	r3, [sp]
	lsl	r5, r0, #31
	ldr	r1, [sp]
	lsr	r0, r3, #1
	mov	r3, r5
	mov	r4, r11
	orr	r3, r0
	ldr	r0, [sp, #4]
	and	r1, r4
	lsr	r4, r0, #1
	mov	r0, r1
	orr	r0, r3
	mov	r2, #0
	str	r0, [sp]
	mov	r0, r2
	orr	r0, r4
	mov	r1, r12
	str	r0, [sp, #4]
	cmp	r1, #0
	bne	.Ld2
	mov	r12, r14
.L104:
	cmp	r12, r14
	ble	.L142
	mov	r2, #1
	mov	r11, r2
.L10c:
	mov	r3, #1
	lsl	r5, r7, #31
	mov	r1, r11
	lsr	r0, r6, #1
	add	r14, r3
	and	r1, r6
	mov	r2, #0
	mov	r3, r5
	lsr	r4, r7, #1
	orr	r3, r0
	mov	r6, r1
	mov	r7, r2
	orr	r6, r3
	orr	r7, r4
	cmp	r12, r14
	bgt	.L10c
	b	.L142
.L12e:
	cmp	r14, r12
	ble	.L13c
	mov	r0, #0
	mov	r1, #0
	str	r0, [sp]
	str	r1, [sp, #4]
	b	.L142
.L13c:
	mov	r14, r12
	mov	r6, #0
	mov	r7, #0
.L142:
	mov	r1, r10
	mov	r2, r9
	ldr	r0, [r1, #4]
	ldr	r3, [r2, #4]
	cmp	r0, r3
	beq	.L1f0
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	sub	r1, r6
	sbc	r2, r7
	cmp	r0, #0
	bne	.L166
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	mov	r2, r7
	mov	r1, r6
	sub	r1, r3
	sbc	r2, r4
.L166:
	cmp	r2, #0
	blt	.L17c
	mov	r3, #0
	mov	r4, r8
	str	r3, [r4, #4]
	mov	r0, r14
	mov	r3, r8
	str	r0, [r4, #8]
	str	r1, [r3, #0xc]
	str	r2, [r3, #0x10]
	b	.L192
.L17c:
	mov	r4, r8
	mov	r3, #1
	mov	r0, r14
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	mov	r4, #0
	neg	r3, r1
	sbc	r4, r2
	mov	r1, r8
	str	r3, [r1, #0xc]
	str	r4, [r1, #0x10]
.L192:
	mov	r2, r8
	ldr	r4, [r2, #0xc]
	ldr	r5, [r2, #0x10]
	ldr	r1, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r4
	adc	r3, r5
	cmp	r3, r1
	bhi	.L206
	cmp	r3, r1
	bne	.L1b4
	mov	r0, #2
	neg	r0, r0
	cmp	r2, r0
	bhi	.L206
.L1b4:
	lsr	r2, r4, #31
	lsl	r3, r5, #1
	mov	r1, r2
	mov	r2, r8
	orr	r1, r3
	ldr	r3, [r2, #8]
	lsl	r0, r4, #1
	sub	r3, #1
	str	r0, [r2, #0xc]
	str	r1, [r2, #0x10]
	str	r3, [r2, #8]
	ldr	r6, =0xfffffff
	mov	r2, #1
	neg	r2, r2
	asr	r3, r2, #31
	add	r2, r0
	adc	r3, r1
	cmp	r3, r6
	bhi	.L206
	mov	r5, r1
	mov	r4, r0
	cmp	r3, r6
	bne	.L1b4
	mov	r4, #2
	neg	r4, r4
	cmp	r2, r4
	bhi	.L206
	mov	r5, r1
	mov	r4, r0
	b	.L1b4
.L1f0:
	mov	r1, r8
	mov	r2, r14
	str	r0, [r1, #4]
	str	r2, [r1, #8]
	ldr	r3, [sp]
	ldr	r4, [sp, #4]
	add	r6, r3
	adc	r7, r4
	mov	r4, r8
	str	r6, [r4, #0xc]
	str	r7, [r4, #0x10]
.L206:
	mov	r3, #3
	mov	r0, r8
	str	r3, [r0]
	ldr	r1, =0x1fffffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r1
	bls	.L23c
	ldr	r5, [r0, #0xc]
	ldr	r6, [r0, #0x10]
	mov	r2, #1
	mov	r3, r5
	and	r3, r2
	lsl	r2, r6, #31
	mov	r12, r2
	lsr	r0, r5, #1
	mov	r1, r12
	orr	r1, r0
	mov	r4, #0
	lsr	r2, r6, #1
	mov	r0, r8
	orr	r3, r1
	orr	r4, r2
	str	r3, [r0, #0xc]
	str	r4, [r0, #0x10]
	ldr	r3, [r0, #8]
	add	r3, #1
	str	r3, [r0, #8]
.L23c:
	mov	r0, r8
.L23e:
	add	sp, #8
	pop	{r3, r4, r5, r6}
	mov	r8, r3
	mov	r9, r4
	mov	r10, r5
	mov	r11, r6
	pop	{r4, r5, r6, r7, pc}
.func_end OvlFunc_common2_0

