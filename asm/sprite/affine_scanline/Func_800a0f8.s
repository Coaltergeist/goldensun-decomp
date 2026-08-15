	.include "macros.inc"

.arm_func_start Func_800a0f8  @ 0x0800a0f8
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1
	ldr	r9, =Exports_c0
	sub	sp, #8
	ldr	r1, [r5]
	ldr	r12, [r5, #8]
	mov	r7, r2
	ldr	r2, [r0, #8]
	mov	r6, r3
	ldr	r3, [r0]
	rsb	r4, r2, r12
	rsb	r1, r3, r1
	asr	r0, r1, #4
	asr	r1, r4, #4
	ldr	r12, [r9, #0x44]
	mov	lr, pc
	bx	r12
	lsl	r0, #16
	lsr	r8, r0, #16
	mov	r1, #0x8000
	ldr	r3, [r5]
	smull	r0, r3, r1, r3
	lsl	r3, #16
	orr	r2, r3, r0, lsr #16
	str	r2, [sp, #4]
	ldr	r2, [r5, #8]
	smull	r3, r2, r1, r2
	lsl	r2, #16
	orr	r1, r2, r3, lsr #16
	str	r1, [sp]
	ldr	r2, =iwram_3001f60
	ldr	r3, [r2]
	cmp	r8, r3
	beq	.La294
	mov	r0, r8
	str	r8, [r2]
	ldr	r12, [r9, #0x5c]
	mov	lr, pc
	bx	r12
	mov	r10, r0
	mov	r0, r8
	ldr	r12, [r9, #0x64]
	mov	lr, pc
	bx	r12
	mov	r5, r0
	rsb	r9, r10, #0
	mov	r8, #0x9f
.La1b4:
	ldm	r7, {r2, r4}
	smull	r1, r3, r5, r2
	lsl	r3, #16
	orr	r3, r1, lsr #16
	cmp	r3, #0
	addlt	r3, #0xff
	asr	r3, #8
	rsb	r3, #0
	lsl	r1, r3, #16
	strh	r3, [r7, #0x10]
	asr	r14, r1, #16
	strh	r3, [r6]
	smull	r1, r2, r10, r2
	lsl	r2, #16
	orr	r2, r1, lsr #16
	cmp	r2, #0
	addlt	r2, #0xff
	asr	r2, #8
	strh	r2, [r7, #0x12]
	strh	r2, [r6, #4]
	ldr	r3, =iwram_3001cec
	ldr	r0, [r3]
	lsl	r3, r14, #8
	mul	r14, r0, r3
	lsl	r2, #16
	asr	r2, #8
	rsb	r0, #0
	mul	r12, r0, r2
	smull	r3, r1, r4, r9
	lsl	r1, #16
	orr	r1, r3, lsr #16
	add	r1, r14, r1
	rsb	r1, #0
	str	r1, [r7, #8]
	smull	r2, r3, r4, r5
	lsl	r3, #16
	orr	r3, r2, lsr #16
	add	r12, r3
	str	r12, [r7, #0xc]
	ldr	r2, [sp, #4]
	add	r1, r2, r1
	asr	r1, #8
	str	r1, [r6, #8]
	ldr	r1, [sp]
	subs	r8, #1
	ldr	r3, [r7, #0xc]
	add	r12, r6, #0x10
	add	r3, r1, r3
	asr	r3, #8
	str	r3, [r6, #0xc]
	add	r7, #0x14
	ldm	r6, {r0, r1, r2, r3}
	add	r6, #0x20
	stm	r12, {r0, r1, r2, r3}
	bpl	.La1b4
	b	.La370
.La294:
	mov	r8, #0x9f
	ldr	r14, =iwram_3001e40
.La29c:
	ldr	r3, [r14]
	tst	r3, #1
	beq	.La31c
	ldr	r1, [r7, #8]
	ldr	r2, [sp, #4]
	ldrsh	r3, [r7, #0x12]
	add	r1, r2, r1
	cmp	r3, #0
	addlt	r3, #3
	asr	r3, #2
	ldrsh	r2, [r7, #0x10]
	add	r3, r1, asr #8
	add	r2, r2, lsr #31
	add	r3, r2, asr #1
	str	r3, [r6, #8]
	ldrsh	r3, [r7, #0x10]
	ldr	r2, [sp]
	cmp	r3, #0
	addlt	r3, #3
	ldr	r1, [r7, #0xc]
	asr	r3, #2
	add	r1, r2, r1
	ldrsh	r2, [r7, #0x12]
	add	r3, r1, asr #8
	add	r2, r2, lsr #31
	add	r3, r2, asr #1
	str	r3, [r6, #0xc]
	b	.La344

	.pool

.La31c:
	ldr	r3, [r7, #8]
	ldr	r1, [sp, #4]
	add	r3, r1, r3
	asr	r3, #8
	str	r3, [r6, #8]
	ldr	r3, [sp]
	ldr	r2, [r7, #0xc]
	add	r2, r3, r2
	asr	r2, #8
	str	r2, [r6, #0xc]
.La344:
	ldrh	r1, [r7, #0x10]
	strh	r1, [r6]
	add	r12, r6, #0x10
	ldrh	r2, [r7, #0x12]
	subs	r8, #1
	strh	r2, [r6, #4]
	add	r7, #0x14
	ldm	r6, {r0, r1, r2, r3}
	add	r6, #0x20
	stm	r12, {r0, r1, r2, r3}
	bpl	.La29c
.La370:
	add	sp, #8
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_800a0f8

