	.include "macros.inc"

.thumb_func_start OvlFunc_901_20084b4
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20084b4

.thumb_func_start OvlFunc_901_20084d8
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #2
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	ldr	r0, =0x305
	bl	__Func_8079358
	ldr	r0, =0x1cab
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20084d8

.thumb_func_start OvlFunc_901_200850c
	push	{lr}
	ldr	r0, =0x1cae
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xb
	bl	OvlFunc_901_20084b4
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_200850c

.thumb_func_start OvlFunc_901_200852c
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #2
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	ldr	r0, =0x306
	bl	__Func_8079358
	ldr	r0, =0x868
	bl	__Func_8079358
	ldr	r0, =0x1caf
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_200852c

.thumb_func_start OvlFunc_901_200856c
	push	{lr}
	ldr	r0, =0x1cb0
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xd
	bl	OvlFunc_901_20084b4
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_200856c

.thumb_func_start OvlFunc_901_200858c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, #6
	ldrsh	r2, [r5, r3]
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	mov	r8, r2
	ldr	r2, =2
	orr	r2, r3
	strh	r2, [r6]
	bl	__Func_80916b0
	ldr	r7, =0x1cb1
	mov	r0, r7
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L608
	b	.L5e0

	.pool_aligned

.L5e0:
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
.L608:
	add	r0, r7, #2
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, r8
	strh	r2, [r5, #6]
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091750
	mov	r3, #1
	strh	r3, [r6]
	ldr	r0, =0x307
	bl	__Func_8079358
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_200858c

.thumb_func_start OvlFunc_901_2008640
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	ldr	r3, =2
	ldrh	r2, [r6]
	orr	r3, r2
	strh	r3, [r6]
	mov	r8, r1
	mov	r1, #0
	mov	r10, r1
	bl	__Func_80916b0
	ldr	r0, =0x1cb4
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0xf
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, r8
	strh	r2, [r5, #6]
	mov	r0, #1
	b	.L69c

	.pool_aligned

.L69c:
	bl	__Func_80030f8
	bl	__Func_8091750
	mov	r3, r10
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008640

.thumb_func_start OvlFunc_901_20086b4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1cb5
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L6ee
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6ee:
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092f84
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20086b4

.thumb_func_start OvlFunc_901_2008710
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_809280c
	ldr	r0, =0x305
	bl	__Func_8079358
	ldr	r0, =0x1cab
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008710

.thumb_func_start OvlFunc_901_2008754
	push	{r5, lr}
	ldr	r0, =0x1cbd
	bl	__Func_8092b94
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0xb
	bl	OvlFunc_901_20084b4
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008754

.thumb_func_start OvlFunc_901_2008784
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__Func_809280c
	ldr	r0, =0x306
	bl	__Func_8079358
	ldr	r0, =0x868
	bl	__Func_8079358
	ldr	r0, =0x1caf
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008784

.thumb_func_start OvlFunc_901_20087d4
	push	{r5, lr}
	ldr	r0, =0x1cbf
	bl	__Func_8092b94
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0xd
	bl	OvlFunc_901_20084b4
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20087d4

.thumb_func_start OvlFunc_901_2008804
	push	{lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_80916b0
	ldr	r0, =0x307
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L840
	ldr	r0, =0x1cc0
	bl	__Func_8092b94
	mov	r0, #0xe
	bl	OvlFunc_901_20084b4
	b	.L84a

	.pool_aligned

.L840:
	bl	OvlFunc_901_200858c
	ldr	r0, =0x307
	bl	__Func_8079358
.L84a:
	bl	__Func_8091750
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008804

.thumb_func_start OvlFunc_901_2008864
	push	{r5, lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__Func_80916b0
	ldr	r0, =0x1cc1
	bl	__Func_8092b94
	mov	r0, #0xf
	bl	OvlFunc_901_20084b4
	bl	__Func_8091750
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x64
	strh	r5, [r0]
	b	.L8a0

	.pool_aligned

.L8a0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008864

.thumb_func_start OvlFunc_901_20088a8
	push	{r5, lr}
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.L93a
	bl	__Func_80916b0
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1cb5
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L912
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L912:
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092f84
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809207c
	bl	__Func_8091750
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079358
	b	.L95e
.L93a:
	ldr	r0, =0x1cc2
	bl	__Func_8092b94
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x10
	bl	OvlFunc_901_20084b4
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
.L95e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20088a8

.thumb_func_start OvlFunc_901_2008970
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r8, r2
	mov	r6, r1
	mov	r10, r3
	bl	__MapActor_GetActor
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
	b	.L9cc
.L9ca:
	sub	r5, #1
.L9cc:
	cmp	r5, #0
	beq	.L9de
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #0x2a
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	bne	.L9ca
.L9de:
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
.func_end OvlFunc_901_2008970

.thumb_func_start OvlFunc_901_20089f8
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x64
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x867
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La72
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092560
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x15
	bl	OvlFunc_901_2008970
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x78
	bl	__Func_80921c4
	ldr	r0, =0x867
	bl	__Func_8079358
.La72:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20089f8

.thumb_func_start OvlFunc_901_2008a80
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
.func_end OvlFunc_901_2008a80

.thumb_func_start OvlFunc_901_2008ac8
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L1740
	mov	r1, #0x38
	mov	r2, #0x13
	bl	__Func_8010560
	mov	r0, #0xcc
	mov	r1, #0xa0
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #5
	bl	OvlFunc_901_2008a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008ac8

.thumb_func_start OvlFunc_901_2008af0
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L1756
	mov	r1, #0x32
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r0, #0x9c
	mov	r1, #0x98
	lsl	r0, #1
	lsl	r1, #1
	mov	r2, #6
	bl	OvlFunc_901_2008a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008af0

.thumb_func_start OvlFunc_901_2008b18
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =gOvl_0200976c
	mov	r1, #0x2c
	mov	r2, #0x11
	bl	__Func_8010560
	mov	r1, #0x90
	lsl	r1, #1
	mov	r0, #0xd8
	mov	r2, #7
	bl	OvlFunc_901_2008a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008b18

.thumb_func_start OvlFunc_901_2008b40
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_80f9080
	ldr	r0, =.L1782
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
	bl	OvlFunc_901_2008a80
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008b40

.thumb_func_start OvlFunc_901_2008b9c
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_80f9080
	ldr	r0, =.L1798
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
	bl	OvlFunc_901_2008a80
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008b9c

.thumb_func_start OvlFunc_901_2008bf8
	push	{lr}
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L17ae
	mov	r1, #0x26
	mov	r2, #6
	bl	__Func_8010560
	mov	r0, #0x78
	mov	r1, #0x90
	mov	r2, #0xa
	bl	OvlFunc_901_2008a80
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008bf8

.thumb_func_start OvlFunc_901_2008c1c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
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
	bl	OvlFunc_901_2008a80
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008c1c

.thumb_func_start OvlFunc_901_2008cc8
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x9e
	ldr	r6, [r5, #0x50]
	bl	__Func_80f9080
	ldr	r0, =.L17c4
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
	bl	OvlFunc_901_2008a80
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008cc8

.thumb_func_start OvlFunc_901_2008d24
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
.func_end OvlFunc_901_2008d24

.thumb_func_start OvlFunc_901_2008d4c
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
.func_end OvlFunc_901_2008d4c

