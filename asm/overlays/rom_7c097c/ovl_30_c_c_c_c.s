	.include "macros.inc"

.thumb_func_start OvlFunc_936_200b1b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	ldrh	r3, [r0, #6]
	ldr	r2, =.L3d84
	lsr	r3, #12
	lsl	r5, r3, #2
	ldr	r3, [r2, r5]
	mov	r8, r0
	mov	r1, #0xa
	ldrsh	r0, [r0, r1]
	mov	r10, r2
	asr	r2, r3, #16
	add	r0, r2
	mov	r2, r8
	mov	r4, #0x12
	ldrsh	r1, [r2, r4]
	lsl	r3, #16
	asr	r3, #16
	add	r1, r3
	asr	r0, #4
	asr	r1, #4
	bl	OvlFunc_936_200b184
	mov	r7, r0
	cmp	r7, #0
	beq	.L3288
	mov	r3, #0
	mov	r2, r7
	add	r2, #0x22
	mov	r9, r3
	mov	r3, #2
	strb	r3, [r2]
	mov	r4, r10
	ldr	r1, [r4, r5]
	ldr	r2, =0xffff0000
	ldr	r3, [r7, #8]
	and	r2, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	lsl	r1, #16
	add	r3, r1
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__Func_80120dc
	cmp	r0, #0
	bgt	.L3288
	mov	r1, #8
	mov	r0, r8
	bl	__Func_800c300
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__Func_80030f8
	mov	r0, #0xb9
	bl	__Func_80f9080
	str	r5, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, r7
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_800d14c
	mov	r1, r8
	str	r5, [r1, #0x30]
	str	r5, [r1, #0x34]
	mov	r0, r8
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_800ca6c
	bl	__Func_809202c
	ldr	r3, [r6]
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	mov	r2, r9
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x2c]
	mov	r0, r8
	mov	r1, #1
	bl	__Func_800c300
	bl	OvlFunc_936_200b2a4
.L3288:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b1b8

.thumb_func_start OvlFunc_936_200b2a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #9
	bl	__Func_8092054
	mov	r10, r0
	ldr	r0, =0x302
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.L32cc
	b	.L351e
.L32cc:
	ldr	r3, [r6, #8]
	asr	r3, #19
	cmp	r3, #0x1d
	ble	.L32d6
	b	.L351e
.L32d6:
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r8, r0
	bl	__Func_80916b0
	mov	r3, #1
	mov	r0, #7
	mov	r1, #0x2c
	mov	r2, #1
	str	r5, [sp]
	str	r3, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.L32f8:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #4
	bl	__Func_809163c
	cmp	r5, #0x46
	bne	.L3318
	ldr	r0, =0x302
	bl	__Func_8079358
.L3318:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.L32f8
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r1, #0x6d
	mov	r2, #0xd
	mov	r3, #0x6d
	mov	r0, #0x10
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #0x96
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #16
	bl	__Func_80923e4
	ldr	r1, =.L4268
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r6, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010424
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #4
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #7
	mov	r1, #0xb
	mov	r2, #7
	mov	r3, #0x2a
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0xc
	mov	r2, #0x47
	mov	r3, #0x2b
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xc
	mov	r3, #0xc
	mov	r5, #0x2c
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_936_20095b4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	bl	__Func_8091750
.L351e:
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L352a
	b	.L36ea
.L352a:
	mov	r2, r10
	ldr	r3, [r2, #8]
	asr	r3, #19
	cmp	r3, #0x57
	ble	.L3536
	b	.L36ea
.L3536:
	bl	__Func_80916b0
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.L3540:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x6b
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #4
	bl	__Func_809163c
	cmp	r5, #0x46
	bne	.L3574
	ldr	r0, =0x303
	bl	__Func_8079358
	b	.L3574

	.pool_aligned

.L3574:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.L3540
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r1, #0x6d
	mov	r2, #0x2a
	mov	r3, #0x6d
	mov	r0, #0x2d
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r5, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x43
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x44
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x26
	mov	r1, #0xe
	mov	r2, #0x26
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x66
	mov	r1, #0xe
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0x25
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #0xc
	mov	r0, #0x25
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_936_20095b4
	bl	__Func_8091750
.L36ea:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b2a4

.thumb_func_start OvlFunc_936_200b6f8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.L370e
	bl	__Func_800c0f4
	b	.L372e
.L370e:
	cmp	r3, #1
	bne	.L371e
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	b	.L372e
.L371e:
	ldr	r3, [r5, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
.L372e:
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x24]
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r1, [r5, #0x28]
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r5, #0xc]
	mov	r3, r2
	cmp	r2, #0
	bge	.L3746
	add	r3, #0xff
.L3746:
	asr	r3, #8
	sub	r3, r2, r3
	str	r3, [r5, #0x24]
	mov	r3, r1
	cmp	r1, #0
	bge	.L3754
	add	r3, #0xf
.L3754:
	asr	r3, #4
	sub	r3, r1, r3
	str	r3, [r5, #0x28]
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b6f8

.thumb_func_start OvlFunc_936_200b768
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_8092054
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	ldr	r2, =0xfffffe83
	add	r3, r2
	mov	r6, r0
	cmp	r3, #0xc
	bhi	.L37ae
	mov	r2, #0x12
	ldrsh	r3, [r5, r2]
	ldr	r2, =0x309
	cmp	r3, r2
	ble	.L37ae
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	b	.L37f4
.L37ae:
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L37f4
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xf5
	bgt	.L37f4
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L37f4
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L37ea
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	mov	r0, #0xe6
	bl	__Func_80f9080
	ldr	r0, =0x202
	bl	__Func_8079358
.L37ea:
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	OvlFunc_936_200b864
.L37f4:
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L383c
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	ldr	r2, =0x2c5
	cmp	r3, r2
	bgt	.L383c
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L383c
	ldr	r0, =0x203
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3832
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	mov	r0, #0xe6
	bl	__Func_80f9080
	ldr	r0, =0x203
	bl	__Func_8079358
.L3832:
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	bl	OvlFunc_936_200b864
.L383c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b768

.thumb_func_start OvlFunc_936_200b864
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r5, r0
	bl	__Func_8004458
	mov	r2, r0
	ldr	r3, =0xfff80000
	lsl	r2, #3
	lsr	r2, #16
	add	r5, r3
	lsl	r2, #16
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r6
	add	r2, r3
	mov	r1, r5
	mov	r0, #0xde
	mov	r3, r8
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L38fa
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #9
	bl	__Func_80929d8
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800c528
	bl	__Func_8004458
	lsl	r0, #1
	lsr	r0, #16
	sub	r0, #1
	lsl	r0, #16
	str	r0, [r5, #0x24]
	bl	__Func_8004458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	mov	r2, r5
	str	r3, [r5, #0x28]
	add	r2, #0x64
	mov	r3, #0x14
	strh	r3, [r2]
	sub	r2, #3
	mov	r3, #1
	mov	r0, r5
	mov	r1, #1
	strb	r3, [r2]
	bl	__Func_800c300
	ldr	r1, =.L5120
	mov	r0, r5
	bl	__Func_800c2d8
.L38fa:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b864

.thumb_func_start OvlFunc_936_200b90c
	push	{r5, r6, r7, lr}
	mov	r0, #0x1a
	bl	__Func_8092054
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_8002322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L3926
	neg	r5, r5
.L3926:
	ldr	r0, [r6, #0x30]
	bl	__Func_800231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x3c]
	ldr	r0, [r6, #0x30]
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #8
	str	r3, [r6, #0xc]
	add	r0, r2
	bl	__Func_800231c
	asr	r0, #3
	strh	r0, [r7, #0x1e]
	bl	__Func_8004458
	mov	r5, r0
	bl	__Func_8004458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b90c

.thumb_func_start OvlFunc_936_200b970
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_8092054
	mov	r3, #0xe
	mov	r6, r0
	mov	r5, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.L39be
	mov	r0, r6
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r6
	str	r3, [r6, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L39be:
	ldr	r0, =0x201
	bl	__Func_8079358
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b970

.thumb_func_start OvlFunc_936_200b9d4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_8002322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L39e8
	neg	r5, r5
.L39e8:
	ldr	r0, [r6, #0x30]
	bl	__Func_800231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_800231c
	cmp	r0, #0
	bge	.L3a0e
	add	r0, #7
.L3a0e:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Func_8004458
	mov	r5, r0
	bl	__Func_8004458
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_200b9d4

.thumb_func_start OvlFunc_936_200ba3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__Func_8092054
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3aa0
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L3aa0:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_936_200b9d4
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200ba3c

	.section .data
	.global .L3dc4
	.global .L3e00
	.global .L3eac
	.global .L3ec0
	.global .L3fb0
	.global .L4034
	.global .L40cc
	.global .L4164
	.global .L41ac
	.global .L421c
	.global .L4230
	.global .L4948
	.global .L50e0
	.global .L4750
	.global .L4768
	.global .L4a20
	.global .L4a80
	.global .L4b58
	.global .L4be8
	.global .L4bf4
	.global .L4e88
	.global .L4edc
	.global .L4f24
	.global .L4f54
	.global .L4f9c
	.global .L4298
	.global .L42c8
	.global .L4448
	.global .L44a8
	.global .L4520
	.global .L4580
	.global .L4628

.L3d84:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3d84, (0x3dc4-0x3d84)
.L3dc4:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3dc4, (0x3e00-0x3dc4)
.L3e00:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3e00, (0x3eac-0x3e00)
.L3eac:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3eac, (0x3ec0-0x3eac)
.L3ec0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3ec0, (0x3fb0-0x3ec0)
.L3fb0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3fb0, (0x4034-0x3fb0)
.L4034:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4034, (0x40cc-0x4034)
.L40cc:
	.incbin "overlays/rom_7c097c/orig.bin", 0x40cc, (0x4164-0x40cc)
.L4164:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4164, (0x41ac-0x4164)
.L41ac:
	.incbin "overlays/rom_7c097c/orig.bin", 0x41ac, (0x421c-0x41ac)
.L421c:
	.incbin "overlays/rom_7c097c/orig.bin", 0x421c, (0x4230-0x421c)
.L4230:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4230, (0x4268-0x4230)
.L4268:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4268, (0x4298-0x4268)
.L4298:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4298, (0x42c8-0x4298)
.L42c8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x42c8, (0x4448-0x42c8)
.L4448:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4448, (0x44a8-0x4448)
.L44a8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x44a8, (0x4520-0x44a8)
.L4520:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4520, (0x4580-0x4520)
.L4580:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4580, (0x4628-0x4580)
.L4628:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4628, (0x46b8-0x4628)
.L46b8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x46b8, (0x4750-0x46b8)
.L4750:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4750, (0x4768-0x4750)
.L4768:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4768, (0x4948-0x4768)
.L4948:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4948, (0x4a20-0x4948)
.L4a20:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4a20, (0x4a80-0x4a20)
.L4a80:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4a80, (0x4b58-0x4a80)
.L4b58:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4b58, (0x4be8-0x4b58)
.L4be8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4be8, (0x4bf4-0x4be8)
.L4bf4:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4bf4, (0x4e88-0x4bf4)
.L4e88:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4e88, (0x4edc-0x4e88)
.L4edc:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4edc, (0x4f24-0x4edc)
.L4f24:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f24, (0x4f54-0x4f24)
.L4f54:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f54, (0x4f9c-0x4f54)
.L4f9c:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f9c, (0x50e0-0x4f9c)
.L50e0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x50e0, (0x5120-0x50e0)
.L5120:
	.incbin "overlays/rom_7c097c/orig.bin", 0x5120

	.section .bss
	.global .L5144

	.lcomm	.Lunused_5138, 0xc
	.lcomm	.L5144, 4
