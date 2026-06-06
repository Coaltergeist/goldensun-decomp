	.include "macros.inc"

.thumb_func_start OvlFunc_945_200c890
	push	{r5, r6, lr}
	mov	r5, r0
	lsl	r1, #16
	lsl	r2, #16
	mov	r6, r3
	bl	__Func_80923e4
	mov	r0, r5
	bl	__Func_8092054
	strh	r6, [r0, #6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c890

.thumb_func_start OvlFunc_945_200c8ac
	push	{r5, r6, lr}
	mov	r5, r3
	mov	r3, #1
	bic	r3, r5
	bl	__Func_80933f8
	mov	r3, #0x80
	ldr	r6, =0x1111
	lsl	r3, #21
	and	r3, r5
	and	r6, r5
	cmp	r3, #0
	beq	.L48ca
	bl	__Func_8093530
.L48ca:
	mov	r3, #0x80
	lsl	r3, #17
	and	r3, r5
	cmp	r3, #0
	beq	.L48d8
	bl	__Func_800fe9c
.L48d8:
	mov	r0, r6
	bl	__Func_809163c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c8ac

.thumb_func_start OvlFunc_945_200c8e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r1
	mov	r6, r2
.L48f6:
	cmp	r0, #0x19
	bls	.L48fc
	b	.L4f5c
.L48fc:
	ldr	r2, =.L4904
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4904:
	.word	.L496c
	.word	.L4994
	.word	.L49be
	.word	.L49f0
	.word	.L4a20
	.word	.L4a3c
	.word	.L4a4c
	.word	.L4a6e
	.word	.L4a90
	.word	.L4ab2
	.word	.L4ac8
	.word	.L4b20
	.word	.L4c62
	.word	.L4c8a
	.word	.L4cc4
	.word	.L4cda
	.word	.L4d50
	.word	.L4d74
	.word	.L4d8a
	.word	.L4de0
	.word	.L4e86
	.word	.L4e9a
	.word	.L4ed0
	.word	.L4eea
	.word	.L4efe
	.word	.L4f26
.L496c:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	b	.L49b6
.L4994:
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
.L49b6:
	mov	r2, r6
	bl	__Func_8092adc
	b	.L4f5c
.L49be:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	cmp	r7, #0
	beq	.L49e8
	mov	r0, #3
	bl	__Func_8092504
.L49e8:
	cmp	r6, #0
	bne	.L49ee
	b	.L4f5c
.L49ee:
	b	.L4a18
.L49f0:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
.L4a18:
	mov	r0, r6
	bl	__Func_809163c
	b	.L4f5c
.L4a20:
	mov	r5, #0
	cmp	r5, r7
	bcc	.L4a28
	b	.L4f5c
.L4a28:
	mov	r0, r5
	add	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_80923e4
	cmp	r5, r7
	bcc	.L4a28
	b	.L4f5c
.L4a3c:
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #5
	b	.L4a5e
.L4a4c:
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	ldr	r3, =0xffff0000
	mov	r1, #5
	str	r3, [r0, #0x18]
.L4a5e:
	mov	r0, r7
	bl	__Func_80924d4
	mov	r0, r7
	mov	r1, r6
	bl	__Func_80924ec
	b	.L4f5c
.L4a6e:
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, r7
	bl	OvlFunc_945_200c7cc
	cmp	r6, #0
	beq	.L4a86
	b	.L4f5c
.L4a86:
	mov	r0, r7
	mov	r1, #0
	bl	__Func_80924ec
	b	.L4f5c
.L4a90:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091dc8
	cmp	r7, #0
	beq	.L4aaa
	bl	__Func_8091e20
.L4aaa:
	mov	r0, #0
	bl	__Func_809163c
	b	.L4f5c
.L4ab2:
	bl	__Func_8091df4
	bl	__Func_8091e20
	cmp	r7, #0
	bne	.L4ac0
	b	.L4f5c
.L4ac0:
	mov	r0, r7
	bl	__Func_8091e9c
	b	.L4f5c
.L4ac8:
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r5, #0x80
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	lsl	r5, #7
	mov	r1, #0xd8
	lsl	r1, #1
	mov	r0, #0
	mov	r2, #0xa8
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r0, #1
	mov	r2, #0xa8
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xd4
	lsl	r1, #1
	mov	r0, #2
	mov	r2, #0x98
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xe5
	lsl	r1, #1
	mov	r0, #3
	mov	r2, #0x98
	mov	r3, r5
	bl	OvlFunc_945_200c890
	b	.L4f5c
.L4b20:
	cmp	r7, #0
	beq	.L4b44
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
.L4b44:
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80924d4
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r10, r3
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #9
	mov	r1, #1
	str	r5, [r0, #0x18]
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r3, r8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r1, #0xcd
	mov	r2, #0xae
	str	r5, [r0, #0x18]
	lsl	r1, #17
	mov	r0, #0x1c
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0xae
	mov	r0, #0x1d
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xcd
	mov	r2, #0xce
	mov	r0, #0x1e
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0xce
	mov	r0, #0x1f
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xcd
	mov	r2, #0x8f
	mov	r0, #0x20
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0x8f
	mov	r0, #0x21
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xcd
	mov	r2, #0x9e
	mov	r0, #0x22
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0x9e
	mov	r0, #0x23
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r7, #0
	beq	.L4c32
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L4c32:
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0x11
	bl	OvlFunc_945_200c880
	b	.L4f5c
.L4c62:
	mov	r0, r7
	bl	__Func_8092054
	mov	r1, #1
	mov	r5, r0
	mov	r0, r7
	bl	__Func_80924d4
	cmp	r6, #0
	beq	.L4c7c
	mov	r3, #0xc0
	lsl	r3, #6
	b	.L4c80
.L4c7c:
	mov	r3, #0xa0
	lsl	r3, #7
.L4c80:
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x18]
	b	.L4f5c
.L4c8a:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xa
	b	.L4cd0

	.pool_aligned

.L4cc4:
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
.L4cd0:
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L4f5c
.L4cda:
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xde
	mov	r3, #0xd0
	lsl	r1, #1
	ldr	r2, =0x266
	mov	r0, #8
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	cmp	r7, #0
	beq	.L4d1a
	bl	OvlFunc_945_200c5d0
.L4d1a:
	mov	r0, #0xe0
	mov	r1, #0x80
	mov	r2, #0x9c
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #18
	ldr	r3, =0x1000001
	bl	OvlFunc_945_200c8ac
	cmp	r6, #0
	bne	.L4d32
	b	.L4f5c
.L4d32:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	b	.L4f5c
.L4d50:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xdb
	mov	r2, #0x98
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	b	.L4f5c
.L4d74:
	mov	r5, #0
.L4d76:
	mov	r0, r5
	add	r0, #0x1c
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_80923e4
	cmp	r5, #7
	bls	.L4d76
	b	.L4f5c
.L4d8a:
	mov	r2, #0x85
	mov	r3, #0xb0
	lsl	r2, #2
	lsl	r3, #8
	mov	r0, #0xc
	mov	r1, #0x98
	mov	r5, #0xf5
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r2, r5
	mov	r0, #8
	mov	r1, #0x86
	mov	r8, r3
	bl	OvlFunc_945_200c890
	mov	r3, #0xa0
	mov	r2, r5
	mov	r0, #9
	mov	r1, #0xa6
	lsl	r3, #7
	bl	OvlFunc_945_200c890
	add	r5, #0xe
	mov	r3, #0xa0
	mov	r0, #0xa
	mov	r1, #0xb6
	mov	r2, r5
	lsl	r3, #7
	bl	OvlFunc_945_200c890
	mov	r0, #0xb
	mov	r1, #0x76
	mov	r2, r5
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r7, #0
	mov	r0, #0xe
	mov	r6, #0
	b	.L48f6
.L4de0:
	mov	r1, #0xd0
	mov	r2, #0xa4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #8
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r10, r2
	mov	r3, #0xd0
	lsl	r3, #8
	sub	r2, #0x60
	mov	r0, #9
	mov	r1, r10
	mov	r9, r3
	bl	OvlFunc_945_200c890
	mov	r2, #0xc0
	lsl	r2, #6
	mov	r8, r2
	mov	r1, #0xe3
	lsl	r1, #1
	mov	r0, #0xa
	mov	r2, #0xf8
	mov	r3, r8
	mov	r5, #0xcc
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r2, #0x91
	mov	r1, r5
	lsl	r2, #1
	mov	r0, r7
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xab
	mov	r1, r5
	lsl	r2, #1
	mov	r0, r6
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r1, #0xd2
	mov	r2, #0xb2
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	mov	r3, r9
	bl	OvlFunc_945_200c890
	mov	r2, #0x98
	mov	r1, r5
	lsl	r2, #1
	mov	r0, #0xe
	mov	r3, #0
	bl	OvlFunc_945_200c890
	sub	r5, #0x1e
	mov	r1, #0xd1
	lsl	r1, #1
	mov	r0, #0xf
	mov	r2, r5
	mov	r3, r9
	bl	OvlFunc_945_200c890
	mov	r1, #0xdc
	mov	r2, #0x83
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x10
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r0, #0x11
	mov	r1, r10
	mov	r2, r5
	mov	r3, r9
	bl	OvlFunc_945_200c890
	b	.L4f5c
.L4e86:
	mov	r5, r7
	cmp	r7, r6
	bhi	.L4f5c
.L4e8c:
	mov	r0, r5
	add	r5, #1
	bl	__Func_8079374
	cmp	r5, r6
	bls	.L4e8c
	b	.L4f5c
.L4e9a:
	ldr	r1, =0x92c
	ldr	r2, =0x93d
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	ldr	r1, =0x917
	ldr	r2, =0x91f
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r1, #0x99
	lsl	r1, #4
	ldr	r2, =0x998
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x301
	bl	__Func_8079374
	ldr	r0, =0x302
	bl	__Func_8079374
	b	.L4f5c
.L4ed0:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r1, =.L6840
	mov	r0, #0xc
	bl	__Func_809207c
	b	.L4f5c
.L4eea:
	mov	r0, #1
	bl	__Func_8092924
	mov	r0, #2
	bl	__Func_8092924
	mov	r0, #3
	bl	__Func_8092924
	b	.L4f5c
.L4efe:
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r7, #0
	beq	.L4f5c
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	b	.L4f5c
.L4f26:
	ldr	r0, =.L72a0
	bl	__Func_80917ac
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r7, #1
	bne	.L4f3a
	ldr	r0, =.L7300
	b	.L4f40
.L4f3a:
	cmp	r7, #2
	bne	.L4f4c
	ldr	r0, =.L7360
.L4f40:
	bl	__Func_80917ac
	mov	r0, #1
	bl	__Func_80030f8
	b	.L4f5c
.L4f4c:
	cmp	r7, #3
	bne	.L4f5c
	ldr	r0, =.L73c0
	bl	__Func_80917ac
	mov	r0, #1
	bl	__Func_80030f8
.L4f5c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c8e8

.thumb_func_start OvlFunc_945_200cfa8
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #8
	cmp	r1, #0
	bne	.L4fb4
	mov	r7, #0x12
.L4fb4:
	cmp	r0, #1
	beq	.L4fca
	cmp	r0, #1
	bcc	.L4fc6
	cmp	r0, #2
	beq	.L4fce
	cmp	r0, #3
	beq	.L4fd6
	b	.L4fda
.L4fc6:
	ldr	r6, =0x92c
	b	.L4fda
.L4fca:
	ldr	r6, =0x935
	b	.L4fda
.L4fce:
	ldr	r6, =0x917
	b	.L4fda
.L4fd2:
	mov	r0, r7
	b	.L4ff2
.L4fd6:
	mov	r6, #0x99
	lsl	r6, #4
.L4fda:
	mov	r5, #0
.L4fdc:
	mov	r0, r6
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4fd2
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.L4fdc
	mov	r0, #0
.L4ff2:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200cfa8

.thumb_func_start OvlFunc_945_200d004
	push	{lr}
	ldr	r1, =0x92c
	mov	r0, #8
	bl	OvlFunc_945_200d038
	ldr	r1, =0x935
	mov	r0, #8
	bl	OvlFunc_945_200d038
	ldr	r1, =0x917
	mov	r0, #8
	bl	OvlFunc_945_200d038
	mov	r1, #0x99
	lsl	r1, #4
	mov	r0, #8
	bl	OvlFunc_945_200d038
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d004

