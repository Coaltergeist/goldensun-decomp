	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b5ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r9, r2
	mov	r7, r0
	bl	__MapActor_GetActor
	mov	r3, #2
	ldr	r1, [r0, #0x50]
	mov	r2, r9
	and	r3, r2
	mov	r10, r0
	mov	r11, r1
	cmp	r3, #0
	bne	.Lm943_3684
	ldr	r3, =.Lm943_5b70
	lsl	r1, r5, #2
	ldr	r3, [r3, r1]
	mov	r8, r1
	cmp	r3, #2
	beq	.Lm943_3648
	cmp	r3, #2
	bhi	.Lm943_362a
	cmp	r3, #1
	beq	.Lm943_3634
	b	.Lm943_3688
.Lm943_362a:
	cmp	r3, #3
	beq	.Lm943_365c
	cmp	r3, #4
	beq	.Lm943_3670
	b	.Lm943_3688
.Lm943_3634:
	ldr	r2, =.Lm943_5b30
	ldr	r3, =.Lm943_5b40
	ldrh	r2, [r2]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #8
	bl	__Func_8092b54
	b	.Lm943_368a
.Lm943_3648:
	ldr	r2, =.Lm943_5b30
	ldr	r3, =.Lm943_5b40
	ldrh	r2, [r2, #2]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #9
	bl	__Func_8092b54
	b	.Lm943_368a
.Lm943_365c:
	ldr	r2, =.Lm943_5b30
	ldr	r3, =.Lm943_5b40
	ldrh	r2, [r2, #4]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #0xa
	bl	__Func_8092b54
	b	.Lm943_368a
.Lm943_3670:
	ldr	r2, =.Lm943_5b30
	ldr	r3, =.Lm943_5b40
	ldrh	r2, [r2, #6]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #0xb
	bl	__Func_8092b54
	b	.Lm943_368a
.Lm943_3684:
	lsl	r2, r5, #2
	mov	r8, r2
.Lm943_3688:
	lsl	r6, r5, #1
.Lm943_368a:
	mov	r3, #1
	mov	r1, r9
	and	r3, r1
	cmp	r3, #0
	beq	.Lm943_36c0
	ldr	r5, =.Lm943_5b40
	ldrh	r0, [r5, r6]
	bl	__sin
	mov	r2, #0x80
	mov	r7, r0
	ldrh	r0, [r5, r6]
	lsl	r2, #8
	add	r0, r2
	bl	__sin
	mov	r3, r11
	asr	r0, #5
	strh	r0, [r3, #0x1e]
	ldr	r3, =.Lm943_5b90
	mov	r1, r8
	ldr	r3, [r3, r1]
	lsl	r2, r7, #2
	sub	r3, r2
	lsl	r2, r7, #1
	sub	r3, r2
	b	.Lm943_36ea
.Lm943_36c0:
	ldr	r5, =.Lm943_5b40
	mov	r3, #0x80
	ldrh	r0, [r5, r6]
	lsl	r3, #8
	add	r0, r3
	bl	__sin
	mov	r7, r0
	ldrh	r0, [r5, r6]
	bl	__sin
	mov	r1, r11
	asr	r0, #5
	strh	r0, [r1, #0x1e]
	ldr	r3, =.Lm943_5b90
	mov	r1, r8
	ldr	r3, [r3, r1]
	lsl	r2, r7, #2
	add	r3, r2
	lsl	r2, r7, #1
	add	r3, r2
.Lm943_36ea:
	mov	r2, r10
	str	r3, [r2, #0x10]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b5ec

