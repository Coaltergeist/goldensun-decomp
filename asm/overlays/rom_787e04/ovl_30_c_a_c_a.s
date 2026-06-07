	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_200831c
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #1
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_200831c

.thumb_func_start OvlFunc_887_2008330
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #2
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008330

.thumb_func_start OvlFunc_887_2008344
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #3
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008344

.thumb_func_start OvlFunc_887_2008358
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #4
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008358

.thumb_func_start OvlFunc_887_200836c
	push	{lr}
	mov	r0, #0x80
	bl	__Func_80f9080
	mov	r0, #5
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_200836c

.thumb_func_start OvlFunc_887_2008380
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #6
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008380

.thumb_func_start OvlFunc_887_2008394
	push	{lr}
	mov	r0, #0x80
	bl	__Func_80f9080
	mov	r0, #7
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008394

.thumb_func_start OvlFunc_887_20083a8
	push	{lr}
	mov	r0, #0x81
	bl	__Func_80f9080
	mov	r0, #8
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20083a8

.thumb_func_start OvlFunc_887_20083bc
	push	{lr}
	mov	r0, #0x81
	bl	__Func_80f9080
	mov	r0, #9
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20083bc

.thumb_func_start OvlFunc_887_20083d0
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #0xa
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20083d0

.thumb_func_start OvlFunc_887_20083e4
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #0xb
	bl	OvlFunc_887_20082e0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20083e4

.thumb_func_start OvlFunc_887_20083f8
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L420
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	b	.L550
.L420:
	ldr	r0, =0x834
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L468
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L46c
.L468:
	bl	OvlFunc_887_20093b4
.L46c:
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4d8
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #6
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L550
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4bc
	ldr	r0, =0x203
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L550
	mov	r0, #0xc
	bl	__Func_80118a8
	b	.L550
.L4bc:
	mov	r0, #0xb
	bl	__Func_80118a8
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_80924d4
	b	.L550
.L4d8:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x15
	bne	.L4ee
	bl	OvlFunc_887_2008a0c
	b	.L550
.L4ee:
	cmp	r3, #0x14
	bne	.L4fe
	ldr	r0, =0x834
	bl	__Func_8079358
	bl	OvlFunc_887_2008578
	b	.L550
.L4fe:
	cmp	r3, #0x16
	bne	.L508
	bl	OvlFunc_887_20093e4
	b	.L550
.L508:
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L546
	bl	__Func_8095160
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	bl	__Func_8095268
	b	.L550
.L546:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
.L550:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_887_20083f8

.thumb_func_start OvlFunc_887_2008578
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =iwram_3001ebc
	mov	r9, r2
	ldr	r3, [r2]
	sub	r2, #0x4c
	ldr	r7, [r2]
	mov	r2, #0xf0
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x11
	ldr	r6, [r3]
	bl	__MapActor_GetActor
	ldr	r0, [r0, #0x50]
	mov	r8, r0
	bl	__Func_80916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_80923e4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_80924d4
	mov	r3, #0
	mov	r10, r3
	ldr	r3, =0x555
	mov	r2, r8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r5, .L63c	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x90
	lsl	r1, #18
	ldr	r2, =0x28a0000
	mov	r0, #0x11
	bl	__Func_80923e4
	mov	r0, #7
	bl	__Func_80118a8
	mov	r2, #0xac
	ldr	r1, =0x2160000
	lsl	r2, #18
	mov	r0, #8
	bl	__Func_80923e4
	bl	__Func_800c5b4
	mov	r0, #8
	b	.L650

	.align	2, 0
.L63c:
	.word	0
	.pool

.L650:
	bl	__Func_8093304
	ldr	r5, =0xe52
	mov	r1, #1
	mov	r0, r5
	mov	r2, #0
	bl	__Func_8019aa0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #8
	bl	__Func_8093304
	mov	r1, #1
	add	r0, r5, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, r7
	mov	r3, #0xa4
	add	r2, #0xec
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0x96
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x9c
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0xcc
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x8d
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, r10
	str	r3, [r6, #0xc]
	ldr	r3, =0x2b30000
	str	r3, [r6, #0x10]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, r9
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__Func_8095160
	mov	r2, r9
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__Func_80030f8
	add	r5, #2
	bl	__Func_8091dc8
	bl	__Func_8091e20
	bl	__Func_8095268
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, r5
	bl	__Func_8092b94
	mov	r2, #0x3c
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #7
	bl	__Func_80118c0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	bl	__Func_80118a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_80924d4
	ldr	r1, =0x22d
	ldr	r2, =0x2a7
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #8
	bl	__Func_80118c0
	mov	r0, #9
	bl	__Func_80118a8
	mov	r2, #0xaa
	ldr	r1, =0x22b
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	ldr	r2, =0x2a2
	mov	r0, #0
	ldr	r1, =0x21f
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_8092f84
	bl	OvlFunc_887_20097e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x9008
	bl	__Func_8093040
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xaa
	lsl	r2, #2
	strb	r3, [r0]
	ldr	r1, =0x21e
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0xe2
	bl	__Func_800c430
	mov	r0, #0x21
	bl	__Func_8079358
	mov	r0, #0x7e
	bl	__Func_80f9080
	mov	r1, #7
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xac
	and	r5, r3
	ldr	r1, =0x216
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #1
	mov	r0, #8
	bl	__Func_809335c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	ldr	r5, =.L1ab4
	orr	r6, r3
	mov	r1, r5
	strb	r6, [r0]
	mov	r0, #8
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #8
	bl	__Func_80920e8
	mov	r0, #8
	ldr	r1, =0x1a3
	ldr	r2, =0x295
	bl	__Func_80921c4
	mov	r1, #0xcc
	ldr	r2, =0x295
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L95a
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L95a:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L1b04
	mov	r0, #8
	bl	__Func_809207c
	ldr	r1, =.L1b34
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, r9
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008578

.thumb_func_start OvlFunc_887_2008a0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	bl	__Func_80916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #8
	ldr	r1, =0x1af0000
	ldr	r2, =0x1870000
	bl	__Func_80923e4
	mov	r2, #0xca
	lsl	r2, #17
	ldr	r1, =0x1cf0000
	mov	r0, #0xa
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	add	r5, #0x55
	mov	r2, #0
	strb	r3, [r1]
	strb	r2, [r5]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	ldr	r1, =.L1cec
	mov	r0, #0xa
	bl	__Func_809207c
	ldr	r2, =iwram_3001ebc
	ldr	r3, [r2]
	mov	r10, r2
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r8, r3
	mov	r5, #5
	mov	r0, #0x53
	mov	r1, #0xf
	mov	r2, #0x53
	mov	r3, #0x13
	str	r5, [sp]
	bl	__Func_8010424
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x5a
	mov	r1, #0x10
	mov	r2, #0x5a
	mov	r3, #0x14
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r0, #0x4d
	mov	r1, #0x17
	mov	r2, #0x52
	mov	r3, #0x17
	str	r5, [sp]
	bl	__Func_8010424
	mov	r5, #2
	mov	r0, #0x53
	mov	r1, #0x21
	mov	r2, #0x55
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r6, #1
	mov	r0, #0x5b
	mov	r1, #0x1c
	mov	r2, #0x5a
	mov	r3, #0x1c
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x5b
	mov	r1, #0x1c
	mov	r2, #0x58
	mov	r3, #0x1e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r3, #6
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x5e
	mov	r1, #0x1b
	mov	r2, #0x5e
	mov	r3, #0x17
	bl	__Func_8010424
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #0x1c
	mov	r2, #0x57
	mov	r3, #0x17
	bl	__Func_8010424
	mov	r0, #0x41
	mov	r1, #0x35
	mov	r2, #0x58
	mov	r3, #0x18
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	bl	__Func_8011ae0
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r3, =0x100c
	ldr	r5, =REG_BLDALPHA
	strh	r3, [r5]
	bl	__Func_8095160
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	strh	r6, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #9
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r1, =.L1bb4
	mov	r0, #0
	bl	__Func_809207c
	ldr	r1, =.L1b78
	mov	r0, #8
	bl	__Func_809207c
	bl	__Func_8091dc8
	mov	r0, #8
	bl	__Func_80920e8
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xcf
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x2120000
	bl	__Func_80933f8
	mov	r1, #0xcf
	mov	r0, #9
	lsl	r1, #17
	ldr	r2, =0x2120000
	bl	__Func_80923e4
	ldr	r1, =0x1ab
	ldr	r2, =0x1e3
	mov	r0, #9
	bl	__Func_80921c4
	bl	__Func_8093530
	ldr	r0, =0xe5b
	bl	__Func_8092b94
	mov	r2, #0xa
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xf0
	mov	r1, #1
	mov	r2, #0xde
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	ldr	r2, =0x24d
	ldr	r1, =0x19f
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r1, =.L1c04
	mov	r0, #8
	bl	__Func_809207c
	ldr	r1, =.L1c54
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0xea
	bl	__Func_80f9080
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L1d38
	mov	r0, #0xa
	bl	__Func_809207c
	mov	r6, #0
.Lcc0:
	ldr	r2, =0x100e
	add	r3, r6, r2
	strh	r3, [r5]
	mov	r0, #1
	add	r6, #1
	bl	__Func_80030f8
	cmp	r6, #3
	bls	.Lcc0
	mov	r0, #0xca
	bl	__Func_80f9080
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r7, =0x100f
	ldr	r5, =REG_BLDALPHA
	mov	r6, #0
.Lce4:
	sub	r3, r7, r6
	strh	r3, [r5]
	mov	r0, #1
	add	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0xf
	bls	.Lce4
	mov	r0, #0
	bl	__Func_80920e8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809335c
	ldr	r5, =.L1ca4
	mov	r0, #8
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0
	mov	r1, r5
	bl	__Func_80920fc
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x15
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008a0c

.thumb_func_start OvlFunc_887_2008e34
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	mov	r5, #0x90
	add	r3, r2
	lsl	r5, #8
	cmp	r3, r5
	bls	.Le54
	mov	r0, #0
	mov	r1, #0xd
	bl	__Func_80b3284
	b	.Led4
.Le54:
	bl	__Func_80916b0
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Leb0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_809280c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Le96
	ldr	r0, =0x1c14
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
.Le96:
	ldr	r0, =0x1c15
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0xa
	bl	__Func_8092adc
	b	.Led0
.Leb0:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lec2
	ldr	r0, =0x11a9
	bl	__Func_8092b94
	b	.Lec8
.Lec2:
	ldr	r0, =0xf58
	bl	__Func_8092b94
.Lec8:
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
.Led0:
	bl	__Func_8091750
.Led4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008e34

.thumb_func_start OvlFunc_887_2008ef8
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_809280c
	ldr	r0, =0x1c13
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0x10
	bl	__Func_8092adc
	ldr	r0, =0x301
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008ef8

.thumb_func_start OvlFunc_887_2008f38
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1c1b
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	ldr	r0, =0x81c
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008f38

.thumb_func_start OvlFunc_887_2008f64
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1c1a
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092f84
	ldr	r0, =0x81c
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008f64

.thumb_func_start OvlFunc_887_2008f90
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0
	ldr	r1, =0x239
	ldr	r2, =0x189
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1c66
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0x3c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x92
	mov	r2, #0xcb
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_8092128
	mov	r0, #0xb
	bl	__Func_80118c0
	mov	r0, #0xc
	bl	__Func_80118a8
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x84
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0xd
	bl	__Func_8092548
	mov	r2, #0
	mov	r0, #8
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #0xb
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0xd
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L10ea
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L10ea:
	ldr	r0, =0x81c
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1100
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
.L1100:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =0x107
	mov	r2, #0x3c
	mov	r0, #8
	bl	__Func_80937b8
	ldr	r5, =0x1c6f
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L1144
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1144:
	ldr	r0, =0x81c
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L115a
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
.L115a:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #8
	bl	__Func_80937b8
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0xd
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xc2
	strb	r3, [r0]
	ldr	r1, =0x22e
	mov	r0, #0
	lsl	r2, #1
	bl	__Func_8092128
	ldr	r2, =0x9999
	mov	r0, #8
	ldr	r1, =0x13333
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #0xe
	bl	__Func_80924d4
	mov	r2, #0xc8
	ldr	r1, =0x24a
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_8092158
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x91
	mov	r2, #0xbf
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #8
	mov	r2, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0x28
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0x8f
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	ldr	r0, =0x81e
	bl	__Func_8079358
	ldr	r0, =0x203
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008f90

.thumb_func_start OvlFunc_887_200933c
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x203
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L136e
	mov	r1, #0x80
	lsl	r1, #9
	ldr	r2, =.L1e6c
	mov	r0, #8
	bl	__Func_8092a1c
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1c77
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	b	.L1398
.L136e:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r5, =0x1c79
	mov	r0, r5
	bl	__Func_8092b94
	add	r5, #1
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, r5
	mov	r1, #1
	bl	__Func_801776c
.L1398:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_200933c

.thumb_func_start OvlFunc_887_20093b4
	push	{lr}
	sub	sp, #8
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x55
	mov	r2, #0x19
	mov	r3, #0x55
	bl	__Func_8010424
	mov	r3, #0x19
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0xf
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20093b4

.thumb_func_start OvlFunc_887_20093e4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xf0
	mov	r2, #0xca
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0x12
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_809335c
	mov	r1, #0xa4
	mov	r2, #0x80
	mov	r3, #0xc3
	lsl	r1, #17
	lsl	r2, #10
	lsl	r3, #16
	mov	r0, #0x16
	bl	__Func_800c150
	mov	r8, r0
	mov	r3, r8
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r2, r8
	ldr	r6, [r2, #0x50]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r2, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xe0
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091dc8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf0
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r1, #0xd2
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xa3
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xb9
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r1, =.L1eac
	mov	r0, r8
	bl	__Func_800c2d8
	mov	r0, r8
	bl	__Func_800c4ec
	ldr	r1, =.L1ecc
	mov	r0, r8
	bl	__Func_800c2d8
	mov	r0, r8
	bl	__Func_800c4ec
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r8
	bl	__Func_800c0f4
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x16
	bl	__Func_8091e9c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20093e4

