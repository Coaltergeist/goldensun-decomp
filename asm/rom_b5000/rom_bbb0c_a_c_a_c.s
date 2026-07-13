	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80be0b4  @ 0x080be0b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r1, #0
	sub	sp, #0x14
	mov	r11, r1
	mov	r0, #1
	cmp	r5, #7
	bls	.Lbe0d4
	mov	r0, #2
.Lbe0d4:
	add	r2, sp, #4
	mov	r9, r2
	mov	r1, r9
	bl	Func_80b6c08
	mov	r7, r0
	mov	r0, #0
	cmp	r5, #7
	bls	.Lbe0e8
	mov	r0, #1
.Lbe0e8:
	bl	_Func_8077330
	add	r0, #8
	mov	r8, r0
	cmp	r6, #0
	beq	.Lbe102
	mov	r2, #0
	add	r3, r6, #3
	mov	r12, r6
.Lbe0fa:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.Lbe0fa
.Lbe102:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r3, #0
	add	r2, r8
	mov	r10, r3
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lbe176
	mov	r1, #0
	str	r2, [sp]
	mov	r12, r9
	mov	r5, r8
	mov	r14, r1
.Lbe11c:
	mov	r2, #1
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	neg	r2, r2
	cmp	r3, r2
	bne	.Lbe164
	mov	r4, #0
	cmp	r4, r7
	bge	.Lbe14c
	mov	r3, r12
	ldrh	r2, [r3]
	ldrb	r3, [r5, #2]
	cmp	r2, r3
	beq	.Lbe14c
	mov	r1, r5
	mov	r0, r9
.Lbe13c:
	add	r4, #1
	cmp	r4, r7
	bge	.Lbe14c
	add	r0, #2
	ldrh	r2, [r0]
	ldrb	r3, [r1, #2]
	cmp	r2, r3
	bne	.Lbe13c
.Lbe14c:
	cmp	r4, r7
	beq	.Lbe164
	cmp	r6, #0
	beq	.Lbe160
	mov	r3, r8
	mov	r1, r14
	ldrb	r2, [r1, r3]
	ldrb	r3, [r6, r2]
	add	r3, #1
	strb	r3, [r6, r2]
.Lbe160:
	mov	r1, #1
	add	r11, r1
.Lbe164:
	ldr	r1, [sp]
	mov	r3, #1
	add	r10, r3
	ldr	r3, [r1]
	mov	r2, #4
	add	r5, #4
	add	r14, r2
	cmp	r10, r3
	bne	.Lbe11c
.Lbe176:
	mov	r0, r11
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80be0b4

.thumb_func_start Func_80be18c  @ 0x080be18c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	add	r3, sp, #0x18
	mov	r1, r9
	str	r1, [r3]
	mov	r10, r1
	bl	_GetMoveInfo
	mov	r3, #0
	ldrb	r2, [r0]
	str	r3, [sp, #0x14]
	ldrb	r3, [r0, #3]
	cmp	r3, #5
	beq	.Lbe1c0
	cmp	r3, #5
	blt	.Lbe1c4
	cmp	r3, #0x39
	bgt	.Lbe1c4
	cmp	r3, #0x38
	blt	.Lbe1c4
.Lbe1c0:
	mov	r0, #1
	str	r0, [sp, #0x14]
.Lbe1c4:
	cmp	r2, #0
	beq	.Lbe1dc
	cmp	r2, #4
	beq	.Lbe1f4
	mov	r2, #0xc
	neg	r2, r2
	mov	r1, #0
	add	r2, r10
	mov	r9, r1
	mov	r6, #0
	mov	r11, r2
	b	.Lbe210
.Lbe1dc:
	mov	r3, r10
	sub	r3, #4
	ldr	r3, [r3]
	mov	r1, #1
	strb	r2, [r3, #0x10]
	strb	r1, [r3, #1]
	mov	r2, r10
	sub	r2, #8
	ldr	r2, [r2]
	strb	r1, [r3, #0x1e]
	strb	r2, [r3, #2]
	b	.Lbe35c
.Lbe1f4:
	mov	r3, r10
	sub	r3, #4
	ldr	r2, [r3]
	mov	r1, #1
	mov	r3, #0
	strb	r3, [r2, #0x10]
	strb	r1, [r2, #1]
	mov	r3, r10
	sub	r3, #8
	ldr	r3, [r3]
	strb	r1, [r2, #0x1e]
	strb	r3, [r2, #2]
	b	.Lbe35c
.Lbe20e:
	add	r6, #1
.Lbe210:
	mov	r3, r11
	ldr	r1, [r3]
	lsl	r3, r6, #1
	add	r3, #0x58
	ldrsh	r3, [r1, r3]
	cmp	r3, #0xff
	bne	.Lbe20e
	str	r6, [sp, #0x10]
	mov	r3, #0x64
	add	r2, r1, #2
	ldrsh	r3, [r2, r3]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.Lbe23a
	add	r2, #0x64
.Lbe22e:
	add	r2, #2
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	add	r6, #1
	cmp	r3, #0xff
	bne	.Lbe22e
.Lbe23a:
	mov	r2, r10
	sub	r2, #0x10
	str	r6, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r2, [r2]
	ldrh	r3, [r2, #0xa]
	mov	r4, #0xf
	and	r4, r3
	mov	r0, #0xc
	ldrsh	r3, [r2, r0]
	sub	r2, r4, r3
	add	r3, r4, r3
	sub	r3, #1
	add	r6, r2, #1
	str	r3, [sp, #4]
	cmp	r6, r3
	bgt	.Lbe318
	mov	r1, #4
	neg	r1, r1
	lsl	r3, r6, #1
	add	r1, r10
	mov	r7, r3
	mov	r8, r1
	add	r7, #0x64
.Lbe26a:
	cmp	r6, #0
	blt	.Lbe30c
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	ldrh	r2, [r3, #0xa]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe2c4
	ldr	r3, [sp, #0xc]
	cmp	r6, r3
	bge	.Lbe30c
	mov	r0, r11
	ldr	r3, [r0]
	add	r3, #2
	ldrsh	r5, [r3, r7]
	cmp	r5, #0xfe
	beq	.Lbe30c
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.Lbe2a6
	mov	r0, r5
	str	r4, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbe30c
.Lbe2a6:
	mov	r2, r8
	ldr	r0, [r2]
	mov	r2, r9
	add	r1, r0, #2
	add	r2, #0x1c
	mov	r3, #1
	strb	r3, [r1, r2]
	sub	r3, r6, r4
	sub	r2, #0xc
	strb	r3, [r0, r2]
	mov	r3, r9
	mov	r0, #1
	strb	r5, [r1, r3]
	add	r9, r0
	b	.Lbe30c
.Lbe2c4:
	ldr	r1, [sp, #0x10]
	cmp	r6, r1
	bge	.Lbe30c
	mov	r3, r11
	ldr	r2, [r3]
	lsl	r3, r6, #1
	add	r3, #0x58
	ldrsh	r5, [r2, r3]
	cmp	r5, #0xfe
	beq	.Lbe30c
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	bne	.Lbe2f0
	mov	r0, r5
	str	r4, [sp]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbe30c
.Lbe2f0:
	mov	r3, r8
	ldr	r0, [r3]
	mov	r2, r9
	add	r1, r0, #2
	add	r2, #0x1c
	mov	r3, #1
	strb	r3, [r1, r2]
	sub	r2, #0xc
	sub	r3, r6, r4
	strb	r3, [r0, r2]
	mov	r0, r9
	strb	r5, [r1, r0]
	mov	r1, #1
	add	r9, r1
.Lbe30c:
	ldr	r2, [sp, #4]
	add	r6, #1
	add	r7, #2
	cmp	r6, r2
	ble	.Lbe26a
	b	.Lbe320
.Lbe318:
	mov	r3, #4
	neg	r3, r3
	add	r3, r10
	mov	r8, r3
.Lbe320:
	mov	r0, r8
	ldr	r3, [r0]
	mov	r1, r9
	mov	r2, r9
	strb	r1, [r3, #1]
	cmp	r2, #0
	bgt	.Lbe35c
	ldr	r0, [sp, #8]
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x816
	bl	_Func_80175a0
	mov	r3, r10
	sub	r3, #0x14
	ldr	r3, [r3]
	ldr	r0, =0x12b
	add	r2, r3, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Lbe358
	mov	r3, #1
	strb	r3, [r2]
.Lbe358:
	mov	r0, #1
	neg	r0, r0
.Lbe35c:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80be18c

.thumb_func_start Func_80be378  @ 0x080be378
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r3, sp
	add	r2, sp, #0x20
	add	r3, #0x2c
	str	r0, [r2]
	str	r3, [sp, #8]
	str	r1, [r3]
	ldr	r3, [r2]
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	mov	r10, r2
	bl	_GetUnit
	mov	r1, sp
	add	r1, #0x1c
	str	r1, [sp, #0xc]
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r7, sp, #0x24
	mov	r2, r10
	str	r3, [r7]
	ldr	r3, [r2]
	str	r0, [r1]
	mov	r4, #0xa
	ldrsh	r0, [r3, r4]
	bl	Func_80b9a44
	str	r0, [sp, #0x28]
	bl	Func_80bdfec
	mov	r4, r10
	ldr	r0, [sp, #8]
	ldr	r3, [r4]
	ldr	r1, [r0]
	ldrh	r3, [r3]
	mov	r2, #0
	mov	r5, #4
	strb	r3, [r1]
	str	r2, [r1, #0x60]
	strb	r2, [r1, #1]
	str	r2, [r1, #0x58]
	str	r2, [r1, #0x5c]
	str	r5, [r1, #0x50]
	bl	_Func_80198dc
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0]
	mov	r1, #0x38
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lbe3f0
	bl	.Lbec5c
.Lbe3f0:
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe46a
	ldr	r0, =0x16d
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lbe46a
	ldr	r1, =gKeyHeld
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe46a
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r5
	mov	r8, r2
	cmp	r3, #0
	beq	.Lbe420
	mov	r3, #0
	mov	r8, r3
.Lbe420:
	mov	r6, #0x64
	b	.Lbe448
.Lbe424:
	cmp	r5, #0xfe
	beq	.Lbe446
	mov	r1, #0xc0
	mov	r0, r5
	lsl	r1, #24
	bl	_ModifyHP
	cmp	r0, #0
	bne	.Lbe446
	mov	r1, r5
	mov	r0, #8
	bl	Func_80bbabc
	mov	r0, #9
	mov	r1, r5
	bl	Func_80bbabc
.Lbe446:
	add	r6, #2
.Lbe448:
	mov	r4, r8
	cmp	r4, #0
	beq	.Lbe456
	ldr	r3, [r7]
	add	r3, #2
	ldrsh	r5, [r3, r6]
	b	.Lbe45e
.Lbe456:
	ldr	r2, [r7]
	mov	r3, r6
	sub	r3, #0xc
	ldrsh	r5, [r2, r3]
.Lbe45e:
	cmp	r5, #0xff
	bne	.Lbe424
	bl	Func_80bb938
	bl	.Lbec5c
.Lbe46a:
	bl	_Func_80198dc
	ldr	r3, [sp, #0xc]
	ldr	r4, =0x145
	ldr	r2, [r3]
	add	r1, r2, r4
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.Lbe498
	mov	r3, #0
	mov	r0, r10
	strb	r3, [r1]
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x880
	bl	_Func_80175a0
	bl	.Lbec8a
.Lbe498:
	mov	r4, #0x9e
	lsl	r4, #1
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe4bc
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x858
	bl	_Func_80175a0
	bl	.Lbec8a
.Lbe4bc:
	ldr	r4, =0x13b
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe4dc
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x857
	bl	_Func_80175a0
	b	.Lbec8a
.Lbe4dc:
	mov	r4, #0x98
	lsl	r4, #1
	add	r3, r2, r4
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe51a
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	beq	.Lbe51a
	bl	_RPGRandom
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lbe51a
	mov	r2, r10
	ldr	r3, [r2]
	mov	r1, #1
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_8019908
	ldr	r0, =0x859
	bl	_Func_80175a0
	b	.Lbec8a
.Lbe51a:
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #6
	ldrsh	r3, [r3, r1]
	cmp	r3, #8
	bne	.Lbe528
	b	.Lbec5c
.Lbe528:
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	mov	r2, #1
	mov	r11, r2
	mov	r1, #0
	add	r3, #0x2c
	mov	r2, #0xd
.Lbe536:
	sub	r2, #1
	strb	r1, [r3]
	add	r3, #1
	cmp	r2, #0
	bge	.Lbe536
	ldr	r0, [sp, #8]
	mov	r2, #1
	ldr	r3, [r0]
	neg	r2, r2
	mov	r1, r2
	add	r3, #0x3a
	mov	r2, #0xd
.Lbe54e:
	sub	r2, #1
	strb	r1, [r3]
	add	r3, #1
	cmp	r2, #0
	bge	.Lbe54e
	mov	r4, r10
	ldr	r3, [r4]
	mov	r0, #6
	ldrsh	r3, [r3, r0]
	cmp	r3, #0x63
	bls	.Lbe568
	bl	.Lbee00
.Lbe568:
	ldr	r2, =.Lbe570
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbe570:
	.word	.Lbe76c
	.word	.Lbe7d0
	.word	.Lbe888
	.word	.Lbe96e
	.word	.Lbe984
	.word	.Lbeb08
	.word	.Lbecea
	.word	.Lbe96e
	.word	.Lbec5c
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbee00
	.word	.Lbe700
.Lbe700:
	mov	r1, r10
	ldr	r3, [r1]
	ldrh	r3, [r3]
	mov	r2, #0xe0
	lsl	r0, r3, #16
	lsl	r2, #11
	cmp	r0, r2
	bhi	.Lbe718
	ldr	r0, =0x843
	bl	_Func_80175a0
	b	.Lbe726
.Lbe718:
	asr	r0, #16
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x846
	bl	_Func_80175a0
.Lbe726:
	bl	WaitTextPrompt
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	mov	r3, #7
	str	r3, [r2, #0x54]
	bl	.Lbf1d4

	.pool_aligned

.Lbe76c:
	ldr	r4, [sp, #0xc]
	ldr	r0, [r4]
	bl	_Func_8079d1c
	mov	r11, r0
	add	r0, sp, #0x30
	mov	r9, r0
	mov	r0, r11
	bl	Func_80be18c
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbe78c
	bl	.Lbf1d6
.Lbe78c:
	mov	r2, r11
	cmp	r2, #1
	bne	.Lbe794
	b	.Lbee08
.Lbe794:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r2, [sp, #0xc]
	mov	r1, #1
	ldr	r0, [r2]
	bl	_Func_8078870
	mov	r1, #2
	bl	_Func_8019908
	ldr	r5, =0x819
	mov	r0, r5
	bl	_Func_80175a0
	add	r5, #1
	bl	Func_80bb8d8
	mov	r0, r11
	mov	r1, #4
	bl	_Func_8019908
	mov	r0, r5
.Lbe7ca:
	bl	_Func_80175a0
	b	.Lbee00
.Lbe7d0:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #8
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	bl	_GetMoveInfo
	add	r2, sp, #0x30
	mov	r6, r0
	mov	r9, r2
	mov	r0, r11
	bl	Func_80be18c
	mov	r3, #1
	neg	r3, r3
	mov	r5, #1
	cmp	r0, r3
	bne	.Lbe7f8
	bl	.Lbf1d6
.Lbe7f8:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	mov	r1, #4
	mov	r0, r11
	bl	_Func_8019908
	ldr	r0, =0x83e
	bl	_Func_80175a0
	ldr	r2, [sp, #0xc]
	ldr	r1, [r2]
	mov	r3, #0x3a
	ldrsh	r2, [r1, r3]
	ldrb	r3, [r6, #9]
	cmp	r2, r3
	bge	.Lbe82c
	ldr	r4, [sp, #8]
	ldr	r2, [r4]
	mov	r3, #2
	str	r3, [r2, #0x5c]
	mov	r5, #0
.Lbe82c:
	ldr	r0, =0x13d
	add	r3, r1, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbe840
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	mov	r3, #1
	str	r3, [r2, #0x5c]
	mov	r5, #0
.Lbe840:
	cmp	r5, #0
	bne	.Lbe846
	b	.Lbee00
.Lbe846:
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	mov	r5, #0
	str	r5, [r3, #0x5c]
	ldr	r3, [sp, #0xc]
	ldr	r1, [r3]
	ldrb	r2, [r6, #9]
	ldrh	r3, [r1, #0x3a]
	mov	r4, r10
	sub	r3, r2
	strh	r3, [r1, #0x3a]
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_UpdateStatBarPercent
	ldr	r2, [sp, #0xc]
	ldr	r1, [r2]
	mov	r4, #0x3a
	ldrsh	r3, [r1, r4]
	cmp	r3, #0
	bge	.Lbe874
	strh	r5, [r1, #0x3a]
.Lbe874:
	mov	r0, #0x3a
	ldrsh	r2, [r1, r0]
	mov	r4, #0x36
	ldrsh	r3, [r1, r4]
	ldrh	r0, [r1, #0x36]
	cmp	r2, r3
	bgt	.Lbe884
	b	.Lbee00
.Lbe884:
	strh	r0, [r1, #0x3a]
	b	.Lbee00
.Lbe888:
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #8
	ldrsh	r2, [r3, r1]
	cmp	r2, #0
	bge	.Lbe8a6
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x81b
	bl	_Func_80175a0
	b	.Lbec8a
.Lbe8a6:
	ldr	r4, [sp, #0xc]
	lsl	r2, #1
	ldr	r3, [r4]
	add	r2, #0xd8
	ldrh	r0, [r3, r2]
	bl	_GetItemInfo
	mov	r5, r0
	ldrh	r0, [r5, #0x28]
	mov	r11, r0
	cmp	r0, #0
	beq	.Lbe8dc
	ldr	r1, [sp, #0xc]
	mov	r3, r10
	ldr	r2, [r1]
	ldr	r1, [r3]
	mov	r4, #8
	ldrsh	r3, [r1, r4]
	lsl	r3, #1
	add	r3, #0xd8
	ldrh	r2, [r2, r3]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe908
	b	.Lbe8e0
.Lbe8dc:
	mov	r0, r10
	ldr	r1, [r0]
.Lbe8e0:
	mov	r2, #0
	ldrsh	r0, [r1, r2]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x816
	bl	_Func_80175a0
	ldr	r4, [sp, #0xc]
	ldr	r0, =0x12b
	ldr	r3, [r4]
	add	r2, r3, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lbe902
	b	.Lbec8a
.Lbe902:
	mov	r3, #1
	strb	r3, [r2]
	b	.Lbec8a
.Lbe908:
	add	r1, sp, #0x30
	mov	r9, r1
	mov	r0, r11
	bl	Func_80be18c
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lbe91e
	bl	.Lbf1d6
.Lbe91e:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r3, [sp, #0xc]
	mov	r4, r10
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r0, #8
	ldrsh	r3, [r3, r0]
	lsl	r3, #1
	add	r3, #0xd8
	ldrh	r0, [r2, r3]
	mov	r1, #2
	bl	_Func_8019908
	ldrb	r3, [r5, #0xc]
	cmp	r3, #2
	beq	.Lbe94e
	cmp	r3, #0
	bne	.Lbe96a
.Lbe94e:
	ldrb	r0, [r5, #2]
	cmp	r0, #3
	beq	.Lbe966
	cmp	r0, #3
	bgt	.Lbe95e
	cmp	r0, #1
	beq	.Lbe966
	b	.Lbe96a
.Lbe95e:
	cmp	r0, #8
	bgt	.Lbe96a
	cmp	r0, #6
	blt	.Lbe96a
.Lbe966:
	ldr	r0, =0x818
	b	.Lbe7ca
.Lbe96a:
	ldr	r0, =0x817
	b	.Lbe7ca
.Lbe96e:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r1, #1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_8019908
	ldr	r0, =0x816
	bl	_Func_80175a0
	b	.Lbec8a
.Lbe984:
	mov	r4, r10
	ldr	r3, [r4]
	add	r2, sp, #0x30
	mov	r1, #8
	ldrsh	r0, [r3, r1]
	mov	r9, r2
	mov	r11, r0
	bl	Func_80be18c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbe9a2
	bl	.Lbf1d6
.Lbe9a2:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #4
	bl	_Func_8019908
	mov	r0, r11
	bl	_GetMoveInfo
	ldrb	r2, [r0, #1]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #6
	bne	.Lbe9cc
	ldr	r0, =0x8f1
	b	.Lbe9ce
.Lbe9cc:
	ldr	r0, =0x8f0
.Lbe9ce:
	mov	r3, #0xf4
	lsl	r3, #1
	cmp	r11, r3
	beq	.Lbea84
	cmp	r11, r3
	bgt	.Lbea12
	ldr	r2, =0x1b9
	cmp	r11, r2
	bgt	.Lbea00
	sub	r3, #0x34
	cmp	r11, r3
	bgt	.Lbea78
	mov	r4, r11
	cmp	r4, #0xe0
	beq	.Lbea64
	cmp	r4, #0xe0
	bge	.Lbe9f2
	b	.Lbe7ca
.Lbe9f2:
	mov	r1, #0xd9
	lsl	r1, #1
	cmp	r11, r1
	bgt	.Lbe9fc
	b	.Lbe7ca
.Lbe9fc:
	ldr	r0, =0x8f2
	b	.Lbe7ca
.Lbea00:
	mov	r2, #0xde
	lsl	r2, #1
	cmp	r11, r2
	ble	.Lbea7c
	mov	r3, #0xec
	lsl	r3, #1
	cmp	r11, r3
	beq	.Lbea80
	b	.Lbe7ca
.Lbea12:
	mov	r3, #0xfa
	lsl	r3, #1
	cmp	r11, r3
	beq	.Lbea68
	cmp	r11, r3
	bgt	.Lbea40
	sub	r3, #6
	cmp	r11, r3
	beq	.Lbea74
	cmp	r11, r3
	bgt	.Lbea32
	mov	r4, #0xf6
	lsl	r4, #1
	cmp	r11, r4
	beq	.Lbea88
	b	.Lbe7ca
.Lbea32:
	ldr	r1, =0x1ef
	cmp	r11, r1
	beq	.Lbea8c
	ldr	r2, =0x1f3
	cmp	r11, r2
	beq	.Lbea70
	b	.Lbe7ca
.Lbea40:
	ldr	r3, =0x1f7
	cmp	r11, r3
	beq	.Lbea90
	cmp	r11, r3
	bgt	.Lbea52
	sub	r3, #2
	cmp	r11, r3
	beq	.Lbea6c
	b	.Lbe7ca
.Lbea52:
	mov	r4, #0xfc
	lsl	r4, #1
	cmp	r11, r4
	beq	.Lbea94
	mov	r1, #0xfe
	lsl	r1, #1
	cmp	r11, r1
	beq	.Lbea98
	b	.Lbe7ca
.Lbea64:
	ldr	r0, =0x83e
	b	.Lbe7ca
.Lbea68:
	ldr	r0, =0x8f7
	b	.Lbe7ca
.Lbea6c:
	ldr	r0, =0x8f8
	b	.Lbe7ca
.Lbea70:
	ldr	r0, =0x8f9
	b	.Lbe7ca
.Lbea74:
	ldr	r0, =0x8fa
	b	.Lbe7ca
.Lbea78:
	ldr	r0, =0x8fb
	b	.Lbe7ca
.Lbea7c:
	ldr	r0, =0x8f0
	b	.Lbe7ca
.Lbea80:
	ldr	r0, =0x8fc
	b	.Lbe7ca
.Lbea84:
	ldr	r0, =0x8fd
	b	.Lbe7ca
.Lbea88:
	ldr	r0, =0x8ff
	b	.Lbe7ca
.Lbea8c:
	ldr	r0, =0x8fe
	b	.Lbe7ca
.Lbea90:
	ldr	r0, =0x900
	b	.Lbe7ca
.Lbea94:
	ldr	r0, =0x901
	b	.Lbe7ca
.Lbea98:
	ldr	r0, =0x902
	b	.Lbe7ca

	.pool_aligned

.Lbeb08:
	mov	r2, r10
	ldr	r3, [r2]
	ldrh	r3, [r3, #8]
	ldr	r6, =0xf
	lsl	r0, r3, #16
	mov	r5, #0xff
	asr	r0, #24
	mov	r1, r5
	and	r1, r3
	and	r0, r6
	bl	_Func_807a5b0
	mov	r4, r10
	ldr	r3, [r4]
	mov	r11, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r1, r6
	and	r2, r3
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Lbeb40
	b	.Lbec90
.Lbeb40:
	b	.Lbeb48

	.pool_aligned

.Lbeb48:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r1, r6
	and	r2, r3
	bl	_Func_807a1f8
	cmp	r0, #0
	bne	.Lbeb66
	b	.Lbec62
.Lbeb66:
	mov	r0, r11
	bl	_GetMoveInfo
	mov	r1, #0
	mov	r0, #0
	bl	Func_80c10e8
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r2, r3
	and	r1, r6
	bl	_SetDjinni
	mov	r2, r10
	ldr	r3, [r2]
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	asr	r1, #24
	mov	r2, r5
	and	r1, r6
	and	r2, r3
	bl	_Func_807a3a8
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_CalcStats
	bl	Func_80bdfec
	mov	r0, #0x1e
	bl	Func_80bd808
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, #0
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	bl	Func_80bbabc
	mov	r0, r10
	ldr	r3, [r0]
	ldrh	r2, [r3, #8]
	lsl	r3, r2, #16
	asr	r3, #24
	and	r3, r6
	lsl	r1, r3, #2
	add	r1, r3
	mov	r3, r5
	and	r3, r2
	lsl	r1, #2
	mov	r2, #0x96
	lsl	r2, #1
	add	r1, r3
	add	r1, r2
	mov	r0, #3
	bl	Func_80bbabc
	mov	r1, #0xaf
	mov	r0, #0xe
	bl	Func_80bbabc
	mov	r1, #0
	mov	r0, #0xa
	bl	Func_80bbabc
	ldr	r1, =0x897
	mov	r0, #4
	bl	Func_80bbabc
	mov	r4, r10
	ldr	r3, [r4]
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r0, #0xb
	bl	Func_80bbabc
	mov	r0, #0xd4
	bl	_PlaySound
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	GetBattleActor
	mov	r1, #3
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	GetBattleActor
	mov	r1, #0x20
	ldr	r0, [r0]
	bl	_Actor_SetAnimSpeed
	mov	r2, r10
	ldr	r3, [r2]
	ldrh	r1, [r3, #8]
	lsl	r1, #16
	asr	r1, #24
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	and	r1, r6
	mov	r2, #3
	mov	r3, #0
	bl	Anim_MoveIntro
	bl	Func_80be02c
.Lbec5c:
	mov	r0, #2
	neg	r0, r0
	b	.Lbf1d6
.Lbec62:
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	mov	r1, #4
	mov	r0, r11
	bl	_Func_8019908
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r0, =0x85b
	bl	_Func_80175a0
	mov	r0, #0x3c
	bl	WaitFrames
.Lbec8a:
	mov	r0, #1
	neg	r0, r0
	b	.Lbf1d6
.Lbec90:
	add	r2, sp, #0x30
	mov	r9, r2
	mov	r0, r11
	bl	Func_80be18c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbeca4
	b	.Lbf1d6
.Lbeca4:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldrh	r3, [r3, #8]
	lsl	r1, r3, #16
	mov	r2, r5
	asr	r1, #24
	and	r2, r3
	and	r1, r6
	bl	_Func_807a458
	mov	r0, r11
	bl	_GetMoveInfo
	mov	r2, r10
	ldr	r3, [r2]
	mov	r5, r0
	mov	r1, #1
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x83f
	bl	_Func_80175a0
	ldr	r0, [sp, #8]
	ldrb	r3, [r5, #2]
	ldr	r2, [r0]
	str	r3, [r2, #0x50]
	b	.Lbee00
.Lbecea:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #8
	ldrsh	r0, [r3, r2]
	bl	_GetSummonInfo
	mov	r4, r10
	mov	r2, #0x18
	ldr	r3, [r4]
	add	r2, sp
	mov	r8, r2
	mov	r9, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, r8
	bl	Func_80be0b4
	mov	r4, r10
	ldr	r3, [r4]
	ldrh	r3, [r3]
	mov	r0, #0
	cmp	r3, #7
	bls	.Lbed1a
	mov	r0, #1
.Lbed1a:
	bl	_Func_8077330
	add	r0, #8
	str	r0, [sp, #4]
	mov	r1, r9
	add	r1, #4
	mov	r0, r8
	ldrb	r2, [r0]
	ldrb	r3, [r1]
	mov	r7, #0
	cmp	r2, r3
	bcc	.Lbed56
	mov	r5, #4
	mov	r6, r8
	mov	r4, #4
.Lbed38:
	mov	r2, r9
	ldrb	r3, [r2, r5]
	add	r7, #1
	strb	r3, [r0]
	add	r4, #1
	add	r0, #1
	cmp	r7, #3
	bgt	.Lbed56
	add	r6, #1
	add	r1, #1
	ldrb	r2, [r6]
	ldrb	r3, [r1]
	mov	r5, r4
	cmp	r2, r3
	bcs	.Lbed38
.Lbed56:
	mov	r3, r9
	ldrh	r3, [r3]
	add	r4, sp, #0x30
	mov	r11, r3
	mov	r9, r4
	mov	r0, r11
	bl	Func_80be18c
	mov	r5, #1
	neg	r5, r5
	cmp	r0, r5
	bne	.Lbed70
	b	.Lbf1d6
.Lbed70:
	cmp	r7, #4
	beq	.Lbed94
	mov	r0, r10
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x842
	bl	_Func_80175a0
	mov	r0, r5
	b	.Lbf1d6
.Lbed94:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r1, #1
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	bl	_Func_8019908
	mov	r1, #4
	mov	r0, r11
	bl	_Func_8019908
	ldr	r0, =0x841
	bl	_Func_80175a0
	mov	r1, #0x80
	ldr	r0, [sp, #4]
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lbee00
	mov	r9, r5
	mov	r5, r0
.Lbedc4:
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r9
	bne	.Lbedee
	ldrb	r0, [r5, #2]
	bl	Func_80be070
	cmp	r0, #0
	beq	.Lbedee
	ldrb	r1, [r5]
	mov	r3, r8
	ldrb	r2, [r3, r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbedee
	mov	r3, #0xfe
	strb	r3, [r5, #3]
	mov	r3, r2
	add	r3, #0xff
	mov	r4, r8
	strb	r3, [r4, r1]
.Lbedee:
	ldr	r0, [sp, #4]
	mov	r1, #0x80
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	add	r7, #1
	add	r5, #4
	cmp	r7, r3
	bne	.Lbedc4
.Lbee00:
	mov	r2, r11
	cmp	r2, #1
	beq	.Lbee08
	b	.Lbefb4
.Lbee08:
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	ldrb	r0, [r3, #2]
	bl	_GetUnit
	mov	r6, r0
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r1, r10
	mov	r3, #1
	str	r3, [r2, #0x4c]
	ldr	r3, [r1]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_8079c8c
	ldr	r3, [sp, #8]
	ldr	r1, [r3]
	mov	r3, #2
	str	r0, [r1, #0x50]
	str	r3, [r1, #0x54]
	ldr	r4, [sp, #0xc]
	ldr	r0, =0x129
	ldr	r2, [r4]
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbee58
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	Func_80c23e8
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	orr	r3, r0
	b	.Lbeea6
.Lbee58:
	mov	r3, #0
	mov	r4, #0x94
	str	r3, [r1, #0x58]
	lsl	r4, #1
	add	r3, r2, r4
	ldrb	r3, [r3]
	cmp	r3, #5
	bhi	.Lbeea8
	ldr	r2, =.Lbee70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbee70:
	.word	.Lbeea0
	.word	.Lbee88
	.word	.Lbee90
	.word	.Lbee98
	.word	.Lbeea8
	.word	.Lbeea0
.Lbee88:
	ldr	r1, [sp, #8]
	ldr	r3, =0x4001
	ldr	r2, [r1]
	b	.Lbeea6
.Lbee90:
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	ldr	r3, =0x4004
	b	.Lbeea6
.Lbee98:
	ldr	r4, [sp, #8]
	ldr	r3, =0x4004
	ldr	r2, [r4]
	b	.Lbeea6
.Lbeea0:
	ldr	r0, [sp, #8]
	ldr	r3, =0x4001
	ldr	r2, [r0]
.Lbeea6:
	str	r3, [r2, #0x58]
.Lbeea8:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r1, #1
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_Func_8019908
	ldr	r0, =0x814
	bl	_Func_80175a0
	b	.Lbeef4
.Lbeebe:
	ldr	r4, [sp, #0xc]
	mov	r0, #0x9c
	ldr	r3, [r4]
	lsl	r0, #1
	add	r3, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbeee0
	bl	_RPGRandom
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, #0x98
	bgt	.Lbeee0
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	strb	r5, [r3, #0x1e]
.Lbeee0:
	bl	_RPGRandom
	mov	r3, #0x1f
	and	r0, r3
	cmp	r0, #0
	bne	.Lbef28
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	strb	r0, [r3, #0x1e]
	b	.Lbef28
.Lbeef4:
	mov	r4, #0x38
	ldrsh	r3, [r6, r4]
	cmp	r3, #0
	beq	.Lbef28
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbef28
	ldr	r1, =0x13b
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbef28
	ldr	r2, =0x145
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbef28
	mov	r4, #0x9d
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r5, [r3]
	cmp	r5, #0
	beq	.Lbeebe
.Lbef28:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lbef3c
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r3, #0
	strb	r3, [r2, #0x1e]
.Lbef3c:
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	cmp	r3, #0
	bne	.Lbef46
	b	.Lbf1a8
.Lbef46:
	bl	_RPGRandom
	mov	r3, #0x1f
	and	r0, r3
	cmp	r0, #0
	bne	.Lbef88
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	b	.Lbefac

	.pool_aligned

.Lbef88:
	ldr	r3, [sp, #0xc]
	ldr	r0, [r3]
	bl	_CheckEquipmentCritBoost
	mov	r1, #0xc8
	lsl	r0, #16
	bl	__divsi3
	mov	r5, r0
	bl	_RPGRandom
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	bgt	.Lbefa8
	b	.Lbf1a8
.Lbefa8:
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
.Lbefac:
	mov	r2, #1
	add	r3, #0x2c
	strb	r2, [r3]
	b	.Lbf1a8
.Lbefb4:
	mov	r0, r11
	bl	_GetMoveInfo
	mov	r7, r0
	ldr	r0, [sp, #8]
	ldrb	r2, [r7, #2]
	ldr	r3, [r0]
	mov	r1, r11
	str	r2, [r3, #0x50]
	mov	r2, #0
	str	r2, [r3, #0x58]
	str	r1, [r3, #0x4c]
	ldrb	r3, [r7, #3]
	mov	r2, r3
	cmp	r2, #0x41
	beq	.Lbeff2
	cmp	r2, #0x29
	beq	.Lbefe8
	cmp	r2, #0x2a
	beq	.Lbefe8
	cmp	r2, #0x2b
	beq	.Lbefe8
	cmp	r2, #0x2c
	beq	.Lbefe8
	cmp	r2, #0x44
	bne	.Lbf044
.Lbefe8:
	mov	r2, r3
	cmp	r2, #0x41
	beq	.Lbeff2
	cmp	r2, #0x44
	bne	.Lbeff6
.Lbeff2:
	mov	r5, #0x99
	b	.Lbf002
.Lbeff6:
	cmp	r2, #0x29
	beq	.Lbf000
	mov	r5, #0x40
	cmp	r2, #0x2b
	bne	.Lbf002
.Lbf000:
	mov	r5, #0x20
.Lbf002:
	cmp	r3, #0x41
	beq	.Lbf010
	cmp	r3, #0x29
	beq	.Lbf010
	mov	r6, #2
	cmp	r3, #0x2a
	bne	.Lbf012
.Lbf010:
	mov	r6, #1
.Lbf012:
	bl	_RPGRandom
	mov	r3, #0xff
	and	r0, r3
	cmp	r0, r5
	bge	.Lbf0f8
	ldr	r3, [sp, #8]
	ldr	r2, [r3]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	mov	r0, #0
	cmp	r0, r3
	bge	.Lbf0f8
	mov	r1, r2
	add	r2, #0x1e
.Lbf030:
	ldrb	r3, [r2]
	add	r3, r6
	strb	r3, [r2]
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	add	r0, #1
	add	r2, #1
	cmp	r0, r3
	blt	.Lbf030
	b	.Lbf0f8
.Lbf044:
	add	r3, #0xdc
	mov	r4, #0x80
	lsl	r3, #24
	lsl	r4, #19
	cmp	r3, r4
	bhi	.Lbf0b4
	ldrb	r3, [r7, #3]
	sub	r3, #0x24
	cmp	r3, #4
	bhi	.Lbf084
	ldr	r2, =.Lbf060
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbf060:
	.word	.Lbf074
	.word	.Lbf078
	.word	.Lbf07c
	.word	.Lbf080
	.word	.Lbf084
.Lbf074:
	mov	r5, #0x3f
	b	.Lbf086
.Lbf078:
	mov	r5, #0x1f
	b	.Lbf086
.Lbf07c:
	mov	r5, #0xf
	b	.Lbf086
.Lbf080:
	mov	r5, #7
	b	.Lbf086
.Lbf084:
	mov	r5, #3
.Lbf086:
	bl	_RPGRandom
	and	r0, r5
	cmp	r0, #0
	bne	.Lbf0f8
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	mov	r3, #1
	ldrsb	r3, [r2, r3]
	mov	r0, #0
	cmp	r0, r3
	bge	.Lbf0f8
	mov	r1, r2
	mov	r4, #2
	add	r2, #0x2c
.Lbf0a4:
	strb	r4, [r2]
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	add	r0, #1
	add	r2, #1
	cmp	r0, r3
	blt	.Lbf0a4
	b	.Lbf0f8
.Lbf0b4:
	mov	r2, r11
	cmp	r2, #0xb2
	bne	.Lbf0f8
	ldr	r5, [sp, #8]
	ldr	r3, [r5]
	ldrb	r3, [r3, #1]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lbf0f8
.Lbf0ca:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	ldr	r3, [r5]
	add	r3, #2
	ldrb	r1, [r3, r6]
	ldrb	r2, [r7, #2]
	ldrb	r3, [r7, #3]
	mov	r4, #0x64
	str	r4, [sp]
	bl	_Func_8079f10
	ldr	r1, [r5]
	mov	r2, r6
	add	r3, r1, #2
	add	r2, #0x38
	strb	r0, [r3, r2]
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	add	r6, #1
	cmp	r6, r3
	blt	.Lbf0ca
.Lbf0f8:
	ldr	r2, =0x206
	cmp	r11, r2
	bhi	.Lbf11e
	ldr	r3, [sp, #8]
	ldr	r2, =.Lc2da0
	ldr	r1, [r3]
	mov	r4, r11
	lsl	r3, r4, #2
	ldr	r2, [r2, r3]
	mov	r3, #0x1e
	ldrsb	r3, [r1, r3]
	str	r2, [r1, #0x58]
	cmp	r3, #1
	ble	.Lbf11e
	lsl	r3, #12
	ldr	r0, =0xfffff000
	add	r3, r2, r3
	add	r3, r0
	str	r3, [r1, #0x58]
.Lbf11e:
	ldr	r1, =0x205
	cmp	r11, r1
	bhi	.Lbf138
	ldr	r1, =.Lc2b98
	mov	r2, r11
	ldrb	r3, [r1, r2]
	cmp	r3, #0
	beq	.Lbf138
	ldr	r3, [sp, #8]
	mov	r4, r11
	ldr	r2, [r3]
	ldrb	r3, [r1, r4]
	b	.Lbf16c
.Lbf138:
	mov	r0, r11
	bl	Func_80bd3c8
	cmp	r0, #0
	beq	.Lbf14a
	ldr	r0, [sp, #8]
	ldr	r2, [r0]
	mov	r3, #3
	b	.Lbf16c
.Lbf14a:
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	ldr	r3, [r2, #0x58]
	cmp	r3, #0
	beq	.Lbf16a
	ldr	r4, [sp, #0xc]
	ldr	r0, =0x129
	ldr	r3, [r4]
	add	r3, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbf166
	mov	r3, #8
	b	.Lbf16c
.Lbf166:
	mov	r3, #3
	b	.Lbf16c
.Lbf16a:
	mov	r3, #1
.Lbf16c:
	str	r3, [r2, #0x54]
	ldrb	r0, [r7, #3]
	bl	_Func_8079ef8
	cmp	r0, #0
	beq	.Lbf186
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	mov	r1, #0x80
	ldr	r2, [r3, #0x58]
	lsl	r1, #9
	orr	r2, r1
	str	r2, [r3, #0x58]
.Lbf186:
	mov	r2, r11
	cmp	r2, #0xb2
	bne	.Lbf1a8
	ldr	r3, [sp, #8]
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x3a
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbf1a8
	ldr	r3, [r1, #0x58]
	mov	r2, #0x80
	lsl	r2, #5
	orr	r3, r2
	str	r3, [r1, #0x58]
.Lbf1a8:
	mov	r4, r10
	ldr	r3, [r4]
	mov	r0, #6
	ldrsh	r3, [r3, r0]
	cmp	r3, #2
	bne	.Lbf1c6
	ldr	r1, [sp, #8]
	ldr	r2, [r1]
	ldr	r3, [r2, #0x54]
	cmp	r3, #5
	beq	.Lbf1c6
	cmp	r3, #9
	beq	.Lbf1c6
	mov	r3, #4
	str	r3, [r2, #0x54]
.Lbf1c6:
	ldr	r2, [sp, #8]
	mov	r4, r10
	ldr	r3, [r2]
	ldr	r2, [r4]
	ldrh	r2, [r2, #6]
	add	r3, #0x48
	strh	r2, [r3]
.Lbf1d4:
	mov	r0, #0
.Lbf1d6:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80be378
