	.include "macros.inc"

.thumb_func_start OvlFunc_939_20089d4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.La54
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La54
	ldr	r0, =0x94d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La54
	ldr	r0, =0x9af
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La36
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_8097608
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	ldr	r0, =0x24db
	bl	__Func_8092b94
	ldr	r0, =0x9af
	bl	__Func_8079358
	b	.La3c
.La36:
	ldr	r0, =0x24e7
	bl	__Func_8092b94
.La3c:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	ldr	r0, =0x24dc
	bl	__Func_8092b94
	b	.La5a
.La54:
	ldr	r0, =0x1bbf
	bl	__Func_8092b94
.La5a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20089d4

.thumb_func_start OvlFunc_939_2008a90
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Laa4
	ldr	r0, =0x24e8
	bl	__Func_8092b94
	b	.Laaa
.Laa4:
	ldr	r0, =0x1bc0
	bl	__Func_8092b94
.Laaa:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008a90

.thumb_func_start OvlFunc_939_2008ac4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lad6
	ldr	r2, =0xfffff
	add	r3, r2
.Lad6:
	ldr	r0, =0x243
	asr	r5, r3, #20
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lafa
	cmp	r5, #0xa
	bne	.Lafa
	ldr	r0, =0x243
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x14
	strh	r2, [r3]
.Lafa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008ac4

.thumb_func_start OvlFunc_939_2008b0c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =0x24cf
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x64
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xc
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =0x243
	bl	__Func_8079374
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008b0c

.thumb_func_start OvlFunc_939_2008b6c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__Func_80916b0
	mov	r5, #8
	mov	r6, #0
.Lb7a:
	mov	r0, r5
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lb8a
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.Lb8a:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lb7a
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	sub	r5, #4
	lsl	r4, r5, #3
	ldr	r0, =.L250c
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	cmp	r5, #6
	beq	.Lbec
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__Func_809163c
.Lbec:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008b6c

.thumb_func_start OvlFunc_939_2008c10
	push	{r5, lr}
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc5c
	ldr	r0, =0x201
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc5c
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xd
	bl	__Func_809163c
	mov	r0, #0xc
	bl	__Func_8091e9c
.Lc5c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008c10

.thumb_func_start OvlFunc_939_2008c74
	push	{r5, r6, lr}
	ldr	r0, =0x242
	sub	sp, #8
	bl	__Func_8079358
	bl	__Func_80916b0
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_80922c4
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r5, #0x29
	mov	r6, #4
	mov	r1, #4
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #6
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008c74

.thumb_func_start OvlFunc_939_2008d08
	push	{lr}
	bl	__Func_8093c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d08

.thumb_func_start OvlFunc_939_2008d14
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld26
	mov	r0, #0x53
	bl	__Func_80f9080
.Ld26:
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d14

.thumb_func_start OvlFunc_939_2008d30
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld46
	b	.Le98
.Ld46:
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld52
	b	.Le98
.Ld52:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_80923e4
	mov	r0, #0xd2
	bl	__Func_80f9080
	mov	r0, #1
	bl	__Func_80030f8
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x20
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x23
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r10, r3
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x29
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x2f
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x32
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x35
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x38
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x20
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x23
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r0, =0x202
	bl	__Func_8079358
.Le98:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d30

.thumb_func_start OvlFunc_939_2008eb0
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	bne	.Lf8c
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #2
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0xf
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x98
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r2, #0xa8
	mov	r1, #0xa8
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #8
	bl	__Func_80920a0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #9
	bl	__Func_80920a0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	ldr	r0, =0x24da
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	bl	__Func_8091750
.Lf8c:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008eb0

