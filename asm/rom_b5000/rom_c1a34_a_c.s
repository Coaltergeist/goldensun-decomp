	.include "macros.inc"

.thumb_func_start Func_80c24b0
	push	{lr}
	ldr	r3, =iwram_3001e74
	mov	r2, #0xa6
	ldr	r0, [r3]
	lsl	r2, #3
	add	r1, r0, r2
	ldr	r3, =ewram_2000240
	mov	r2, #0x8f
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	strh	r2, [r3]
	str	r2, [r1]
	str	r2, [r1, #4]
	str	r2, [r1, #8]
	ldr	r1, =0x542
	mov	r3, #3
	add	r0, r1
.Lc24d4:
	sub	r3, #1
	strh	r2, [r0]
	sub	r0, #2
	cmp	r3, #0
	bge	.Lc24d4
	pop	{r0}
	bx	r0
.func_end Func_80c24b0

.thumb_func_start Func_80c24f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r1
	mov	r5, r0
	bl	_Func_8077394
	ldr	r3, =iwram_3001e74
	mov	r8, r0
	mov	r1, #0xa6
	ldr	r0, [r3]
	lsl	r1, #3
	add	r7, r0, r1
	cmp	r5, #7
	bhi	.Lc251c
	mov	r0, #1
	neg	r0, r0
	b	.Lc2704
.Lc251c:
	ldr	r3, =0x129
	add	r3, r8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lc252c
	mov	r0, #2
	neg	r0, r0
	b	.Lc2704
.Lc252c:
	mov	r1, #0x94
	lsl	r1, #1
	add	r1, r8
	ldrh	r2, [r0, #0x10]
	ldrb	r3, [r1]
	mov	r6, #0
	mov	r5, #0
	cmp	r2, r3
	beq	.Lc2554
	mov	r4, r1
	mov	r1, r0
	add	r1, #0x10
.Lc2544:
	add	r5, #1
	cmp	r5, #5
	bgt	.Lc2554
	add	r1, #2
	ldrh	r2, [r1]
	ldrb	r3, [r4]
	cmp	r2, r3
	bne	.Lc2544
.Lc2554:
	cmp	r5, #6
	beq	.Lc255a
	mov	r6, r5
.Lc255a:
	ldrh	r3, [r0, #0x3e]
	cmp	r3, #2
	beq	.Lc2572
	ldrh	r3, [r0, #0x3c]
	cmp	r6, r3
	bge	.Lc2568
	strh	r6, [r0, #0x3c]
.Lc2568:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.Lc2574
	mov	r3, #1
	strh	r3, [r0, #0x3e]
.Lc2572:
	ldr	r3, [r7, #8]
.Lc2574:
	add	r3, #1
	str	r3, [r7, #8]
	ldr	r0, =0x173
	bl	_Func_8079338
	cmp	r0, #0
	beq	.Lc2584
	b	.Lc2702
.Lc2584:
	mov	r5, #0x94
	lsl	r5, #1
	add	r5, r8
	ldrb	r0, [r5]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r0, r2
	bl	_Func_8079358
	ldrb	r0, [r5]
	bl	_Func_80773d8
	mov	r3, r11
	mov	r10, r0
	cmp	r3, #0
	beq	.Lc2646
	mov	r6, #0x4c
	add	r6, r10
	ldrh	r3, [r6]
	mov	r9, r6
	cmp	r3, #0
	beq	.Lc25f8
	mov	r6, #0
	mov	r5, #0
	b	.Lc25c8
.Lc25b6:
	bl	Func_8004458
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, r6, r3
	add	r6, r3, #1
	add	r5, #1
.Lc25c8:
	mov	r1, r8
	ldrb	r0, [r1, #0xf]
	mov	r1, #0xa
	bl	Func_b60_from_thumb
	lsl	r0, #24
	lsr	r0, #24
	add	r0, #1
	cmp	r5, r0
	blt	.Lc25b6
	mov	r2, r9
	ldrh	r5, [r2]
	lsl	r0, r5, #1
	add	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r6, r0
	bge	.Lc25f0
	mov	r6, r0
.Lc25f0:
	ldr	r3, [r7]
	add	r2, r6, r5
	add	r3, r2
	str	r3, [r7]
.Lc25f8:
	mov	r3, #0x52
	add	r3, r10
	mov	r9, r3
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.Lc265e
	mov	r6, #0
	mov	r5, #0
	b	.Lc2618
.Lc260a:
	bl	Func_8004458
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r6, r0
	add	r6, r0, #1
	add	r5, #1
.Lc2618:
	mov	r1, r8
	ldrb	r0, [r1, #0xf]
	mov	r1, #0xa
	bl	Func_b60_from_thumb
	lsl	r0, #24
	lsr	r0, #24
	add	r0, #1
	cmp	r5, r0
	blt	.Lc260a
	mov	r2, r9
	ldrh	r5, [r2]
	lsl	r0, r5, #1
	add	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	cmp	r6, r0
	bge	.Lc2640
	mov	r6, r0
.Lc2640:
	ldr	r3, [r7, #4]
	add	r2, r6, r5
	b	.Lc265a
.Lc2646:
	mov	r3, r10
	add	r3, #0x4c
	ldrh	r2, [r3]
	ldr	r3, [r7]
	add	r3, r2
	str	r3, [r7]
	mov	r3, r10
	add	r3, #0x52
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
.Lc265a:
	add	r3, r2
	str	r3, [r7, #4]
.Lc265e:
	mov	r3, #0x4e
	add	r3, r10
	mov	r6, #0
	ldrsh	r2, [r3, r6]
	mov	r9, r3
	cmp	r2, #0
	beq	.Lc2702
	mov	r0, r10
	add	r0, #0x50
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.Lc2702
	ldrh	r3, [r7, #0xc]
	mov	r5, #0
	cmp	r3, r2
	beq	.Lc2698
	mov	r1, r7
	mov	r4, r9
	add	r1, #0xc
.Lc2686:
	add	r5, #1
	cmp	r5, #3
	bgt	.Lc2698
	add	r1, #2
	ldrh	r2, [r1]
	mov	r6, #0
	ldrsh	r3, [r4, r6]
	cmp	r2, r3
	bne	.Lc2686
.Lc2698:
	cmp	r5, #4
	bne	.Lc2702
	mov	r2, r11
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r2, #0
	beq	.Lc26a8
	sub	r0, #2
.Lc26a8:
	cmp	r0, #0
	bge	.Lc26ae
	mov	r0, #0
.Lc26ae:
	mov	r5, #0x80
	lsl	r5, #10
	asr	r5, r0
	bl	_Func_8079bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.Lc2702
	mov	r6, #0x80
	lsl	r6, #23
	mov	r3, #1
	neg	r3, r3
	mov	r8, r6
	mov	r6, r7
	mov	r10, r3
	mov	r5, #0
	add	r6, #0xc
.Lc26d2:
	ldrh	r0, [r6]
	add	r6, #2
	bl	Func_80c2470
	cmp	r0, r8
	bge	.Lc26e2
	mov	r8, r0
	mov	r10, r5
.Lc26e2:
	add	r5, #1
	cmp	r5, #3
	ble	.Lc26d2
	mov	r2, r9
	mov	r1, #0
	ldrsh	r0, [r2, r1]
	bl	Func_80c2470
	cmp	r0, r8
	ble	.Lc2702
	mov	r6, r10
	mov	r1, r9
	lsl	r3, r6, #1
	ldrh	r2, [r1]
	add	r3, #0xc
	strh	r2, [r7, r3]
.Lc2702:
	mov	r0, #0
.Lc2704:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c24f0

.thumb_func_start Func_80c2724
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	mov	r0, #0xa6
	ldr	r3, [r3]
	lsl	r0, #3
	add	r0, r3, r0
	sub	sp, #0x38
	str	r0, [sp, #0x14]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.Lc2756
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x83a
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc2756:
	mov	r2, sp
	add	r2, #0x18
	mov	r1, r2
	mov	r0, #1
	str	r2, [sp, #0xc]
	bl	Func_80b6b40
	str	r0, [sp, #0x10]
	mov	r0, #0xa6
	lsl	r0, #1
	bl	Func_8004970
	mov	r11, r0
	ldr	r0, [sp, #0x10]
	mov	r3, #0
	str	r3, [sp, #8]
	cmp	r3, r0
	blt	.Lc277c
	b	.Lc291e
.Lc277c:
	add	r2, sp, #0x28
	str	r3, [sp]
	mov	r8, r2
.Lc2782:
	ldr	r0, [sp, #0xc]
	ldr	r3, [sp]
	ldrh	r3, [r3, r0]
	mov	r0, r3
	str	r3, [sp, #4]
	bl	_Func_8077394
	mov	r3, #0x92
	mov	r10, r0
	lsl	r3, #1
	ldr	r0, [sp, #0x14]
	add	r3, r10
	ldr	r2, [r3]
	ldr	r1, [r0, #4]
	add	r2, r1
	str	r2, [r3]
	b	.Lc28ee
.Lc27a4:
	mov	r0, #0x59
	bl	_Func_80f9080
	bl	_Func_80198dc
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r0, [r3]
	mov	r1, #3
	bl	_Func_8019908
	ldr	r2, [sp]
	ldr	r3, [sp, #0xc]
	mov	r1, #1
	ldrh	r0, [r2, r3]
	bl	_Func_8019908
	mov	r2, r10
	ldrb	r0, [r2, #0xf]
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x89a
	bl	_Func_80175a0
	bl	Func_80bb65c
	ldr	r3, =0x3fff
	mov	r6, r10
	mov	r9, r3
	add	r6, #0x58
	mov	r7, #0x1f
.Lc27e4:
	ldrh	r5, [r6]
	mov	r0, r9
	mov	r3, r5
	and	r3, r0
	add	r6, #4
	cmp	r3, #0
	beq	.Lc284c
	lsr	r3, r5, #15
	cmp	r3, #0
	beq	.Lc284c
	mov	r3, #0x58
	mov	r2, r11
	ldrh	r3, [r2, r3]
	mov	r1, #0
	cmp	r5, r3
	beq	.Lc2814
	add	r2, #0x58
.Lc2806:
	add	r1, #1
	cmp	r1, #0x1f
	bgt	.Lc2814
	add	r2, #4
	ldrh	r3, [r2]
	cmp	r5, r3
	bne	.Lc2806
.Lc2814:
	cmp	r1, #0x20
	bne	.Lc284c
	bl	_Func_80198dc
	ldr	r3, =0x129
	add	r3, r10
	ldrb	r0, [r3]
	mov	r1, #3
	bl	_Func_8019908
	mov	r1, #1
	ldr	r0, [sp, #4]
	bl	_Func_8019908
	mov	r3, r9
	and	r5, r3
	mov	r1, #4
	mov	r0, r5
	bl	_Func_8019908
	mov	r0, #0x9a
	bl	_Func_80f9080
	ldr	r0, =0x89b
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc284c:
	sub	r7, #1
	cmp	r7, #0
	bge	.Lc27e4
	mov	r3, r8
	mov	r2, #4
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc286c
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x89c
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc286c:
	mov	r3, r8
	mov	r2, #6
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc2886
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x89d
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc2886:
	mov	r3, r8
	mov	r2, #8
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28a0
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x89e
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc28a0:
	mov	r3, r8
	mov	r2, #0xa
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28ba
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x89f
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc28ba:
	mov	r3, r8
	mov	r2, #0xc
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28d4
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x8a0
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc28d4:
	mov	r3, r8
	mov	r2, #0xe
	ldrsh	r0, [r3, r2]
	cmp	r0, #0
	beq	.Lc28ee
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x8a1
	bl	_Func_80175a0
	bl	Func_80bb65c
.Lc28ee:
	mov	r2, #0xa6
	mov	r1, r10
	ldr	r3, =Func_8001af8
	mov	r0, r11
	lsl	r2, #1
	bl	_call_via_r3
	mov	r1, r8
	ldr	r0, [sp, #4]
	bl	_Func_80792c4
	cmp	r0, #0
	beq	.Lc290a
	b	.Lc27a4
.Lc290a:
	ldr	r0, [sp]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x10]
	add	r0, #2
	add	r2, #1
	str	r0, [sp]
	str	r2, [sp, #8]
	cmp	r2, r3
	bge	.Lc291e
	b	.Lc2782
.Lc291e:
	mov	r0, r11
	bl	Func_8002df0
	ldr	r2, [sp, #0x14]
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.Lc2944
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x83b
	bl	_Func_80175a0
	ldr	r3, [sp, #0x14]
	ldr	r0, [r3]
	bl	_Func_8079700
	bl	Func_80bb65c
.Lc2944:
	ldr	r0, =ewram_200047c
	mov	r10, r0
.Lc2948:
	mov	r7, #1
	neg	r7, r7
	mov	r8, r7
	mov	r6, #0
	mov	r5, #0xc
.Lc2952:
	ldr	r2, [sp, #0x14]
	ldrh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lc2968
	mov	r0, r3
	bl	Func_80c2470
	cmp	r0, r8
	blt	.Lc2968
	mov	r8, r0
	mov	r7, r6
.Lc2968:
	add	r6, #1
	add	r5, #2
	cmp	r6, #3
	ble	.Lc2952
	mov	r6, #1
	neg	r6, r6
	cmp	r7, r6
	beq	.Lc29b0
	lsl	r3, r7, #1
	mov	r5, r3
	ldr	r3, [sp, #0x14]
	add	r5, #0xc
	ldrh	r0, [r3, r5]
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0x83c
	bl	_Func_80175a0
	bl	Func_80bb65c
	ldr	r2, [sp, #0x14]
	ldrh	r0, [r2, r5]
	bl	_Func_8078618
	cmp	r0, r6
	bne	.Lc29a8
	ldr	r0, [sp, #0x14]
	ldrh	r3, [r0, r5]
	mov	r2, r10
	strh	r3, [r2]
	b	.Lc29b0
.Lc29a8:
	ldr	r3, .Lc29c4	@ 0
	ldr	r0, [sp, #0x14]
	strh	r3, [r0, r5]
	b	.Lc2948
.Lc29b0:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc29c4:
	.word	0
.func_end Func_80c2724

