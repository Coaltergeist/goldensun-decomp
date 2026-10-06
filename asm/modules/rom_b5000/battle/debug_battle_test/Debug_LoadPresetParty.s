	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_LoadPresetParty  @ 0x080b5368
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r0, [sp, #0x18]
	mov	r1, #0
	mov	r0, #0
	str	r1, [sp, #0x14]
	bl	_Func_8079664
	mov	r0, #1
	bl	_Func_8079664
	mov	r0, #2
	bl	_Func_8079664
	mov	r0, #3
	bl	_Func_8079664
	mov	r0, #5
	bl	_Func_8079664
	mov	r3, sp
	add	r3, #0x1c
	str	r3, [sp, #4]
	mov	r2, #0
	ldr	r5, [sp, #4]
	str	r2, [sp, #0xc]
	add	r3, sp, #0x28
	mov	r12, r5
.Lb53ac:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.Lb53ac
	mov	r1, #0
	str	r1, [sp, #0x10]
	b	.Lb54e8
.Lb53ba:
	ldr	r2, [sp, #0xc]
	add	r2, #1
	str	r2, [sp, #0xc]
	b	.Lb54e2
.Lb53c2:
	ldr	r3, [sp, #0xc]
	ldr	r1, [sp, #0x18]
	cmp	r3, r1
	beq	.Lb53cc
	b	.Lb54e2
.Lb53cc:
	mov	r0, r10
	bl	_AddPartyMember
	ldr	r2, =.Lc3f34
	add	r3, r5, r2
	ldrb	r1, [r3, #1]
	mov	r0, r10
	bl	_SetMinLevel
	mov	r0, r10
	bl	_GetUnit
	mov	r5, #0x8c
	mov	r1, r0
	mov	r2, r1
	lsl	r5, #1
	mov	r4, #0
	mov	r0, #0
	add	r2, #0xf8
	add	r3, r1, r5
	mov	r7, #3
.Lb53f6:
	sub	r7, #1
	strb	r4, [r3]
	strb	r4, [r3, #4]
	str	r0, [r2]
	str	r0, [r2, #0x10]
	add	r3, #1
	add	r2, #4
	cmp	r7, #0
	bge	.Lb53f6
	mov	r0, r1
	ldr	r3, .Lb543c	@ 0
	mov	r7, #0x1f
	add	r0, #0xd4
.Lb5410:
	sub	r7, #1
	strh	r3, [r0]
	sub	r0, #4
	cmp	r7, #0
	bge	.Lb5410
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x10]
	ldr	r5, =.Lc3f34
	add	r3, r1, r2
	lsl	r3, #2
	add	r3, r5, r3
	mov	r5, r3
	add	r5, #0xe
	mov	r7, #1
.Lb542c:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Lb5444
	mov	r1, r3
	mov	r0, r10
	bl	_GiveInnateMove
	b	.Lb5444

	.align	2, 0
.Lb543c:
	.word	0
	.pool

.Lb5444:
	sub	r7, #1
	add	r5, #2
	cmp	r7, #0
	bge	.Lb542c
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x10]
	add	r3, r1, r2
	lsl	r4, r3, #2
	mov	r3, #0
	mov	r7, #0
	mov	r9, r3
.Lb545a:
	ldr	r2, =.Lc3f34
	add	r2, #2
	mov	r5, #0
	ldrsb	r3, [r2, r4]
	mov	r8, r5
	cmp	r8, r3
	bge	.Lb5498
	ldr	r6, [sp, #4]
	mov	r5, r9
	mov	r11, r2
.Lb546e:
	ldr	r2, [r6, r5]
	mov	r1, r7
	mov	r0, r10
	str	r4, [sp]
	bl	_GiveDjinni
	ldr	r2, [r6, r5]
	mov	r1, r7
	mov	r0, r10
	bl	_SetDjinni
	ldr	r3, [r6, r5]
	ldr	r4, [sp]
	add	r3, #1
	mov	r2, r11
	str	r3, [r6, r5]
	mov	r1, #1
	ldrsb	r3, [r2, r4]
	add	r8, r1
	cmp	r8, r3
	blt	.Lb546e
.Lb5498:
	mov	r3, #4
	add	r7, #1
	add	r4, #1
	add	r9, r3
	cmp	r7, #3
	ble	.Lb545a
	mov	r7, #0xf
.Lb54a6:
	mov	r0, r10
	mov	r1, #0
	sub	r7, #1
	bl	_Func_80788c4
	cmp	r7, #0
	bge	.Lb54a6
	ldr	r5, [sp, #8]
	ldr	r1, [sp, #0x10]
	ldr	r2, =.Lc3f34
	add	r3, r5, r1
	lsl	r3, #2
	add	r3, r2, r3
	add	r5, r3, #6
	mov	r7, #3
.Lb54c4:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.Lb54da
	mov	r1, r3
	mov	r0, r10
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, r10
	bl	_EquipItem
.Lb54da:
	sub	r7, #1
	add	r5, #2
	cmp	r7, #0
	bge	.Lb54c4
.Lb54e2:
	ldr	r3, [sp, #0x10]
	add	r3, #1
	str	r3, [sp, #0x10]
.Lb54e8:
	ldr	r5, [sp, #0x10]
	ldr	r1, [sp, #0x10]
	lsl	r5, #2
	str	r5, [sp, #8]
	add	r3, r5, r1
	ldr	r2, =.Lc3f34
	lsl	r5, r3, #2
	ldrsb	r2, [r2, r5]
	mov	r3, #0xa6
	lsl	r3, #1
	mov	r10, r2
	cmp	r1, r3
	bls	.Lb5508
	mov	r5, #1
	str	r5, [sp, #0x14]
	b	.Lb551c
.Lb5508:
	mov	r1, #1
	neg	r1, r1
	cmp	r10, r1
	beq	.Lb5512
	b	.Lb53c2
.Lb5512:
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #0x18]
	cmp	r2, r3
	beq	.Lb551c
	b	.Lb53ba
.Lb551c:
	ldr	r0, [sp, #0x14]
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Debug_LoadPresetParty

