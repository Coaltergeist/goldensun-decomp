	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8077330
	push	{lr}
	cmp	r0, #0
	beq	.L7733e
	mov	r0, #0x83
	bl	Func_8077394
	b	.L77340
.L7733e:
	ldr	r0, =ewram_200024c
.L77340:
	pop	{r1}
	bx	r1
.func_end Func_8077330

.thumb_func_start Func_8077348
	push	{r5, r6, r7, lr}
	sub	sp, #4
	bl	Func_80795fc
	mov	r7, r0
	mov	r6, #0
	mov	r0, #0
	cmp	r7, #0
	beq	.L77388
	cmp	r6, r7
	bge	.L7737e
	ldr	r3, =ewram_2000240
	mov	r1, #0xfc
	lsl	r1, #1
	add	r2, r3, r1
	mov	r5, r7
.L77368:
	ldrb	r0, [r2]
	add	r2, #1
	str	r2, [sp]
	bl	Func_8077394
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	ldr	r2, [sp]
	cmp	r5, #0
	bne	.L77368
.L7737e:
	mov	r0, r6
	mov	r1, r7
	bl	Func_af0_from_thumb
	mov	r6, r0
.L77388:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8077348

.thumb_func_start Func_8077394
	push	{lr}
	mov	r3, r14
	ldr	r2, =ewram_2000500
	cmp	r0, #7
	bhi	.L773a8
	mov	r3, #0xa6
	lsl	r3, #1
	mul	r3, r0
	add	r0, r3, r2
	b	.L773c8
.L773a8:
	mov	r3, r0
	sub	r3, #0x80
	cmp	r3, #5
	bhi	.L773c6
	ldr	r3, =iwram_3001f28
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L773c6
	mov	r3, #0xa6
	lsl	r3, #1
	mul	r3, r0
	add	r3, r2, r3
	ldr	r2, =0xffff5a00
	add	r0, r3, r2
	b	.L773c8
.L773c6:
	mov	r0, #0
.L773c8:
	pop	{r1}
	bx	r1
.func_end Func_8077394

.thumb_func_start Func_80773d8
	push	{lr}
	sub	r0, #8
	cmp	r0, #0xf9
	bls	.L773e2
	mov	r0, #0
.L773e2:
	mov	r3, #0x54
	mul	r0, r3
	ldr	r3, =Data_80ec8
	add	r0, r3
	pop	{r1}
	bx	r1
.func_end Func_80773d8

