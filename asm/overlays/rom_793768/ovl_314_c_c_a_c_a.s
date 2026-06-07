	.include "macros.inc"

.thumb_func_start OvlFunc_898_20084a0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x855
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4ba
	ldr	r0, =0x856
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4cc
.L4ba:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x13
	bl	__Func_8091e9c
	b	.L59e
.L4cc:
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4e4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L4e4:
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__Func_8092064
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x14
	bne	.L50c
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	b	.L534
.L50c:
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xa2
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #2
	mov	r1, #0xe0
	mov	r2, #0xa2
	bl	__Func_80921c4
	bl	__Func_8093530
.L534:
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1327
	bl	__Func_8092b94
	ldr	r0, =0x9002
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	bl	OvlFunc_898_2008450
	cmp	r0, #0
	beq	.L57c
	ldr	r0, =0x132a
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	bl	OvlFunc_898_2008464
	mov	r0, #0x14
	bl	__Func_80030f8
.L57c:
	mov	r0, #2
	bl	__Func_8091890
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x13
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
.L59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20084a0

.thumb_func_start OvlFunc_898_20085c8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29dc
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20085c8

.thumb_func_start OvlFunc_898_20085f0
	push	{lr}
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L600
	ldr	r0, =.L2630
	b	.L602
.L600:
	ldr	r0, =.L2414
.L602:
	pop	{r1}
	bx	r1
.func_end OvlFunc_898_20085f0

.thumb_func_start OvlFunc_898_2008614
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1223
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L64e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L64e:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008614

.thumb_func_start OvlFunc_898_2008674
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1229
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L6b6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6b6:
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008674

.thumb_func_start OvlFunc_898_20086d0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x122f
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L70a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L70a:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20086d0

.thumb_func_start OvlFunc_898_2008724
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1232
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L75e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L75e:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008724

.thumb_func_start OvlFunc_898_2008778
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1227
	bl	__Func_8092b94
	mov	r0, #0xb
	bl	OvlFunc_898_200890c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008778

.thumb_func_start OvlFunc_898_2008798
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x122e
	bl	__Func_8092b94
	mov	r0, #0x10
	bl	OvlFunc_898_200890c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008798

.thumb_func_start OvlFunc_898_20087b8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1235
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #2
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20087b8

.thumb_func_start OvlFunc_898_20087ec
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_80916b0
	ldr	r0, =0x122c
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #2
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xe
	bl	OvlFunc_898_2009724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091750
	b	.L848

	.pool_aligned

.L848:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20087ec

.thumb_func_start OvlFunc_898_200885c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__Func_80916b0
	ldr	r0, =0x122d
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xf
	bl	OvlFunc_898_2009724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091750
	b	.L8b8

	.pool_aligned

.L8b8:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200885c

.thumb_func_start OvlFunc_898_20088cc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x12c0
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__Func_80937b8
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20088cc

.thumb_func_start OvlFunc_898_200890c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r2, #2
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200890c

.thumb_func_start OvlFunc_898_2008938
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r3, #0
	mov	r5, r0
	add	r5, #0x5b
	mov	r8, r3
	mov	r3, #1
	strb	r3, [r5]
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	mov	r3, r8
	strb	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008938

.thumb_func_start OvlFunc_898_200897c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1330
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L9b6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L9b6:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200897c

.thumb_func_start OvlFunc_898_20089d0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1335
	bl	__Func_8092b94
	mov	r0, #0xb
	bl	OvlFunc_898_200890c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20089d0

