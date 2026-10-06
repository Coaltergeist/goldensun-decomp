	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b3b8
	push	{r5, r6, r7, lr}
	ldr	r6, =.Lm943_5b70
	mov	r5, #0
	mov	r7, #3
.Lm943_33c0:
	mov	r0, r5
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_33d4
	mov	r0, r5
	bl	OvlFunc_943_200b464
	str	r0, [r6]
	b	.Lm943_33d6
.Lm943_33d4:
	str	r7, [r6]
.Lm943_33d6:
	add	r5, #1
	add	r6, #4
	cmp	r5, #3
	bls	.Lm943_33c0
	mov	r0, #0
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_33f4
	mov	r0, #0
	bl	OvlFunc_943_200b464
	ldr	r3, =.Lm943_5b70
	str	r0, [r3]
	b	.Lm943_33fa
.Lm943_33f4:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2]
.Lm943_33fa:
	mov	r0, #2
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_3410
	mov	r0, #2
	bl	OvlFunc_943_200b464
	ldr	r3, =.Lm943_5b70
	str	r0, [r3, #4]
	b	.Lm943_3416
.Lm943_3410:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2, #4]
.Lm943_3416:
	ldr	r6, =.Lm943_5b70
	mov	r5, #3
	str	r5, [r6, #8]
	str	r5, [r6, #0xc]
	mov	r0, #1
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_3432
	mov	r0, #1
	bl	OvlFunc_943_200b464
	str	r0, [r6, #0x10]
	b	.Lm943_3434
.Lm943_3432:
	str	r5, [r6, #0x10]
.Lm943_3434:
	mov	r0, #3
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_344a
	mov	r0, #3
	bl	OvlFunc_943_200b464
	ldr	r3, =.Lm943_5b70
	str	r0, [r3, #0x14]
	b	.Lm943_3450
.Lm943_344a:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2, #0x14]
.Lm943_3450:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b3b8

