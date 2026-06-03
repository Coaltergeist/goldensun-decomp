	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008cc4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lcdc
	ldr	r0, =0x123b
	bl	__Func_8092b94
	b	.Lce2
.Lcdc:
	ldr	r0, =0x1348
	bl	__Func_8092b94
.Lce2:
	mov	r0, #0xd
	bl	OvlFunc_898_2008938
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008cc4

.thumb_func_start OvlFunc_898_2008cfc
	push	{lr}
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld30
	ldr	r0, =0x123c
	bl	__Func_8092b94
	b	.Ld50

	.pool_aligned

.Ld30:
	ldr	r0, =0x1349
	bl	__Func_8092b94
	mov	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld50
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Ld50:
	mov	r0, #0xe
	bl	OvlFunc_898_2008938
	bl	__Func_8091750
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008cfc

.thumb_func_start OvlFunc_898_2008d78
	push	{lr}
	mov	r0, #0xf
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ldac
	ldr	r0, =0x123d
	bl	__Func_8092b94
	b	.Ldb2

	.pool_aligned

.Ldac:
	ldr	r0, =0x134b
	bl	__Func_8092b94
.Ldb2:
	mov	r0, #0xf
	bl	OvlFunc_898_2008938
	bl	__Func_8091750
	mov	r0, #0xf
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008d78

.thumb_func_start OvlFunc_898_2008dd4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ldec
	ldr	r0, =0x123e
	bl	__Func_8092b94
	b	.Ldf2
.Ldec:
	ldr	r0, =0x134c
	bl	__Func_8092b94
.Ldf2:
	mov	r0, #0x10
	bl	OvlFunc_898_2008938
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008dd4

.thumb_func_start OvlFunc_898_2008e0c
	push	{r5, lr}
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r5, r0
	mov	r3, #1
	add	r5, #0x5b
	strb	r3, [r5]
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Le40
	ldr	r0, =0x1241
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	b	.Le58
.Le40:
	ldr	r0, =0x858
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le52
	ldr	r0, =0x13ab
	bl	__Func_8092b94
	b	.Le58
.Le52:
	ldr	r0, =0x134e
	bl	__Func_8092b94
.Le58:
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	mov	r3, #0
	strb	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008e0c

.thumb_func_start OvlFunc_898_2008e84
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x12c1
	bl	__Func_8092b94
	mov	r0, #0x15
	bl	OvlFunc_898_2008938
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008e84

.thumb_func_start OvlFunc_898_2008ea4
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_8079358
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ea4

.thumb_func_start OvlFunc_898_2008ecc
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_8079374
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x17
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ecc

.thumb_func_start OvlFunc_898_2008ef4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, r6
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809218c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r8
	bl	__Func_8091e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008ef4

.thumb_func_start OvlFunc_898_2008f3c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L2828
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_8010560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f3c

.thumb_func_start OvlFunc_898_2008f64
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L283e
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f64

.thumb_func_start OvlFunc_898_2008f8c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L2854
	mov	r1, #0x2c
	mov	r2, #0x11
	bl	__Func_8010560
	mov	r1, #0x90
	lsl	r1, #1
	mov	r0, #0xd8
	mov	r2, #7
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008f8c

.thumb_func_start OvlFunc_898_2008fb4
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_80f9080
	ldr	r0, =.L286a
	mov	r1, #0x36
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0xbc
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xe0
	mov	r2, #8
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008fb4

.thumb_func_start OvlFunc_898_2009010
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_80f9080
	ldr	r0, =.L2880
	mov	r1, #0x31
	mov	r2, #0xa
	bl	__Func_8010560
	mov	r3, #0x12
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r0, #0x94
	strb	r3, [r6, #9]
	lsl	r0, #1
	mov	r1, #0xb0
	mov	r2, #9
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009010

.thumb_func_start OvlFunc_898_200906c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L2896
	mov	r1, #0x26
	mov	r2, #6
	bl	__Func_8010560
	mov	r0, #0x78
	mov	r1, #0x90
	mov	r2, #0xa
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200906c

.thumb_func_start OvlFunc_898_2009090
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r0, #0xbc
	mov	r8, r2
	bl	__Func_80f9080
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x28
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #4
	bl	__Func_809163c
	mov	r3, #3
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r6, #0x23
	mov	r0, #0x21
	mov	r1, #0x15
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	ldrb	r2, [r6]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r6]
	ldrb	r3, [r2, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, r8
	strb	r3, [r2, #9]
	lsl	r1, #1
	mov	r0, #0x40
	mov	r2, #0xb
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009090

.thumb_func_start OvlFunc_898_200913c
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_80f9080
	ldr	r0, =.L28ac
	mov	r1, #0x23
	mov	r2, #9
	bl	__Func_8010560
	mov	r3, #4
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r5, #0x23
	mov	r0, #0x21
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
	mov	r0, #0x48
	mov	r1, #0xa0
	mov	r2, #0xc
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200913c

.thumb_func_start OvlFunc_898_2009198
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r1, #0x84
	lsl	r1, #1
	mov	r0, #0x98
	mov	r2, #0xd
	bl	OvlFunc_898_2008ef4
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009198

.thumb_func_start OvlFunc_898_20091b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r2
	mov	r6, r1
	mov	r10, r3
	bl	__Func_8092054
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r7, r0
	lsl	r1, #10
	mov	r0, r5
	lsl	r2, #9
	bl	__Func_8092064
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r10
	str	r3, [r7, #0x48]
	mov	r3, #0
	str	r3, [r7, #0x44]
	str	r2, [r7, #0x28]
	mov	r0, r7
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_8092158
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r0, r5
	mov	r1, r6
	mov	r2, r8
	bl	__Func_80923e4
	mov	r5, #0x3c
	b	.L120c
.L120a:
	sub	r5, #1
.L120c:
	cmp	r5, #0
	beq	.L121e
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0x2a
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	bne	.L120a
.L121e:
	mov	r0, r7
	mov	r1, #1
	bl	__Func_800c528
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x48]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20091b0

.thumb_func_start OvlFunc_898_2009238
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x64
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x867
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L12b2
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_8092560
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x17
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x17
	bl	OvlFunc_898_20091b0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x17
	lsl	r1, #1
	mov	r2, #0x78
	bl	__Func_80921c4
	ldr	r0, =0x867
	bl	__Func_8079358
.L12b2:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009238

.thumb_func_start OvlFunc_898_20092c0
	push	{lr}
	mov	r0, #0xe7
	bl	__Func_8078a08
	bl	__Func_80916b0
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xcc
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092560
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092560
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092560
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0xc4
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__Func_8092adc
	ldr	r0, =0x858
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20092c0

.thumb_func_start OvlFunc_898_200936c
	push	{r5, r6, r7, lr}
	ldr	r0, =0x87a
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1380
	mov	r0, #0xe
	bl	__Func_8091e9c
.L1380:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L13a0
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.L13a0:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_common0_70
	mov	r0, #0xe
	bl	__Func_8092054
	ldr	r5, =OvlFunc_898_2008314
	mov	r3, r0
	add	r3, #0x64
	mov	r7, #1
	strh	r7, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, r0
	mov	r6, #0
	add	r3, #0x64
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	ldr	r0, =0x858
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L13ea
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
.L13ea:
	ldr	r0, =0x853
	bl	__Func_8079338
	mov	r5, r0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L140e
	mov	r3, r7
	and	r3, r5
	cmp	r3, #0
	beq	.L140e
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r3, =OvlFunc_898_20083ac
	str	r3, [r0, #0x6c]
.L140e:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bgt	.L14fe
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L14fe
	ldr	r0, =0x867
	bl	__Func_8079374
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L14fe
	ldr	r0, =0x856
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L14fe
	bl	__Func_80916b0
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L145a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L145a:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	bne	.L1472
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	b	.L1480
.L1472:
	mov	r1, #0xe0
	mov	r2, #0xa2
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
.L1480:
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092848
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1328
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L14e2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L14e2:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80917d0
	bl	__Func_8091750
.L14fe:
	ldr	r0, =0x867
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1516
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_80923e4
.L1516:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.L15dc
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L15d4
	ldr	r0, =0x856
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L15d4
	mov	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L15d4
	bl	__Func_80916b0
	mov	r1, #0xa0
	mov	r2, #0x9b
	mov	r0, #2
	lsl	r1, #14
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092848
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1328
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L15b8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L15b8:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80917d0
	bl	__Func_8091750
.L15d4:
	ldr	r0, =0x12f
	bl	__Func_8079374
	b	.L15f4
.L15dc:
	cmp	r3, #0xd
	bne	.L15f4
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L15f4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L15f4:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_200936c

.thumb_func_start OvlFunc_898_2009638
	push	{r5, lr}
	ldmia	r0!, {r5}
	ldmia	r1!, {r3}
	ldmia	r0!, {r4}
	sub	r5, r3
	ldmia	r1!, {r3}
	ldr	r2, [r1]
	sub	r4, r3
	ldr	r3, [r0]
	sub	r3, r2
	asr	r5, #16
	asr	r4, #16
	asr	r3, #16
	mov	r0, r5
	mul	r0, r5
	mov	r2, r4
	mul	r2, r4
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_2009638

.thumb_func_start OvlFunc_898_2009674
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	mov	r7, r8
	mov	r5, r6
	add	r7, #8
	add	r5, #8
	mov	r10, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r5
	mov	r11, r3
	mov	r9, r2
	bl	OvlFunc_898_2009638
	cmp	r0, r10
	blt	.L16a8
	mov	r3, r11
	cmp	r3, #0
	beq	.L16fe
.L16a8:
	mov	r2, r8
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r5]
	sub	r1, r3
	bl	__Func_80044d0
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r6, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L16e8
	cmp	r1, r3
	beq	.L16e8
	cmp	r4, r3
	beq	.L16e8
	mov	r3, r11
	cmp	r3, #0
	beq	.L170e
.L16e8:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_800c300
	mov	r2, #1
	mov	r9, r2
	b	.L170e
.L16fe:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
.L170e:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_2009674

.thumb_func_start OvlFunc_898_2009724
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r5
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009724

.thumb_func_start OvlFunc_898_200973c
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, r5
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200973c

.thumb_func_start OvlFunc_898_2009754
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #0x30]
	add	r3, r2
	str	r3, [r6, #8]
	str	r3, [r6, #0x38]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1774
	ldr	r3, [r6, #0xc]
	ldr	r2, [r6, #0x34]
	b	.L1784
.L1774:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0x34]
	add	r3, r2
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x40]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #3
.L1784:
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r5, [r6, #0x30]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Func_8000af0
	sub	r5, r0
	str	r5, [r6, #0x30]
	ldr	r5, [r6, #0x34]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Func_8000af0
	sub	r5, r0
	str	r5, [r6, #0x34]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009754

.thumb_func_start OvlFunc_898_20097ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r8, r0
	cmp	r0, #0
	bne	.L17c6
	b	.L18da
.L17c6:
	bl	__Func_8004458
	mov	r5, r0
	bl	__Func_8004458
	lsl	r5, #3
	mov	r3, r0
	lsr	r5, #16
	mov	r0, r8
	lsl	r3, #3
	ldr	r2, [r0, #8]
	sub	r5, #4
	lsr	r3, #16
	ldr	r1, [r0, #0x10]
	sub	r3, #4
	lsl	r5, #16
	add	r5, r2
	lsl	r3, #16
	ldr	r2, [r0, #0xc]
	add	r3, r1
	mov	r0, #0xac
	mov	r1, r5
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L18da
	ldr	r1, [r6, #0x50]
	mov	r10, r1
	bl	__Func_8004458
	mov	r3, #1
	and	r0, r3
	cmp	r0, #1
	bne	.L181e
	mov	r0, r6
	mov	r1, #3
	bl	__Func_800c300
	ldr	r1, =.L28c4
	mov	r0, r6
	bl	__Func_800c2d8
	b	.L182e
.L181e:
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, =.L28dc
	mov	r0, r6
	bl	__Func_800c2d8
.L182e:
	mov	r2, #0
	mov	r3, r6
	mov	r9, r2
	add	r3, #0x55
	mov	r0, r9
	strb	r0, [r3]
	mov	r3, #2
	and	r3, r7
	cmp	r3, #0
	beq	.L1882
	bl	__Func_8004458
	mov	r1, #0xa
	bl	_Func_8000b50
	mov	r5, #1
	and	r7, r5
	mov	r3, r7
	eor	r3, r5
	lsl	r3, #2
	add	r0, #5
	add	r0, r3
	ldr	r3, =0x3332
	mul	r3, r7
	ldr	r1, =0xffffe667
	add	r3, r1
	mul	r3, r0
	str	r3, [r6, #0x34]
	bl	__Func_8004458
	mov	r1, #0xf
	bl	_Func_8000b50
	ldr	r3, =0x1999
	sub	r0, #7
	mul	r3, r0
	str	r3, [r6, #0x30]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, r9
	strh	r2, [r3]
	b	.L18b4
.L1882:
	bl	__Func_8004458
	mov	r1, #0xa
	bl	_Func_8000b50
	ldr	r3, =0x3332
	mul	r3, r7
	ldr	r1, =0xffffe667
	add	r0, #8
	add	r3, r1
	mul	r3, r0
	str	r3, [r6, #0x30]
	bl	__Func_8004458
	mov	r1, #0xe
	bl	_Func_8000b50
	ldr	r3, =0x1999
	add	r0, #1
	mul	r3, r0
	mov	r2, r6
	str	r3, [r6, #0x34]
	add	r2, #0x64
	mov	r3, #1
	strh	r3, [r2]
.L18b4:
	ldr	r3, =OvlFunc_898_2009754
	mov	r2, r10
	add	r2, #0x26
	str	r3, [r6, #0x6c]
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r10
	ldrb	r1, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	mov	r0, r10
	strb	r3, [r0, #9]
.L18da:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20097ac

	.section .data
	.global .L2414
	.global .L2630
	.global .L2094
	.global .L20cc
	.global .L227c
	.global .L1f5c

	.incbin "overlays/rom_793768/orig.bin", 0x1bc0, (0x1f5c-0x1bc0)
.L1f5c:
	.incbin "overlays/rom_793768/orig.bin", 0x1f5c, (0x2094-0x1f5c)
.L2094:
	.incbin "overlays/rom_793768/orig.bin", 0x2094, (0x20cc-0x2094)
.L20cc:
	.incbin "overlays/rom_793768/orig.bin", 0x20cc, (0x227c-0x20cc)
.L227c:
	.incbin "overlays/rom_793768/orig.bin", 0x227c, (0x2414-0x227c)
.L2414:
	.incbin "overlays/rom_793768/orig.bin", 0x2414, (0x2630-0x2414)
.L2630:
	.incbin "overlays/rom_793768/orig.bin", 0x2630, (0x2828-0x2630)
.L2828:
	.incbin "overlays/rom_793768/orig.bin", 0x2828, (0x283e-0x2828)
.L283e:
	.incbin "overlays/rom_793768/orig.bin", 0x283e, (0x2854-0x283e)
.L2854:
	.incbin "overlays/rom_793768/orig.bin", 0x2854, (0x286a-0x2854)
.L286a:
	.incbin "overlays/rom_793768/orig.bin", 0x286a, (0x2880-0x286a)
.L2880:
	.incbin "overlays/rom_793768/orig.bin", 0x2880, (0x2896-0x2880)
.L2896:
	.incbin "overlays/rom_793768/orig.bin", 0x2896, (0x28ac-0x2896)
.L28ac:
	.incbin "overlays/rom_793768/orig.bin", 0x28ac, (0x28c4-0x28ac)
.L28c4:
	.incbin "overlays/rom_793768/orig.bin", 0x28c4, (0x28dc-0x28c4)
.L28dc:
	.incbin "overlays/rom_793768/orig.bin", 0x28dc
