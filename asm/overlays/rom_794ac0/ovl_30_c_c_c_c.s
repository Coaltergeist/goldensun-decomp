	.include "macros.inc"

.thumb_func_start OvlFunc_899_200c63c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r2
	bl	__Func_80924d4
	mov	r0, r5
	bl	__Func_8092504
	mov	r0, r6
	bl	__Func_809163c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c63c

.thumb_func_start OvlFunc_899_200c658
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__Func_80967e4
	mov	r0, #1
	bl	__Func_80030f8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c658

.thumb_func_start OvlFunc_899_200c684
	push	{lr}
	mov	r0, #2
	bl	__Func_80967e4
	bl	__Func_8097174
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c684

.thumb_func_start OvlFunc_899_200c698
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0x16
	mov	r5, #0
	bl	__Func_800c150
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
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, r7
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r5
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
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

.thumb_func_start OvlFunc_899_200c7bc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, r2
	mov	r6, r1
	bl	__Func_808ba1c
	mov	r3, #0x80
	ldr	r4, [r0, #0x38]
	lsl	r3, #24
	cmp	r4, r3
	bne	.L47d4
	ldr	r4, [r0, #8]
.L47d4:
	ldr	r1, [r0, #0x40]
	cmp	r1, r3
	bne	.L47dc
	ldr	r1, [r0, #0x10]
.L47dc:
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
	ble	.L47f6
	mov	r0, #0
.L47f6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c7bc

.thumb_func_start OvlFunc_899_200c7fc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, r2
	mov	r6, r1
	bl	__Func_808ba1c
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

.thumb_func_start OvlFunc_899_200c8a4
	push	{lr}
	mov	r3, r1
	ldrb	r1, [r3]
	mov	r2, #0x90
	lsl	r2, #15
	lsl	r1, #19
	ldrb	r3, [r3, #1]
	add	r1, r2
	mov	r2, #0x9e
	lsl	r2, #18
	lsl	r3, #19
	add	r3, r2
	mov	r2, #0
	bl	__Func_800d14c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c8a4

.thumb_func_start OvlFunc_899_200c8c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #4
	bl	__Func_808ba1c
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	mov	r9, r1
	mov	r11, r3
	bl	__Func_808ba1c
	mov	r7, r0
	mov	r5, r7
	add	r5, #8
	mov	r0, r5
	bl	OvlFunc_899_200c704
	mov	r10, r0
	cmp	r0, #0
	beq	.L49b8
	mov	r2, #0x80
	ldr	r3, [r7, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L49b8
	mov	r1, r8
	ldr	r2, [r5]
	ldr	r3, [r1, #8]
	sub	r6, r2, r3
	ldr	r2, [r7, #0x10]
	ldr	r3, [r1, #0x10]
	sub	r5, r2, r3
	mov	r2, #6
	ldrsh	r3, [r1, r2]
	mov	r1, #2
	add	r1, sp
	mov	r8, r1
	mov	r2, r8
	mov	r1, r6
	strh	r3, [r2]
	mov	r0, r5
	bl	__Func_80044d0
	mov	r3, #0xce
	lsl	r3, #1
	add	r3, r11
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r0, #16
	asr	r0, #16
	asr	r6, #16
	asr	r5, #16
	cmp	r3, #0
	ble	.L4976
	mov	r4, r6
	mul	r4, r6
	mov	r1, r5
	mul	r1, r5
	mov	r2, #0xc8
	add	r3, r4, r1
	lsl	r2, #1
	cmp	r3, r2
	bgt	.L497e
	mov	r3, r8
	ldrh	r2, [r3]
	lsl	r3, r0, #16
	lsr	r3, #16
	sub	r2, r3
	lsl	r2, #16
	asr	r0, r2, #16
	ldr	r2, =0xfffff000
	cmp	r0, r2
	ble	.L497e
	mov	r3, #0x80
	lsl	r3, #5
	cmp	r0, r3
	bge	.L497e
	b	.L498c
.L4976:
	mov	r4, r6
	mul	r4, r6
	mov	r1, r5
	mul	r1, r5
.L497e:
	add	r3, r4, r1
	cmp	r3, #0x40
	ble	.L498c
	mov	r1, #6
	ldrsh	r3, [r7, r1]
	mov	r2, r8
	strh	r3, [r2]
.L498c:
	mov	r0, r10
	mov	r1, r8
	bl	OvlFunc_899_200c754
	mov	r5, r0
	bl	OvlFunc_899_200c840
	cmp	r0, #0
	bne	.L49b0
	mov	r0, r7
	mov	r1, r5
	bl	OvlFunc_899_200c8a4
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
	b	.L49b8
.L49b0:
	mov	r0, r7
	mov	r1, #1
	bl	__Func_800c300
.L49b8:
	mov	r0, #0x18
	bl	__Func_808ba1c
	mov	r7, r0
	add	r0, #8
	bl	OvlFunc_899_200c704
	mov	r10, r0
	cmp	r0, #0
	beq	.L4a4c
	mov	r1, #0x80
	ldr	r3, [r7, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.L4a4c
	bl	__Func_8004458
	lsl	r0, #1
	lsr	r0, #16
	lsl	r3, r0, #1
	add	r3, r0
	mov	r1, #0xd0
	lsl	r1, #24
	lsl	r3, #29
	ldrh	r2, [r7, #6]
	add	r3, r1
	mov	r6, sp
	lsr	r3, #16
	add	r6, #2
	add	r3, r2
	strh	r3, [r6]
	mov	r0, r10
	mov	r1, r6
	bl	OvlFunc_899_200c754
	mov	r5, r0
	bl	OvlFunc_899_200c840
	cmp	r0, #0
	beq	.L4a3c
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	strh	r3, [r6]
	mov	r0, r10
	mov	r1, r6
	bl	OvlFunc_899_200c754
	mov	r5, r0
	bl	OvlFunc_899_200c840
	cmp	r0, #0
	bne	.L4a2e
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_8093874
	b	.L4a3c
.L4a2e:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	mov	r3, #1
	mov	r9, r3
	b	.L4a4c
.L4a3c:
	mov	r0, r7
	mov	r1, r5
	bl	OvlFunc_899_200c8a4
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
.L4a4c:
	mov	r0, #0x19
	bl	__Func_808ba1c
	mov	r7, r0
	add	r0, #8
	bl	OvlFunc_899_200c704
	mov	r10, r0
	cmp	r0, #0
	beq	.L4ae2
	mov	r1, #0x80
	ldr	r3, [r7, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.L4ae2
	bl	__Func_8004458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	mov	r1, #0xd0
	lsl	r1, #24
	lsl	r3, #28
	ldrh	r2, [r7, #6]
	add	r3, r1
	mov	r6, sp
	lsr	r3, #16
	add	r6, #2
	add	r3, r2
	strh	r3, [r6]
	mov	r0, r10
	mov	r1, r6
	bl	OvlFunc_899_200c754
	mov	r5, r0
	bl	OvlFunc_899_200c840
	cmp	r0, #0
	beq	.L4ad2
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	strh	r3, [r6]
	mov	r0, r10
	mov	r1, r6
	bl	OvlFunc_899_200c754
	mov	r5, r0
	bl	OvlFunc_899_200c840
	cmp	r0, #0
	bne	.L4ac4
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_8093874
	b	.L4ad2
.L4ac4:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	mov	r3, #2
	add	r9, r3
	b	.L4ae2
.L4ad2:
	mov	r0, r7
	mov	r1, r5
	bl	OvlFunc_899_200c8a4
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
.L4ae2:
	mov	r1, r9
	cmp	r1, #0
	beq	.L4b08
	ldr	r2, =.L64f8
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r2, #0xe8
	lsl	r3, #16
	lsl	r2, #13
	cmp	r3, r2
	bls	.L4b0e
	mov	r2, #0xc1
	mov	r3, r9
	lsl	r2, #1
	add	r3, #0xc8
	add	r2, r11
	strh	r3, [r2]
	b	.L4b0e
.L4b08:
	ldr	r3, =.L64f8
	mov	r1, r9
	strh	r1, [r3]
.L4b0e:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c8c8

.thumb_func_start OvlFunc_899_200cb2c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xa4
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xf8
	mov	r2, #0xae
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xf8
	mov	r2, #0xae
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xc8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xb2
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xae
	mov	r1, #0xe8
	lsl	r2, #2
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0xc
	bl	__Func_80924d4
	bl	OvlFunc_899_2009e80
	mov	r0, #0xc0
	mov	r1, #0x90
	mov	r2, #0x90
	mov	r3, #0xb8
	lsl	r3, #18
	lsl	r0, #14
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80935b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #9
	ldr	r2, =0x13333
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8092064
	ldr	r3, =.L64f8
	ldr	r2, .L4c48	@ 0
	ldr	r1, =0xc94
	strh	r2, [r3]
	ldr	r0, =OvlFunc_899_200c8c8
	bl	__Func_80041d8
	ldr	r0, =0x1ff
	bl	__Func_8079374
	bl	__Func_8091750
	mov	r0, #9
	bl	__Func_80f9080
	b	.L4c68

	.align	2, 0
.L4c48:
	.word	0
	.pool

.L4c68:
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200cb2c

	.section .data
	.global .L517c
	.global .L52fc
	.global .L5354
	.global .L53ac
	.global .L5444
	.global .L54c8
	.global .L5248
	.global .L52ac
	.global .L5538
	.global .L5560
	.global .L55b0
	.global .L55d8
	.global .L5600
	.global .L5650
	.global .L5678
	.global .L56c8
	.global .L56f0
	.global .L5718
	.global .L5768
	.global .L57a4
	.global .L57cc
	.global .L5808
	.global .L5830
	.global .L5858
	.global .L5894
	.global .L58bc
	.global .L58f8
	.global .L5a60
	.global .L5a80
	.global .L5ab8
	.global .L5cc8
	.global .L5e30
	.global .L61fc
	.global .L6250
	.global .L64a8
	.global .L64c0
	.global .L64d8

.L4f2c:
	.incbin "overlays/rom_794ac0/orig.bin", 0x4f2c, (0x517c-0x4f2c)
.L517c:
	.incbin "overlays/rom_794ac0/orig.bin", 0x517c, (0x5248-0x517c)
.L5248:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5248, (0x52ac-0x5248)
.L52ac:
	.incbin "overlays/rom_794ac0/orig.bin", 0x52ac, (0x52fc-0x52ac)
.L52fc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x52fc, (0x5354-0x52fc)
.L5354:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5354, (0x53ac-0x5354)
.L53ac:
	.incbin "overlays/rom_794ac0/orig.bin", 0x53ac, (0x5444-0x53ac)
.L5444:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5444, (0x54c8-0x5444)
.L54c8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x54c8, (0x5538-0x54c8)
.L5538:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5538, (0x5560-0x5538)
.L5560:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5560, (0x55b0-0x5560)
.L55b0:
	.incbin "overlays/rom_794ac0/orig.bin", 0x55b0, (0x55d8-0x55b0)
.L55d8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x55d8, (0x5600-0x55d8)
.L5600:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5600, (0x5650-0x5600)
.L5650:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5650, (0x5678-0x5650)
.L5678:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5678, (0x56c8-0x5678)
.L56c8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x56c8, (0x56f0-0x56c8)
.L56f0:
	.incbin "overlays/rom_794ac0/orig.bin", 0x56f0, (0x5718-0x56f0)
.L5718:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5718, (0x5768-0x5718)
.L5768:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5768, (0x57a4-0x5768)
.L57a4:
	.incbin "overlays/rom_794ac0/orig.bin", 0x57a4, (0x57cc-0x57a4)
.L57cc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x57cc, (0x5808-0x57cc)
.L5808:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5808, (0x5830-0x5808)
.L5830:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5830, (0x5858-0x5830)
.L5858:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5858, (0x5894-0x5858)
.L5894:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5894, (0x58bc-0x5894)
.L58bc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x58bc, (0x58f8-0x58bc)
.L58f8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x58f8, (0x5a60-0x58f8)
.L5a60:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5a60, (0x5a80-0x5a60)
.L5a80:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5a80, (0x5ab8-0x5a80)
.L5ab8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5ab8, (0x5cc8-0x5ab8)
.L5cc8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5cc8, (0x5e30-0x5cc8)
.L5e30:
	.incbin "overlays/rom_794ac0/orig.bin", 0x5e30, (0x61fc-0x5e30)
.L61fc:
	.incbin "overlays/rom_794ac0/orig.bin", 0x61fc, (0x6250-0x61fc)
.L6250:
	.incbin "overlays/rom_794ac0/orig.bin", 0x6250, (0x64a8-0x6250)
.L64a8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x64a8, (0x64c0-0x64a8)
.L64c0:
	.incbin "overlays/rom_794ac0/orig.bin", 0x64c0, (0x64d8-0x64c0)
.L64d8:
	.incbin "overlays/rom_794ac0/orig.bin", 0x64d8, (0x64f8-0x64d8)

	.section .bss

	.lcomm	.L64f8, 4
