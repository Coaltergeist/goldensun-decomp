	.include "macros.inc"

.thumb_func_start Func_80a5788  @ 0x080a5788
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0x58
	mov	r1, #0
	ldr	r7, [r3]
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x14]
	add	r4, sp, #0x20
	mov	r2, #0x97
	ldrb	r4, [r4]
	lsl	r2, #2
	add	r3, r7, r2
	strb	r4, [r3]
	mov	r5, r7
	mov	r3, #0xe
	str	r3, [sp]
	add	r5, #0x34
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r11, r0
	mov	r1, #0xd
	mov	r0, r5
	mov	r2, #3
	mov	r3, #0x11
	bl	Func_80a10d0
	ldr	r5, [r5]
	mov	r1, #0
	str	r5, [sp, #0x24]
	str	r1, [sp, #0x18]
	mov	r2, #0x28
	mov	r3, r11
	add	r2, sp
	lsl	r3, #1
	add	r4, r7, #2
	mov	r8, r2
	str	r3, [sp, #8]
	str	r4, [sp, #0xc]
	b	.La5aba
.La57e2:
	mov	r0, #0xad
	bl	_PlaySound
	mov	r1, r8
	ldr	r3, [r1, #0x18]
	mov	r2, #0xe4
	lsl	r3, #1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r7, r3]
	str	r3, [sp, #0x20]
	mov	r3, #1
	str	r3, [sp, #0x18]
	b	.La5aba
.La57fe:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r4, #1
	str	r5, [sp, #0x20]
	str	r4, [sp, #0x18]
	b	.La5aba

	.pool_aligned

.La5810:
	mov	r2, r8
	ldr	r1, [r2, #0x10]
	lsl	r1, #4
	add	r1, #0x24
	mov	r0, #0x62
	bl	Func_80a1a40
	mov	r3, r10
	cmp	r3, #0
	beq	.La58ec
	ldr	r1, [sp, #0x14]
	lsl	r3, r1, #1
	add	r3, #0xd8
	mov	r2, r9
	ldrh	r3, [r2, r3]
	mov	r4, #0
	mov	r10, r4
	cmp	r3, #0
	beq	.La5840
	lsl	r3, r1, #2
	add	r3, #0x48
	ldr	r0, [r7, r3]
	bl	Func_80a17c4
.La5840:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.La586c
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0
	ldr	r0, [sp, #0x24]
	mov	r2, r8
	bl	Func_80a56c8
	mov	r4, r11
	cmp	r4, #0
	bne	.La5868
	ldr	r0, =0xb89
	ldr	r1, [sp, #0x24]
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
.La5868:
	mov	r1, #0
	str	r1, [sp, #0x1c]
.La586c:
	add	r1, sp, #0x44
	ldr	r0, [sp, #0x24]
	mov	r2, r8
	bl	Func_80a5614
	mov	r4, #0xbc
	ldr	r3, [sp, #8]
	lsl	r4, #1
	mov	r1, r8
	add	r2, r3, r4
	ldr	r3, [r1, #0x18]
	mov	r5, #0xe4
	lsl	r5, #1
	lsl	r3, #1
	add	r3, r5
	ldrh	r3, [r7, r3]
	strh	r3, [r7, r2]
	mov	r3, #0x86
	ldr	r2, [sp, #0xc]
	lsl	r3, #2
	add	r3, r11
	ldrb	r3, [r2, r3]
	ldr	r1, [r1, #0x18]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	mov	r3, r8
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r5
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.La58c2
	lsl	r3, r2, #2
	add	r3, #0x48
	ldr	r0, [r7, r3]
	mov	r3, #9
	mov	r2, #0
	strb	r3, [r0, #5]
	mov	r3, #0xfa
	strh	r2, [r0, #0xc]
	strb	r3, [r0, #0xf]
.La58c2:
	ldr	r4, =0x219
	add	r3, r7, r4
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bcs	.La58ec
	add	r6, r7, r4
.La58d0:
	mov	r1, #0x8a
	lsl	r3, r5, #2
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r7, r3]
	mov	r1, #1
	bl	_Sprite_SetAnim
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	ldrb	r3, [r6]
	cmp	r5, r3
	bcc	.La58d0
.La58ec:
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #0x1f
	and	r2, r3
	cmp	r2, #0
	bne	.La595c
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bcs	.La595c
.La5904:
	mov	r4, #0x82
	lsl	r3, r5, #1
	lsl	r4, #2
	add	r3, r4
	mov	r1, r8
	ldrh	r0, [r7, r3]
	ldr	r3, [r1, #0x18]
	mov	r2, #0xe4
	lsl	r3, #1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r7, r3]
	ldr	r1, .La594c	@ 0x1ff
	and	r1, r3
	bl	_CanEquipItem
	cmp	r0, #0
	beq	.La5938
	mov	r4, #0x8a
	lsl	r3, r5, #2
	lsl	r4, #1
	add	r3, r4
	ldr	r0, [r7, r3]
	mov	r1, #3
	bl	_Sprite_SetAnim
.La5938:
	add	r3, r5, #1
	ldr	r1, =0x219
	lsl	r3, #24
	lsr	r5, r3, #24
	add	r3, r7, r1
	ldrb	r3, [r3]
	cmp	r5, r3
	bcc	.La5904
	b	.La595c

	.align	2, 0
.La594c:
	.word	0x1ff
	.pool

.La595c:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r8
	ldr	r2, [r2, #0x18]
	str	r2, [sp, #0x14]
	mov	r3, r8
	add	r2, sp, #0x30
	ldr	r1, [r3, #0x14]
	mov	r0, #0
	str	r2, [sp]
	add	r3, sp, #0x38
	mov	r2, #5
	bl	Func_80a1fd4
	cmp	r0, #1
	bne	.La5984
	mov	r4, #1
	str	r4, [sp, #0x1c]
	mov	r10, r4
.La5984:
	cmp	r0, #0
	bne	.La598c
	mov	r1, #1
	mov	r10, r1
.La598c:
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	bne	.La5998
	mov	r2, #0
	mov	r10, r2
.La5998:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La59b8
	mov	r4, r8
	ldr	r3, [r4, #0x18]
	mov	r2, #0xe4
	lsl	r3, #1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.La59b8
	b	.La57e2
.La59b8:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La59c4
	b	.La57fe
.La59c4:
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	add	r3, #0xfe
	and	r2, r3
	cmp	r2, #0
	bne	.La59dc
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La5aac
.La59dc:
	mov	r3, r11
	cmp	r3, #1
	bne	.La59f0
	mov	r0, #0x72
	bl	_PlaySound
	mov	r0, #1
	bl	WaitFrames
	b	.La5aac
.La59f0:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #0x86
	ldr	r2, [sp, #0xc]
	mov	r4, r11
	lsl	r1, #2
	add	r0, r4, r1
	ldrb	r3, [r2, r0]
	mov	r4, #0x98
	lsl	r4, #2
	add	r3, r4
	mov	r4, r8
	ldr	r2, [r4, #0x18]
	strb	r2, [r7, r3]
	mov	r2, r11
	add	r2, #0x1c
	str	r2, [sp, #0x10]
	ldr	r3, [sp, #0xc]
	ldrsb	r5, [r7, r2]
	mov	r9, r0
	mov	r10, r3
.La5a1c:
	ldr	r3, =gKeyRepeat
	mov	r2, #0x80
	ldr	r3, [r3]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La5a2e
	add	r5, #1
	b	.La5a30
.La5a2e:
	sub	r5, #1
.La5a30:
	ldr	r4, =0x219
	add	r3, r7, r4
	ldrb	r1, [r3]
	add	r0, r5, r1
	bl	__modsi3
	mov	r1, #0x82
	mov	r5, r0
	lsl	r1, #2
	lsl	r6, r5, #1
	add	r2, r6, r1
	ldrh	r3, [r7, r2]
	str	r3, [r7, #8]
	ldrh	r3, [r7, r2]
	mov	r4, r9
	mov	r2, r10
	strb	r3, [r2, r4]
	ldr	r1, [sp, #0x10]
	strb	r5, [r7, r1]
	ldrb	r0, [r2, r4]
	bl	_GetUnit
	mov	r2, #0xe4
	lsl	r2, #1
	add	r1, r7, r2
	mov	r2, #0
	bl	Func_80a3ddc
	mov	r3, #0x86
	lsl	r3, #2
	strb	r0, [r7, r3]
	lsl	r0, #24
	cmp	r0, #0
	beq	.La5a1c
	mov	r1, #0xa2
	ldr	r2, .La5a98	@ 0x1e
	mov	r5, #0
	lsl	r1, #1
.La5a7c:
	lsl	r3, r5, #1
	add	r3, r1
	strh	r2, [r7, r3]
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #3
	bls	.La5a7c
	mov	r4, #0xa2
	lsl	r4, #1
	ldr	r3, .La5a9c	@ 0x1a
	add	r2, r6, r4
	strh	r3, [r7, r2]
	b	.La5aba

	.align	2, 0
.La5a98:
	.word	0x1e
.La5a9c:
	.word	0x1a
	.pool

.La5aac:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La5aba
	b	.La5810
.La5aba:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	bne	.La5b20
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La5b20
	mov	r6, #0x86
	ldr	r4, [sp, #0xc]
	mov	r2, r11
	lsl	r6, #2
	add	r3, r2, r6
	ldrb	r0, [r4, r3]
	bl	_GetUnit
	mov	r1, #0xe4
	lsl	r1, #1
	add	r5, r7, r1
	mov	r2, #0
	mov	r1, r5
	mov	r9, r0
	bl	Func_80a3ddc
	mov	r1, #0
	strb	r0, [r7, r6]
	mov	r0, r5
	bl	Func_80a3e28
	mov	r2, #0x87
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r1, r11
	mov	r0, r8
	bl	Func_80a5578
	mov	r3, r8
	ldr	r1, [r3, #0x18]
	lsl	r1, #4
	add	r1, #0x24
	mov	r0, #0x62
	bl	Func_80a1a40
	mov	r4, #1
	mov	r10, r4
	str	r4, [sp, #0x1c]
	b	.La5aac
.La5b20:
	mov	r3, #0x60
	str	r3, [sp]
	ldr	r0, [sp, #0x24]
	mov	r1, #0
	mov	r2, #0x58
	mov	r3, #0x78
	bl	_Func_80164d4
	ldr	r0, [r7, #0x44]
	bl	Func_80a17c4
	mov	r3, #0xba
	ldr	r1, [sp, #8]
	mov	r4, r8
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r4, #0x18]
	strh	r3, [r7, r2]
	mov	r3, #0x86
	ldr	r1, [sp, #0xc]
	lsl	r3, #2
	add	r3, r11
	ldrb	r3, [r1, r3]
	mov	r2, #0x98
	lsl	r2, #2
	add	r3, r2
	ldr	r2, [r4, #0x18]
	strb	r2, [r7, r3]
	ldr	r4, [sp, #8]
	mov	r1, #0xbc
	add	r2, sp, #0x20
	lsl	r1, #1
	ldrh	r2, [r2]
	add	r3, r4, r1
	mov	r0, #0xa8
	strh	r2, [r7, r3]
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La5b78
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x20]
.La5b78:
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x20]
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5788

.thumb_func_start Func_80a5b94  @ 0x080a5b94
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xa7
	lsl	r1, #4
	mov	r0, #0x37
	sub	sp, #0x10
	bl	galloc_iwram
	ldr	r1, =iwram_3001e68
	ldr	r2, [r1]
	mov	r3, #1
	mov	r6, r0
	strh	r3, [r2, #4]
	mov	r0, #0
	mov	r3, #0x14
	mov	r2, #0x1e
	mov	r8, r1
	mov	r1, #0
	bl	_Func_80170f8
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	bl	Func_80a1090
	mov	r2, #0x82
	lsl	r2, #2
	add	r0, r6, r2
	bl	_Func_80796c4
	ldr	r1, =0x219
	add	r3, r6, r1
	strb	r0, [r3]
	mov	r1, #3
	mov	r0, #0
	mov	r2, #0
	mov	r3, #7
	bl	Func_80a3354
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #3
	mov	r0, #0xd
	bl	_CreateUIBox
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r6, r2
	str	r0, [r3]
	mov	r0, #0xe
	bl	Func_80a2144
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	bl	Func_80a2474
	add	r0, sp, #0xc
	add	r1, sp, #8
	add	r2, sp, #4
	bl	Func_80a5cc0
	mov	r7, r0
	bl	Func_80a2490
	cmp	r7, #1
	bne	.La5c46
	mov	r1, #0xbc
	lsl	r1, #1
	mov	r3, r8
	ldr	r5, [r3, #0x54]
	add	r3, r6, r1
	ldrh	r3, [r3]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	ldr	r3, [sp, #0xc]
	ldr	r2, [sp, #4]
	mov	r1, #0xbf
	lsl	r3, #10
	lsl	r1, #1
	orr	r2, r3
	add	r3, r5, r1
	strh	r2, [r3]
.La5c46:
	ldr	r0, [r6, #0x24]
	mov	r6, r8
	add	r6, #0x24
	bl	_Func_80164ac
	ldr	r5, =0xea6
	ldr	r2, [r6]
	ldr	r3, .La5c90	@ 1
	strb	r3, [r2, r5]
	bl	Func_80a34c0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	mov	r0, #0
	bl	_Func_80170f8
	mov	r0, #0x37
	bl	gfree
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0
	strh	r3, [r2, #4]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0x14
	bl	_ClearUIRegion
	ldr	r3, [r6]
	ldr	r2, .La5c94	@ 0
	add	r3, r5
	b	.La5cac

	.align	2, 0
.La5c90:
	.word	1
.La5c94:
	.word	0
	.pool

.La5cac:
	strb	r2, [r3]
	bl	_Func_8091858
	mov	r0, r7
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5b94

.thumb_func_start Func_80a5cc0  @ 0x080a5cc0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r5, #0
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	r5, [sp]
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r11, r5
	b	.La5fa4
.La5ce0:
	cmp	r5, #4
	bls	.La5ce6
	b	.La5fa0
.La5ce6:
	ldr	r2, =.La5cf0
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La5cf0:
	.word	.La5d04
	.word	.La5d34
	.word	.La5e22
	.word	.La5dfa
	.word	.La5e92
.La5d04:
	mov	r3, #0xba
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r1, =0xae9
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r0, #0
	bl	Func_80a602c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.La5d2a
	mov	r2, #1
	str	r2, [sp]
	mov	r11, r3
.La5d2a:
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	mov	r5, #1
	b	.La5fa4
.La5d34:
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r3, #0
	bne	.La5d54
	b	.La5fa4
.La5d54:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.La5d74
	cmp	r3, #1
	bgt	.La5d6a
	cmp	r3, #0
	beq	.La5d70
	b	.La5d86
.La5d6a:
	cmp	r3, #2
	beq	.La5d7e
	b	.La5d86
.La5d70:
	ldr	r1, =0xaea
	b	.La5d76
.La5d74:
	ldr	r1, =0xaf1
.La5d76:
	mov	r0, #0
	bl	Func_80a3cf8
	b	.La5d86
.La5d7e:
	ldr	r1, =0xaf0
	mov	r0, #0
	bl	Func_80a3cf8
.La5d86:
	bl	Func_80a9cbc
	ldr	r3, =0x21a
	add	r6, r7, r3
	ldrb	r1, [r6]
	mov	r2, #0
	ldr	r0, [r7, #0x24]
	mov	r3, #0
	bl	Func_80a112c
	mov	r0, #0
	bl	Func_80a6ccc
	mov	r2, #1
	neg	r2, r2
	mov	r1, r0
	mov	r8, r2
	mov	r5, #0
	cmp	r1, r8
	bne	.La5db0
	b	.La5fa4
.La5db0:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, #2
	cmp	r3, #0
	bne	.La5dc0
	b	.La5fa4
.La5dc0:
	cmp	r3, #1
	bne	.La5dde
	mov	r2, #0
	ldrb	r0, [r6]
	bl	Func_80a65e4
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, =0xae2
	mov	r1, r8
	mov	r2, r8
	bl	Func_80a1d08
	b	.La5df6
.La5dde:
	mov	r2, #1
	ldrb	r0, [r6]
	bl	Func_80a65e4
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, =0xae3
	mov	r1, r8
	mov	r2, r8
	bl	Func_80a1d08
.La5df6:
	mov	r5, #0
	b	.La5fa4
.La5dfa:
	ldr	r1, =0xaeb
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r0, #0
	bl	Func_80a63e4
	mov	r3, #1
	mov	r10, r0
	neg	r3, r3
	mov	r5, #4
	cmp	r10, r3
	beq	.La5e16
	b	.La5fa4
.La5e16:
	mov	r2, #0x88
	lsl	r2, #2
	add	r1, r7, r2
	ldrh	r2, [r1]
	ldr	r3, .La5e40	@ 1
	b	.La5f58
.La5e22:
	bl	Func_80a5fe0
	cmp	r0, #1
	bne	.La5e2e
.La5e2a:
	mov	r5, #3
	b	.La5fa4
.La5e2e:
	cmp	r0, #2
	bne	.La5e70
	ldr	r3, =0x21b
	add	r2, r7, r3
	mov	r3, #9
	strb	r3, [r2]
	mov	r5, #4
	b	.La5fa4

	.align	2, 0
.La5e40:
	.word	1
	.pool

.La5e70:
	mov	r2, #1
	str	r2, [sp]
	mov	r11, r2
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r3, [r3]
	ldr	r2, [sp, #8]
	str	r3, [r2]
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r3, =0x3fff
	and	r3, r2
	ldr	r2, [sp, #4]
	str	r3, [r2]
	b	.La5fa4
.La5e92:
	mov	r2, #0xbc
	lsl	r2, #1
	add	r2, r7
	mov	r3, #0
	ldrh	r0, [r2]
	mov	r10, r3
	mov	r8, r2
	ldr	r3, =0x21a
	ldr	r2, =0x21b
	add	r5, r7, r3
	add	r6, r7, r2
	mov	r3, #0
	ldrb	r1, [r5]
	ldrb	r2, [r6]
	bl	Func_80a9f10
	ldrb	r3, [r6]
	mov	r11, r0
	cmp	r3, #9
	bne	.La5ec2
	ldrb	r3, [r5]
	strb	r3, [r6]
	mov	r3, #9
	mov	r10, r3
.La5ec2:
	mov	r2, #1
	neg	r2, r2
	mov	r9, r2
	cmp	r11, r9
	beq	.La5ee4
	mov	r2, r8
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	ldrb	r3, [r5]
	ldrb	r1, [r0, #9]
	mov	r0, r3
	neg	r1, r1
	bl	_ModifyPP
.La5ee4:
	ldrb	r0, [r5]
	bl	_CalcStats
	cmp	r11, r9
	beq	.La5f22
	ldrb	r1, [r6]
	ldr	r0, [r7, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_80a112c
	mov	r2, r8
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	Func_80aa460
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r2, =0x25a
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r1, #0
	add	r0, r3
	mov	r2, r9
	bl	Func_80a1d08
	b	.La5f42
.La5f22:
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r2, =0x25a
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r1, r11
	add	r0, r3
	mov	r2, r11
	bl	Func_80a1d08
.La5f42:
	mov	r3, #1
	neg	r3, r3
	cmp	r11, r3
	beq	.La5f60
	mov	r3, #0x88
	lsl	r3, #2
	add	r1, r7, r3
	mov	r2, #1
	mov	r11, r2
	ldr	r3, .La5f84	@ 1
	ldrh	r2, [r1]
.La5f58:
	orr	r3, r2
	strh	r3, [r1]
	mov	r5, #1
	b	.La5fa4
.La5f60:
	ldr	r3, =0x222
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r2, r10
	ldr	r1, .La5f84	@ 1
	cmp	r2, #9
	beq	.La5f72
	b	.La5e2a
.La5f72:
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r3, [r2]
	orr	r3, r1
	strh	r3, [r2]
	mov	r5, #1
	b	.La5fa4

	.align	2, 0
.La5f84:
	.word	1
	.pool

.La5fa0:
	mov	r2, #1
	str	r2, [sp]
.La5fa4:
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.La5fb8
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La5fb8
	b	.La5ce0
.La5fb8:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La5fca
	mov	r2, #1
	neg	r2, r2
	mov	r11, r2
.La5fca:
	mov	r0, r11
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5cc0

	.section .text.after_a5fe0, "ax", %progbits

	.section .text.after_a602c, "ax", %progbits

.thumb_func_start Func_80a60d4  @ 0x080a60d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r0, [sp, #0x1c]
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r1, #0x1e
	ldrsb	r1, [r7, r1]
	mov	r0, #0x1c
	ldrsb	r0, [r7, r0]
	mov	r3, #0
	mov	r2, #1
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
	str	r3, [sp, #8]
	mov	r10, r0
	add	r1, sp, #0x10
	mov	r0, #0x9a
	ldrb	r1, [r1]
	lsl	r0, #2
	add	r3, r7, r0
	strb	r1, [r3]
	ldr	r3, [sp, #0x1c]
	mov	r2, r10
	lsl	r2, #1
	ldrh	r0, [r2, r3]
	bl	_GetUnit
	mov	r5, r7
	mov	r3, #0xa
	add	r5, #0x20
	str	r0, [sp, #0xc]
	str	r3, [sp]
	mov	r6, #2
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #3
	mov	r3, #0x11
	str	r6, [sp, #4]
	bl	Func_80a10d0
	cmp	r0, #0
	beq	.La613e
	ldr	r1, [r5]
	mov	r0, r7
	bl	Func_80a33d4
.La613e:
	mov	r5, r7
	mov	r3, #4
	add	r5, #0x28
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #0xd
	mov	r3, #0x11
	str	r6, [sp, #4]
	bl	Func_80a10d0
	cmp	r0, #0
	beq	.La6174
	ldr	r0, [sp, #0x10]
	ldr	r2, [r5]
	mov	r1, #0
	str	r0, [sp]
	mov	r3, #0
	mov	r0, #2
	bl	_Func_801eb64
	mov	r1, #0x87
	lsl	r1, #2
	add	r3, r7, r1
	str	r0, [r3]
	mov	r3, #0xd
	strb	r3, [r0, #5]
.La6174:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r2, r7
	mov	r11, r2
	b	.La6338

	.pool_aligned

.La6184:
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	beq	.La6230
	mov	r0, #0
	str	r0, [sp, #0x14]
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x18]
	add	r0, r10
	bl	__modsi3
	mov	r10, r0
	mov	r1, r10
	ldr	r5, [sp, #0x1c]
	lsl	r1, #1
	mov	r8, r1
	add	r5, r8
	ldrh	r0, [r5]
	ldr	r6, [r7, #0x24]
	bl	_GetUnit
	str	r0, [sp, #0xc]
	ldrh	r0, [r5]
	bl	Func_80a6384
	mov	r2, #0
	mov	r3, #0
	ldrh	r1, [r5]
	mov	r0, r6
	bl	Func_80a112c
	ldrh	r1, [r5]
	ldr	r0, [r7, #0x28]
	bl	Func_80a6614
	ldrh	r1, [r5]
	mov	r0, r7
	bl	Func_80a1804
	mov	r0, #0xa5
	lsl	r0, #1
	ldr	r1, =0x1e
	mov	r9, r8
	mov	r2, #3
	add	r3, r7, r0
.La61dc:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La61dc
	mov	r3, #0xa2
	lsl	r3, #1
	ldr	r2, =0x1a
	add	r3, r9
	strh	r2, [r7, r3]
	ldr	r0, =0x151
	bl	_GetFlag
	cmp	r0, #0
	bne	.La6228
	ldr	r1, [sp, #8]
	cmp	r1, #0
	bne	.La6228
	b	.La6210

	.pool_aligned

.La6210:
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	ldr	r0, [r7, #0x2c]
	bl	Func_80a23c0
	mov	r2, #1
	str	r2, [sp, #8]
	b	.La6236
.La6228:
	ldr	r0, =0x151
	bl	_ClearFlag
	b	.La6236
.La6230:
	mov	r3, r10
	lsl	r3, #1
	mov	r8, r3
.La6236:
	mov	r0, r8
	add	r0, r10
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La627a
	mov	r0, #0x86
	lsl	r0, #2
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La6272
	mov	r0, #0x70
	bl	_PlaySound
	ldr	r2, [sp, #0x1c]
	mov	r1, r8
	ldrh	r1, [r1, r2]
	str	r1, [sp, #0x10]
	b	.La634c
.La6272:
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r1, =gKeyPress
.La627a:
	ldr	r0, =gKeyPress
	ldr	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	and	r3, r0
	cmp	r3, #0
	bne	.La6294
	ldr	r3, [r1]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La62ec
.La6294:
	ldr	r3, [sp, #0x1c]
	mov	r2, r8
	ldrh	r2, [r2, r3]
	str	r2, [sp, #0x10]
	ldr	r3, [r1]
	and	r3, r0
	cmp	r3, #0
	beq	.La62ac
	mov	r3, #1
	mov	r0, r11
	strb	r3, [r0]
	b	.La62b2
.La62ac:
	mov	r3, #2
	mov	r1, r11
	strb	r3, [r1]
.La62b2:
	mov	r0, #0x40
	bl	Func_8004938
	mov	r6, r0
	mov	r1, r6
	ldr	r0, [sp, #0xc]
	mov	r2, #1
	bl	Func_80a68ec
	mov	r5, r0
	lsl	r5, #24
	lsr	r5, #24
	lsl	r5, #24
	mov	r0, r6
	asr	r5, #24
	bl	free
	cmp	r5, #0
	bne	.La62e4
	mov	r2, r11
	strb	r5, [r2]
	mov	r0, #0x72
	bl	_PlaySound
	b	.La62ec
.La62e4:
	mov	r0, #0x70
	bl	_PlaySound
	b	.La634c
.La62ec:
	ldr	r0, =gKeyPress
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La6306
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x10]
	b	.La634c
.La6306:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La6322
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r3, #1
	neg	r2, r2
	str	r3, [sp, #0x14]
	add	r10, r2
.La6322:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La6338
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	str	r0, [sp, #0x14]
	add	r10, r0
.La6338:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La6346
	b	.La6184
.La6346:
	mov	r1, r10
	lsl	r1, #1
	mov	r8, r1
.La634c:
	mov	r2, r10
	strb	r2, [r7, #0x1c]
	ldr	r0, [sp, #0x1c]
	mov	r3, r8
	ldr	r1, =0x21a
	ldrh	r2, [r3, r0]
	add	r3, r7, r1
	str	r2, [r7, #8]
	strb	r2, [r3]
	ldr	r0, [sp, #0x10]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a60d4

