	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_7fc720_3c
	ldr	r0, =.L994
	bx	lr
.func_end OvlFunc_7fc720_3c

.thumb_func_start OvlFunc_7fc720_44
	ldr	r0, =.L998
	bx	lr
.func_end OvlFunc_7fc720_44

.thumb_func_start OvlFunc_7fc720_4c
	push	{lr}
	ldr	r0, =0x23cd
	bl	__Func_8092b94
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_4c

.thumb_func_start OvlFunc_7fc720_70
	push	{lr}
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_80937b8
	ldr	r0, =0x23cd
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_70

.thumb_func_start OvlFunc_7fc720_98
	ldr	r0, =.La58
	bx	lr
.func_end OvlFunc_7fc720_98

.thumb_func_start OvlFunc_7fc720_a0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__Func_8077394
	ldrb	r1, [r0, #0xf]
	mov	r0, r5
	add	r1, r6
	bl	__Func_80792fc
	mov	r0, r5
	bl	__Func_8077428
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_a0

.thumb_func_start OvlFunc_7fc720_c0
	push	{r5, r6, r7, lr}
	sub	sp, #0x20
	mov	r7, r0
	mov	r0, sp
	bl	__Func_80796c4
	cmp	r0, #0
	ble	.Le4
	mov	r6, sp
	mov	r5, r0
.Ld4:
	ldrh	r0, [r6]
	mov	r1, r7
	sub	r5, #1
	add	r6, #2
	bl	OvlFunc_7fc720_a0
	cmp	r5, #0
	bne	.Ld4
.Le4:
	add	sp, #0x20
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_c0

.thumb_func_start OvlFunc_7fc720_ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #4
	bl	__Func_8077394
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #9
	mov	r8, r0
	mov	r0, #0
	bl	__Func_80162d4
	ldr	r5, =0xc20
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e74c
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #2
	bl	__Func_801e74c
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x20
	mov	r7, #1
	bl	__Func_801e74c
.L140:
	cmp	r7, #0
	beq	.L176
	mov	r0, r6
	bl	__Func_8016498
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x30
	bl	__Func_801e8b0
	ldr	r0, =.L8d0
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0x30
	bl	__Func_801e940
	mov	r3, r8
	ldrb	r0, [r3, #0xf]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0
	mov	r2, r6
	mov	r3, #0x48
	mov	r7, #0
	bl	__Func_801ea08
.L176:
	ldr	r5, =iwram_3001c94
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L18c
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L19a
.L18c:
	mov	r0, #5
	bl	OvlFunc_7fc720_c0
	mov	r0, #0x5d
	bl	__Func_80f9080
	mov	r7, #1
.L19a:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b2
	mov	r0, #1
	bl	OvlFunc_7fc720_c0
	mov	r0, #0x5b
	bl	__Func_80f9080
	mov	r7, #1
.L1b2:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1fa
	mov	r0, #0x71
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_8016498
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #1
	mov	r0, r6
	bl	__Func_8016418
	mov	r0, #0
	bl	__Func_8077428
	mov	r0, #1
	bl	__Func_8077428
	mov	r0, #3
	bl	__Func_8077428
	mov	r0, #2
	bl	__Func_8077428
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.L1fa:
	mov	r0, #1
	bl	__Func_80030f8
	b	.L140
.func_end OvlFunc_7fc720_ec

.thumb_func_start OvlFunc_7fc720_214
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r2, #0
	mov	r0, #0x70
	sub	sp, #4
	mov	r8, r2
	bl	__Func_80f9080
	mov	r5, #2
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #7
	mov	r0, #0
	str	r5, [sp]
	bl	__Func_80162d4
	mov	r1, #8
	mov	r7, r0
	mov	r2, #0x1c
	mov	r3, #0xa
	mov	r0, #0
	str	r5, [sp]
	bl	__Func_80162d4
	mov	r6, #1
	mov	r9, r0
	mov	r10, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	__Func_80030f8
.L26c:
	mov	r3, r10
	cmp	r3, #0
	beq	.L306
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	mov	r2, #0
	add	r0, r6, r3
	lsl	r1, #1
	mov	r10, r2
	bl	_Func_8000b1c
	mov	r6, r0
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, r7
	bl	__Func_80164ac
	ldr	r0, =.L8d4
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e940
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #0x50
	bl	__Func_801e9d4
	bl	__Func_8078500
	cmp	r0, #0
	beq	.L2fa
	ldr	r5, =0x1ff
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	and	r5, r6
	ldr	r0, =.L8e0
	bl	__Func_801e940
	mov	r0, r5
	bl	__Func_8078414
	ldr	r0, =0x182
	mov	r1, r7
	add	r0, r5, r0
	mov	r2, #0x78
	mov	r3, #0
	bl	__Func_801e7c0
	ldr	r3, =0x75
	add	r5, r3
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	__Func_801e7c0
	mov	r0, r9
	bl	__Func_8016498
	mov	r0, r9
	mov	r1, r6
	bl	__Func_80a4924
	b	.L306
.L2fa:
	ldr	r0, =.L8f8
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x20
	bl	__Func_801e940
.L306:
	ldr	r5, =iwram_3001c94
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L326
	mov	r0, r6
	bl	__Func_8078618
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L330
	mov	r0, #0xaf
	bl	__Func_80f9080
.L326:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L338
.L330:
	mov	r0, #0x71
	bl	__Func_80f9080
	b	.L442
.L338:
	ldr	r5, =iwram_3001b04
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L354
	mov	r2, #0xff
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r2
	sub	r6, #1
	mov	r10, r3
	bl	__Func_80f9080
.L354:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L36c
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r2
	add	r6, #1
	mov	r10, r2
	bl	__Func_80f9080
.L36c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L384
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r3
	add	r6, #0xa
	mov	r10, r3
	bl	__Func_80f9080
.L384:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L39e
	mov	r2, #0xff
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r2
	sub	r6, #0xa
	mov	r10, r3
	bl	__Func_80f9080
.L39e:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3b8
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r2
	add	r6, #0x1e
	mov	r10, r2
	bl	__Func_80f9080
.L3b8:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3d4
	mov	r3, #0xff
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r3
	sub	r6, #0x1e
	mov	r10, r2
	bl	__Func_80f9080
.L3d4:
	mov	r3, r8
	lsl	r5, r3, #24
	mov	r2, #1
	asr	r3, r5, #24
	neg	r2, r2
	cmp	r3, r2
	bne	.L408
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	add	r0, r6, r3
	b	.L3f2
.L3ec:
	ldr	r2, =0x10d
	mov	r1, #0x87
	add	r0, r6, r2
.L3f2:
	lsl	r1, #1
	bl	_Func_8000b1c
	mov	r6, r0
	ldr	r0, =0x1ff
	and	r0, r6
	bl	__Func_8078414
	ldrh	r3, [r0, #6]
	cmp	r3, #0
	beq	.L3ec
.L408:
	mov	r3, #0x80
	lsl	r3, #17
	cmp	r5, r3
	bne	.L436
	mov	r2, #0x87
	lsl	r2, #1
	mov	r1, #0x87
	add	r0, r6, r2
	b	.L420
.L41a:
	ldr	r3, =0x10f
	mov	r1, #0x87
	add	r0, r6, r3
.L420:
	lsl	r1, #1
	bl	_Func_8000b1c
	mov	r6, r0
	ldr	r0, =0x1ff
	and	r0, r6
	bl	__Func_8078414
	ldrh	r3, [r0, #6]
	cmp	r3, #0
	beq	.L41a
.L436:
	mov	r2, #0
	mov	r0, #1
	mov	r8, r2
	bl	__Func_80030f8
	b	.L26c
.L442:
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, r7
	mov	r1, #1
	bl	__Func_8016418
	mov	r0, r9
	mov	r1, #1
	bl	__Func_8016418
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_214

.thumb_func_start OvlFunc_7fc720_4b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r2, #0
	mov	r0, #0x70
	sub	sp, #4
	mov	r8, r2
	bl	__Func_80f9080
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0xc
	mov	r0, #0
	bl	__Func_80162d4
	mov	r6, #1
	mov	r7, r0
	mov	r10, r6
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	__Func_80030f8
.L4f8:
	mov	r3, r10
	cmp	r3, #0
	beq	.L574
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	mov	r2, #0
	add	r0, r6, r3
	lsl	r1, #1
	mov	r10, r2
	bl	_Func_8000b1c
	mov	r6, r0
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, r7
	bl	__Func_80164ac
	ldr	r0, =.L90c
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e940
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #0x50
	bl	__Func_801e9d4
	ldr	r5, =0x3fff
	ldr	r0, =.L914
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x48
	bl	__Func_801e940
	ldr	r0, =0x333
	and	r5, r6
	add	r0, r5, r0
	mov	r1, r7
	mov	r2, #0x78
	mov	r3, #0
	bl	__Func_801e7c0
	ldr	r3, =0x53a
	add	r5, r3
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x18
	bl	__Func_801e7c0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x30
	bl	__Func_801e74c
.L574:
	ldr	r3, =iwram_3001c94
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L5b2
	mov	r0, #0x71
	bl	__Func_80f9080
	mov	r0, r7
	bl	__Func_8016498
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, r7
	mov	r1, #1
	bl	__Func_8016418
	mov	r0, r9
	mov	r1, #1
	bl	__Func_8016418
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.L5b2:
	ldr	r5, =iwram_3001b04
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L5ce
	mov	r3, #0xff
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r3
	sub	r6, #1
	mov	r10, r2
	bl	__Func_80f9080
.L5ce:
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L5e6
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r3
	add	r6, #1
	mov	r10, r3
	bl	__Func_80f9080
.L5e6:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L5fe
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r2
	add	r6, #0xa
	mov	r10, r2
	bl	__Func_80f9080
.L5fe:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L618
	mov	r3, #0xff
	mov	r2, #1
	mov	r0, #0x6f
	mov	r8, r3
	sub	r6, #0xa
	mov	r10, r2
	bl	__Func_80f9080
.L618:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L632
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r3
	add	r6, #0x1e
	mov	r10, r3
	bl	__Func_80f9080
.L632:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L64e
	mov	r2, #0xff
	mov	r3, #1
	mov	r0, #0x6f
	mov	r8, r2
	sub	r6, #0x1e
	mov	r10, r3
	bl	__Func_80f9080
.L64e:
	mov	r2, r8
	lsl	r5, r2, #24
	mov	r2, #1
	asr	r3, r5, #24
	neg	r2, r2
	cmp	r3, r2
	bne	.L682
	mov	r3, #0x87
	lsl	r3, #1
	mov	r1, #0x87
	add	r0, r6, r3
	b	.L66c
.L666:
	ldr	r2, =0x10d
	mov	r1, #0x87
	add	r0, r6, r2
.L66c:
	lsl	r1, #1
	bl	_Func_8000b1c
	mov	r6, r0
	ldr	r0, =0x3fff
	and	r0, r6
	bl	__Func_8078b9c
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	beq	.L666
.L682:
	mov	r3, #0x80
	lsl	r3, #17
	cmp	r5, r3
	bne	.L6b0
	mov	r2, #0x87
	lsl	r2, #1
	mov	r1, #0x87
	add	r0, r6, r2
	b	.L69a
.L694:
	ldr	r3, =0x10f
	mov	r1, #0x87
	add	r0, r6, r3
.L69a:
	lsl	r1, #1
	bl	_Func_8000b1c
	mov	r6, r0
	ldr	r0, =0x3fff
	and	r0, r6
	bl	__Func_8078b9c
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	beq	.L694
.L6b0:
	mov	r2, #0
	mov	r0, #1
	mov	r8, r2
	bl	__Func_80030f8
	b	.L4f8
.func_end OvlFunc_7fc720_4b0

.thumb_func_start OvlFunc_7fc720_6f8
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_6f8

.thumb_func_start OvlFunc_7fc720_71c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r5, =0x19999
	str	r5, [r0, #0x1c]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #5
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7fc720_71c

.thumb_func_start OvlFunc_7fc720_768
	push	{r5, lr}
	sub	sp, #0x24
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0x1e
	mov	r3, #6
	mov	r0, #0
	bl	__Func_80162d4
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L920
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e940
	mov	r1, r5
	ldr	r0, =.L93c
	mov	r2, #0
	mov	r3, #8
	bl	__Func_801e940
	ldr	r0, =.L958
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	__Func_801e940
	add	sp, #0x24
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7fc720_768

