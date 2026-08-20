	.include "macros.inc"
	.include "gba.inc"

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

