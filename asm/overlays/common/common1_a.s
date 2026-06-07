	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_0
	push	{r5, r6, lr}
	mov	r0, #0xe0
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r5, r0
	mov	r0, #0xe2
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r6, #0x80
	lsl	r6, #12
	mov	r2, r0
	lsl	r5, #20
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #0xe4
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r5, r0
	mov	r0, #0xe6
	lsl	r0, #2
	bl	__Func_80793b8
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r1, r5
	mov	r0, #2
	bl	__Func_80923e4
	mov	r0, #0xe8
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r5, r0
	mov	r0, #0xea
	lsl	r0, #2
	bl	__Func_80793b8
	lsl	r5, #20
	mov	r2, r0
	add	r5, r6
	lsl	r2, #20
	add	r2, r6
	mov	r0, #3
	mov	r1, r5
	bl	__Func_80923e4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_0

.thumb_func_start OvlFunc_common1_78
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8079664
	mov	r0, #1
	bl	__Func_8079664
	mov	r0, #2
	bl	__Func_8079664
	mov	r0, #3
	bl	__Func_8079664
	mov	r0, #5
	bl	__Func_8079664
	mov	r0, r5
	bl	__Func_807961c
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	str	r5, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r5
	bl	__Func_8077394
	mov	r5, r0
	ldrh	r3, [r5, #0x34]
	ldr	r1, =0x131
	strh	r3, [r5, #0x38]
	ldrh	r3, [r5, #0x36]
	ldr	r2, .Lec	@ 0
	strh	r3, [r5, #0x3a]
	add	r3, r5, r1
	strb	r2, [r3]
	mov	r2, #0x38
	ldrsh	r0, [r5, r2]
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_8000af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.Lf8
	mov	r3, #0
	cmp	r0, #0
	blt	.Lf8
	mov	r3, r0
	b	.Lf8

	.align	2, 0
.Lec:
	.word	0
	.pool

.Lf8:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L10c
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L10c
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L10c:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	_Func_8000af0
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L12a
	mov	r3, #0
	cmp	r0, #0
	blt	.L12a
	mov	r3, r0
.L12a:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L13e
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L13e
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L13e:
	bl	__Func_8091858
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_78

.thumb_func_start OvlFunc_common1_148
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r5, [r3]
	ldr	r3, =ewram_2000240
	lsl	r1, #1
	add	r3, r1
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L17e
	sub	r1, #0x76
	add	r3, r5, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r3, #26
	cmp	r3, r2
	bne	.L17e
	ldr	r0, =0x141
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L17e
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L17e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_148

.thumb_func_start OvlFunc_common1_190
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r9, r3
	mov	r3, #0x80
	mov	r2, #8
	lsl	r3, #13
	mov	r10, r2
	mov	r8, r3
	mov	r2, #0xfa
	ldr	r3, =ewram_2000240
	lsl	r2, #1
	add	r3, r2
	ldr	r7, [r3]
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__Func_80916b0
	mov	r5, #8
.L1c2:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L21e
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L21e
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa5
	bne	.L21e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.L1f0
	ldr	r3, =0xffff
	add	r2, r3
.L1f0:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L200
	ldr	r2, =0xffff
	add	r0, r2
.L200:
	asr	r0, #16
	cmp	r0, #0
	bgt	.L21e
	mov	r2, r1
	cmp	r2, #0
	bge	.L20e
	neg	r2, r2
.L20e:
	cmp	r0, #0
	bge	.L214
	neg	r0, r0
.L214:
	add	r0, r2, r0
	cmp	r0, r8
	bge	.L21e
	mov	r10, r5
	mov	r8, r0
.L21e:
	add	r5, #1
	cmp	r5, #0x42
	ble	.L1c2
	ldr	r0, =0x2085
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_8092f84
	mov	r3, #0xe0
	lsl	r3, #1
	add	r3, r9
	mov	r8, r3
	mov	r3, #0x80
	lsl	r3, #2
	mov	r2, r8
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r9
	mov	r3, #0xf
	str	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r1, [r6, #8]
	mov	r3, #0xdc
	lsl	r5, r7, #4
	lsl	r3, #2
	add	r0, r5, r3
	asr	r1, #20
	bl	__Func_80793c8
	ldr	r1, [r6, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r7, #1
	bl	__Func_80793c8
	cmp	r7, #3
	ble	.L28e
	mov	r0, #0xa
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	b	.L2a2
.L28e:
	mov	r0, r7
	bl	OvlFunc_common1_78
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r3, #0
	mov	r2, r8
	str	r3, [r2]
.L2a2:
	bl	__Func_8091750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_190

.thumb_func_start OvlFunc_common1_2c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r5, =iwram_3001ebc
	mov	r7, r0
	ldr	r0, [r5]
	mov	r9, r0
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r6, [r3]
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r11, r0
	bl	__Func_80916b0
	ldr	r3, =0x2086
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092c40
	ldr	r2, [r5]
	ldr	r0, =0xcc2
	ldr	r1, =0x2089
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0xcc4
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r10, r0
	cmp	r0, #0
	bne	.L3a8
	mov	r0, r8
	add	r0, #1
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	mov	r7, #0xe0
	bl	__Func_8092f84
	lsl	r7, #1
	mov	r3, #0x80
	mov	r2, #0xe4
	lsl	r3, #2
	add	r7, r9
	lsl	r2, #1
	add	r2, r9
	str	r3, [r7]
	mov	r3, #0xf
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, r11
	ldr	r1, [r0, #8]
	mov	r2, #0xdc
	lsl	r5, r6, #4
	lsl	r2, #2
	add	r0, r5, r2
	asr	r1, #20
	bl	__Func_80793c8
	mov	r3, r11
	ldr	r1, [r3, #0x10]
	mov	r2, #0xde
	lsl	r2, #2
	asr	r1, #20
	add	r0, r5, r2
	add	r6, #1
	bl	__Func_80793c8
	cmp	r6, #3
	ble	.L394
	mov	r0, #0xa
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	b	.L3b8
.L394:
	mov	r0, r6
	bl	OvlFunc_common1_78
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r3, r10
	str	r3, [r7]
	b	.L3b8
.L3a8:
	mov	r0, r8
	add	r0, #2
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L3b8:
	bl	__Func_8091750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_2c4

.thumb_func_start OvlFunc_common1_3e4
	push	{r5, r6, r7, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r7, [r0, r3]
	mov	r3, #0x12
	ldrsh	r6, [r0, r3]
	bl	__Func_80916b0
	bl	__Func_80795fc
	cmp	r0, #1
	bgt	.L466
	ldr	r0, =0x20e5
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	bne	.L474
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, r6
	add	r2, #0x40
	mov	r1, r7
	mov	r0, r5
	bl	__Func_809218c
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, r7
	mov	r2, r6
	bl	__Func_80921c4
	mov	r2, r6
	mov	r0, #0
	add	r2, #0x20
	mov	r1, r7
	bl	__Func_80921c4
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0xb
	bl	__Func_8091e9c
	b	.L474
.L466:
	ldr	r0, =0x20e8
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L474:
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_3e4

.thumb_func_start OvlFunc_common1_488
	push	{lr}
	mov	r0, #0xe0
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	mov	r0, #0xe2
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	mov	r0, #0xe4
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	mov	r0, #0xe6
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	mov	r0, #0xe8
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	mov	r0, #0xea
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_488

.thumb_func_start OvlFunc_common1_4cc
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r0
	bl	__Func_808e118
	mov	r1, #5
	mov	r0, r5
	bl	__Func_8019908
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.L4f4
	ldr	r0, =0x2076
	b	.L500
.L4f4:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L4fe
	ldr	r0, =0x2078
	b	.L500
.L4fe:
	ldr	r0, =0x207a
.L500:
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L534
	mov	r3, #0x82
	lsl	r3, #2
	add	r5, r3
	mov	r0, r5
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L548
	mov	r0, #0
	bl	__Func_802106c
	cmp	r0, #1
	bne	.L538
.L534:
	mov	r0, #2
	b	.L564
.L538:
	cmp	r0, #2
	beq	.L544
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.L564
.L544:
	mov	r0, #3
	b	.L564
.L548:
	mov	r0, r5
	bl	__Func_8079358
	ldr	r0, =0x207c
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
.L564:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_4cc

.thumb_func_start OvlFunc_common1_588
	push	{r5, lr}
	mov	r5, r0
	mov	r0, r1
	mov	r1, #5
	bl	__Func_8019908
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.L5aa
	ldr	r0, =0x2076
	b	.L5b6
.L5aa:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.L5b4
	ldr	r0, =0x2078
	b	.L5b6
.L5b4:
	ldr	r0, =0x207a
.L5b6:
	add	r0, #1
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_588

.thumb_func_start OvlFunc_common1_5e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	sub	sp, #0xc
	mov	r6, r0
	mov	r0, r10
	str	r2, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, #0xa
	ldrsh	r0, [r5, r2]
	mov	r9, r0
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	mov	r11, r3
	cmp	r6, #3
	beq	.L6f6
	bl	__Func_80795fc
	mov	r7, r0
	cmp	r7, #0
	ble	.L636
	ldr	r3, =ewram_2000240
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, sp, #4
	add	r1, r3, r0
	mov	r5, r7
.L628:
	ldrb	r3, [r1]
	sub	r5, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r5, #0
	bne	.L628
.L636:
	cmp	r7, #1
	bgt	.L63e
	ldr	r0, =0x2083
	b	.L6f8
.L63e:
	ldr	r2, [sp]
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L652
	ldr	r0, =0x2084
	b	.L6f8
.L652:
	cmp	r6, #2
	bne	.L660
	mov	r0, #6
	mov	r5, #0
	bl	__Func_80030f8
	b	.L678
.L660:
	ldr	r0, =0x207d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r5, r0
.L678:
	cmp	r5, #0
	bne	.L6f6
	cmp	r5, r7
	bge	.L696
	add	r6, sp, #4
	mov	r5, r7
.L684:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_8079664
	cmp	r5, #0
	bne	.L684
.L696:
	cmp	r7, #0
	ble	.L6b4
	add	r6, sp, #4
	mov	r5, r7
.L69e:
	ldrb	r3, [r6]
	lsl	r3, #24
	asr	r0, r3, #24
	add	r6, #1
	cmp	r0, #0
	beq	.L6ae
	bl	__Func_807961c
.L6ae:
	sub	r5, #1
	cmp	r5, #0
	bne	.L69e
.L6b4:
	bl	__Func_80a7380
	mov	r8, r0
	cmp	r7, #0
	ble	.L6d4
	add	r6, sp, #4
	mov	r5, r7
.L6c2:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_8079664
	cmp	r5, #0
	bne	.L6c2
.L6d4:
	cmp	r7, #0
	ble	.L6ee
	add	r6, sp, #4
	mov	r5, r7
.L6dc:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_807961c
	cmp	r5, #0
	bne	.L6dc
.L6ee:
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L706
.L6f6:
	ldr	r0, =0x207e
.L6f8:
	bl	__Func_8092b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_8092f84
	b	.L826
.L706:
	mov	r1, #1
	mov	r0, r8
	bl	__Func_8019908
	ldr	r0, =0x207f
	bl	__Func_8092b94
	mov	r0, r10
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L75a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	bl	__Func_80923e4
.L75a:
	mov	r5, r11
	add	r5, #0x10
	mov	r6, r9
	mov	r2, r5
	add	r6, #0x10
	mov	r0, r8
	mov	r1, r9
	bl	__Func_80921c4
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_80921c4
	mov	r2, #0x1e
	mov	r0, r8
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, r8
	mov	r1, #3
	bl	__Func_80924d4
	sub	r5, #0x20
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_80921c4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r10
	bl	__Func_809218c
	mov	r0, #0
	mov	r1, r8
	bl	__Func_80920c0
	mov	r2, r5
	mov	r0, r8
	mov	r1, r9
	bl	__Func_80921c4
	mov	r0, r10
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, r11
	sub	r2, #0x30
	mov	r0, r8
	mov	r1, r9
	bl	__Func_80921c4
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_80921c4
	mov	r1, r9
	mov	r2, r11
	mov	r0, r10
	bl	__Func_80921c4
	mov	r0, r8
	bl	__Func_8079664
	mov	r3, #0x80
	ldr	r2, [sp]
	lsl	r3, #2
	add	r0, r2, r3
	bl	__Func_8079358
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, r8
	mov	r2, #0xdc
	lsl	r6, r0, #4
	lsl	r2, #2
	asr	r1, #20
	add	r0, r6, r2
	bl	__Func_80793c8
	ldr	r1, [r5, #0x10]
	mov	r3, #0xde
	lsl	r3, #2
	asr	r1, #20
	add	r0, r6, r3
	bl	__Func_80793c8
.L826:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_5e4

.thumb_func_start OvlFunc_common1_850
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r8, r1
	bl	__Func_8077394
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	__Func_8078588
	mov	r6, #0
	add	r5, #0xd8
.L86c:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, r8
	bne	.L87c
	mov	r0, r7
	mov	r1, r6
	bl	__Func_8078708
.L87c:
	add	r6, #1
	cmp	r6, #0xe
	ble	.L86c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_850

.thumb_func_start OvlFunc_common1_88c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xe5
	lsl	r0, #5
	bl	__Func_8004970
	ldr	r7, =.L10
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	mov	r2, #1
	neg	r2, r2
	mov	r6, r0
	cmp	r3, r2
	bne	.L8b2
	bl	__Func_8004080
	strh	r0, [r7]
.L8b2:
	ldr	r3, =.L1
	ldrb	r3, [r3, r5]
	mov	r8, r3
	cmp	r5, #8
	bne	.L8be
	mov	r5, #4
.L8be:
	ldr	r0, =_FILE_e7
	bl	__GetFile
	mov	r1, r6
	bl	__Func_8005340
	mov	r2, r8
	add	r0, r6, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50003e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	lsl	r2, r5, #10
	add	r2, r6
	mov	r1, #0x80
	add	r2, #0xa0
	lsl	r1, #3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	__Func_8003fa4
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L8f0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L8f0
	mov	r0, r6
	bl	__Func_8002df0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_88c

.thumb_func_start OvlFunc_common1_920
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =.L43
	sub	sp, #0x14
	str	r0, [sp, #8]
	ldr	r3, =.L10
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_3001b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	mov	r10, r0
	mov	r8, r3
.L948:
	ldr	r1, =.L36
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	ldrh	r3, [r1]
	cmp	r4, #0
	bne	.La1e
	ldr	r5, =.L37
	ldr	r0, [r5]
	ldrh	r3, [r0]
	mov	r2, #0x80
	lsl	r3, #16
	add	r0, #2
	asr	r3, #16
	lsl	r2, #6
	str	r0, [r5]
	cmp	r3, r2
	beq	.L9e4
	cmp	r3, r2
	bgt	.L980
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.La0c
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r3, r2
	beq	.L9cc
	b	.L948
.L980:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	beq	.L99e
	cmp	r3, r2
	bgt	.L996
	mov	r1, #0xc0
	lsl	r1, #6
	cmp	r3, r1
	beq	.L9b4
	b	.L948
.L996:
	ldr	r2, =0x7fff
	cmp	r3, r2
	beq	.La02
	b	.L948
.L99e:
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	ldr	r2, =.L25
	lsl	r3, #8
	str	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L46
	strh	r3, [r1]
	ldr	r3, =.L24
	b	.L9fa
.L9b4:
	ldr	r2, =.L46
	ldr	r1, =.L44
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L24
	strh	r3, [r1]
	ldr	r3, =.L28
	b	.L9fa
.L9cc:
	ldr	r2, =.L27
	ldr	r1, =.L23
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L18
	strh	r3, [r1]
	ldr	r3, =.L47
	b	.L9fa
.L9e4:
	ldr	r2, =.L34
	ldr	r1, =.L35
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L39
	strh	r3, [r1]
	ldr	r3, =.L30
.L9fa:
	add	r2, #2
	str	r2, [r5]
	strh	r4, [r3]
	b	.L948
.La02:
	ldrh	r3, [r0]
	strh	r3, [r1]
	add	r3, r0, #2
	str	r3, [r5]
	b	.L948
.La0c:
	ldr	r0, =OvlFunc_common1_920
	bl	__StopTask
	ldr	r3, =.L10
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8003f3c
	b	.Ldd4
.La1e:
	sub	r3, #1
	strh	r3, [r1]
	ldr	r3, =.L18
	mov	r5, #0
	ldrsh	r7, [r3, r5]
	mov	r9, r3
	cmp	r7, #0
	bne	.La38
	ldr	r3, =.L27
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	b	.La6a
.La38:
	ldr	r3, =.L23
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L47
	ldr	r3, =.L27
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_8000af0
	add	r6, r0
	mov	r11, r6
	cmp	r5, r7
	blt	.La6a
	ldr	r3, .La80	@ 0
	mov	r0, r9
	strh	r3, [r0]
.La6a:
	ldr	r1, =.L39
	mov	r2, #0
	ldrsh	r7, [r1, r2]
	mov	r9, r1
	cmp	r7, #0
	bne	.Lad4
	ldr	r3, =.L34
	mov	r0, #0
	ldrsh	r5, [r3, r0]
	str	r5, [sp, #4]
	b	.Lb06

	.align	2, 0
.La80:
	.word	0
	.pool

.Lad4:
	ldr	r3, =.L35
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	ldr	r3, =.L34
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L30
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_8000af0
	add	r6, r0
	str	r6, [sp, #4]
	cmp	r5, r7
	blt	.Lb06
	ldr	r3, .Lb1c	@ 0
	mov	r5, r9
	strh	r3, [r5]
.Lb06:
	ldr	r0, =.L24
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	mov	r9, r0
	cmp	r7, #0
	bne	.Lb34
	ldr	r3, =.L46
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	b	.Lb64

	.align	2, 0
.Lb1c:
	.word	0
	.pool

.Lb34:
	ldr	r2, =.L28
	ldr	r3, =.L44
	mov	r5, #0
	ldrsh	r6, [r3, r5]
	ldrh	r5, [r2]
	ldr	r3, =.L46
	add	r5, #1
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_8000af0
	add	r6, r0
	cmp	r5, r7
	blt	.Lb64
	ldr	r3, .Lb98	@ 0
	mov	r1, r9
	strh	r3, [r1]
.Lb64:
	add	r0, sp, #0xc
	ldr	r3, [r0, #4]
	ldr	r2, =0xffff0000
	and	r3, r2
	str	r3, [r0, #4]
	mov	r3, r11
	lsl	r1, r3, #16
	ldr	r3, [sp, #0xc]
	lsr	r1, #16
	and	r3, r2
	ldr	r2, =0xffff
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #0xc]
	bl	__Func_8003d28
	ldr	r2, =.L25
	ldr	r3, [r2]
	lsl	r0, #16
	add	r3, r6
	asr	r0, #16
	str	r3, [r2]
	b	.Lbb4

	.align	2, 0
.Lb98:
	.word	0
	.pool

.Lbb4:
	cmp	r3, #0
	bge	.Lbba
	add	r3, #0xff
.Lbba:
	asr	r6, r3, #8
	ldr	r3, =.L33
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	cmp	r3, #2
	bne	.Lbc8
	b	.Ld20
.Lbc8:
	cmp	r3, #2
	bgt	.Lbd2
	cmp	r3, #1
	beq	.Lbdc
	b	.Ld72
.Lbd2:
	cmp	r3, #3
	beq	.Lc52
	cmp	r3, #4
	beq	.Lcce
	b	.Ld72
.Lbdc:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x38
	mov	r9, r0
.Lbe6:
	lsl	r3, r5, #5
	sub	r3, #0x30
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lbf6
	add	r3, #0xff
.Lbf6:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.Lc46
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	mov	r3, #0xf4
	mov	r0, r1
	lsl	r3, #8
	mov	r1, r8
	orr	r3, r1
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_8003dec
	ldr	r4, [sp]
.Lc46:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #3
	ble	.Lbe6
	b	.Ld72
.Lc52:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x30
	mov	r9, r0
.Lc5c:
	lsl	r3, r5, #5
	sub	r3, #0x10
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lc6c
	add	r3, #0xff
.Lc6c:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.Lcc2
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	ldr	r3, =.L22
	mov	r0, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	lsl	r2, #8
	add	r3, r8
	orr	r3, r2
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_8003dec
	ldr	r4, [sp]
.Lcc2:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #1
	ble	.Lc5c
	b	.Ld72
.Lcce:
	mov	r3, r6
	mov	r5, #0x98
	mov	r2, r6
	add	r3, #0x78
	lsl	r5, #1
	mov	r7, #0x30
	ldr	r4, =0xc0004000
	add	r2, #0x38
	cmp	r3, r5
	bcs	.Ld72
	ldr	r3, =0x1ff
	mov	r1, r10
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r5, r1
	orr	r3, r2
	str	r5, [sp, #8]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #8]
	ldr	r3, =.L22
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r1]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_8003dec
	b	.Ld72
.Ld20:
	mov	r3, r6
	mov	r1, #0x98
	mov	r4, #0x80
	mov	r2, r6
	add	r3, #0x98
	lsl	r1, #1
	mov	r7, #0x30
	lsl	r4, #24
	add	r2, #0x58
	cmp	r3, r1
	bcs	.Ld72
	ldr	r3, =0x1ff
	mov	r5, r10
	and	r2, r3
	mov	r3, #0
	stmia	r5!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r1, r5
	orr	r3, r2
	str	r1, [sp, #8]
	stmia	r5!, {r3}
	mov	r0, r5
	str	r0, [sp, #8]
	ldr	r3, =.L22
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r5]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_8003dec
.Ld72:
	ldr	r0, =ewram_2002090
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.Lda0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r0
	strh	r2, [r0]
	mov	r2, #0xfc
	add	r3, #4
	lsl	r2, #6
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lda0:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.Ldd2
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r0]
	ldr	r5, [sp, #4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r0
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.Ldd2:
	strh	r4, [r1]
.Ldd4:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_920

.thumb_func_start OvlFunc_common1_e10
	push	{r5, r6, lr}
	ldr	r3, =.L33
	mov	r5, r0
	mov	r6, r1
	ldr	r2, =.L22
	strh	r5, [r3]
	mov	r1, #0xc8
	lsl	r3, r6, #4
	lsl	r1, #4
	strh	r3, [r2]
	ldr	r0, =OvlFunc_common1_920
	bl	__StartTask
	ldr	r1, =.L11
	cmp	r5, #2
	bne	.Le32
	ldr	r1, =.L2
.Le32:
	cmp	r5, #4
	bne	.Le38
	ldr	r1, =.L12
.Le38:
	cmp	r5, #3
	bne	.Le62
	cmp	r6, #0
	beq	.Le60
	ldr	r1, =.L3
	b	.Le62

	.pool_aligned

.Le60:
	ldr	r1, =.L13
.Le62:
	ldr	r2, .Le7c	@ 0
	ldr	r3, =.L36
	strh	r2, [r3]
	ldr	r3, =.L37
	str	r1, [r3]
	ldr	r3, =.L46
	strh	r2, [r3]
	ldr	r3, =.L24
	strh	r2, [r3]
	ldr	r2, =.L25
	mov	r3, #0
	str	r3, [r2]
	b	.Le98

	.align	2, 0
.Le7c:
	.word	0
	.pool

.Le98:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_e10

.thumb_func_start OvlFunc_common1_ea0
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	bne	.Leda
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x59
	bl	__Func_80f9080
	mov	r0, #0
	bl	OvlFunc_common1_88c
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_common1_e10
	mov	r0, #0x78
	bl	__Func_809163c
	bl	__Func_8091750
	b	.Lf98
.Leda:
	mov	r0, #0xf7
	bl	__Func_80f9080
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	lsl	r2, r5, #4
	ldr	r3, =.L11
	sub	r2, r5
	lsl	r2, #2
	strh	r2, [r3, #0x1e]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_80f9080
	mov	r0, r5
	bl	OvlFunc_common1_88c
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_common1_e10
	mov	r0, #0x78
	bl	__Func_809163c
	b	.Lf20
.Lf1a:
	mov	r0, #1
	bl	__Func_80030f8
.Lf20:
	bl	__Func_80f954c
	cmp	r0, #0
	bne	.Lf1a
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #5
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_common1_e10
	mov	r0, #0xec
	bl	__Func_80f9080
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	OvlFunc_common1_e10
	mov	r0, #0xec
	bl	__Func_80f9080
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #6
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_common1_e10
	mov	r0, #0xec
	bl	__Func_80f9080
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #7
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #4
	bl	OvlFunc_common1_e10
	mov	r0, #0xed
	bl	__Func_80f9080
	bl	__Func_808acc4
	bl	__Func_8091750
	ldr	r0, =0x123
	bl	__Func_8079358
.Lf98:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_ea0

.thumb_func_start OvlFunc_common1_fac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0xf7
	bl	__Func_80f9080
	bl	__Func_8091dc8
	bl	__Func_8091e20
	lsl	r3, r5, #4
	ldr	r2, =.L13
	sub	r3, r5
	lsl	r6, r3, #2
	strh	r6, [r2, #0x1a]
	ldr	r1, =.L3
	mov	r2, r5
	cmp	r5, #0
	bge	.Lfd2
	neg	r2, r5
.Lfd2:
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	strh	r3, [r1, #0x1a]
	cmp	r5, #0
	bge	.L1008
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x56
	bl	__Func_80f9080
	mov	r0, #8
	bl	OvlFunc_common1_88c
	mov	r1, #1
	mov	r0, #3
	bl	OvlFunc_common1_e10
	lsl	r0, r5, #4
	sub	r0, r5, r0
	lsl	r0, #2
	add	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	b	.L102e
.L1008:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x5a
	bl	__Func_80f9080
	mov	r0, #4
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_common1_e10
	mov	r0, r6
	add	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
.L102e:
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	b	.L103e
.L1038:
	mov	r0, #1
	bl	__Func_80030f8
.L103e:
	bl	__Func_80f954c
	cmp	r0, #0
	bne	.L1038
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	__Func_8091df4
	bl	__Func_8091e20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_fac

.thumb_func_start OvlFunc_common1_1078
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e68
	sub	sp, #4
	ldr	r6, [r3]
	mov	r11, r0
	mov	r8, r1
	mov	r10, r2
	bl	__MapActor_GetActor
	mov	r3, #1
	strb	r3, [r6, #6]
	mov	r3, #4
	mov	r7, r0
	strb	r3, [r6, #7]
	ldr	r3, [r7, #8]
	ldr	r2, =.L49
	str	r3, [r2]
	ldr	r3, [r7, #0x10]
	ldr	r2, =.L20
	str	r3, [r2]
	ldr	r0, [r7, #0x50]
	ldrh	r3, [r7, #6]
	ldr	r2, =.L31
	mov	r9, r0
	str	r3, [r2]
	mov	r0, r11
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r2]
	mov	r5, #0x80
	lsl	r5, #7
	mov	r0, r7
	strh	r5, [r7, #6]
	mov	r1, #3
	bl	__Func_800c528
	mov	r0, r7
	mov	r1, #0
	bl	__Func_800c300
	mov	r0, r7
	mov	r1, #1
	bl	__Func_800c300
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r1, r8
	lsl	r1, #16
	mov	r0, r11
	mov	r2, r10
	mov	r8, r1
	bl	__Func_80923e4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_809280c
	ldr	r4, =ewram_2002090
	ldr	r6, =REG_IME
	ldrh	r3, [r6]
	mov	r1, r3
	strh	r6, [r6]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L1134
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r4
	strh	r2, [r4]
	mov	r2, #0xf0
	add	r3, #4
	lsl	r2, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L1134:
	strh	r1, [r6]
	mov	r0, r9
	mov	r2, #0xd
	ldrb	r1, [r0, #5]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	orr	r2, r1
	strb	r2, [r0, #0x11]
	mov	r0, #0xfc
	str	r4, [sp]
	bl	__Func_80f9080
	ldr	r4, [sp]
	mov	r5, #0
.L115c:
	mov	r1, #0x80
	lsl	r2, r5, #12
	lsl	r1, #5
	add	r3, r2, r1
	str	r3, [r7, #0x18]
	mov	r3, #0xf8
	lsl	r3, #9
	sub	r3, r2
	str	r3, [r7, #0x1c]
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	ldrh	r3, [r4]
	cmp	r3, #0x1f
	bgt	.L119e
	lsl	r1, r3, #1
	add	r1, r3
	add	r3, #1
	strh	r3, [r4]
	mov	r3, #0xf
	lsl	r1, #2
	sub	r3, r5
	add	r1, r4, r1
	lsl	r3, #8
	add	r2, r5, #1
	add	r1, #4
	orr	r3, r2
	stmia	r1!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r1!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r1]
.L119e:
	strh	r0, [r6]
	mov	r0, #1
	str	r4, [sp]
	bl	__Func_80030f8
	add	r5, #2
	ldr	r4, [sp]
	cmp	r5, #0xf
	ble	.L115c
	ldr	r1, =ewram_2002090
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L11dc
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	add	r3, #4
	strh	r2, [r1]
	mov	r2, #0x10
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDALPHA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L11dc:
	strh	r4, [r0]
	mov	r3, #0x88
	lsl	r3, #9
	str	r3, [r7, #0x18]
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_809163c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0xd
	bl	__Func_809163c
	mov	r3, r9
	mov	r2, #0xd
	ldrb	r1, [r3, #5]
	neg	r2, r2
	mov	r3, r2
	mov	r0, r9
	and	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	strb	r2, [r0, #0x11]
	mov	r1, #3
	mov	r0, r11
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1078

.thumb_func_start OvlFunc_common1_1254
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e68
	mov	r6, r0
	ldr	r7, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =ewram_2000240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	ldrb	r3, [r2]
	mov	r5, r0
	cmp	r3, #1
	bne	.L1288
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Func_80924d4
	b	.L12a2

	.pool_aligned

.L1288:
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, r6
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
.L12a2:
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, =.L49
	ldr	r3, [r3]
	str	r3, [r5, #8]
	ldr	r3, =.L20
	ldr	r3, [r3]
	str	r3, [r5, #0x10]
	ldr	r3, =.L31
	ldr	r3, [r3]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r0, r5
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	add	r0, #0x55
	mov	r3, #3
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x2c]
	ldr	r1, .L12fc	@ 0
	strb	r3, [r0]
	mov	r3, r5
	add	r3, #0x22
	strb	r1, [r3]
	mov	r0, r5
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x14]
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	mov	r0, #1
	bl	__Func_80030f8
	b	.L130c

	.align	2, 0
.L12fc:
	.word	0
	.pool

.L130c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1254

.thumb_func_start OvlFunc_common1_1314
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_800c4ac
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1314

.thumb_func_start OvlFunc_common1_1334
	push	{r5, lr}
	ldr	r5, =.L14
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	bne	.L134a
	bl	__Func_80209b0
	strh	r0, [r5]
.L134a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1334

.thumb_func_start OvlFunc_common1_1354
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.L14
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =iwram_3001b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	ldr	r2, =.L32
	lsr	r3, #5
	ldr	r0, =.L41
	mov	r10, r3
	mov	r3, #0
	ldrsh	r7, [r2, r3]
	mov	r11, r0
	mov	r9, r2
	cmp	r7, #0
	beq	.L13e8
	ldr	r3, =.L17
	ldrh	r5, [r3]
	add	r5, #1
	strh	r5, [r3]
	ldr	r0, =.L45
	ldr	r1, =.L38
	ldr	r3, =.L21
	mov	r8, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	lsl	r5, #16
	sub	r2, r3
	asr	r5, #16
	ldrh	r6, [r1]
	mov	r0, r5
	mul	r0, r2
	mov	r1, r7
	bl	_Func_8000af0
	ldr	r2, =.L29
	add	r6, r0
	mov	r1, r8
	strh	r6, [r1]
	mov	r8, r2
	ldr	r3, =.L48
	ldr	r2, =.L42
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	ldrh	r6, [r2]
	mov	r1, #0
	ldrsh	r2, [r2, r1]
	sub	r3, r2
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_Func_8000af0
	mov	r2, r8
	add	r6, r0
	strh	r6, [r2]
	cmp	r5, r7
	blt	.L13e2
	ldr	r3, .L1414	@ 0
	mov	r0, r9
	strh	r3, [r0]
.L13e2:
	ldr	r2, =.L26
	ldr	r3, .L1414	@ 0
	strh	r3, [r2]
.L13e8:
	ldr	r2, =.L26
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, #0xd
	bgt	.L1474
	ldr	r3, =.L45
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =.L29
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r0, r11
	mov	r3, #0
	stmia	r0!, {r3}
	sub	r1, #8
	ldr	r3, =.L19
	lsl	r1, #16
	b	.L144c

	.align	2, 0
.L1414:
	.word	0
	.pool

.L144c:
	sub	r2, #8
	orr	r2, r1
	mov	r4, #0x80
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r4, #23
	lsl	r3, #28
	orr	r2, r4
	orr	r2, r3
	mov	r3, #0x80
	stmia	r0!, {r2}
	lsl	r3, #3
	mov	r2, r10
	orr	r2, r3
	str	r2, [r0]
	mov	r1, #0xff
	mov	r0, r11
	bl	__Func_8003dec
	b	.L147c
.L1474:
	cmp	r3, #0x13
	ble	.L147c
	ldr	r3, =0
	strh	r3, [r2]
.L147c:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1354

.thumb_func_start OvlFunc_common1_1490
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r8, r1
	mov	r5, r2
	bl	OvlFunc_common1_1334
	ldr	r3, =.L45
	strh	r6, [r3]
	ldr	r3, =.L29
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, .L14c8	@ 3
	ldr	r2, =.L19
	and	r5, r3
	strh	r5, [r2]
	ldr	r3, =.L26
	ldr	r2, .L14cc	@ 0
	strh	r2, [r3]
	ldr	r3, =.L32
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_1354
	bl	__StartTask
	b	.L14e8

	.align	2, 0
.L14c8:
	.word	3
.L14cc:
	.word	0
	.pool

.L14e8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1490

.thumb_func_start OvlFunc_common1_14f4
	push	{lr}
	ldr	r3, =.L21
	strh	r0, [r3]
	ldr	r3, =.L48
	strh	r1, [r3]
	ldr	r3, =.L45
	ldr	r1, =.L38
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L29
	ldr	r1, =.L42
	ldrh	r3, [r3]
	strh	r3, [r1]
	ldr	r3, =.L32
	strh	r2, [r3]
	ldr	r2, =.L17
	ldr	r3, .L1528	@ 0
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_1354
	bl	__StartTask
	pop	{r0}
	bx	r0

	.align	2, 0
.L1528:
	.word	0
.func_end OvlFunc_common1_14f4

.thumb_func_start OvlFunc_common1_1550
	push	{r5, lr}
	ldr	r0, =OvlFunc_common1_1354
	bl	__StopTask
	ldr	r5, =.L14
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_8003f3c
	ldr	r3, .L156c	@ 0xffffffff
	strh	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.L156c:
	.word	0xffffffff
.func_end OvlFunc_common1_1550

.thumb_func_start OvlFunc_common1_1578
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L15b2
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Func_800c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_800c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_800d14c
.L15b2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1578

.thumb_func_start OvlFunc_common1_15b8
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L1600
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Func_800c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_800c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
.L1600:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_15b8

.thumb_func_start OvlFunc_common1_1608
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r9, r1
	bl	__MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L16bc
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.L16bc
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	ldr	r7, [r6, #0x50]
	bl	__Func_80048b0
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	mov	r2, #0
	add	r5, r3
	mov	r0, sp
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r9
	bl	__Func_801a370
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r7, #0x1c]
	bl	__Func_8003fa4
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_8002dd8
	mov	r3, r6
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	ldr	r0, [r7, #0x28]
	bl	__Func_800bc48
	mov	r3, r8
	str	r3, [r7, #0x28]
	mov	r3, r7
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r2, [r7, #5]
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L16ac	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r5, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	strh	r3, [r7, #8]
	mov	r3, r7
	add	r3, #0x25
	mov	r2, r8
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	b	.L16bc

	.align	2, 0
.L16ac:
	.word	0x3ff
	.pool

.L16bc:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1608

.thumb_func_start OvlFunc_common1_16cc
	push	{r5, lr}
	add	r0, #8
	mov	r3, #0
	ldr	r5, =.L6
	strb	r3, [r0]
	mov	r2, #7
	sub	r0, #1
	mov	r4, #0xf
.L16dc:
	mov	r3, r1
	and	r3, r4
	ldrb	r3, [r5, r3]
	sub	r2, #1
	strb	r3, [r0]
	lsr	r1, #4
	sub	r0, #1
	cmp	r2, #0
	bge	.L16dc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_16cc

