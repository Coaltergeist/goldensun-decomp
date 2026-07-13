	.include "macros.inc"

.thumb_func_start OvlFunc_899_200c698
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0x16
	mov	r5, #0
	bl	__CreateActor
	cmp	r0, #0
	beq	.L46fc
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
.L46fc:
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
	ldr	r2, =.L4f2c
	asr	r1, r3, #19
	mov	r5, #0
	mov	r0, #0
	b	.L4722
.L471e:
	add	r0, #1
	add	r2, #0x10
.L4722:
	cmp	r0, #0x24
	bhi	.L4740
	ldrb	r3, [r2]
	cmp	r3, r4
	beq	.L4732
	add	r3, #1
	cmp	r3, r4
	bne	.L471e
.L4732:
	ldrb	r3, [r2, #1]
	cmp	r3, r1
	beq	.L473e
	add	r3, #1
	cmp	r3, r1
	bne	.L471e
.L473e:
	mov	r5, r2
.L4740:
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
.L476e:
	ldrb	r3, [r0, #1]
	lsl	r4, r3, #24
	mov	r2, r14
	lsr	r3, r4, #16
	sub	r3, r2
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	bge	.L4782
	neg	r2, r2
.L4782:
	ldrb	r3, [r0]
	cmp	r3, #0xff
	beq	.L4794
	cmp	r2, r7
	bge	.L4794
	ldrb	r3, [r0]
	mov	r7, r2
	mov	r12, r3
	asr	r1, r4, #16
.L4794:
	add	r5, #1
	add	r0, #4
	cmp	r5, #2
	bls	.L476e
	mov	r2, #1
	neg	r2, r2
	mov	r0, #0
	cmp	r12, r2
	beq	.L47b0
	mov	r3, r12
	lsl	r0, r3, #4
	ldr	r3, =.L4f2c
	strh	r1, [r6]
	add	r0, r3
.L47b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c754

	.section .text.after_c7bc, "ax", %progbits

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
	bne	.L4814
	ldr	r4, [r0, #8]
.L4814:
	ldr	r1, [r0, #0x40]
	cmp	r1, r3
	bne	.L481c
	ldr	r1, [r0, #0x10]
.L481c:
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
	ble	.L483a
	mov	r0, #0
.L483a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c7fc

.thumb_func_start OvlFunc_899_200c840
	push	{r5, r6, lr}
	cmp	r0, #0
	bne	.L484a
	mov	r0, #1
	b	.L489e
.L484a:
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
	bne	.L4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #2
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	bne	.L4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0x18
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	bne	.L4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0x19
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	beq	.L489c
.L4896:
	mov	r0, #1
	neg	r0, r0
	b	.L489e
.L489c:
	mov	r0, #0
.L489e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c840
