	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801f200  @ 0x0801f200
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e90
	ldr	r6, [r3]
	mov	r2, r3
	sub	r3, #4
	ldr	r3, [r3]
	sub	sp, #0x34
	sub	r2, #0x1c
	mov	r5, #0
	ldr	r1, =0xea5
	ldr	r7, [r2]
	mov	r11, r0
	ldr	r0, [r6]
	str	r3, [sp, #0x20]
	str	r5, [sp, #0x18]
	add	r3, r1
	ldrb	r3, [r3]
	mov	r8, r0
	cmp	r3, #0
	beq	.L1f288
	mov	r0, #0
	bl	_Func_80b6a60
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	mov	r10, r3
	str	r0, [sp, #0x1c]
	str	r2, [sp, #0x18]
	cmp	r10, r0
	bcs	.L1f2d8
	mov	r4, sp
	add	r4, #0x28
	str	r4, [sp, #0x10]
	mov	r3, #0x58
	ldrh	r3, [r7, r3]
	mov	r0, r4
	mov	r1, #0xff
	strh	r3, [r0]
	lsl	r1, #16
	lsl	r3, #16
	cmp	r3, r1
	beq	.L1f2d8
	mov	r2, r7
	ldr	r0, [sp, #0x10]
	add	r2, #0x58
	mov	r1, #0
.L1f26a:
	mov	r3, #1
	ldr	r4, [sp, #0x1c]
	add	r10, r3
	add	r1, #2
	cmp	r10, r4
	bcs	.L1f2d8
	add	r2, #2
	ldrh	r3, [r2]
	mov	r4, #0xff
	strh	r3, [r1, r0]
	lsl	r4, #16
	lsl	r3, #16
	cmp	r3, r4
	bne	.L1f26a
	b	.L1f2d8
.L1f288:
	bl	_GetPartySize
	str	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x1c]
	mov	r0, #0
	mov	r10, r0
	cmp	r10, r1
	bcs	.L1f2c8
	mov	r2, sp
	ldr	r3, =gState
	mov	r4, #0xfc
	add	r2, #0x28
	lsl	r4, #1
	str	r2, [sp, #0x10]
	mov	r1, r2
	add	r2, r3, r4
.L1f2a8:
	ldrb	r3, [r2]
	strh	r3, [r1]
	mov	r0, #1
	ldr	r3, [sp, #0x1c]
	add	r10, r0
	add	r2, #1
	add	r1, #2
	cmp	r10, r3
	bcc	.L1f2a8
	b	.L1f2ce

	.pool_aligned

.L1f2c8:
	mov	r4, sp
	add	r4, #0x28
	str	r4, [sp, #0x10]
.L1f2ce:
	mov	r0, r10
	ldr	r3, =0xff
	ldr	r1, [sp, #0x10]
	lsl	r2, r0, #1
	strh	r3, [r1, r2]
.L1f2d8:
	mov	r3, #1
	mov	r2, r10
	neg	r3, r3
	str	r2, [sp, #0x1c]
	cmp	r11, r3
	bne	.L1f2e8
	ldrh	r4, [r6, #0xc]
	mov	r11, r4
.L1f2e8:
	mov	r3, #1
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	bne	.L1f2fa
	mov	r3, #3
	neg	r3, r3
	and	r0, r3
	mov	r11, r0
.L1f2fa:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea5
	add	r3, r1, r2
	ldrb	r3, [r3]
	b	.L1f30c

	.pool_aligned

.L1f30c:
	cmp	r3, #0
	beq	.L1f31c
	mov	r0, #0
	mov	r1, #0
	bl	_Func_80be0b4
	cmp	r0, #0
	bne	.L1f326
.L1f31c:
	mov	r3, #3
	mov	r4, r11
	neg	r3, r3
	and	r4, r3
	mov	r11, r4
.L1f326:
	mov	r0, r11
	cmp	r0, #9
	bne	.L1f33a
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	bl	ClearUIRegion
	b	.L1f5a6
.L1f33a:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea6
	add	r3, r1, r2
	mov	r2, #1
	strb	r2, [r3]
	ldrh	r3, [r6, #0xc]
	cmp	r3, r11
	bne	.L1f35a
	mov	r0, r8
	bl	Func_8016498
	mov	r0, r8
	mov	r1, r11
	bl	Func_801ef68
	b	.L1f392
.L1f35a:
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	ldrh	r0, [r6, #4]
	bl	ClearUIRegion
	mov	r0, r11
	bl	Func_801eea0
	ldrh	r3, [r6, #8]
	mov	r4, r8
	strh	r3, [r4, #8]
	ldrh	r3, [r6, #0xa]
	mov	r0, r8
	strh	r3, [r0, #0xa]
	ldrh	r3, [r6, #4]
	mov	r1, r8
	strh	r3, [r1, #0xc]
	ldrh	r0, [r6, #4]
	ldrh	r1, [r6, #6]
	ldrh	r2, [r6, #8]
	ldrh	r3, [r6, #0xa]
	bl	FillUIRegion
	mov	r0, r8
	mov	r1, r11
	bl	Func_801ef68
.L1f392:
	mov	r3, #2
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L1f39e
	mov	r5, #5
.L1f39e:
	ldr	r4, [sp, #0x1c]
	mov	r3, #0
	mov	r10, r3
	cmp	r4, #0
	bne	.L1f3aa
	b	.L1f4ea
.L1f3aa:
	ldr	r1, [sp, #0x18]
	mov	r0, sp
	lsl	r1, #3
	add	r2, r5, #1
	add	r0, #0x28
	lsl	r5, #3
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r1, [sp, #0x14]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	mov	r9, r5
.L1f3c2:
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x10]
	ldrh	r0, [r3, r4]
	bl	_GetUnit
	mov	r5, r0
	mov	r0, #0x38
	ldrsh	r7, [r5, r0]
	mov	r1, #0x34
	ldrsh	r3, [r5, r1]
	cmp	r7, #0
	bne	.L1f3e2
	mov	r0, #2
	bl	SetTextColor
	b	.L1f3fc
.L1f3e2:
	cmp	r3, #0
	bge	.L1f3e8
	add	r3, #3
.L1f3e8:
	asr	r3, #2
	cmp	r7, r3
	bgt	.L1f3f6
	mov	r0, #4
	bl	SetTextColor
	b	.L1f3fc
.L1f3f6:
	mov	r0, #0xf
	bl	SetTextColor
.L1f3fc:
	ldr	r2, [sp, #0x20]
	ldr	r3, =0xea7
	add	r6, r2, r3
	mov	r3, #0xe
	strb	r3, [r6]
	ldr	r4, [sp, #0x20]
	ldr	r0, =0xea5
	add	r3, r4, r0
	ldrb	r3, [r3]
	mov	r2, #0
	cmp	r3, #0
	beq	.L1f418
	mov	r3, #5
	strb	r3, [r6]
.L1f418:
	ldr	r3, [sp, #0x14]
	str	r2, [sp]
	mov	r1, r8
	mov	r2, r9
	add	r3, #8
	mov	r0, r7
	bl	Func_801ea3c
	mov	r3, #0xf
	strb	r3, [r6]
	mov	r1, r8
	mov	r2, r9
	mov	r0, r5
	ldr	r3, [sp, #0x14]
	bl	Func_801e8b0
	mov	r0, #0xf
	bl	SetTextColor
	mov	r2, #0x34
	ldrsh	r1, [r5, r2]
	cmp	r1, #0
	beq	.L1f46c
	mov	r3, #0x38
	ldrsh	r6, [r5, r3]
	lsl	r0, r6, #2
	add	r0, r6
	lsl	r0, #3
	bl	__divsi3
	mov	r3, r0
	cmp	r3, #0
	bne	.L1f460
	cmp	r6, #0
	beq	.L1f460
	mov	r3, #1
.L1f460:
	ldr	r2, [sp, #0x18]
	mov	r0, r8
	ldr	r1, [sp, #8]
	add	r2, #2
	bl	Func_801f088
.L1f46c:
	mov	r1, #1
	mov	r3, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1f4ce
	ldr	r4, [sp, #0x20]
	ldr	r0, =0xea7
	mov	r3, #0xe
	add	r2, r4, r0
	strb	r3, [r2]
	sub	r0, #2
	add	r3, r4, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f48e
	mov	r3, #5
	strb	r3, [r2]
.L1f48e:
	ldr	r3, [sp, #0xc]
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	add	r3, #0x10
	str	r1, [sp]
	mov	r2, r9
	mov	r1, r8
	bl	Func_801ea3c
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	cmp	r1, #0
	beq	.L1f4ce
	mov	r4, #0x3a
	ldrsh	r6, [r5, r4]
	lsl	r0, r6, #2
	add	r0, r6
	lsl	r0, #3
	bl	__divsi3
	mov	r3, r0
	cmp	r3, #0
	bne	.L1f4c2
	cmp	r6, #0
	beq	.L1f4c2
	mov	r3, #1
.L1f4c2:
	ldr	r2, [sp, #0x18]
	mov	r0, r8
	ldr	r1, [sp, #8]
	add	r2, #3
	bl	Func_801f088
.L1f4ce:
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #4]
	mov	r3, #1
	ldr	r4, [sp, #0x1c]
	add	r0, #6
	mov	r1, #0x30
	add	r2, #2
	add	r10, r3
	str	r0, [sp, #8]
	add	r9, r1
	str	r2, [sp, #4]
	cmp	r10, r4
	beq	.L1f4ea
	b	.L1f3c2
.L1f4ea:
	ldr	r0, [sp, #0x20]
	ldr	r1, =0xea7
	mov	r3, #0
	add	r2, r0, r1
	mov	r10, r3
	ldr	r4, =0xea5
	mov	r3, #0xf
	strb	r3, [r2]
	add	r3, r0, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f59c
	mov	r3, #2
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	beq	.L1f59c
	mov	r3, #1
	and	r3, r0
	ldr	r7, [sp, #0x18]
	cmp	r3, #0
	beq	.L1f518
	add	r7, #1
.L1f518:
	add	r6, sp, #0x24
	mov	r1, r6
	mov	r0, #0
	bl	_Func_80be0b4
	mov	r2, r10
	str	r2, [sp]
	ldr	r1, =0x5001
	mov	r0, r8
	mov	r2, #0
	mov	r3, r7
	bl	Func_8019000
	mov	r3, r10
	str	r3, [sp]
	ldr	r1, =0x5002
	mov	r0, r8
	mov	r2, #2
	mov	r3, r7
	bl	Func_8019000
	add	r5, r7, #1
	mov	r4, r10
	ldr	r1, =0x5003
	mov	r0, r8
	mov	r2, #0
	mov	r3, r5
	str	r4, [sp]
	bl	Func_8019000
	mov	r0, r10
	str	r0, [sp]
	ldr	r1, =0x5004
	mov	r0, r8
	mov	r2, #2
	mov	r3, r5
	bl	Func_8019000
	ldrb	r1, [r6]
	mov	r2, #1
	add	r1, #0x30
	mov	r3, r7
	mov	r0, r8
	bl	Func_8018efc
	ldrb	r1, [r6, #1]
	mov	r2, #3
	add	r1, #0x30
	mov	r3, r7
	mov	r0, r8
	bl	Func_8018efc
	ldrb	r1, [r6, #2]
	mov	r2, #1
	add	r1, #0x30
	mov	r3, r5
	mov	r0, r8
	bl	Func_8018efc
	ldrb	r1, [r6, #3]
	mov	r0, r8
	add	r1, #0x30
	mov	r2, #3
	mov	r3, r5
	bl	Func_8018efc
.L1f59c:
	ldr	r1, [sp, #0x20]
	ldr	r3, =0xea6
	add	r2, r1, r3
	mov	r3, #0
	strb	r3, [r2]
.L1f5a6:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801f200

