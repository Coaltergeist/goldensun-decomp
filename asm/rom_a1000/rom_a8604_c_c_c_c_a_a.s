	.include "macros.inc"

.thumb_func_start Func_80a9f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r1, [sp, #0xc]
	mov	r10, r2
	str	r3, [sp, #8]
	str	r0, [sp, #0x10]
	bl	_GetMoveInfo
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r11, r0
	mov	r1, #0
	mov	r0, #0
	mov	r2, r10
	str	r3, [sp, #4]
	mov	r9, r0
	mov	r7, #0
	mov	r8, r1
	cmp	r2, #9
	beq	.La9f48
	mov	r0, r10
	b	.La9f4a
.La9f48:
	mov	r0, #0
.La9f4a:
	bl	_GetUnit
	mov	r5, r0
	mov	r3, r11
	mov	r4, #0
	ldr	r0, [sp, #4]
	ldr	r1, =0x219
	ldrb	r2, [r3, #8]
	str	r4, [sp]
	add	r3, r0, r1
	ldrb	r3, [r3]
	cmp	r4, r3
	bcc	.La9f66
	b	.Laa3d6
.La9f66:
	mov	r3, r2
	cmp	r3, #0xff
	bne	.La9f84
	ldr	r2, [sp]
	mov	r4, #0x82
	ldr	r0, [sp, #4]
	lsl	r3, r2, #1
	lsl	r4, #2
	add	r3, r4
	ldrh	r3, [r0, r3]
	mov	r10, r3
	mov	r0, r10
	bl	_GetUnit
	mov	r5, r0
.La9f84:
	mov	r1, r11
	ldrb	r2, [r1, #1]
	mov	r3, #0xf
	and	r3, r2
	sub	r3, #1
	ldrh	r6, [r1, #0xa]
	cmp	r3, #0xa
	bls	.La9f96
	b	.Laa178
.La9f96:
	ldr	r2, =.La9fa0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La9fa0:
	.word	.La9fcc
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa178
	.word	.Laa066
	.word	.Laa178
	.word	.Laa122
.La9fcc:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	bne	.La9ffa
	mov	r4, r11
	ldrb	r3, [r4, #2]
	cmp	r3, #4
	beq	.La9fec
	ldr	r0, [sp, #0xc]
	bl	_GetUnit
	mov	r1, r11
	ldrb	r3, [r1, #2]
	lsl	r3, #2
	add	r3, #0x48
	ldrsh	r1, [r0, r3]
	b	.La9fee
.La9fec:
	mov	r1, #0x64
.La9fee:
	mov	r2, #0x80
	mov	r0, r6
	lsl	r2, #1
	bl	_Func_8079c5c
	mov	r6, r0
.La9ffa:
	mov	r4, #0x38
	ldrsh	r1, [r5, r4]
	ldrh	r3, [r5, #0x38]
	cmp	r1, #0
	bgt	.Laa010
	mov	r0, r8
	cmp	r0, #0
	beq	.Laa00c
	b	.Laa178
.Laa00c:
	mov	r7, #2
	b	.Laa178
.Laa010:
	mov	r4, #0x34
	ldrsh	r2, [r5, r4]
	ldrh	r0, [r5, #0x34]
	cmp	r1, r2
	bne	.Laa026
	mov	r0, r8
	cmp	r0, #0
	beq	.Laa022
	b	.Laa178
.Laa022:
	mov	r7, #4
	b	.Laa178
.Laa026:
	add	r3, r6
	strh	r3, [r5, #0x38]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r2
	ble	.Laa042
	sub	r3, r2
	mov	r1, r8
	sub	r6, r3
	strh	r0, [r5, #0x38]
	cmp	r1, #0
	bne	.Laa04a
	mov	r7, #0
	b	.Laa04a
.Laa042:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa04a
	mov	r7, #1
.Laa04a:
	mov	r0, r10
	bl	_UpdateStatBarPercent
	mov	r3, #1
	mov	r4, r11
	mov	r9, r3
	ldrb	r3, [r4, #8]
	cmp	r3, #0xff
	beq	.Laa05e
	b	.Laa178
.Laa05e:
	mov	r0, #1
	mov	r8, r0
	mov	r7, #3
	b	.Laa178
.Laa066:
	bl	Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	bne	.Laa078
	mov	r0, #1
	neg	r0, r0
	b	.Laa086
.Laa078:
	mov	r1, #1
	mov	r2, r1
	eor	r2, r0
	neg	r3, r2
	orr	r3, r2
	lsr	r0, r3, #31
	sub	r0, r1, r0
.Laa086:
	ldr	r3, =0x3fff
	ldr	r1, [sp, #0x10]
	ldr	r2, =0xfffffefc
	and	r3, r1
	add	r3, r2
	cmp	r3, #5
	bhi	.Laa178
	ldr	r2, =.Laa09c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa09c:
	.word	.Laa0b4
	.word	.Laa0c4
	.word	.Laa0f2
	.word	.Laa10a
	.word	.Laa0d4
	.word	.Laa0e4
.Laa0b4:
	ldrh	r3, [r5, #0x10]
	add	r2, r6, r0
	add	r3, r2
	strh	r3, [r5, #0x10]
	mov	r3, #1
	mov	r7, #0x10
	mov	r9, r3
	b	.Laa178
.Laa0c4:
	ldrh	r3, [r5, #0x12]
	add	r2, r6, r0
	add	r3, r2
	mov	r4, #1
	strh	r3, [r5, #0x12]
	mov	r7, #0x11
	mov	r9, r4
	b	.Laa178
.Laa0d4:
	ldrh	r3, [r5, #0x1c]
	add	r2, r6, r0
	add	r3, r2
	mov	r0, #1
	strh	r3, [r5, #0x1c]
	mov	r7, #0x12
	mov	r9, r0
	b	.Laa178
.Laa0e4:
	ldrb	r3, [r5, #0x1e]
	mov	r1, #1
	add	r3, r6
	strb	r3, [r5, #0x1e]
	mov	r7, #0x13
	mov	r9, r1
	b	.Laa178
.Laa0f2:
	ldrh	r3, [r5, #0x18]
	add	r2, r6, r0
	add	r3, r2
	strh	r3, [r5, #0x18]
	mov	r0, #3
	mov	r1, #5
	bl	_Func_8019908
	mov	r2, #1
	mov	r7, #0x14
	mov	r9, r2
	b	.Laa178
.Laa10a:
	ldrh	r3, [r5, #0x1a]
	add	r2, r6, r0
	add	r3, r2
	strh	r3, [r5, #0x1a]
	mov	r0, #4
	mov	r1, #5
	bl	_Func_8019908
	mov	r3, #1
	mov	r7, #0x15
	mov	r9, r3
	b	.Laa178
.Laa122:
	mov	r4, #0x3a
	ldrsh	r3, [r5, r4]
	mov	r4, #0x36
	ldrsh	r2, [r5, r4]
	ldrh	r1, [r5, #0x3a]
	ldrh	r0, [r5, #0x36]
	cmp	r3, r2
	bne	.Laa13c
	mov	r0, r8
	cmp	r0, #0
	bne	.Laa178
	mov	r7, #7
	b	.Laa178
.Laa13c:
	add	r3, r1, r6
	strh	r3, [r5, #0x3a]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r2
	ble	.Laa158
	sub	r3, r2
	mov	r1, r8
	sub	r6, r3
	strh	r0, [r5, #0x3a]
	cmp	r1, #0
	bne	.Laa160
	mov	r7, #5
	b	.Laa160
.Laa158:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa160
	mov	r7, #6
.Laa160:
	mov	r0, r10
	bl	_UpdateStatBarPercent
	mov	r3, #1
	mov	r4, r11
	mov	r9, r3
	ldrb	r3, [r4, #8]
	cmp	r3, #0xff
	bne	.Laa178
	mov	r0, #1
	mov	r8, r0
	mov	r7, #8
.Laa178:
	mov	r1, r11
	ldrb	r3, [r1, #3]
	sub	r3, #1
	cmp	r3, #0x38
	bls	.Laa184
	b	.Laa3b0
.Laa184:
	ldr	r2, =.Laa18c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Laa18c:
	.word	.Laa270
	.word	.Laa2ce
	.word	.Laa38a
	.word	.Laa3b0
	.word	.Laa314
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa3b0
	.word	.Laa33e
	.word	.Laa358
.Laa270:
	mov	r4, #0x38
	ldrsh	r2, [r5, r4]
	ldrh	r3, [r5, #0x38]
	cmp	r2, #0
	ble	.Laa284
	mov	r4, #0x34
	ldrsh	r1, [r5, r4]
	ldrh	r0, [r5, #0x34]
	cmp	r2, r1
	bne	.Laa2ac
.Laa284:
	mov	r0, r8
	cmp	r0, #0
	beq	.Laa28c
	b	.Laa3b0
.Laa28c:
	mov	r7, #2
	b	.Laa3b0

	.pool_aligned

.Laa2ac:
	add	r3, r6
	strh	r3, [r5, #0x38]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r1
	ble	.Laa2c4
	mov	r1, r8
	strh	r0, [r5, #0x38]
	cmp	r1, #0
	bne	.Laa308
	mov	r7, #0
	b	.Laa308
.Laa2c4:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa308
	mov	r7, #1
	b	.Laa308
.Laa2ce:
	mov	r4, #0x3a
	ldrsh	r3, [r5, r4]
	mov	r4, #0x36
	ldrsh	r2, [r5, r4]
	ldrh	r1, [r5, #0x3a]
	ldrh	r0, [r5, #0x36]
	cmp	r3, r2
	bne	.Laa2e8
	mov	r0, r8
	cmp	r0, #0
	bne	.Laa3b0
	mov	r7, #7
	b	.Laa3b0
.Laa2e8:
	add	r3, r1, r6
	strh	r3, [r5, #0x3a]
	lsl	r3, #16
	asr	r3, #16
	cmp	r3, r2
	ble	.Laa300
	mov	r1, r8
	strh	r0, [r5, #0x3a]
	cmp	r1, #0
	bne	.Laa308
	mov	r7, #5
	b	.Laa308
.Laa300:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa308
	mov	r7, #6
.Laa308:
	mov	r0, r10
	bl	_UpdateStatBarPercent
	mov	r3, #1
	mov	r9, r3
	b	.Laa3b0
.Laa314:
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	bne	.Laa334
	ldrh	r3, [r5, #0x34]
	mov	r0, r10
	strh	r3, [r5, #0x38]
	bl	_UpdateStatBarPercent
	mov	r0, #1
	mov	r1, r8
	mov	r9, r0
	cmp	r1, #0
	bne	.Laa3b0
	mov	r7, #0xc
	b	.Laa3b0
.Laa334:
	mov	r2, r8
	cmp	r2, #0
	bne	.Laa3b0
	mov	r7, #0xd
	b	.Laa3b0
.Laa33e:
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	bne	.Laa380
	ldrh	r3, [r5, #0x34]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	mov	r0, r10
	strh	r2, [r5, #0x38]
	b	.Laa372
.Laa358:
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.Laa380
	mov	r4, #0x34
	ldrsh	r3, [r5, r4]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	strh	r0, [r5, #0x38]
	mov	r0, r10
.Laa372:
	bl	_UpdateStatBarPercent
	mov	r0, r8
	cmp	r0, #0
	bne	.Laa3b0
	mov	r7, #0xc
	b	.Laa3b0
.Laa380:
	mov	r1, r8
	cmp	r1, #0
	bne	.Laa3b0
	mov	r7, #0xd
	b	.Laa3b0
.Laa38a:
	ldr	r3, =0x131
	add	r2, r5, r3
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Laa3a8
	mov	r3, #0
	mov	r4, #1
	mov	r0, r8
	strb	r3, [r2]
	mov	r9, r4
	cmp	r0, #0
	bne	.Laa3b0
	mov	r7, #0xa
	b	.Laa3b0
.Laa3a8:
	mov	r1, r8
	cmp	r1, #0
	bne	.Laa3b0
	mov	r7, #0xb
.Laa3b0:
	mov	r2, r11
	ldrb	r3, [r2, #8]
	mov	r2, r3
	mov	r3, r2
	cmp	r3, #0xff
	bne	.Laa3d6
	ldr	r3, [sp]
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	ldr	r4, [sp, #4]
	ldr	r0, =0x219
	str	r3, [sp]
	add	r3, r4, r0
	ldrb	r3, [r3]
	ldr	r1, [sp]
	cmp	r1, r3
	bcs	.Laa3d6
	b	.La9f66
.Laa3d6:
	mov	r2, r9
	cmp	r2, #0
	bne	.Laa3ea
	ldr	r4, [sp, #4]
	ldr	r0, =0x25a
	add	r3, r4, r0
	mov	r0, #1
	strh	r7, [r3]
	neg	r0, r0
	b	.Laa42a
.Laa3ea:
	mov	r1, #0
	ldr	r2, [sp, #4]
	ldr	r4, =0x219
	str	r1, [sp]
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r1, r3
	bcs	.Laa420
	add	r5, r2, r4
.Laa3fc:
	ldr	r0, [sp]
	mov	r1, #0x82
	lsl	r3, r0, #1
	lsl	r1, #2
	ldr	r2, [sp, #4]
	add	r3, r1
	ldrh	r0, [r2, r3]
	bl	_CalcStats
	ldr	r3, [sp]
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	str	r3, [sp]
	ldr	r4, [sp]
	ldrb	r3, [r5]
	cmp	r4, r3
	bcc	.Laa3fc
.Laa420:
	ldr	r0, [sp, #4]
	ldr	r1, =0x25a
	add	r3, r0, r1
	strh	r7, [r3]
	mov	r0, #0
.Laa42a:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a9f10

