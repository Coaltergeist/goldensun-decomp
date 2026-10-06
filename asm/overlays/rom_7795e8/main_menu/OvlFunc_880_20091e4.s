	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_20091e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r0
	mov	r8, r1
	sub	sp, #8
	mov	r3, r9
	str	r2, [sp, #4]
	add	r3, r8
	sub	r3, #1
	ldrb	r5, [r3]
	mov	r3, r8
	mov	r2, #0
	sub	r3, #1
	mov	r10, r2
	mov	r1, #0
	cmp	r3, #0
	beq	.L1224
	mov	r12, r3
	mov	r4, r9
.L1214:
	ldrb	r2, [r4]
	mov	r3, r5
	eor	r3, r2
	add	r1, #1
	strb	r3, [r4]
	add	r4, #1
	cmp	r1, r12
	bne	.L1214
.L1224:
	ldr	r0, [sp, #4]
	mov	r3, #0
	mov	r2, #5
	mov	r5, #0
	mov	r7, #0
	mov	r12, r3
	mov	r14, r3
	mov	r11, r2
	add	r0, r10
.L1236:
	mov	r3, r9
	mov	r6, #0
	mov	r1, #0
	add	r4, r7, r3
	b	.L1242
.L1240:
	add	r1, #1
.L1242:
	cmp	r1, #6
	beq	.L126c
	ldrb	r2, [r4]
	mov	r3, #7
	sub	r3, r5
	asr	r2, r3
	str	r3, [sp]
	add	r5, #1
	mov	r3, #1
	and	r2, r3
	cmp	r5, #8
	bne	.L1260
	mov	r5, #0
	add	r4, #1
	add	r7, #1
.L1260:
	mov	r3, r11
	sub	r3, r1
	lsl	r2, r3
	orr	r6, r2
	cmp	r7, r8
	bne	.L1240
.L126c:
	mov	r2, #1
	add	r14, r2
	mov	r3, r14
	strb	r6, [r0]
	add	r10, r2
	add	r0, #1
	add	r12, r6
	cmp	r3, #9
	bne	.L1292
	mov	r3, #0x3f
	mov	r2, r12
	and	r2, r3
	strb	r2, [r0]
	mov	r3, #1
	mov	r2, #0
	add	r0, #1
	add	r10, r3
	mov	r12, r2
	mov	r14, r2
.L1292:
	cmp	r7, r8
	bne	.L1236
	mov	r3, r10
	mov	r1, #0
	cmp	r3, #0
	beq	.L12b2
	ldr	r2, [sp, #4]
	mov	r0, #0x3f
.L12a2:
	ldrb	r3, [r2]
	add	r3, r1
	and	r3, r0
	add	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, r10
	bne	.L12a2
.L12b2:
	mov	r0, r10
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_880_20091e4

