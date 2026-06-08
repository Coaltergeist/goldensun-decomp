	.include "macros.inc"

.thumb_func_start OvlFunc_949_20082f0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x10
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, #6
	ldrsh	r2, [r7, r3]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r2
	bl	__Func_80916b0
	ldrh	r2, [r6]
	ldr	r3, .L338	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L356
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L344
	ldr	r0, =0x2365
	b	.L376

	.align	2, 0
.L338:
	.word	2
	.pool

.L344:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L352
	ldr	r0, =0x21e2
	b	.L376
.L352:
	ldr	r0, =0x1f95
	b	.L376
.L356:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L366
	ldr	r0, =0x2371
	b	.L376
.L366:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L374
	ldr	r0, =0x21f5
	b	.L376
.L374:
	ldr	r0, =0x1faa
.L376:
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x10
	bl	__Func_8093040
	mov	r3, r8
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_80030f8
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r6]
	bl	__Func_8091750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20082f0

.thumb_func_start OvlFunc_949_20083d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x11
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, #6
	ldrsh	r2, [r7, r3]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r2
	bl	__Func_80916b0
	ldrh	r2, [r6]
	ldr	r3, .L418	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L436
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L424
	ldr	r0, =0x2366
	b	.L456

	.align	2, 0
.L418:
	.word	2
	.pool

.L424:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L432
	ldr	r0, =0x21e3
	b	.L456
.L432:
	ldr	r0, =0x1f96
	b	.L456
.L436:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L446
	ldr	r0, =0x2372
	b	.L456
.L446:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L454
	ldr	r0, =0x21f6
	b	.L456
.L454:
	ldr	r0, =0x1fab
.L456:
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x11
	bl	__Func_8093040
	mov	r3, r8
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_80030f8
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r6]
	bl	__Func_8091750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20083d0

.thumb_func_start OvlFunc_949_20084b0
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4c2
	ldr	r0, =.L1a9c
	b	.L4d2
.L4c2:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4d0
	ldr	r0, =gScript_960__020097a8
	b	.L4d2
.L4d0:
	ldr	r0, =.L14a8
.L4d2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_949_20084b0

.thumb_func_start OvlFunc_949_20084e8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1f92
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20084e8

.thumb_func_start OvlFunc_949_2008508
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1f9d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008508

.thumb_func_start OvlFunc_949_2008528
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1fa0
	bl	__Func_8092b94
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008528

.thumb_func_start OvlFunc_949_2008568
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_809259c
	ldr	r0, =0x1fa2
	bl	__Func_8092b94
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008568

.thumb_func_start OvlFunc_949_200859c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1fa3
	bl	__Func_8092b94
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_200859c

.thumb_func_start OvlFunc_949_20085bc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x235f
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20085bc

.thumb_func_start OvlFunc_949_20085dc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x8bf
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L622
	ldr	r0, =0x8bf
	bl	__Func_8079358
	ldr	r0, =0x2368
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xe9
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xe9
	mov	r1, #0
	bl	__Func_8091a58
	b	.L630
.L622:
	ldr	r0, =0x236a
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
.L630:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20085dc

.thumb_func_start OvlFunc_949_2008644
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__Func_80916b0
	mov	r5, #8
	mov	r6, #0
.L652:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L662
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L662:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L652
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	mov	r0, #0x9e
	sub	r5, #1
	bl	__Func_80f9080
	lsl	r4, r5, #3
	ldr	r0, =.L1d00
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
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	cmp	r5, #6
	beq	.L6c4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__Func_809163c
.L6c4:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008644

.thumb_func_start OvlFunc_949_20086e8
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.L720
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r1, r5
	ldrb	r2, [r3, #9]
	add	r1, #0x23
	mov	r3, #0
	strb	r3, [r1]
	mov	r1, #0xc
	ldr	r4, [r5, #0x50]
	and	r1, r2
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r0, [r5, #0x50]
	ldrb	r3, [r0, #0x15]
	and	r2, r3
	orr	r2, r1
	strb	r2, [r0, #0x15]
.L720:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20086e8

.thumb_func_start OvlFunc_949_2008728
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r1, #0xb0
	mov	r2, #0xb0
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_80923e4
	ldr	r1, =gScript_949__02008ec0
	mov	r0, #0x10
	bl	__Func_809207c
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, #1
	ldr	r5, =OvlFunc_949_2008170
	add	r2, #0x64
	strh	r3, [r2]
	mov	r1, #0xb8
	mov	r2, #0xa0
	lsl	r2, #17
	str	r5, [r0, #0x6c]
	lsl	r1, #17
	mov	r0, #0x11
	bl	__Func_80923e4
	ldr	r1, =gScript_949__02008f90
	mov	r0, #0x11
	bl	__Func_809207c
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x64
	mov	r6, #0
	strh	r6, [r3]
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_949_20086e8
	str	r3, [r0, #0x6c]
	ldr	r0, =0x8c1
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7a8
	mov	r1, #0x9e
	mov	r2, #0xa4
	mov	r0, #0x1c
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
.L7a8:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7b6
	bl	OvlFunc_949_2008ca8
.L7b6:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7ce
	bl	OvlFunc_949_2008224
	mov	r0, #8
	mov	r1, #4
	bl	__Func_80924d4
.L7ce:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L83e
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x14
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x18
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x1a
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x82
	mov	r2, #0x8c
	mov	r0, #0x1b
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	b	.L86a
.L83e:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L86a
	mov	r1, #0x8c
	mov	r2, #0xa0
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80924d4
.L86a:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_949_2008728

.thumb_func_start OvlFunc_949_2008894
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0x98
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x1c
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xe3d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x1c
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L936
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1c
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xa0
	mov	r2, #0x98
	mov	r0, #0x1c
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x9e
	mov	r2, #0xa4
	mov	r0, #0x1c
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x8c1
	bl	__Func_8079358
	b	.L93e
.L936:
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_8092f84
.L93e:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008894

