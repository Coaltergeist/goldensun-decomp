	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008c9c
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0x14
	mov	r1, #0xa
	mov	r0, #0
	bl	__Func_8092848
	ldr	r0, =0x1c8d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	ldr	r0, =0x81f
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008c9c

.thumb_func_start OvlFunc_883_2008cd0
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	ldr	r0, =0x1c9a
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008cd0

.thumb_func_start OvlFunc_883_2008d2c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_809280c
	ldr	r0, =0x1c9d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093054
	ldr	r0, =0x307
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008d2c

.thumb_func_start OvlFunc_883_2008d70
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_8079358
	mov	r3, #0xa
	mov	r2, #0x54
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x54
	mov	r2, #7
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008d70

.thumb_func_start OvlFunc_883_2008d98
	push	{lr}
	mov	r0, #0x84
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_8079374
	mov	r3, #0xa
	mov	r2, #0x54
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x59
	mov	r2, #7
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008d98

.thumb_func_start OvlFunc_883_2008dc0
	push	{lr}
	mov	r0, #0xbc
	bl	__Func_80f9080
	ldr	r0, =.L7544
	mov	r1, #0x2d
	mov	r2, #0xb
	bl	__Func_8010560
	mov	r2, #0xd2
	mov	r0, #0
	ldr	r1, =0x101
	lsl	r2, #1
	bl	__Func_809218c
	mov	r0, #0xb
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008dc0

.thumb_func_start OvlFunc_883_2008df0
	push	{lr}
	ldr	r0, =0x801
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Le02
	bl	OvlFunc_883_2008fec
	b	.Le0e
.Le02:
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #1
	bl	__Func_8091e9c
.Le0e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008df0

.thumb_func_start OvlFunc_883_2008e18
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #3
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e18

.thumb_func_start OvlFunc_883_2008e2c
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #4
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e2c

.thumb_func_start OvlFunc_883_2008e40
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e40

.thumb_func_start OvlFunc_883_2008e54
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L755a
	mov	r1, #0x36
	mov	r2, #0x20
	bl	__Func_8010560
	mov	r1, #0xcb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x2d7
	bl	__Func_809218c
	mov	r0, #5
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e54

.thumb_func_start OvlFunc_883_2008e84
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L7570
	mov	r1, #0x2d
	mov	r2, #0x27
	bl	__Func_8010560
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x325
	bl	__Func_809218c
	mov	r0, #6
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e84

.thumb_func_start OvlFunc_883_2008eb4
	push	{lr}
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf20
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lf20
	bl	__Func_80916b0
	ldr	r0, =0x11b6
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lefc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	b	.Lf1a
.Lefc:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	mov	r0, #0x28
	strh	r3, [r2]
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.Lf1a:
	bl	__Func_8091750
	b	.Lf44
.Lf20:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L755a
	mov	r1, #0x32
	mov	r2, #0x2c
	bl	__Func_8010560
	mov	r1, #0xaa
	mov	r2, #0xde
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r0, #7
	bl	__Func_8091e9c
.Lf44:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008eb4

.thumb_func_start OvlFunc_883_2008f5c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L7570
	mov	r1, #0x31
	mov	r2, #0x45
	bl	__Func_8010560
	mov	r1, #0xa3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x466
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008f5c

.thumb_func_start OvlFunc_883_2008f8c
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L7586
	mov	r1, #0x34
	mov	r2, #0x4c
	bl	__Func_8010560
	mov	r1, #0xbb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x4d6
	bl	__Func_809218c
	mov	r0, #9
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008f8c

.thumb_func_start OvlFunc_883_2008fbc
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L755a
	mov	r1, #0x23
	mov	r2, #0x4a
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0x66
	ldr	r2, =0x4b6
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008fbc

.thumb_func_start OvlFunc_883_2008fec
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #5
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r3, [r6, #8]
	str	r3, [r5, #8]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	ldr	r3, [r6, #0xc]
	mov	r0, #1
	str	r3, [r5, #0x14]
	bl	__Func_80030f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #5
	mov	r1, #0x6e
	ldr	r2, =0x11b
	bl	__Func_80921c4
	mov	r2, #2
	mov	r0, #0
	mov	r1, #5
	bl	__Func_8092848
	ldr	r0, =0xf39
	bl	__Func_8092b94
	ldr	r2, [r6, #8]
	ldr	r3, [r5, #8]
	cmp	r2, r3
	bge	.L1066
	ldr	r0, =0xa005
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	b	.L1070
.L1066:
	ldr	r0, =0x8005
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
.L1070:
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L109e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__Func_8092128
.L109e:
	mov	r0, #5
	bl	__Func_80923c4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0
	mov	r1, #0x6e
	ldr	r2, =0x12f
	bl	__Func_80921c4
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008fec

.thumb_func_start OvlFunc_883_20090d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, =0x808
	sub	sp, #0xc
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L11b2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r8, r3
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	ldr	r0, =0xf4d
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r7, sp
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	mov	r2, r8
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r8
	str	r7, [r3]
	mov	r10, r2
	mov	r6, #0
	mov	r5, r7
.L114e:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__Func_809163c
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L114e
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =0xf4f
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #6
	bl	__Func_809163c
	mov	r6, #0
	mov	r5, r7
.L1180:
	ldr	r3, [r5, #8]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__Func_809163c
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L1180
	mov	r3, r10
	mov	r2, r8
	str	r3, [r2]
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0x46
	ldr	r2, =0x2e5
	bl	__Func_80921c4
	bl	__Func_8091750
.L11b2:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20090d8

.thumb_func_start OvlFunc_883_20091d8
	push	{r5, lr}
	ldr	r0, =0x808
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1230
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__Func_8092064
	ldr	r5, =0xf4d
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	add	r5, #2
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r0, #6
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0x45
	ldr	r2, =0x366
	bl	__Func_80921c4
	bl	__Func_8091750
.L1230:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20091d8

.thumb_func_start OvlFunc_883_2009244
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	mov	r1, #0xa
	mov	r2, #0xb
	mov	r3, #1
	mov	r0, #0
	bl	OvlFunc_883_200b2b0
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079358
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009244

.thumb_func_start OvlFunc_883_2009280
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #1
	mov	r0, #0
	bl	OvlFunc_883_200b380
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079374
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x2e
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009280

.thumb_func_start OvlFunc_883_20092bc
	push	{r5, r6, lr}
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0
	bl	__Func_8092560
	add	r5, #0x5a
	mov	r0, #0
	mov	r1, #0xd7
	ldr	r2, =0x193
	bl	__Func_809218c
	ldrb	r3, [r5]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0xa6
	strb	r3, [r5]
	mov	r0, #0x16
	lsl	r1, #16
	ldr	r2, =0x1770000
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	ldrb	r3, [r5]
	mov	r1, #0xa0
	eor	r3, r6
	mov	r2, #0xa0
	strb	r3, [r5]
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_8092064
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	ldr	r2, =0x18b
	mov	r0, #0x16
	mov	r1, #0xca
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x18
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r1, =.L759c
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0x16
	ldr	r1, =0x103
	bl	__Func_80937b8
	ldr	r1, =.L75ec
	mov	r0, #0x16
	bl	__Func_809207c
	mov	r0, #0
	bl	__Func_80920e8
	mov	r1, #0x80
	mov	r2, #0xed
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x16
	bl	__Func_80920e8
	mov	r1, #0x80
	mov	r2, #0xe4
	lsl	r2, #1
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xfce
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8093054
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, =OvlFunc_883_200d72c
	ldr	r1, =.L6248
	str	r3, [r0, #0x6c]
	mov	r0, #0x16
	bl	__Func_809207c
	ldr	r0, =0x823
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20092bc

.thumb_func_start OvlFunc_883_2009454
	push	{r5, lr}
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r5, r0
	ldr	r0, =0x823
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L147c
	mov	r3, r5
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L147c
	ldr	r0, =.L763c
	ldr	r1, =.L76cc
	bl	OvlFunc_883_2009490
.L147c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009454

.thumb_func_start OvlFunc_883_2009490
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r0
	mov	r0, #0x16
	mov	r8, r1
	bl	__Func_8092054
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, r5
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0x16
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, r8
	mov	r0, #0x16
	bl	__Func_80920fc
	mov	r0, #0
	bl	__Func_80920e8
	mov	r5, #0x80
	mov	r0, #0x14
	bl	__Func_809163c
	lsl	r5, #9
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	str	r5, [r6, #0x18]
	str	r5, [r6, #0x1c]
	mov	r0, #0
	bl	__Func_8092054
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	ldr	r0, =0xfce
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8093054
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, =OvlFunc_883_200d72c
	ldr	r1, =.L6248
	str	r3, [r0, #0x6c]
	mov	r0, #0x16
	bl	__Func_809207c
	bl	__Func_8091750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009490

.thumb_func_start OvlFunc_883_2009554
	push	{r5, lr}
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r5, r0
	ldr	r0, =0x823
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L157c
	mov	r3, r5
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L157c
	ldr	r0, =.L7748
	ldr	r1, =.L77c4
	bl	OvlFunc_883_2009490
.L157c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009554

.thumb_func_start OvlFunc_883_2009590
	push	{r5, lr}
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r5, r0
	ldr	r0, =0x823
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L15c6
	mov	r3, r5
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	cmp	r0, #1
	bne	.L15ba
	ldr	r0, =.L7748
	ldr	r1, =.L76cc
	bl	OvlFunc_883_2009490
	b	.L15c6
.L15ba:
	cmp	r0, #2
	bne	.L15c6
	ldr	r0, =.L7748
	ldr	r1, =.L77c4
	bl	OvlFunc_883_2009490
.L15c6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009590

.thumb_func_start OvlFunc_883_20095dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_8093554
	mov	r1, #0
	mov	r6, r0
	mov	r8, r1
	mov	r3, r6
	add	r3, #0x55
	mov	r2, r8
	mov	r1, #0xa0
	lsl	r1, #16
	strb	r2, [r3]
	ldr	r0, =0x17f0000
	ldr	r2, =0x36d0000
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_809163c
	bl	__Func_800fe9c
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x29
	mov	r2, #7
	mov	r3, #3
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r9, r3
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #1
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x67
	mov	r2, #0x52
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0
	bl	__Func_8092054
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x55
	str	r1, [sp, #0x1c]
	ldrb	r2, [r1]
	mov	r3, r8
	str	r2, [sp, #0x20]
	mov	r0, #0
	strb	r3, [r1]
	ldr	r2, =0x2b20000
	ldr	r1, =0x1970000
	bl	__Func_80923e4
	mov	r1, #0xc4
	mov	r2, #0xe0
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x95
	mov	r2, #0xb8
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x95
	mov	r2, #0xbe
	mov	r0, #5
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	ldr	r1, =.L6590
	mov	r0, #0
	mov	r10, r1
	bl	__Func_809207c
	mov	r0, #0x17
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_883_200b45c
	ldr	r2, =iwram_3001ebc
	mov	r1, #0xe0
	mov	r11, r2
	ldr	r2, [r2]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, r8
	str	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_8091dc8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092064
	ldr	r1, =.L6614
	mov	r0, #5
	bl	__Func_809207c
	ldr	r1, =.L65cc
	mov	r0, #1
	bl	__Func_809207c
	mov	r7, #0x80
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	lsl	r7, #9
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xca
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc3
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x17
	bl	__Func_8092158
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc9
	mov	r2, #0xcf
	lsl	r2, #2
	lsl	r1, #1
	mov	r0, #0x17
	bl	__Func_8092158
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0xc3
	ldr	r2, =0x34a0000
	mov	r0, #0x17
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	mov	r1, r10
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0xc8
	bl	__Func_809163c
	mov	r1, r9
	str	r1, [sp]
	mov	r3, #0x29
	mov	r2, #0x54
	mov	r0, #7
	mov	r1, #0x66
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r1, #1
	mov	r0, #0
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x179
	ldr	r2, =0x34b
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc3
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x17
	bl	__Func_8092158
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xcf
	lsl	r2, #2
	ldr	r1, =0x179
	mov	r0, #0x17
	bl	__Func_8092158
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_80923e4
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	mov	r1, r10
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0xc8
	bl	__Func_809163c
	mov	r3, #0x29
	mov	r2, #0x53
	mov	r0, #6
	mov	r1, #0x66
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r1, #1
	mov	r0, #0
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb4
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x357
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x18
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc3
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x18
	bl	__Func_8092158
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb4
	ldr	r2, =0x34a
	lsl	r1, #1
	mov	r0, #0x18
	bl	__Func_8092158
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_80923e4
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	mov	r1, r10
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0xc8
	bl	__Func_809163c
	b	.L1a50

	.pool_aligned

.L1a50:
	mov	r3, #0x2a
	mov	r2, #0x52
	mov	r0, #5
	mov	r1, #0x67
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809207c
	ldr	r0, =0xf03
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r3, #0
	mov	r0, #0x15
	mov	r1, #5
	mov	r2, #6
	bl	OvlFunc_883_200b2b0
	mov	r0, #0x15
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r2, #0xd0
	ldr	r1, =0x18d
	lsl	r2, #2
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xba
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1ba2
	mov	r3, r11
	ldr	r2, [r3]
	mov	r1, #0xec
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1ba2:
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8093040
	ldr	r0, =0xf0a
	bl	__Func_8092b94
	mov	r1, #0xc1
	lsl	r1, #1
	ldr	r2, =0x349
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L1c26
	mov	r3, r11
	ldr	r2, [r3]
	mov	r1, #0xec
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c26:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xf0e
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc1
	ldr	r2, =0x339
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xba
	mov	r2, #0xd0
	mov	r0, #0x15
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #0xa0
	mov	r2, #0xd7
	mov	r3, #1
	ldr	r0, =0x1790000
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r2, #0x80
	mov	r1, r7
	mov	r0, #5
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x80
	mov	r1, r7
	mov	r0, #1
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xe2
	mov	r0, #1
	ldr	r1, =0x171
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xc4
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r3, #0
	mov	r0, #5
	mov	r1, #0xa
	mov	r2, #0xb
	bl	OvlFunc_883_200b2b0
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #5
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xc4
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x34b
	bl	__Func_80921c4
	mov	r1, #0x90
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r3, #0
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0xb
	b	.L1e8c

	.pool_aligned

.L1e8c:
	bl	OvlFunc_883_200b2b0
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc4
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #5
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r7, #0xfe
	mov	r3, r7
	and	r3, r2
	mov	r1, #0xcc
	strb	r3, [r0]
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #5
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	mov	r1, #0x80
	strb	r3, [r0]
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_8092560
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092560
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #1
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #0xa0
	mov	r3, #1
	ldr	r0, =0x1750000
	lsl	r1, #16
	ldr	r2, =0x3450000
	bl	__Func_80933f8
	mov	r1, #0xb6
	mov	r2, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #1
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L21b0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L21b0:
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8093040
	ldr	r0, =0xf27
	bl	__Func_8092b94
	mov	r2, #0
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #7
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #5
	bl	__Func_809163c
	mov	r3, #0xe
	mov	r1, #1
	mov	r0, #0xa
	mov	r4, #4
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r2, #2
	mov	r1, #0xe
	mov	r3, #0x18
	mov	r0, #0x15
	str	r2, [sp]
	str	r5, [sp, #0x18]
	str	r4, [sp, #0x10]
	bl	__Func_80931ec
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r6, r0
	ldr	r3, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	add	r3, #0x26
	strb	r5, [r3]
	mov	r3, r7
	and	r3, r2
	strb	r3, [r1]
	mov	r2, #0xc0
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xb6
	mov	r0, #0x15
	lsl	r1, #1
	ldr	r2, =0x32f
	bl	__Func_80921c4
	mov	r0, #4
	bl	__Func_809163c
	mov	r5, #0
.L2266:
	ldr	r3, [r6, #0x10]
	mov	r1, #0xc0
	lsl	r1, #9
	add	r3, r1
	str	r3, [r6, #0x10]
	ldr	r2, =0xffffe667
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	b	.L22bc

	.pool_aligned

.L22bc:
	cmp	r5, #4
	bne	.L2266
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xbb
	ldr	r2, =0x33b
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #2
	mov	r2, #5
	bl	__Func_8092560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x53
	mov	r3, #0x29
	mov	r1, #0x66
	mov	r0, #1
	bl	__Func_8010424
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #8
	bl	__Func_80924d4
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0xb6
	str	r3, [r6, #0x1c]
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x32b0000
	bl	__Func_80923e4
	mov	r5, #0
.L23ae:
	ldr	r3, [r6, #0x1c]
	ldr	r1, =0x1999
	add	r3, r1
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	cmp	r5, #5
	bne	.L23ae
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_80933d4
	mov	r0, #0xba
	mov	r1, #0xa0
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #16
	ldr	r2, =0x35b0000
	bl	__Func_80933f8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	ldr	r1, =0x167
	ldr	r2, =0x343
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r2, #0
	mov	r0, #1
	mov	r1, #6
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #1
	bl	__Func_8092054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5a
	ldrb	r3, [r2]
	and	r5, r3
	strb	r5, [r2]
	mov	r0, #1
	ldr	r2, =0x33b
	ldr	r1, =0x193
	bl	__Func_8092128
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #1
	mov	r0, #5
	bl	__Func_8093040
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_80924d4
	mov	r2, #5
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x29
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	bl	__Func_8010424
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #11
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xcc
	ldr	r2, =0x357
	lsl	r1, #1
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r0, #0x15
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #0
	b	.L2714

	.pool_aligned

.L2714:
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x46
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xc7
	mov	r2, #0xcf
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8092054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #5
	bl	__Func_8092054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #9
	mov	r0, #1
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r0, #5
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	add	r1, #0x10
	bl	__Func_809218c
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	add	r1, #0x10
	sub	r2, #0x10
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r0, #5
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #5
	mov	r1, #0
	bl	__Func_80923e4
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r0, #1
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80923e4
	mov	r0, #1
	mov	r1, #5
	bl	__Func_80917f4
	mov	r1, #0xa0
	ldr	r0, =0x1790000
	lsl	r1, #16
	ldr	r2, =0x3770000
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0xa
	bl	OvlFunc_883_200b380
	mov	r1, #0xbc
	mov	r2, #0xe4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r3, #0
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #5
	bl	OvlFunc_883_200b380
	mov	r0, #0x15
	ldr	r1, =0x175
	ldr	r2, =0x377
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8093530
	mov	r0, #0x64
	bl	__Func_809163c
	ldr	r0, =0x202
	bl	__Func_8079358
	ldr	r0, =0x12f
	bl	__Func_8079374
	add	r1, sp, #0x20
	ldr	r2, [sp, #0x1c]
	ldrb	r1, [r1]
	strb	r1, [r2]
	bl	__Func_8091750
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20095dc

.thumb_func_start OvlFunc_883_200aa54
	push	{r5, lr}
	ldr	r2, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	sp, #8
	cmp	r3, #0x10
	bne	.L2a7e
	ldr	r1, =0x205
	add	r3, r2, r1
	add	r1, #1
	ldrb	r0, [r3]
	add	r3, r2, r1
	ldrb	r1, [r3]
	bl	__Func_801ccc0
	bl	OvlFunc_883_200b4c8
	b	.L2c6e
.L2a7e:
	mov	r0, #0xfd
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2aa2
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2a9c
	mov	r0, #0x1a
	bl	OvlFunc_883_200db48
	b	.L2aa2
.L2a9c:
	mov	r0, #0x14
	bl	OvlFunc_883_200db48
.L2aa2:
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	mov	r0, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	ldr	r0, =0x87a
	bl	__Func_8079338
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	r0, #0x14
	bl	__Func_8092054
	mov	r1, #0
	mov	r5, r0
	bl	__Func_800c528
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2af2
	mov	r3, #0xb5
	b	.L2b02
.L2af2:
	ldr	r0, =0x316
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2b00
	mov	r3, #0xc5
	b	.L2b02
.L2b00:
	mov	r3, #0xbd
.L2b02:
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0x92
	lsl	r3, #18
	str	r3, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	bl	OvlFunc_883_200d950
	mov	r1, r5
	add	r1, #0x22
	mov	r3, #3
	strb	r3, [r1]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	mov	r1, #0xc8
	strb	r2, [r3]
	ldr	r0, =OvlFunc_883_200da94
	lsl	r1, #4
	bl	__Func_80041d8
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2c24
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2b5e
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, =0x28f
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
.L2b5e:
	ldr	r0, =0x808
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2b86
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L2b86:
	ldr	r0, =0x815
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.L2bfc
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2bc8
	ldr	r0, =0x823
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2bd8
	mov	r1, #0x80
	mov	r2, #0xe4
	lsl	r1, #17
	mov	r0, #0x16
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, =OvlFunc_883_200d72c
	ldr	r1, =.L6248
	str	r3, [r0, #0x6c]
	mov	r0, #0x16
	bl	__Func_809207c
	b	.L2bd8
.L2bc8:
	mov	r0, #0x16
	bl	__Func_8092054
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r0, =0x241
	bl	__Func_8079374
.L2bd8:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x10
	beq	.L2bfc
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2bfc
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_883_200da40
	lsl	r1, #4
	bl	__Func_80041d8
.L2bfc:
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2c24
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x11
	bne	.L2c24
	bl	OvlFunc_883_200bfb0
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079358
.L2c24:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2c5e
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2c4e
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
.L2c4e:
	mov	r0, #0x84
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2c5e
	bl	OvlFunc_883_2008d70
.L2c5e:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
.L2c6e:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_200aa54

.thumb_func_start OvlFunc_883_200acb0
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	ldr	r5, =0x1c45
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xc7
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x2460000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xd2
	mov	r2, #0x98
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2d4c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L2d4c:
	mov	r1, #0xc9
	mov	r2, #0x98
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x1001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	ldr	r0, =0x4008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L2dd4
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
.L2dd4:
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #8
	bl	__Func_80937b8
	add	r0, r5, #6
	bl	__Func_8092b94
	mov	r2, #0x14
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x28
	ldr	r0, =0x1001
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x1001
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_8093040
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x28
	ldr	r0, =0x1001
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0x14
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2ed0
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L2ed0:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80923e4
	ldr	r0, =0x303
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200acb0

.thumb_func_start OvlFunc_883_200af14
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1650000
	neg	r1, r1
	ldr	r2, =0x2e20000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x16f
	ldr	r2, =0x2e9
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2f52
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L2f52:
	mov	r1, #0xad
	mov	r0, #1
	lsl	r1, #1
	ldr	r2, =0x2e9
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	ldr	r0, =0x1c53
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L30e0
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	b	.L30f0
.L30e0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L30f0:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	ldr	r0, =0x1c60
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L3170
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L3170:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200af14

.thumb_func_start OvlFunc_883_200b1b4
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	ldr	r5, =.L665c
	mov	r0, #0xc
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r1, r5
	mov	r0, #0xd
	bl	__Func_809207c
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r1, r5
	mov	r0, #0xe
	bl	__Func_80920fc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0xb
	bl	__Func_8092adc
	ldr	r0, =0x1c90
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0xb
	bl	__Func_8092adc
	ldr	r0, =0x305
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b1b4

.thumb_func_start OvlFunc_883_200b2b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r9, r3
	mov	r8, r1
	mov	r10, r2
	bl	__Func_8092054
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r7
	lsl	r2, #8
	ldr	r5, [r6, #0x50]
	bl	__Func_8092064
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x376
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	add	r5, #0x26
	mov	r3, #0
	add	r6, #0x55
	strb	r3, [r6]
	strb	r3, [r5]
	mov	r0, r7
	mov	r1, r8
	bl	__Func_80924d4
	mov	r0, r7
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc4
	ldr	r2, =0x36b
	lsl	r1, #1
	mov	r0, r7
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, r10
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x35b
	bl	__Func_8092158
	mov	r3, #1
	strb	r3, [r5]
	mov	r3, r9
	cmp	r3, #0
	beq	.L334e
	mov	r3, #3
	strb	r3, [r6]
.L334e:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #1
	bl	__Func_80924d4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b2b0

.thumb_func_start OvlFunc_883_200b380
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r9, r3
	mov	r8, r1
	mov	r10, r2
	bl	__Func_8092054
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r7
	lsl	r2, #8
	ldr	r5, [r6, #0x50]
	bl	__Func_8092064
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x35b
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x55
	mov	r3, #0
	add	r2, r6
	add	r5, #0x26
	strb	r3, [r2]
	strb	r3, [r5]
	mov	r0, r7
	mov	r1, r8
	mov	r11, r2
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc4
	lsl	r1, #1
	ldr	r2, =0x36b
	mov	r0, r7
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r2, =0x2666
	mov	r0, r7
	ldr	r1, =0x4ccc
	bl	__Func_8092064
	mov	r0, r7
	mov	r1, r10
	bl	__Func_80924d4
	mov	r1, #0xc4
	mov	r0, r7
	lsl	r1, #1
	ldr	r2, =0x37a
	bl	__Func_8092158
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #1
	strb	r3, [r5]
	mov	r3, r9
	cmp	r3, #0
	beq	.L342e
	mov	r3, #3
	mov	r2, r11
	strb	r3, [r2]
.L342e:
	mov	r0, r7
	mov	r1, #1
	bl	__Func_80924d4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b380

.thumb_func_start OvlFunc_883_200b45c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r6, r0
	cmp	r2, #0
	bne	.L34a0
	mov	r7, #0
	cmp	r7, r8
	bcs	.L34b8
.L3470:
	mov	r0, r6
	bl	__Func_8092054
	mov	r5, r0
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0xc3
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r3, =0x34a0000
	add	r7, #1
	str	r3, [r5, #0x10]
	add	r6, #1
	cmp	r7, r8
	bcc	.L3470
	b	.L34b8
.L34a0:
	mov	r7, #0
	cmp	r7, r8
	bcs	.L34b8
.L34a6:
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	add	r7, #1
	bl	__Func_80923e4
	add	r6, #1
	cmp	r7, r8
	bcc	.L34a6
.L34b8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b45c

.thumb_func_start OvlFunc_883_200b4c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__Func_8092054
	mov	r9, r0
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8093554
	mov	r7, #0
	add	r0, #0x55
	mov	r1, #0
	strb	r7, [r0]
	mov	r0, #1
	mov	r10, r1
	bl	__Func_80030f8
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #1
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0x67
	mov	r2, #0x52
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	mov	r8, r3
	str	r3, [r7, #0xc]
	mov	r5, #0xc2
	mov	r3, #0xd2
	lsl	r5, #17
	lsl	r3, #18
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r3, #0xd3
	mov	r2, r8
	lsl	r3, #18
	str	r2, [r7, #0xc]
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r3, #0xd4
	lsl	r3, #18
	mov	r2, r8
	str	r3, [r7, #0x10]
	str	r2, [r7, #0xc]
	str	r5, [r7, #8]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	ldr	r7, =.L6590
	mov	r0, #0
	mov	r1, r7
	bl	__Func_809207c
	bl	__Func_800c5b4
	ldr	r5, =0xee8
	mov	r1, #0
	mov	r0, r5
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	ldr	r2, =0x4950000
	mov	r3, #0
	mov	r1, r8
	ldr	r0, =0x1530000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x547a
	ldr	r1, =0xa8f
	bl	__Func_80933d4
	mov	r0, #0x94
	mov	r3, #1
	lsl	r0, #17
	mov	r1, r8
	ldr	r2, =0x3990000
	bl	__Func_80933f8
	ldr	r1, =0x1990000
	ldr	r2, =0x46e0000
	mov	r0, #5
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #5
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xd2
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x42c
	bl	__Func_809218c
	bl	__Func_808acc4
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	mov	r10, r3
	mov	r1, r10
	mov	r3, #0x3c
	str	r3, [r2, r1]
	bl	__Func_8091dc8
	mov	r0, #5
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x85
	mov	r0, #5
	ldr	r1, =0x155
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #5
	ldr	r1, =0x167
	ldr	r2, =0x409
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x9f
	ldr	r2, =0x3b3
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_809218c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #0xce
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x409
	bl	__Func_80921c4
	mov	r1, #0xce
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x3fb
	bl	__Func_80921c4
	mov	r1, #0xbb
	mov	r2, #0xfc
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #5
	ldr	r1, =0x15b
	ldr	r2, =0x3bb
	bl	__Func_80921c4
	mov	r1, #0x9f
	mov	r0, #8
	lsl	r1, #1
	ldr	r2, =0x3b3
	bl	__Func_80921c4
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #8
	bl	__Func_8092848
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r2, =0x3f9
	mov	r0, #8
	ldr	r1, =0x17b
	bl	__Func_809218c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r2, #0xe6
	mov	r0, #5
	ldr	r1, =0x14d
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xe7
	ldr	r1, =0x12b
	lsl	r2, #2
	mov	r0, #5
	bl	__Func_80921c4
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xf0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r3, #1
	ldr	r0, =0x1830000
	mov	r1, r8
	ldr	r2, =0x3620000
	bl	__Func_80933f8
	add	r5, #1
	bl	__Func_8093530
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #0xa
	bl	__Func_8092560
	mov	r0, r5
	bl	__Func_8092b94
	ldr	r0, =0x100a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r9
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r2, #0x28
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x28
	ldr	r0, =0x100a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, r7
	bl	__Func_809207c
	mov	r1, #1
	mov	r0, #5
	bl	__Func_809335c
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xd0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x9c
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x2f7
	bl	__Func_80921c4
	mov	r2, #0xbe
	ldr	r1, =0x169
	lsl	r2, #2
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x6001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xc6
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, r10
	ldr	r2, =0x2e3
	mov	r0, #5
	bl	__Func_80921c4
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	bl	OvlFunc_883_200d594
	mov	r0, #1
	mov	r1, #0x11
	bl	__Func_80924d4
	ldr	r0, =0x2001
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x83
	bl	__Func_80f9080
	mov	r5, #0
.L3922:
	mov	r0, #1
	bl	__Func_8092054
	bl	OvlFunc_883_200dc20
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x3b
	bls	.L3922
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r3, =OvlFunc_883_200d5b0
	mov	r1, #0xc8
	mov	r10, r3
	mov	r0, r10
	lsl	r1, #4
	bl	__Func_80041d8
	ldr	r1, =OvlFunc_883_200d5d0
	mov	r8, r1
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r8
	bl	__Func_80041d8
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, #0
	mov	r9, r2
	mov	r3, r6
	mov	r1, r9
	add	r3, #0x55
	strb	r1, [r3]
	mov	r3, #0xd6
	lsl	r3, #17
	str	r3, [r6, #8]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r11, r3
	mov	r2, #0xd0
	ldr	r3, =OvlFunc_883_200d75c
	mov	r5, #0x92
	lsl	r5, #18
	mov	r1, r11
	lsl	r2, #16
	str	r3, [r6, #0x6c]
	str	r2, [r6, #0xc]
	strh	r1, [r6, #6]
	str	r5, [r6, #0x10]
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r2, #0xd0
	mov	r3, r5
	mov	r0, r6
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_800d14c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #9
	ldr	r1, =0x2666
	ldr	r2, =0x1333
	bl	__Func_8092064
	ldr	r1, =0x2666
	ldr	r2, =0x1333
	mov	r0, #0xe
	bl	__Func_8092064
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0xc4
	mov	r2, #0xd0
	mov	r3, r5
	mov	r0, r6
	lsl	r1, #17
	lsl	r2, #16
	b	.L3a88

	.pool_aligned

.L3a88:
	bl	__Func_800d14c
	mov	r1, #0xbd
	mov	r2, #0x92
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #9
	bl	__Func_8092158
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x2005
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, r9
	mov	r1, #2
	str	r2, [r6, #0x6c]
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, r10
	bl	__Func_8004278
	mov	r0, r8
	bl	__Func_8004278
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, r6
	bl	OvlFunc_883_200d7fc
	bl	OvlFunc_883_200d5a4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xd4
	mov	r2, #0x9c
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #5
	bl	__Func_8092848
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x6001
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc2
	mov	r2, #0x97
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #1
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r3, #0xe
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r1, #5
	mov	r3, r9
	mov	r0, #0xa
	mov	r4, #4
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0x18]
	mov	r2, #2
	mov	r3, #0x19
	mov	r1, #1
	mov	r0, #1
	str	r2, [sp]
	str	r4, [sp, #0x10]
	bl	__Func_80931ec
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x50
	mov	r0, #5
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #1
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xbe
	mov	r2, #0x9b
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x6001
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xce
	mov	r2, #0x97
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_8092560
	mov	r2, #0x14
	ldr	r0, =0x1005
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x6001
	bl	__Func_8093040
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xd6
	mov	r2, #0x9d
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #5
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #5
	bl	__Func_80923c4
	ldr	r0, =0x5001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	b	.L3ec0

	.pool_aligned

.L3ec0:
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd6
	mov	r2, #0x9d
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x2005
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x5001
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x80
	mov	r1, r11
	mov	r0, #5
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0x80
	mov	r1, r11
	mov	r0, #1
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xe1
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x2ee
	bl	__Func_809218c
	mov	r1, #0xe1
	lsl	r1, #1
	ldr	r2, =0x2ee
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe4
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x3c
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0xc
	bl	__Func_8091e9c
	bl	__Func_8091750
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b4c8

.thumb_func_start OvlFunc_883_200bfb0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__Func_8092054
	mov	r11, r0
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
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #1
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #0x2a
	mov	r0, #0
	mov	r1, #0x67
	mov	r2, #0x52
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0xc4
	mov	r2, #0xe0
	lsl	r1, #17
	lsl	r2, #18
	mov	r0, #0x15
	bl	__Func_80923e4
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r3, #0xc0
	lsl	r3, #8
	ldr	r2, =0
	mov	r9, r3
	mov	r8, r2
	mov	r2, r9
	strh	r2, [r0, #6]
	mov	r1, #0x95
	mov	r2, #0xb8
	lsl	r1, #17
	lsl	r2, #18
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #7
	mov	r10, r3
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r1, #0x95
	mov	r2, #0xbe
	lsl	r2, #18
	lsl	r1, #17
	mov	r0, #5
	bl	__Func_80923e4
	mov	r0, #5
	bl	__Func_8092054
	b	.L4088

	.pool_aligned

.L4088:
	mov	r3, r10
	strh	r3, [r0, #6]
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r1, =.L6590
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r5, #0xc2
	mov	r6, #0xa0
	mov	r3, #0xd2
	lsl	r5, #17
	lsl	r6, #16
	lsl	r3, #18
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	mov	r1, #0
	str	r6, [r7, #0xc]
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, #0xd3
	lsl	r3, #18
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	mov	r1, #0
	str	r6, [r7, #0xc]
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, #0xd4
	lsl	r3, #18
	mov	r1, #0
	str	r3, [r7, #0x10]
	str	r5, [r7, #8]
	str	r6, [r7, #0xc]
	bl	__Func_800c528
	bl	__Func_8093554
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, r6
	ldr	r2, =0x36d0000
	mov	r3, #0
	ldr	r0, =0x17f0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	__Func_8091dc8
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, r10
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r10
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092064
	ldr	r1, =.L6614
	mov	r0, #5
	bl	__Func_809207c
	ldr	r1, =.L65cc
	mov	r0, #1
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r11
	mov	r1, #0xb0
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r0, #0
	mov	r2, #0x28
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc8
	mov	r2, #0xd2
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, r9
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	bl	OvlFunc_883_200d594
	mov	r0, #0
	mov	r1, #0x11
	bl	__Func_80924d4
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_883_200da08
	lsl	r1, #4
	bl	__Func_80041d8
	mov	r5, #0
.L41f0:
	mov	r0, r11
	bl	OvlFunc_883_200dc20
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L41f0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r6, =OvlFunc_883_200d5c0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r6
	bl	__Func_80041d8
	ldr	r5, =OvlFunc_883_200d5e0
	mov	r1, #0xc8
	mov	r0, r5
	lsl	r1, #4
	bl	__Func_80041d8
	mov	r0, #0x17
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #0xc3
	mov	r2, #0xd0
	mov	r0, #0x17
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc8
	lsl	r1, #1
	ldr	r2, =0x33a
	mov	r0, #0x17
	bl	__Func_8092158
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #1
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r3, =OvlFunc_883_200da08
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8004278
	mov	r0, r6
	bl	__Func_8004278
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	ldr	r1, =.L6590
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x29
	mov	r2, #0x54
	mov	r0, #7
	mov	r1, #0x66
	bl	__Func_8010424
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r11
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	ldr	r1, =0x179
	ldr	r2, =0x34b
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0x11
	bl	__Func_80924d4
	mov	r1, #0xc8
	mov	r0, r8
	lsl	r1, #4
	bl	__Func_80041d8
	mov	r5, #0
.L4332:
	mov	r0, r11
	bl	OvlFunc_883_200dc20
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L4332
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r6, =OvlFunc_883_200d5c0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r6
	bl	__Func_80041d8
	ldr	r5, =OvlFunc_883_200d5f0
	mov	r1, #0xc8
	mov	r0, r5
	lsl	r1, #4
	bl	__Func_80041d8
	mov	r0, #0x18
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #0xc3
	mov	r2, #0xd0
	mov	r0, #0x18
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xcf
	ldr	r1, =0x179
	lsl	r2, #2
	mov	r0, #0x18
	bl	__Func_8092158
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #1
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r3, =OvlFunc_883_200da08
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8004278
	mov	r0, r6
	bl	__Func_8004278
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	ldr	r1, =.L6590
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x53
	mov	r3, #0x29
	mov	r0, #6
	mov	r1, #0x66
	bl	__Func_8010424
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r11
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xb4
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x357
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0x11
	bl	__Func_80924d4
	mov	r1, #0xc8
	mov	r0, r8
	lsl	r1, #4
	bl	__Func_80041d8
	mov	r5, #0
	b	.L44cc

	.pool_aligned

.L44cc:
	mov	r0, r11
	bl	OvlFunc_883_200dc20
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L44cc
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r6, =OvlFunc_883_200d5c0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r6
	bl	__Func_80041d8
	ldr	r5, =OvlFunc_883_200d600
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r0, #0x19
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #0xc3
	mov	r2, #0xd0
	mov	r0, #0x19
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb4
	lsl	r1, #1
	ldr	r2, =0x345
	mov	r0, #0x19
	bl	__Func_8092158
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =OvlFunc_883_200da08
	bl	__Func_8004278
	mov	r0, r6
	bl	__Func_8004278
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_80924d4
	ldr	r1, =.L6590
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_809163c
	bl	OvlFunc_883_200d5a4
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x52
	mov	r3, #0x2a
	mov	r0, #5
	mov	r1, #0x67
	bl	__Func_8010424
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809207c
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r11
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8092560
	ldr	r0, =0xf03
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r3, #0
	mov	r0, #0x15
	mov	r1, #5
	mov	r2, #6
	bl	OvlFunc_883_200b2b0
	mov	r0, #0x15
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r2, #0xd0
	ldr	r1, =0x18d
	lsl	r2, #2
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xba
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L471c
	mov	r0, #0x15
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
	b	.L4724

	.pool_aligned

.L471c:
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092548
.L4724:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8093040
	ldr	r0, =0xf0a
	bl	__Func_8092b94
	mov	r1, #0xc1
	lsl	r1, #1
	ldr	r2, =0x349
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L4794
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L4794:
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	ldr	r0, =0xf0e
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc1
	ldr	r2, =0x339
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xba
	mov	r2, #0xd0
	mov	r0, #0x15
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #0xa0
	mov	r2, #0xd7
	mov	r3, #1
	ldr	r0, =0x1790000
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xe2
	mov	r0, #1
	ldr	r1, =0x171
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xc4
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r3, #0
	mov	r0, #5
	mov	r1, #0xa
	mov	r2, #0xb
	bl	OvlFunc_883_200b2b0
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xc4
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x34b
	bl	__Func_80921c4
	mov	r1, #0x90
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r3, #0
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0xb
	bl	OvlFunc_883_200b2b0
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc4
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #5
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xcc
	strb	r3, [r0]
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #5
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x80
	strb	r3, [r0]
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #4
	mov	r2, #0x1e
	bl	__Func_8092560
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092560
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #1
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	b	.L4b5c

	.pool_aligned

.L4b5c:
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #0xa0
	mov	r3, #1
	ldr	r0, =0x1750000
	lsl	r1, #16
	ldr	r2, =0x3450000
	bl	__Func_80933f8
	mov	r1, #0xb6
	mov	r2, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #1
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r6, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L4cda
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L4cda:
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8093040
	ldr	r0, =0xf27
	bl	__Func_8092b94
	mov	r2, #0
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #7
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #5
	bl	__Func_809163c
	mov	r3, #0xe
	mov	r1, #1
	mov	r0, #0xa
	mov	r4, #4
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r2, #2
	mov	r1, #0xe
	mov	r3, #0x18
	mov	r0, #0x15
	str	r2, [sp]
	str	r4, [sp, #0x10]
	str	r6, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #0x50]
	mov	r1, r7
	add	r1, #0x5a
	ldrb	r2, [r1]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r2, #0xc0
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xb6
	mov	r0, #0x15
	lsl	r1, #1
	ldr	r2, =0x32f
	bl	__Func_80921c4
	mov	r0, #4
	bl	__Func_809163c
	mov	r5, #0
.L4d8a:
	ldr	r3, [r7, #0x10]
	mov	r2, #0xc0
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0x10]
	ldr	r2, =0xffffe667
	ldr	r3, [r7, #0x1c]
	add	r3, r2
	str	r3, [r7, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	cmp	r5, #4
	bne	.L4d8a
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xbb
	ldr	r2, =0x33b
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_80924d4
	mov	r1, #2
	mov	r2, #5
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0x8f
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x53
	mov	r3, #0x29
	mov	r1, #0x66
	mov	r0, #1
	bl	__Func_8010424
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #8
	bl	__Func_80924d4
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0xb6
	str	r3, [r7, #0x1c]
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x32b0000
	bl	__Func_80923e4
	mov	r5, #0
.L4e9c:
	ldr	r3, [r7, #0x1c]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r7, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	cmp	r5, #5
	bne	.L4e9c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_80933d4
	mov	r0, #0xba
	mov	r1, #0xa0
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #16
	ldr	r2, =0x35b0000
	bl	__Func_80933f8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	ldr	r1, =0x167
	ldr	r2, =0x343
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r2, #0
	mov	r0, #1
	mov	r1, #6
	b	.L504c

	.pool_aligned

.L504c:
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #1
	bl	__Func_8092054
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x5a
	ldrb	r3, [r2]
	and	r5, r3
	strb	r5, [r2]
	mov	r0, #1
	ldr	r2, =0x33b
	ldr	r1, =0x193
	bl	__Func_8092128
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #1
	mov	r0, #5
	bl	__Func_8093040
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_80924d4
	mov	r2, #5
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x29
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r0, #2
	bl	__Func_8010424
	mov	r0, #0x8f
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #11
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xcc
	ldr	r2, =0x357
	lsl	r1, #1
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r0, #0x15
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xc7
	mov	r2, #0xcf
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8092054
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #5
	bl	__Func_8092054
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r7, r0
	lsl	r1, #9
	mov	r0, #1
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r3, #0xa
	ldrsh	r1, [r7, r3]
	mov	r3, #0x12
	ldrsh	r2, [r7, r3]
	add	r1, #0x10
	mov	r0, #5
	bl	__Func_809218c
	mov	r2, #0xa
	ldrsh	r1, [r7, r2]
	mov	r3, #0x12
	ldrsh	r2, [r7, r3]
	add	r1, #0x10
	sub	r2, #0x10
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xa
	ldrsh	r1, [r7, r2]
	mov	r0, #5
	mov	r3, #0x12
	ldrsh	r2, [r7, r3]
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #5
	mov	r1, #0
	bl	__Func_80923e4
	mov	r2, #0xa
	ldrsh	r1, [r7, r2]
	mov	r0, #1
	mov	r3, #0x12
	ldrsh	r2, [r7, r3]
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80923e4
	mov	r0, #1
	mov	r1, #5
	bl	__Func_80917f4
	b	.L5494

	.pool_aligned

.L5494:
	mov	r1, #0xa0
	ldr	r0, =0x1790000
	lsl	r1, #16
	ldr	r2, =0x3770000
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0xa
	bl	OvlFunc_883_200b380
	mov	r1, #0xbc
	mov	r2, #0xe4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r3, #0
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #5
	bl	OvlFunc_883_200b380
	mov	r0, #0x15
	ldr	r1, =0x175
	ldr	r2, =0x377
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8093530
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2e
	mov	r2, #8
	mov	r3, #4
	mov	r0, #0x31
	bl	__Func_8010704
	ldr	r0, =0x202
	bl	__Func_8079358
	ldr	r0, =0x12f
	bl	__Func_8079374
	mov	r2, r11
	add	r2, #0x55
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #0xa0
	mov	r2, r11
	lsl	r3, #16
	str	r3, [r2, #0xc]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r6, #0
	str	r3, [r2, #0x3c]
	str	r6, [r2, #0x28]
	bl	__Func_8091750
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200bfb0

.thumb_func_start OvlFunc_883_200d594
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_8096fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d594

.thumb_func_start OvlFunc_883_200d5a4
	push	{lr}
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5a4

.thumb_func_start OvlFunc_883_200d5b0
	push	{lr}
	mov	r0, #1
	bl	__Func_8092054
	bl	OvlFunc_883_200dc5c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5b0

.thumb_func_start OvlFunc_883_200d5c0
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	bl	OvlFunc_883_200dc5c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5c0

.thumb_func_start OvlFunc_883_200d5d0
	push	{lr}
	mov	r0, #9
	bl	__Func_8092054
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5d0

.thumb_func_start OvlFunc_883_200d5e0
	push	{lr}
	mov	r0, #0x17
	bl	__Func_8092054
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5e0

.thumb_func_start OvlFunc_883_200d5f0
	push	{lr}
	mov	r0, #0x18
	bl	__Func_8092054
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d5f0

.thumb_func_start OvlFunc_883_200d600
	push	{lr}
	mov	r0, #0x19
	bl	__Func_8092054
	bl	OvlFunc_883_200dc98
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d600

.thumb_func_start OvlFunc_883_200d610
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
.func_end OvlFunc_883_200d610

.thumb_func_start OvlFunc_883_200d64c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp, #4]
	mov	r2, #0
	mov	r5, r0
	mov	r6, r3
	str	r2, [sp]
	mov	r3, #0x5b
	add	r3, r5
	mov	r10, r3
	ldrb	r3, [r3]
	mov	r11, r1
	cmp	r3, #1
	bne	.L568a
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r9, r2
	cmp	r3, #0
	bne	.L5690
	mov	r1, #1
	bl	__Func_800c300
	mov	r0, #1
	b	.L5716
.L568a:
	mov	r3, #0x62
	add	r3, r5
	mov	r9, r3
.L5690:
	mov	r2, #8
	add	r2, r5
	mov	r7, r11
	mov	r8, r2
	add	r7, #8
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_883_200d610
	ldr	r3, [sp, #4]
	cmp	r0, r3
	blt	.L56ac
	cmp	r6, #0
	beq	.L5704
.L56ac:
	mov	r2, r11
	ldr	r0, [r2, #0x10]
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	sub	r0, r3
	ldr	r1, [r7]
	ldr	r3, [r2]
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
	ldrh	r2, [r5, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L56ec
	cmp	r1, r3
	beq	.L56ec
	cmp	r4, r3
	beq	.L56ec
	cmp	r6, #0
	beq	.L5704
.L56ec:
	mov	r3, #1
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	mov	r3, #1
	mov	r2, r9
	str	r3, [sp]
	strb	r3, [r2]
	b	.L5714
.L5704:
	mov	r3, r10
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r2, r9
	strb	r6, [r2]
.L5714:
	ldr	r0, [sp]
.L5716:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_200d64c

.thumb_func_start OvlFunc_883_200d72c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x80
	ldr	r2, [r5, #0x38]
	lsl	r3, #24
	mov	r1, r0
	cmp	r2, r3
	bne	.L574a
	ldr	r3, [r5, #0x40]
	mov	r0, #0
	cmp	r3, r2
	beq	.L5756
.L574a:
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0
	bl	OvlFunc_883_200d64c
	mov	r0, #0
.L5756:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_200d72c

.thumb_func_start OvlFunc_883_200d75c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	bl	__Func_8004458
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xfff80000
	lsl	r0, #4
	sub	r3, r0
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	__Func_8004458
	mov	r6, r0
	bl	__Func_8004458
	mov	r1, r0
	lsl	r0, r6, #1
	add	r0, r6
	mov	r2, r5
	lsl	r0, #4
	bl	__Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	ldr	r0, =0x11d
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L57de
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x1999
	add	r2, #9
	str	r3, [r5, #0x48]
	mov	r3, #0xc
	strh	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c300
	ldr	r1, =.L66e0
	mov	r0, r5
	bl	__Func_800c2d8
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
.L57de:
	mov	r0, #0x8a
	bl	__Func_80f9080
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d75c

.thumb_func_start OvlFunc_883_200d7fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0x9a
	bl	__Func_80f9080
	ldr	r5, =0xfffff800
	mov	r2, #0x1e
	mov	r8, r2
.L5810:
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r2, #0x80
	ldrh	r3, [r7, #6]
	lsl	r2, #6
	add	r3, r2
	strh	r3, [r7, #6]
	ldr	r3, [r7, #0x18]
	add	r3, r5
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r5
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L5810
	mov	r3, #7
	mov	r8, r3
.L5846:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x11d
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L58ac
	mov	r1, #0
	bl	__Func_800c528
	ldr	r1, =.L66e4
	mov	r0, r6
	bl	__Func_800c2d8
	bl	__Func_8004458
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r6
	add	r2, #0x55
	add	r0, r3
	str	r3, [r6, #0x34]
	mov	r3, #2
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	ldr	r3, =0xa3d
	str	r3, [r6, #0x48]
	bl	__Func_8004458
	mov	r5, r0
	bl	__Func_8004458
	sub	r5, r0
	str	r5, [r6, #0x28]
	bl	__Func_8004458
	lsl	r5, r0, #1
	add	r5, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r5, #3
	add	r5, r2
	bl	__Func_8004458
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	OvlFunc_883_200d8f0
.L58ac:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L5846
	mov	r0, #0x83
	bl	__Func_80f9080
	mov	r3, #0x80
	mov	r2, #0
	lsl	r3, #24
	str	r2, [r7, #8]
	str	r2, [r7, #0xc]
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x28]
	str	r2, [r7, #0x2c]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d7fc

.thumb_func_start OvlFunc_883_200d8f0
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	mov	r0, r1
	mov	r1, r2
	cmp	r6, #0
	beq	.L591e
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	mov	r0, r6
	bl	__Func_800d14c
.L591e:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d8f0

.thumb_func_start OvlFunc_883_200d928
	push	{lr}
	sub	sp, #8
	mov	r3, #0x16
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_883_20080c4
	bl	OvlFunc_883_200d950
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d928

.thumb_func_start OvlFunc_883_200d950
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x16
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5976
	mov	r0, #0x15
	b	.L5978
.L5976:
	mov	r0, #0x14
.L5978:
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L59f2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x315
	bl	__Func_8079374
	ldr	r0, =0x316
	bl	__Func_8079374
	ldr	r3, [r5, #8]
	asr	r0, r3, #20
	cmp	r0, #0x16
	bne	.L59ba
	mov	r3, #0x24
	str	r0, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079358
	b	.L59f2
.L59ba:
	cmp	r0, #0x17
	bne	.L59d8
	mov	r3, #0x24
	str	r0, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x315
	bl	__Func_8079358
	b	.L59f2
.L59d8:
	mov	r3, #0x18
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x316
	bl	__Func_8079358
.L59f2:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d950

.thumb_func_start OvlFunc_883_200da08
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L5a1c
	mov	r0, #0x83
	bl	__Func_80f9080
.L5a1c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da08

.thumb_func_start OvlFunc_883_200da24
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0xee4
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da24

.thumb_func_start OvlFunc_883_200da40
	push	{r5, lr}
	ldr	r0, =0x241
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5a6c
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.L5a8a
	mov	r0, #0x16
	bl	__Func_8092054
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r0, =0x241
	bl	__Func_8079374
	b	.L5a8a
.L5a6c:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5a8a
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	ldr	r0, =0x241
	bl	__Func_8079358
.L5a8a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da40

.thumb_func_start OvlFunc_883_200da94
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, r0
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5ab0
	mov	r0, #0x15
	bl	__Func_8092054
	b	.L5ab6
.L5ab0:
	mov	r0, #0x14
	bl	__Func_8092054
.L5ab6:
	cmp	r0, #0
	beq	.L5ad4
	mov	r2, #0xc8
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L5acc
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #3
	b	.L5ad2
.L5acc:
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #1
.L5ad2:
	strb	r3, [r2]
.L5ad4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da94

.thumb_func_start OvlFunc_883_200dae0
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_8002322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L5af4
	neg	r5, r5
.L5af4:
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
	bge	.L5b1a
	add	r0, #7
.L5b1a:
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
.func_end OvlFunc_883_200dae0

.thumb_func_start OvlFunc_883_200db48
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
	bne	.L5bac
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L5bac:
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
	ldr	r3, =OvlFunc_883_200dae0
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
.func_end OvlFunc_883_200db48

.thumb_func_start OvlFunc_883_200dc20
	push	{r5, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L5c38
	mov	r1, #7
	bl	__Func_800c598
	b	.L5c40
.L5c38:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c598
.L5c40:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L5c52
	mov	r0, r5
	bl	OvlFunc_883_200dd68
.L5c52:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dc20

.thumb_func_start OvlFunc_883_200dc5c
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L5c7e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_800c598
.L5c7e:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L5c8e
	mov	r0, r6
	bl	OvlFunc_883_200dd68
.L5c8e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dc5c

.thumb_func_start OvlFunc_883_200dc98
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_3001e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L5cba
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r5
	bl	__Func_800c598
.L5cba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dc98

.thumb_func_start OvlFunc_883_200dcc4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L5ce4
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L5d0e
.L5ce4:
	lsl	r0, #10
	bl	__Func_8002322
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L5d0e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dcc4

.thumb_func_start OvlFunc_883_200dd14
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L5d34
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L5d60
.L5d34:
	lsl	r0, #10
	bl	__Func_8002322
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L5d60:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dd14

.thumb_func_start OvlFunc_883_200dd68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #8
	mov	r1, #0x3f
	mov	r6, r0
	mov	r11, r3
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L5d88:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_800c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L5e34
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L5dbc	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L5e34
	b	.L5dc4

	.align	2, 0
.L5dbc:
	.word	0
	.pool

.L5dc4:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800ba30
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_8003f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =iwram_3001b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L5e2c	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L5e34

	.align	2, 0
.L5e2c:
	.word	0xfffffc00
	.pool

.L5e34:
	add	r7, #1
	cmp	r7, #1
	ble	.L5d88
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_883_200dd14
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #4
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	mov	r3, r10
	ldr	r1, [r3, #4]
	ldr	r0, [r1, #0x50]
	ldrb	r3, [r0, #9]
	and	r2, r3
	ldr	r3, =OvlFunc_883_200dcc4
	orr	r2, r4
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r2, [r0, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dd68

	.section .data
	.global .L68a8
	.global .L6ab8
	.global .L6cc8
	.global .L6e48
	.global .L6f38
	.global .L7100
	.global .L7334
	.global .L6190
	.global .L61d0
	.global .L61e8
	.global .L6708

.L6190:
	.incbin "overlays/rom_780898/orig.bin", 0x6190, (0x61d0-0x6190)
.L61d0:
	.incbin "overlays/rom_780898/orig.bin", 0x61d0, (0x61e8-0x61d0)
.L61e8:
	.incbin "overlays/rom_780898/orig.bin", 0x61e8, (0x6248-0x61e8)
.L6248:
	.incbin "overlays/rom_780898/orig.bin", 0x6248, (0x6590-0x6248)
.L6590:
	.incbin "overlays/rom_780898/orig.bin", 0x6590, (0x65cc-0x6590)
.L65cc:
	.incbin "overlays/rom_780898/orig.bin", 0x65cc, (0x6614-0x65cc)
.L6614:
	.incbin "overlays/rom_780898/orig.bin", 0x6614, (0x665c-0x6614)
.L665c:
	.incbin "overlays/rom_780898/orig.bin", 0x665c, (0x66e0-0x665c)
.L66e0:
	.incbin "overlays/rom_780898/orig.bin", 0x66e0, (0x66e4-0x66e0)
.L66e4:
	.incbin "overlays/rom_780898/orig.bin", 0x66e4, (0x6708-0x66e4)
.L6708:
	.incbin "overlays/rom_780898/orig.bin", 0x6708, (0x6870-0x6708)
.L6870:
	.incbin "overlays/rom_780898/orig.bin", 0x6870, (0x68a8-0x6870)
.L68a8:
	.incbin "overlays/rom_780898/orig.bin", 0x68a8, (0x6ab8-0x68a8)
.L6ab8:
	.incbin "overlays/rom_780898/orig.bin", 0x6ab8, (0x6cc8-0x6ab8)
.L6cc8:
	.incbin "overlays/rom_780898/orig.bin", 0x6cc8, (0x6e48-0x6cc8)
.L6e48:
	.incbin "overlays/rom_780898/orig.bin", 0x6e48, (0x6f38-0x6e48)
.L6f38:
	.incbin "overlays/rom_780898/orig.bin", 0x6f38, (0x7100-0x6f38)
.L7100:
	.incbin "overlays/rom_780898/orig.bin", 0x7100, (0x7334-0x7100)
.L7334:
	.incbin "overlays/rom_780898/orig.bin", 0x7334, (0x7544-0x7334)
.L7544:
	.incbin "overlays/rom_780898/orig.bin", 0x7544, (0x755a-0x7544)
.L755a:
	.incbin "overlays/rom_780898/orig.bin", 0x755a, (0x7570-0x755a)
.L7570:
	.incbin "overlays/rom_780898/orig.bin", 0x7570, (0x7586-0x7570)
.L7586:
	.incbin "overlays/rom_780898/orig.bin", 0x7586, (0x759c-0x7586)
.L759c:
	.incbin "overlays/rom_780898/orig.bin", 0x759c, (0x75ec-0x759c)
.L75ec:
	.incbin "overlays/rom_780898/orig.bin", 0x75ec, (0x763c-0x75ec)
.L763c:
	.incbin "overlays/rom_780898/orig.bin", 0x763c, (0x76cc-0x763c)
.L76cc:
	.incbin "overlays/rom_780898/orig.bin", 0x76cc, (0x7748-0x76cc)
.L7748:
	.incbin "overlays/rom_780898/orig.bin", 0x7748, (0x77c4-0x7748)
.L77c4:
	.incbin "overlays/rom_780898/orig.bin", 0x77c4
