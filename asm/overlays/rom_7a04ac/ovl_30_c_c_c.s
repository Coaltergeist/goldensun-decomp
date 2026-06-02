	.include "macros.inc"

.thumb_func_start OvlFunc_913_2008c68
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	OvlFunc_913_20088c0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lcbe
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0x14
	mov	r2, #0x11
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_913_2008244
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
.Lcbe:
	mov	r0, #8
	bl	OvlFunc_913_20088c0
	mov	r0, #9
	bl	OvlFunc_913_20088c0
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lce8
	ldr	r0, =0x843
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lce8
	bl	OvlFunc_913_2008d3c
.Lce8:
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld24
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.Ld24:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_2008c68

.thumb_func_start OvlFunc_913_2008d3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0x97
	mov	r3, #0
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #3
	ldr	r6, =.L3394
	bl	__Func_8079338
	str	r0, [r6]
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x12
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	ldr	r5, =.L3024
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x12
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, #0xe8
	lsl	r1, #15
	ldr	r2, =0x25a0000
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0xfe
	ldr	r2, =0x251
	bl	__Func_80921c4
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Le72
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.Le72:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Le86
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.Le86:
	ldr	r1, =.L2e20
	mov	r0, #1
	bl	__Func_809207c
	ldr	r1, =.L2e54
	mov	r0, #2
	bl	__Func_809207c
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.Lec2
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Leba
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.Leba:
	ldr	r1, =.L2e88
	mov	r0, #3
	bl	__Func_809207c
.Lec2:
	mov	r5, #0x80
	lsl	r5, #6
	mov	r0, #2
	bl	__Func_80920e8
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r2, #0x80
	lsl	r2, #7
	mov	r8, r2
	mov	r0, #2
	mov	r1, r8
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r6, #0xc0
	mov	r0, #0x3c
	bl	__Func_809163c
	lsl	r6, #7
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x3c
	bl	OvlFunc_913_200a780
	mov	r1, r5
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r1, r5
	mov	r5, #0xa0
	lsl	r5, #8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_913_200a780
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x1474
	bl	__Func_8092b94
	mov	r1, #0xa
	mov	r0, #1
	bl	OvlFunc_913_200a768
	ldr	r0, =0x147c
	bl	__Func_8092b94
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x1e
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, #0xe0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r2, #0xa
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0xce
	bl	__Func_80f9080
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r2, =.L3398
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200a7c8
	bl	__Func_80041d8
	mov	r0, #0x14
	bl	__Func_80030f8
	ldr	r0, =0x405210
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	ldr	r5, =.L2ebc
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #2
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_809207c
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1120
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	b	.L1130

	.pool_aligned

.L1120:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1130:
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r7, =.L3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1188
	mov	r0, #3
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, r5
	mov	r2, r5
	bl	__Func_8092064
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_809228c
	ldr	r1, =.L2f48
	mov	r0, #3
	bl	__Func_809207c
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #3
	mov	r1, #0x13
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
.L1188:
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #0
	bl	__Func_8092064
	ldr	r6, =.L2f48
	mov	r0, #0
	mov	r1, r6
	bl	__Func_809207c
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8092054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #1
	bl	__Func_8092064
	mov	r1, r6
	mov	r0, #1
	bl	__Func_809207c
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x13
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8092054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, r6
	mov	r0, #2
	bl	__Func_809207c
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x13
	mov	r0, #2
	bl	__Func_80924d4
	ldr	r3, =.L3398
	mov	r5, #0
	str	r5, [r3]
	mov	r0, #0xa0
	bl	__Func_809163c
	ldr	r0, =OvlFunc_913_200a7c8
	bl	__Func_8004278
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	ldr	r3, =.L3388
	ldr	r2, =.L3384
	str	r5, [r3]
	mov	r3, #0x80
	ldr	r5, =.L338c
	lsl	r3, #16
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200a974
	bl	__Func_80041d8
	mov	r0, #0xb4
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #0x50
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r3, #2
	str	r3, [r5]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1390
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.L13a0

	.pool_aligned

.L1390:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L13a0:
	ldr	r7, =.L338c
	mov	r3, #3
	str	r3, [r7]
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	mov	r6, #0xfe
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r3, =.L3390
	mov	r5, #0
	mov	r1, #0xc8
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200aad8
	bl	__Func_80041d8
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r0, #0xd
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092b08
	mov	r1, #0xfd
	ldr	r2, =0x25b0000
	mov	r0, #0xd
	lsl	r1, #16
	bl	__Func_80923e4
	ldr	r5, =.L2f6c
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_8092b08
	mov	r1, #0xe9
	mov	r0, #0xe
	lsl	r1, #16
	ldr	r2, =0x2750000
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L14ac
	mov	r0, #0xf
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r1, #0xcf
	mov	r0, #0xf
	lsl	r1, #16
	ldr	r2, =0x2610000
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_809207c
.L14ac:
	mov	r0, #0x10
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_8092b08
	mov	r1, #0xe3
	mov	r2, #0x91
	mov	r0, #0x10
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L14ee
	mov	r5, r7
.L14e2:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L14e2
.L14ee:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_809163c
	ldr	r0, =OvlFunc_913_200a974
	bl	__Func_8004278
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	mov	r0, #0xd
	bl	__Func_80920a0
	mov	r0, #0xe
	bl	__Func_80920a0
	ldr	r7, =.L3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1538
	mov	r0, #0xf
	bl	__Func_80920a0
.L1538:
	mov	r0, #0x10
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r5, =.L2fc8
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1564
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_809207c
.L1564:
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_80920fc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0xdc
	mov	r2, #0xf7
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xdc
	mov	r2, #0xf7
	lsl	r1, #16
	mov	r0, #0xc
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L15c6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L15c6:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1606
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x1488
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
.L1606:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1489
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #1
	bl	__Func_8092054
	mov	r2, #1
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #3
	mov	r2, #0
	mov	r0, #1
	neg	r1, r1
	bl	__Func_809228c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0x80
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	lsl	r5, #6
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r6, #0xc0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	lsl	r6, #7
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L17fe
	b	.L1778

	.pool_aligned

.L1778:
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_809228c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xe0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_913_200a780
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	b	.L180e
.L17fe:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L180e:
	mov	r6, #0x80
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	lsl	r6, #7
	bl	__Func_8092560
	mov	r7, #0x80
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_913_200a780
	lsl	r7, #6
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r7
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8092b08
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r2, #0
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r5, #0xc0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092560
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0x3c
	bl	OvlFunc_913_200a780
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L19e6
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1a08
.L19e6:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
.L1a08:
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1a84
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.L1a94

	.pool_aligned

.L1a84:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1a94:
	mov	r1, #0x80
	mov	r6, #0xa0
	lsl	r6, #8
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_913_200a780
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r5, #0x80
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	lsl	r5, #7
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r5
	bl	OvlFunc_913_200a780
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_913_200a780
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1c00
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	b	.L1c24

	.pool_aligned

.L1c00:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c24:
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x15
	bl	__Func_80f9080
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	ldr	r2, =.L3388
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L3384
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r6, =.L338c
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r6]
	lsl	r1, #4
	ldr	r0, =OvlFunc_913_200a974
	bl	__Func_80041d8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	lsl	r5, #8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_913_200a780
	ldr	r0, =0x149d
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	ldr	r7, =.L3394
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1cd2
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
.L1cd2:
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092b08
	mov	r3, #2
	str	r3, [r6]
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r1, #0xfd
	ldr	r2, =0x25b0000
	mov	r0, #0xd
	lsl	r1, #16
	bl	__Func_80923e4
	ldr	r5, =.L2f6c
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, #0xe9
	mov	r0, #0xe
	lsl	r1, #16
	ldr	r2, =0x2750000
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1d80
	mov	r1, #0xcf
	mov	r0, #0xf
	lsl	r1, #16
	ldr	r2, =0x2610000
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_809207c
.L1d80:
	mov	r1, #0xe3
	mov	r2, #0x91
	lsl	r2, #18
	mov	r0, #0x10
	lsl	r1, #16
	bl	__Func_80923e4
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r3, #3
	str	r3, [r6]
	mov	r5, r6
.L1da2:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L1da2
	mov	r0, #0xb
	mov	r1, #0x50
	bl	OvlFunc_913_200a768
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	mov	r6, #0xc0
	lsl	r6, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, r6
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_913_200a780
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_913_200a780
	mov	r0, #0
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.L2038

	.pool_aligned

.L2038:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #3
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_913_200a780
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_913_200a780
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	ldr	r0, =OvlFunc_913_200a974
	bl	__Func_8004278
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__Func_80030f8
	mov	r0, #0xd
	bl	__Func_80920a0
	mov	r0, #0xe
	bl	__Func_80920a0
	mov	r0, #0xf
	ldr	r7, =.L3394
	bl	__Func_80920a0
	mov	r0, #0x10
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r5, =.L2fc8
	mov	r0, #0xd
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L21c2
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_809207c
.L21c2:
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_80920fc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r5, #0xe0
	mov	r0, #2
	mov	r1, #2
	lsl	r5, #8
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_913_200a780
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L226c
	b	.L2372
.L226c:
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2302
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	b	.L2360
.L2302:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_913_200a780
	ldr	r0, =0x14b4
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
.L2360:
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	b	.L2528
.L2372:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x14b6
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_913_200a780
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L23e0
	b	.L2558
.L23e0:
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L242a
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	b	.L243a
.L242a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L243a:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24a6
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	b	.L24b6
.L24a6:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L24b6:
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L24e4
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_913_200a780
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
.L24e4:
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
.L2528:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	b	.L2660

	.pool_aligned

.L2558:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	ldr	r0, =0x14bf
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L25a0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	b	.L25b0
.L25a0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25b0:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L261c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0x14
	bl	OvlFunc_913_200a780
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_913_200a768
	b	.L262c
.L261c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L262c:
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_913_200a768
.L2660:
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L26a4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L26a4:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L26d4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L26d4:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r3, =.L3394
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L271c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L270c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L270c:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L271c:
	ldr	r0, =0x843
	bl	__Func_8079358
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_808acc4
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_2008d3c

.thumb_func_start OvlFunc_913_200a768
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r5
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a768

.thumb_func_start OvlFunc_913_200a780
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r5
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a780

.thumb_func_start OvlFunc_913_200a798
	push	{lr}
	ldr	r3, [r0, #0x18]
	ldr	r2, =0x1eb8
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L27bc
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L27bc
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L27bc
	bl	__Func_800c0f4
.L27bc:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a798

.thumb_func_start OvlFunc_913_200a7c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #7
	and	r6, r3
	cmp	r6, #0
	bne	.L284c
	ldr	r3, =.L3398
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L27e4
	mov	r0, #0xc8
	bl	__Func_80f9080
.L27e4:
	mov	r1, #0xe7
	mov	r3, #0xe6
	mov	r0, #0x1a
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L284c
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r1, #0xe7
	mov	r3, #0x9c
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_800d14c
	ldr	r1, =.L32d0
	mov	r0, r5
	bl	__Func_800c2d8
.L284c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a7c8

.thumb_func_start OvlFunc_913_200a864
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L287c
	mov	r1, #0xa
	bl	__Func_80929d8
	b	.L2882
.L287c:
	mov	r1, #7
	bl	__Func_80929d8
.L2882:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a864

.thumb_func_start OvlFunc_913_200a88c
	push	{r5, lr}
	ldr	r3, =.L3394
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L28c4
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.L28b4
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2360000
	cmp	r3, r1
	ble	.L28b4
	mov	r1, #0x99
	lsl	r1, #18
	cmp	r3, r1
	blt	.L2912
.L28b4:
	ldr	r1, =0xff35ffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.L2926
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	b	.L2906
.L28c4:
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.L28de
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	cmp	r3, r1
	ble	.L28de
	ldr	r1, =0x248ffff
	cmp	r3, r1
	ble	.L2912
.L28de:
	ldr	r1, =0xff0bffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.L28f6
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x23b0000
	cmp	r3, r1
	ble	.L28f6
	ldr	r1, =0x25cffff
	cmp	r3, r1
	ble	.L2912
.L28f6:
	ldr	r1, =0xff2cffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.L2926
	mov	r1, #0x95
	ldr	r3, [r5, #0x10]
	lsl	r1, #18
.L2906:
	cmp	r3, r1
	ble	.L2926
	mov	r2, #0x9e
	lsl	r2, #18
	cmp	r3, r2
	bge	.L2926
.L2912:
	mov	r0, #0x6a
	bl	__Func_80f9080
	ldr	r1, =.L32e4
	mov	r0, r5
	bl	__Func_800c2d8
	ldr	r2, =.L3390
	mov	r3, #1
	str	r3, [r2]
.L2926:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a88c

.thumb_func_start OvlFunc_913_200a974
	push	{r5, r6, r7, lr}
	ldr	r2, =.L338c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.L29a8
	cmp	r3, #2
	bhi	.L298a
	cmp	r3, #1
	beq	.L2990
	b	.L29e6
.L298a:
	cmp	r3, #3
	beq	.L29ca
	b	.L29e6
.L2990:
	ldr	r2, =.L3388
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L299e
	add	r3, #0x32
	str	r3, [r2]
.L299e:
	ldr	r2, =.L3384
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.L29be
.L29a8:
	ldr	r2, =.L3388
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L29b6
	add	r3, #0x32
	str	r3, [r2]
.L29b6:
	ldr	r2, =.L3384
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.L29be:
	cmp	r3, r1
	ble	.L29e6
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.L29e6
.L29ca:
	ldr	r0, =.L3384
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.L29d8
	str	r5, [r2]
	b	.L29e6
.L29d8:
	ldr	r3, =.L3388
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.L29e6:
	ldr	r7, =iwram_3001e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2aa2
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L2aa2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.L2a1a
	mov	r0, #0xf6
	bl	__Func_80f9080
.L2a1a:
	ldr	r3, =.L338c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2a3c
	bl	__Func_8004458
	ldr	r3, =.L3388
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.L3384
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.L2a4a
.L2a3c:
	bl	__Func_8004458
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.L2a4a:
	bl	__Func_8004458
	ldr	r2, [r6, #8]
	lsl	r0, #8
	ldr	r3, =0xff800000
	add	r2, r0
	add	r2, r3
	mov	r3, r5
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r1, [r5, #0x50]
	ldr	r3, =0xe666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, r1
	add	r3, #0x26
	str	r7, [r5, #8]
	str	r2, [r5, #0x10]
	strb	r0, [r3]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	ldr	r1, =.L3308
	mov	r0, r5
	bl	__Func_800c2d8
.L2aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a974

.thumb_func_start OvlFunc_913_200aad8
	push	{lr}
	mov	r0, #0xd
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2b02
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2afc
	str	r2, [r0, #0xc]
	b	.L2b02
.L2afc:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b02:
	mov	r0, #0xe
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2b2a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b24
	str	r1, [r0, #0xc]
	b	.L2b2a
.L2b24:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b2a:
	mov	r0, #0xf
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2b52
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2b4c
	str	r2, [r0, #0xc]
	b	.L2b52
.L2b4c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b52:
	mov	r0, #0x10
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2b7a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b74
	str	r1, [r0, #0xc]
	b	.L2b7a
.L2b74:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b7a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200aad8

	.section .data
	.global .L2d68
	.global .L2da8
	.global .L2dc0
	.global .L306c

.L2d68:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2d68, (0x2da8-0x2d68)
.L2da8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2da8, (0x2dc0-0x2da8)
.L2dc0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2dc0, (0x2e20-0x2dc0)
.L2e20:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e20, (0x2e54-0x2e20)
.L2e54:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e54, (0x2e88-0x2e54)
.L2e88:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e88, (0x2ebc-0x2e88)
.L2ebc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2ebc, (0x2f48-0x2ebc)
.L2f48:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f48, (0x2f6c-0x2f48)
.L2f6c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f6c, (0x2fc8-0x2f6c)
.L2fc8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2fc8, (0x3024-0x2fc8)
.L3024:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3024, (0x306c-0x3024)
.L306c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x306c, (0x30cc-0x306c)
.L30cc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30cc, (0x30e4-0x30cc)
.L30e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30e4, (0x3294-0x30e4)
.L3294:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3294, (0x32d0-0x3294)
.L32d0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32d0, (0x32e4-0x32d0)
.L32e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32e4, (0x3308-0x32e4)
.L3308:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3308

	.section .bss
	.global .L3390

	.lcomm	.L3384, 4
	.lcomm	.L3388, 4
	.lcomm	.L338c, 4
	.lcomm	.L3390, 4
	.lcomm	.L3394, 4
	.lcomm	.L3398, 4
