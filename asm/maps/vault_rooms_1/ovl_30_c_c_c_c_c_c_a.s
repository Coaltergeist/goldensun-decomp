	.include "macros.inc"

.thumb_func_start OvlFunc_899_200c698
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0x16
	mov	r5, #0
	bl	__CreateActor
	cmp	r0, #0
	beq	.Lm899_46fc
	ldr	r6, [r0, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r0
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	mov	r1, #0xc1
	strb	r3, [r2]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, r7
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r5
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
.Lm899_46fc:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c698

.thumb_func_start OvlFunc_899_200c704
	push	{r5, lr}
	ldr	r3, [r0]
	ldr	r2, =0xffc00000
	add	r3, r2
	asr	r4, r3, #19
	ldr	r2, =0xfd900000
	ldr	r3, [r0, #8]
	add	r3, r2
	ldr	r2, =.Lm899_4f2c
	asr	r1, r3, #19
	mov	r5, #0
	mov	r0, #0
	b	.Lm899_4722
.Lm899_471e:
	add	r0, #1
	add	r2, #0x10
.Lm899_4722:
	cmp	r0, #0x24
	bhi	.Lm899_4740
	ldrb	r3, [r2]
	cmp	r3, r4
	beq	.Lm899_4732
	add	r3, #1
	cmp	r3, r4
	bne	.Lm899_471e
.Lm899_4732:
	ldrb	r3, [r2, #1]
	cmp	r3, r1
	beq	.Lm899_473e
	add	r3, #1
	cmp	r3, r1
	bne	.Lm899_471e
.Lm899_473e:
	mov	r5, r2
.Lm899_4740:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c704

.thumb_func_start OvlFunc_899_200c754
	push	{r5, r6, r7, lr}
	mov	r2, #1
	mov	r6, r1
	neg	r2, r2
	mov	r12, r2
	ldrh	r2, [r6]
	mov	r7, #0x80
	mov	r3, #0
	ldrsh	r1, [r6, r3]
	add	r0, #4
	lsl	r7, #8
	mov	r5, #0
	mov	r14, r2
.Lm899_476e:
	ldrb	r3, [r0, #1]
	lsl	r4, r3, #24
	mov	r2, r14
	lsr	r3, r4, #16
	sub	r3, r2
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	bge	.Lm899_4782
	neg	r2, r2
.Lm899_4782:
	ldrb	r3, [r0]
	cmp	r3, #0xff
	beq	.Lm899_4794
	cmp	r2, r7
	bge	.Lm899_4794
	ldrb	r3, [r0]
	mov	r7, r2
	mov	r12, r3
	asr	r1, r4, #16
.Lm899_4794:
	add	r5, #1
	add	r0, #4
	cmp	r5, #2
	bls	.Lm899_476e
	mov	r2, #1
	neg	r2, r2
	mov	r0, #0
	cmp	r12, r2
	beq	.Lm899_47b0
	mov	r3, r12
	lsl	r0, r3, #4
	ldr	r3, =.Lm899_4f2c
	strh	r1, [r6]
	add	r0, r3
.Lm899_47b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c754

.thumb_func_start OvlFunc_899_200c7bc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, r2
	mov	r6, r1
	bl	__GetFieldActor
	mov	r3, #0x80
	ldr	r4, [r0, #0x38]
	lsl	r3, #24
	cmp	r4, r3
	bne	.Lm899_47d4
	ldr	r4, [r0, #8]
.Lm899_47d4:
	ldr	r1, [r0, #0x40]
	cmp	r1, r3
	bne	.Lm899_47dc
	ldr	r1, [r0, #0x10]
.Lm899_47dc:
	sub	r3, r4, r5
	asr	r4, r3, #16
	sub	r3, r1, r6
	asr	r1, r3, #16
	mov	r2, r1
	mul	r2, r1
	mov	r3, r4
	mul	r3, r4
	add	r3, r2
	mov	r0, #1
	cmp	r3, #0x40
	ble	.Lm899_47f6
	mov	r0, #0
.Lm899_47f6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c7bc

.thumb_func_start OvlFunc_899_200c7fc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, r2
	mov	r6, r1
	bl	__GetFieldActor
	mov	r3, #0x80
	ldr	r4, [r0, #0x38]
	lsl	r3, #24
	cmp	r4, r3
	bne	.Lm899_4814
	ldr	r4, [r0, #8]
.Lm899_4814:
	ldr	r1, [r0, #0x40]
	cmp	r1, r3
	bne	.Lm899_481c
	ldr	r1, [r0, #0x10]
.Lm899_481c:
	sub	r3, r4, r5
	asr	r4, r3, #16
	sub	r3, r1, r6
	asr	r1, r3, #16
	mov	r2, r1
	mul	r2, r1
	mov	r3, r4
	mul	r3, r4
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #1
	cmp	r3, r2
	ble	.Lm899_483a
	mov	r0, #0
.Lm899_483a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c7fc

.thumb_func_start OvlFunc_899_200c840
	push	{r5, r6, lr}
	cmp	r0, #0
	bne	.Lm899_484a
	mov	r0, #1
	b	.Lm899_489e
.Lm899_484a:
	ldrb	r3, [r0]
	mov	r2, #0x90
	lsl	r3, #19
	lsl	r2, #15
	add	r6, r3, r2
	ldrb	r3, [r0, #1]
	mov	r2, #0x9e
	lsl	r2, #18
	lsl	r3, #19
	add	r5, r3, r2
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_899_200c7fc
	cmp	r0, #0
	bne	.Lm899_4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #2
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	bne	.Lm899_4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0x18
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	bne	.Lm899_4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0x19
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	beq	.Lm899_489c
.Lm899_4896:
	mov	r0, #1
	neg	r0, r0
	b	.Lm899_489e
.Lm899_489c:
	mov	r0, #0
.Lm899_489e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c840

