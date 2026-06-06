	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009528
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_947_2009268
	cmp	r0, #0
	bne	.L153a
	bl	OvlFunc_947_20083a8
.L153a:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009528

.thumb_func_start OvlFunc_947_2009544
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_80916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_947_2008758
	cmp	r0, #0
	beq	.L156c
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_947_20088ec
.L156c:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009544

.thumb_func_start OvlFunc_947_2009578
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_3001ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L158a
	cmp	r3, #0x2e
	bhi	.L159e
.L158a:
	bl	__Func_8004458
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L3738
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L159e
	ldr	r5, =.L372c
.L159e:
	ldmia	r5!, {r3}
	str	r3, [r6]
	ldr	r6, =REG_BG2HOFS
	ldmia	r5!, {r3}
	stmia	r6!, {r3}
	ldr	r3, [r5]
	str	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009578

.thumb_func_start OvlFunc_947_20095cc
	ldr	r3, =iwram_3001ad4
	ldr	r2, =.L372c
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldmia	r3!, {r1}
	stmia	r2!, {r1}
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r2, =.L372c
	ldrh	r3, [r2, #2]
	add	r3, #0xc0
	strh	r3, [r2, #2]
	ldrh	r3, [r2, #6]
	add	r3, #0xc0
	strh	r3, [r2, #6]
	ldrh	r3, [r2, #0xa]
	add	r3, #0xc0
	strh	r3, [r2, #0xa]
	bx	lr
.func_end OvlFunc_947_20095cc

.thumb_func_start OvlFunc_947_20095fc
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #0xc
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L164c
	str	r0, [sp]
	mov	r6, #0xa
	mov	r5, #0x1f
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_947_2008cc0
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_947_2008cc0
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x33
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_947_2008cc0
	b	.L168c
.L164c:
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #0xa
	mov	r5, #0x1f
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_947_2008cc0
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_947_2008cc0
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x53
	mov	r2, #0x10
	mov	r3, #5
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	bl	OvlFunc_947_2008cc0
.L168c:
	ldr	r5, =.L3738
	mov	r6, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r6, [r5]
	ldr	r0, =OvlFunc_947_20095cc
	bl	__Func_80041d8
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r2, =OvlFunc_947_2009578
	mov	r0, #1
	mov	r1, #0
	bl	__Func_800307c
	mov	r0, #0xe7
	bl	__Func_80f9080
	str	r6, [r5]
.L16b4:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x64
	ble	.L16b4
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L16fa
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x20
	mov	r1, #0x20
	mov	r2, #0x40
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	b	.L171c
.L16fa:
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x40
	mov	r2, #0x20
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x20
	mov	r1, #0x40
	mov	r2, #0x40
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
.L171c:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_800307c
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =OvlFunc_947_20095cc
	bl	__Func_8004278
	bl	__Func_800fe9c
	mov	r0, #0x1e
	bl	__Func_80030f8
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_20095fc

.thumb_func_start OvlFunc_947_200975c
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r3, #1
	ldr	r0, =0x1190000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.L185c
	mov	r0, #0xe8
	bl	__Func_80f9080
	mov	r2, #0x18
	mov	r1, #0x54
	ldr	r0, =.L2da8
	bl	__Func_8010560
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xf0
	bl	__Func_80f9080
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_8092b08
	mov	r0, #0x10
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__Func_8092054
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xd0
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =.L2dfc
	mov	r1, #0x50
	mov	r2, #0x18
	bl	__Func_8010560
	ldr	r0, =.L2e50
	mov	r1, #0x50
	mov	r2, #0x1c
	bl	__Func_8010560
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x10
	mov	r3, #0x1b
	mov	r0, #0x41
	bl	__Func_8010424
	bl	OvlFunc_947_20095fc
	mov	r0, #9
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xa
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xb
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xc
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xd
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xe
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xf
	bl	OvlFunc_947_2008ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	b	.L190c
.L185c:
	mov	r0, #0xe8
	bl	__Func_80f9080
	mov	r1, #0x54
	mov	r2, #0x18
	ldr	r0, =.L2dd2
	bl	__Func_8010560
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xe6
	bl	__Func_80f9080
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__Func_8092054
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xda
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80924d4
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x1b
	mov	r0, #0x41
	mov	r1, #0x2d
	mov	r2, #0x10
	bl	__Func_8010424
	mov	r1, #0x50
	mov	r2, #0x18
	ldr	r0, =.L2e26
	bl	__Func_8010560
	bl	OvlFunc_947_20095fc
	mov	r0, #9
	bl	OvlFunc_947_2008f58
	mov	r0, #0xa
	bl	OvlFunc_947_2008f58
	mov	r0, #0xb
	bl	OvlFunc_947_2008f58
	mov	r0, #0xc
	bl	OvlFunc_947_2008f58
	mov	r0, #0xd
	bl	OvlFunc_947_2008f58
	mov	r0, #0xe
	bl	OvlFunc_947_2008f58
	mov	r0, #0xf
	bl	OvlFunc_947_2008f58
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079374
.L190c:
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200975c

.thumb_func_start OvlFunc_947_2009938
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	ldr	r1, [r6, #8]
	ldr	r4, [r5, #8]
	mov	r0, #0
	cmp	r1, r4
	bne	.L1958
	ldr	r2, [r6, #0xc]
	ldr	r3, [r5, #0xc]
	cmp	r2, r3
	bne	.L1958
	ldr	r2, [r6, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	beq	.L19de
.L1958:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.L19de
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.L19de
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L1974
	ldr	r1, =0xffff
	add	r3, r1
.L1974:
	asr	r2, r3, #16
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L1980
	ldr	r1, =0xffff
	add	r3, r1
.L1980:
	asr	r3, #16
	cmp	r2, r3
	bne	.L19de
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.L19de
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.L19de
	ldr	r3, [r5, #0x50]
	ldrb	r2, [r3, #9]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r1, r3, #28
	lsr	r2, #30
	lsr	r3, r1, #30
	cmp	r2, r3
	bcs	.L19dc
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.L19dc:
	mov	r0, #1
.L19de:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009938

.thumb_func_start OvlFunc_947_20099f0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r4, [r5, #8]
	ldr	r1, [r6, #8]
	mov	r0, #0
	cmp	r4, r1
	bne	.L1a10
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	cmp	r2, r3
	bne	.L1a10
	ldr	r2, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	cmp	r2, r3
	beq	.L1a96
.L1a10:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.L1a96
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.L1a96
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L1a2c
	ldr	r1, =0xffff
	add	r3, r1
.L1a2c:
	asr	r2, r3, #16
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.L1a38
	ldr	r1, =0xffff
	add	r3, r1
.L1a38:
	asr	r3, #16
	cmp	r2, r3
	bne	.L1a96
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.L1a96
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.L1a96
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r1, r3, #28
	ldr	r3, [r5, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r2, r1, #30
	lsr	r3, #30
	cmp	r2, r3
	bls	.L1a94
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.L1a94:
	mov	r0, #1
.L1a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_20099f0

.thumb_func_start OvlFunc_947_2009aa8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, =iwram_3001ebc
	ldr	r1, =0xcc7
	ldr	r3, [r3]
	add	r3, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r8, r0
	cmp	r3, #1
	bne	.L1aee
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r0, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r6
	add	r1, #0x59
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r0, #9]
	mov	r3, #1
	orr	r3, r2
	b	.L1bd0
.L1aee:
	mov	r0, r6
	mov	r1, r8
	bl	OvlFunc_947_2009938
	mov	r5, #8
	mov	r7, r0
.L1afa:
	mov	r0, r5
	bl	__Func_8092054
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_947_2009938
	add	r5, #1
	add	r7, r0
	cmp	r5, #0xb
	bls	.L1afa
	cmp	r7, #0
	beq	.L1b2a
	mov	r5, #8
.L1b16:
	mov	r0, r5
	bl	__Func_8092054
	add	r5, #1
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_947_20099f0
	cmp	r5, #0xb
	bls	.L1b16
.L1b2a:
	mov	r1, r8
	ldr	r2, [r6, #0xc]
	ldr	r3, [r1, #0xc]
	cmp	r2, r3
	bge	.L1ba6
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, [r6, #0x50]
	mov	r1, r8
	ldrb	r2, [r3, #9]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r3, #28
	lsr	r2, #30
	lsr	r3, #30
	cmp	r2, r3
	bcs	.L1bc2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, r0
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r4, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r1, r8
	ldr	r3, [r1, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
	mov	r7, #1
	b	.L1bc2
.L1ba6:
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
.L1bc2:
	cmp	r7, #0
	bne	.L1bd2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r1, r12
.L1bd0:
	strb	r3, [r1]
.L1bd2:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009aa8

.thumb_func_start OvlFunc_947_2009be8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x84
	mov	r2, #0x10
	str	r1, [sp, #4]
	str	r1, [sp]
	mov	r11, r1
	mov	r9, r2
.L1c04:
	mov	r0, r11
	add	r0, #8
	bl	__Func_8092054
	mov	r3, r11
	mov	r10, r0
	mov	r8, r11
	cmp	r3, #3
	bls	.L1c18
	b	.L1d44
.L1c18:
	ldr	r6, [sp]
	ldr	r4, [sp]
	ldr	r1, =bss_36d0
	add	r6, #0x10
	add	r7, r4, r1
.L1c22:
	mov	r0, r8
	add	r0, #8
	bl	__Func_8092054
	mov	r3, r10
	mov	r4, r0
	ldr	r2, [r3, #0xc]
	ldr	r3, [r4, #0xc]
	cmp	r2, r3
	bgt	.L1c42
	mov	r1, r10
	ldr	r2, [r1, #0x10]
	ldr	r3, [r4, #0x10]
	cmp	r2, r3
	bge	.L1c42
	b	.L1d34
.L1c42:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	add	r1, sp, #0x14
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c54:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c54
	ldr	r3, =REG_DMA3SAD
	mov	r0, r10
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c6e:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c6e
	ldr	r3, =REG_DMA3SAD
	add	r0, sp, #0x14
	mov	r1, r10
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1c88:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1c88
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	add	r1, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1ca2:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1ca2
	ldr	r2, [sp, #4]
	ldr	r4, =bss_36d0
	ldr	r3, =REG_DMA3SAD
	add	r0, r2, r4
	mov	r1, r7
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1cc0:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1cc0
	ldr	r2, [sp, #4]
	ldr	r4, =bss_36d0
	ldr	r3, =REG_DMA3SAD
	add	r1, r2, r4
	add	r0, sp, #8
	ldr	r2, =0x84000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1cde:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1cde
	ldr	r5, =bss_36d0
	mov	r1, r9
	ldr	r0, [r5, r1]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1d0e
	ldr	r0, [r5, r6]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1d0e
	mov	r2, r9
	ldr	r0, [r5, r2]
	bl	__Func_8079374
	ldr	r0, [r5, r6]
	bl	__Func_8079358
	b	.L1d34
.L1d0e:
	ldr	r5, =bss_36d0
	mov	r3, r9
	ldr	r0, [r5, r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1d34
	ldr	r0, [r5, r6]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1d34
	mov	r4, r9
	ldr	r0, [r5, r4]
	bl	__Func_8079358
	ldr	r0, [r5, r6]
	bl	__Func_8079374
.L1d34:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x14
	add	r7, #0x14
	cmp	r2, #3
	bhi	.L1d44
	b	.L1c22
.L1d44:
	ldr	r4, [sp, #4]
	ldr	r1, [sp]
	mov	r2, #1
	mov	r3, #0x14
	add	r11, r2
	add	r9, r3
	add	r4, #0x14
	add	r1, #0x14
	mov	r3, r11
	str	r4, [sp, #4]
	str	r1, [sp]
	cmp	r3, #2
	bhi	.L1d60
	b	.L1c04
.L1d60:
	add	sp, #0x84
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009be8

.thumb_func_start OvlFunc_947_2009d84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =bss_36d0
	sub	sp, #0x14
	mov	r0, #8
	mov	r2, #0x10
	mov	r8, r1
	add	r2, sp
	mov	r3, #0
	str	r0, [sp, #0xc]
	str	r0, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r11, r8
.L1daa:
	ldr	r0, [sp, #0xc]
	bl	__Func_8092054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	sub	r0, #8
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r3, [r6, #8]
	mov	r0, r8
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.L1de2
	ldr	r1, [sp, #4]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.L1de2
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bne	.L1de2
	b	.L1f90
.L1de2:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	add	r0, #8
	ldr	r1, =.L3720
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1df6:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1df6
	mov	r0, r6
	ldr	r1, =.L3720
	bl	__Func_80120dc
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L1e18
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #3
	strb	r3, [r7]
	b	.L1e1c
.L1e18:
	mov	r7, r6
	add	r7, #0x55
.L1e1c:
	mov	r0, r8
	mov	r3, r10
	mov	r5, r8
	ldr	r1, [r3, r0]
	add	r5, #0xc
	ldr	r3, [sp, #4]
	add	r5, r10
	ldr	r2, [r3, r0]
	mov	r0, #0
	mov	r3, r5
	bl	OvlFunc_947_200901c
	mov	r0, r11
	ldr	r3, [sp, #4]
	ldr	r1, [r0]
	mov	r0, r8
	ldr	r2, [r3, r0]
	mov	r3, r5
	mov	r0, #2
	bl	OvlFunc_947_200901c
	ldrb	r2, [r7]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1ed0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8012038
	cmp	r0, #0x32
	bne	.L1e82
	mov	r0, #0xbd
	bl	__Func_80f9080
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	mov	r1, #1
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_947_2009074
	ldrb	r3, [r5]
	mov	r1, #1
	orr	r3, r1
	strb	r3, [r5]
	b	.L1ecc
.L1e82:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8012038
	cmp	r0, #0x33
	bne	.L1ec6
	mov	r1, #0
	mov	r0, r6
	bl	OvlFunc_947_2008da8
	mov	r0, #0xbd
	bl	__Func_80f9080
	mov	r2, #0
	str	r2, [r6, #0xc]
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_947_2009174
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	ldrb	r3, [r5]
	mov	r0, #1
	orr	r3, r0
	strb	r3, [r5]
	b	.L1ecc
.L1ec6:
	mov	r0, r6
	bl	OvlFunc_947_2008d78
.L1ecc:
	mov	r1, #0
	strb	r1, [r7]
.L1ed0:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	ldr	r3, =bss_36d0+0xc
	asr	r2, #20
	asr	r1, #20
	add	r3, r10
	mov	r0, #0
	bl	OvlFunc_947_2008fcc
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	blt	.L1f2a
	asr	r2, #20
	add	r2, #6
	mov	r0, #0
	mov	r1, #0x1b
	mov	r3, r9
	bl	OvlFunc_947_2008fcc
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #0
	mov	r3, r9
	bl	OvlFunc_947_200901c
	mov	r3, r11
	ldrb	r2, [r3, #0xd]
	mov	r0, r9
	ldrb	r1, [r0, #1]
	lsr	r2, #6
	mov	r3, #0x3f
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	strb	r3, [r0, #1]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #2
	mov	r3, r9
	bl	OvlFunc_947_200901c
.L1f2a:
	ldr	r3, [r6, #8]
	mov	r1, r8
	asr	r3, #20
	mov	r2, r10
	str	r3, [r1, r2]
	ldr	r3, [r6, #0xc]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	ldr	r3, [r6, #0x10]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	mov	r5, #0
	mov	r7, #0x10
.L1f48:
	ldr	r3, [sp, #8]
	cmp	r5, r3
	beq	.L1f88
	ldr	r1, =bss_36d0
	ldr	r0, [r1, r7]
	str	r1, [sp]
	bl	__Func_8079374
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092054
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	ldr	r1, [sp]
	cmp	r2, r3
	bne	.L1f88
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L1f88
	ldr	r2, [r6, #0xc]
	ldr	r3, [r0, #0xc]
	cmp	r2, r3
	ble	.L1f88
	ldr	r0, [r1, r7]
	bl	__Func_8079358
.L1f88:
	add	r5, #1
	add	r7, #0x14
	cmp	r5, #3
	bls	.L1f48
.L1f90:
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #0xc]
	mov	r0, #0x14
	add	r1, #0x14
	add	r2, #1
	add	r10, r0
	add	r11, r0
	str	r1, [sp, #4]
	str	r2, [sp, #0xc]
	cmp	r2, #0xb
	bhi	.L1fa8
	b	.L1daa
.L1fa8:
	bl	OvlFunc_947_2009be8
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009d84

.thumb_func_start OvlFunc_947_2009fd4
	push	{r5, lr}
	bl	__Func_80916b0
	bl	OvlFunc_947_2009268
	cmp	r0, #0
	bne	.L2028
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	bl	OvlFunc_947_20083a8
	bl	OvlFunc_947_2009d84
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
.L2028:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009fd4

