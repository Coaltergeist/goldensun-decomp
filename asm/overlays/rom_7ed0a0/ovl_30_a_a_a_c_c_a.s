	.include "macros.inc"

.thumb_func_start OvlFunc_964_200834c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	str	r0, [sp, #0x14]
	str	r1, [sp, #0x10]
	str	r2, [sp, #0xc]
	ldr	r3, =iwram_3001ebc
	mov	r0, #0
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	ldr	r1, [sp, #0x14]
	lsr	r3, #12
	mov	r2, #8
	str	r3, [r1]
	add	r5, #0x34
	str	r2, [sp, #8]
	mov	r9, r0
	mov	r11, r5
.L37e:
	mov	r3, r11
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r3, [r3, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L3230
	mov	r4, #0
	str	r1, [sp, #4]
	ldr	r0, =.L3248
	str	r3, [sp]
	mov	r8, r4
.L398:
	ldr	r1, [sp]
	ldmia	r1!, {r3}
	ldr	r2, [sp, #4]
	mov	r4, r1
	str	r4, [sp]
	cmp	r2, r3
	bne	.L436
	ldr	r4, [sp, #0xc]
	mov	r3, r8
	str	r3, [r4]
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	ldr	r4, =.L31f0
	lsl	r3, #2
	mov	r1, r9
	ldr	r2, [r4, r3]
	ldr	r1, [r1, #8]
	asr	r3, r2, #16
	mov	r14, r1
	asr	r1, #16
	add	r1, r3
	asr	r7, r1, #4
	mov	r1, r9
	ldr	r1, [r1, #0x10]
	lsl	r2, #16
	asr	r2, #16
	asr	r3, r1, #16
	add	r3, r2
	asr	r5, r3, #4
	mov	r3, r10
	mov	r12, r1
	mov	r2, #0xa
	ldrsh	r1, [r3, r2]
	ldr	r3, [r0]
	add	r3, r1, r3
	asr	r6, r3, #4
	mov	r3, r10
	mov	r4, #0x12
	ldrsh	r2, [r3, r4]
	ldr	r3, [r0, #4]
	add	r3, r2, r3
	asr	r4, r3, #4
	ldr	r3, [r0, #8]
	add	r1, r3
	ldr	r3, [r0, #0xc]
	add	r2, r3
	asr	r1, #4
	asr	r2, #4
	cmp	r6, r7
	bgt	.L436
	cmp	r7, r1
	bge	.L436
	cmp	r4, r5
	bgt	.L436
	cmp	r5, r2
	bge	.L436
	mov	r3, #1
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.L424
	mov	r2, r14
	asr	r3, r2, #20
	cmp	r6, r3
	beq	.L436
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #0x10]
	mov	r0, r10
	str	r3, [r4]
	b	.L452
.L424:
	mov	r1, r12
	asr	r3, r1, #20
	cmp	r4, r3
	beq	.L436
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x10]
	mov	r0, r10
	str	r2, [r3]
	b	.L452
.L436:
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	add	r0, #0x10
	cmp	r1, #5
	bls	.L398
	ldr	r3, [sp, #8]
	mov	r2, #4
	add	r3, #1
	add	r11, r2
	str	r3, [sp, #8]
	cmp	r3, #0x41
	bls	.L37e
	mov	r0, #0
.L452:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_200834c

