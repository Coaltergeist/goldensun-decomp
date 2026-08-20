	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b1260  @ 0x080b1260
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x14]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r0
	mov	r0, r1
	mov	r9, r2
	str	r3, [sp, #0x10]
	bl	_GetUnit
	mov	r7, r0
	mov	r0, r9
	bl	_GetItemInfo
	mov	r5, r0
	mov	r0, #1
	neg	r0, r0
	mov	r1, r10
	str	r0, [sp, #0xc]
	cmp	r1, #0
	bne	.Lb129a
	b	.Lb1450
.Lb129a:
	mov	r0, r10
	bl	_Func_8016478
	mov	r1, r9
	ldr	r0, [sp, #0x14]
	bl	_CanEquipItem
	cmp	r0, #0
	bne	.Lb12ba
	ldr	r0, =0xc8e
	mov	r1, r10
	mov	r2, #8
	mov	r3, #0x18
	bl	_DrawSmallText
	b	.Lb1450
.Lb12ba:
	ldrb	r1, [r5, #2]
	ldr	r0, [sp, #0x14]
	bl	_GetEquippedItem
	ldr	r2, [sp, #0xc]
	cmp	r0, r2
	bne	.Lb1324
	mov	r3, #0xd8
	mov	r1, #0x80
	ldrh	r2, [r7, r3]
	lsl	r1, #2
	mov	r3, r1
	and	r3, r2
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb12f2
	mov	r12, r1
	mov	r1, r7
	add	r1, #0xd8
.Lb12e0:
	add	r5, #1
	cmp	r5, #0xe
	bgt	.Lb12f2
	add	r1, #2
	ldrh	r2, [r1]
	mov	r3, r12
	and	r3, r2
	cmp	r3, #0
	bne	.Lb12e0
.Lb12f2:
	cmp	r5, #0xf
	bne	.Lb1318
	mov	r6, r7
	mov	r5, #0
	add	r6, #0xd8
	b	.Lb1300
.Lb12fe:
	add	r5, #1
.Lb1300:
	cmp	r5, #0xe
	bgt	.Lb1312
	ldrh	r0, [r6]
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	add	r6, #2
	cmp	r3, #6
	bne	.Lb12fe
.Lb1312:
	cmp	r5, #0xf
	bne	.Lb1318
	mov	r5, #0
.Lb1318:
	lsl	r0, r5, #1
	b	.Lb1332

	.pool_aligned

.Lb1324:
	lsl	r0, #1
	mov	r3, r0
	add	r3, #0xd8
	ldrh	r3, [r7, r3]
	ldr	r1, =0x1ff
	and	r1, r3
	str	r1, [sp, #0xc]
.Lb1332:
	ldr	r3, .Lb1368	@ 0x200
	mov	r5, r0
	mov	r0, r9
	orr	r0, r3
	mov	r9, r0
	mov	r1, r9
	add	r5, #0xd8
	ldrh	r2, [r7, r5]
	strh	r1, [r7, r5]
	ldr	r0, [sp, #0x14]
	mov	r8, r2
	bl	_CalcStats
	ldrh	r3, [r7, #0x3c]
	add	r2, sp, #0x18
	str	r3, [r2]
	ldrh	r3, [r7, #0x3e]
	mov	r6, r7
	str	r3, [r2, #4]
	add	r6, #0x40
	ldrh	r3, [r6]
	str	r3, [r2, #8]
	mov	r3, r7
	add	r3, #0x42
	str	r3, [sp, #8]
	b	.Lb1370

	.align	2, 0
.Lb1368:
	.word	0x200
	.pool

.Lb1370:
	ldrb	r3, [r3]
	mov	r0, r8
	str	r3, [r2, #0xc]
	strh	r0, [r7, r5]
	ldr	r0, [sp, #0x14]
	mov	r11, r2
	bl	_CalcStats
	ldrh	r3, [r7, #0x3c]
	add	r1, sp, #0x28
	str	r3, [r1]
	ldrh	r3, [r7, #0x3e]
	str	r3, [r1, #4]
	ldrh	r3, [r6]
	str	r3, [r1, #8]
	ldr	r2, [sp, #8]
	ldrb	r3, [r2]
	str	r3, [r1, #0xc]
	mov	r3, #2
	mov	r5, #0
	str	r3, [sp, #4]
	mov	r9, r1
	mov	r8, r5
	mov	r7, #0
.Lb13a0:
	mov	r0, r8
	mov	r1, r9
	ldr	r2, [r0, r1]
	mov	r1, r11
	ldr	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lb13b6
	ldr	r2, [sp, #0x10]
	ldr	r0, =0x39a
	add	r3, r2, r0
	b	.Lb13c2
.Lb13b6:
	cmp	r2, r3
	bge	.Lb13dc
	ldr	r1, [sp, #0x10]
	mov	r2, #0xe6
	lsl	r2, #2
	add	r3, r1, r2
.Lb13c2:
	ldrh	r0, [r3]
	mov	r1, #0x80
	sub	r3, r7, #4
	str	r3, [sp]
	lsl	r1, #23
	mov	r3, #0x38
	mov	r2, r10
	bl	_Func_801eadc
	mov	r3, #0
	mov	r6, r7
	strb	r3, [r0, #4]
	b	.Lb13de
.Lb13dc:
	lsl	r6, r5, #4
.Lb13de:
	add	r1, sp, #0x28
	mov	r3, r8
	ldr	r0, [r3, r1]
	mov	r2, r10
	mov	r1, #3
	mov	r3, #0x20
	str	r7, [sp]
	bl	_Func_801ea08
	mov	r2, r8
	add	r0, sp, #0x28
	mov	r1, r11
	ldr	r3, [r2, r0]
	ldr	r0, [r2, r1]
	cmp	r3, r0
	beq	.Lb140a
	mov	r1, #3
	mov	r2, r10
	mov	r3, #0x48
	str	r6, [sp]
	bl	_Func_801ea08
.Lb140a:
	ldr	r0, =0xc98
	mov	r1, r10
	add	r0, r5, r0
	mov	r2, #0
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r2, [sp, #4]
	mov	r0, r10
	mov	r3, #0xd
	mov	r1, #0
	str	r2, [sp]
	bl	_Func_801e41c
	ldr	r3, [sp, #4]
	mov	r0, #4
	add	r3, #2
	add	r5, #1
	str	r3, [sp, #4]
	add	r8, r0
	add	r7, #0x10
	cmp	r5, #2
	ble	.Lb13a0
	mov	r2, #1
	ldr	r1, [sp, #0xc]
	neg	r2, r2
	cmp	r1, r2
	beq	.Lb1450
	ldr	r0, =0x182
	mov	r2, #0
	add	r0, r1, r0
	mov	r3, #0x30
	mov	r1, r10
	bl	_Func_801e7c0
.Lb1450:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b1260

