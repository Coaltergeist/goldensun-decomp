	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bae40  @ 0x080bae40
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x5c
	str	r0, [sp, #0x1c]
	ldr	r3, =iwram_3001e74
	mov	r0, #0
	mov	r7, r1
	ldr	r1, [r3]
	str	r0, [sp, #0x14]
	ldrb	r3, [r7]
	mov	r8, r0
	cmp	r3, #0
	bne	.Lbae66
	b	.Lbaf46
.Lbae66:
	mov	r2, #0
	cmp	r3, #2
	beq	.Lbae70
	cmp	r3, #4
	bne	.Lbae72
.Lbae70:
	mov	r2, #1
.Lbae72:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #7
	bls	.Lbae84
	cmp	r2, #0
	beq	.Lbae88
	b	.Lbaee8

	.pool_aligned

.Lbae84:
	cmp	r2, #0
	beq	.Lbaee8
.Lbae88:
	mov	r4, #0
	str	r4, [sp, #0x18]
	mov	r3, #0x58
	ldrsh	r3, [r1, r3]
	cmp	r3, #0xff
	beq	.Lbaf46
	mov	r0, r8
	lsl	r3, r0, #1
	add	r2, sp, #0x5c
	add	r3, r2
	mov	r4, r8
	mov	r0, r3
	lsl	r3, r4, #2
	add	r3, r2
	mov	r4, r3
	ldr	r5, =0x100
	add	r1, #0x58
	sub	r0, #0xc
	sub	r4, #0x24
.Lbaeae:
	mov	r6, #0
	ldrsh	r2, [r1, r6]
	cmp	r2, #0xfe
	beq	.Lbaed6
	ldrb	r3, [r7]
	cmp	r3, #4
	bne	.Lbaec8
	ldr	r3, [sp, #0x1c]
	cmp	r2, r3
	bne	.Lbaed6
	b	.Lbaec8

	.pool_aligned

.Lbaec8:
	stmia	r4!, {r2}
	ldr	r3, [sp, #0x18]
	mov	r6, #1
	orr	r3, r5
	strh	r3, [r0]
	add	r8, r6
	add	r0, #2
.Lbaed6:
	ldr	r2, [sp, #0x18]
	add	r2, #1
	str	r2, [sp, #0x18]
	add	r1, #2
	mov	r6, #0
	ldrsh	r3, [r1, r6]
	cmp	r3, #0xff
	bne	.Lbaeae
	b	.Lbaf46
.Lbaee8:
	mov	r0, #0
	str	r0, [sp, #0x18]
	add	r2, r1, #2
	mov	r3, #0x64
	ldrsh	r3, [r2, r3]
	mov	r12, r2
	cmp	r3, #0xff
	beq	.Lbaf46
	mov	r4, r8
	lsl	r3, r4, #1
	add	r6, sp, #0x5c
	add	r3, r6
	mov	r1, r3
	lsl	r3, r4, #2
	add	r3, r6
	mov	r4, r3
	ldr	r5, =0x180
	mov	r0, #0x64
	sub	r1, #0xc
	sub	r4, #0x24
.Lbaf10:
	ldrsh	r2, [r2, r0]
	cmp	r2, #0xfe
	beq	.Lbaf36
	ldrb	r3, [r7]
	cmp	r3, #4
	bne	.Lbaf28
	ldr	r6, [sp, #0x1c]
	cmp	r2, r6
	bne	.Lbaf36
	b	.Lbaf28

	.pool_aligned

.Lbaf28:
	stmia	r4!, {r2}
	ldr	r3, [sp, #0x18]
	mov	r2, #1
	orr	r3, r5
	strh	r3, [r1]
	add	r8, r2
	add	r1, #2
.Lbaf36:
	ldr	r3, [sp, #0x18]
	add	r3, #1
	str	r3, [sp, #0x18]
	add	r0, #2
	mov	r2, r12
	ldrsh	r3, [r2, r0]
	cmp	r3, #0xff
	bne	.Lbaf10
.Lbaf46:
	mov	r0, r8
	cmp	r0, #0
	bne	.Lbaf52
	mov	r0, #2
	neg	r0, r0
	b	.Lbb572
.Lbaf52:
	mov	r1, #0
	str	r1, [sp, #0x18]
	cmp	r1, r8
	blt	.Lbaf5c
	b	.Lbb3b6
.Lbaf5c:
	add	r2, sp, #0x38
	mov	r10, r2
.Lbaf60:
	ldr	r3, [sp, #0x18]
	mov	r4, r10
	lsl	r3, #2
	ldr	r0, [r4, r3]
	mov	r9, r3
	bl	_GetUnit
	mov	r5, r0
	ldrb	r0, [r7, #3]
	mov	r6, #0
	cmp	r0, #0x40
	bls	.Lbaf7a
	b	.Lbb142
.Lbaf7a:
	ldr	r2, =.Lbaf84
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbaf84:
	.word	.Lbb304
	.word	.Lbb304
	.word	.Lbb304
	.word	.Lbb132
	.word	.Lbb146
	.word	.Lbb2c8
	.word	.Lbb088
	.word	.Lbb088
	.word	.Lbb0ac
	.word	.Lbb0ac
	.word	.Lbb0c2
	.word	.Lbb0c2
	.word	.Lbb0dc
	.word	.Lbb0dc
	.word	.Lbb0fa
	.word	.Lbb0fa
	.word	.Lbb114
	.word	.Lbb114
	.word	.Lbb290
	.word	.Lbb29c
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb2ac
	.word	.Lbb2b2
	.word	.Lbb142
	.word	.Lbb2ba
	.word	.Lbb142
	.word	.Lbb28a
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb1ac
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb2c8
	.word	.Lbb2c8
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb142
	.word	.Lbb198
	.word	.Lbb198
	.word	.Lbb142
	.word	.Lbb222
.Lbb088:
	ldr	r1, =0x133
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #1
	cmp	r3, #4
	bgt	.Lbb09a
.Lbb098:
	mov	r6, #1
.Lbb09a:
	mov	r2, #0x99
	lsl	r2, #1
	add	r3, r5, r2
.Lbb0a0:
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lbb0a8
	b	.Lbb304
.Lbb0a8:
	add	r6, #1
	b	.Lbb304
.Lbb0ac:
	ldr	r4, =0x133
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r1, #4
	sub	r3, #1
	neg	r1, r1
	cmp	r3, r1
	blt	.Lbb09a
	b	.Lbb098
.Lbb0c2:
	ldr	r4, =0x135
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #1
	cmp	r3, #4
	bgt	.Lbb0d4
	mov	r6, #1
.Lbb0d4:
	mov	r1, #0x9a
	lsl	r1, #1
	add	r3, r5, r1
	b	.Lbb0a0
.Lbb0dc:
	ldr	r2, =0x135
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r4, #4
	sub	r3, #1
	neg	r4, r4
	cmp	r3, r4
	blt	.Lbb0f2
	mov	r6, #1
.Lbb0f2:
	mov	r1, #0x9a
	lsl	r1, #1
	add	r3, r5, r1
	b	.Lbb0a0
.Lbb0fa:
	ldr	r2, =0x137
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #1
	cmp	r3, #4
	bgt	.Lbb10c
	mov	r6, #1
.Lbb10c:
	mov	r4, #0x9b
	lsl	r4, #1
	add	r3, r5, r4
	b	.Lbb0a0
.Lbb114:
	ldr	r1, =0x137
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #4
	sub	r3, #1
	neg	r2, r2
	cmp	r3, r2
	blt	.Lbb12a
	mov	r6, #1
.Lbb12a:
	mov	r4, #0x9b
	lsl	r4, #1
	add	r3, r5, r4
	b	.Lbb0a0
.Lbb132:
	ldr	r1, =0x131
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.Lbb142
	b	.Lbb304
.Lbb142:
	mov	r6, #1
	b	.Lbb304
.Lbb146:
	mov	r2, #0x9c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb154
	mov	r6, #1
.Lbb154:
	ldr	r4, =0x139
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb160
	add	r6, #1
.Lbb160:
	mov	r1, #0x9d
	lsl	r1, #1
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb16e
	add	r6, #1
.Lbb16e:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb17c
	add	r6, #1
.Lbb17c:
	ldr	r4, =0x13d
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb188
	add	r6, #1
.Lbb188:
	ldr	r1, =0x141
	add	r3, r5, r1
	ldrb	r3, [r3]
.Lbb18e:
	cmp	r3, #0
	bne	.Lbb194
	b	.Lbb304
.Lbb194:
	add	r6, #1
	b	.Lbb304
.Lbb198:
	mov	r3, #0x38
	ldrsh	r2, [r5, r3]
	mov	r4, #0x34
	ldrsh	r3, [r5, r4]
	ldrh	r1, [r5, #0x38]
	cmp	r2, r3
	blt	.Lbb1a8
	b	.Lbb306
.Lbb1a8:
	mov	r6, #1
	b	.Lbb306
.Lbb1ac:
	ldr	r1, =0x133
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1bc
	mov	r6, #1
.Lbb1bc:
	ldr	r2, =0x135
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1cc
	add	r6, #1
.Lbb1cc:
	ldr	r4, =0x137
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1dc
	add	r6, #1
.Lbb1dc:
	mov	r1, #0x96
	lsl	r1, #1
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1ee
	add	r6, #1
.Lbb1ee:
	ldr	r2, =0x12d
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb1fe
	add	r6, #1
.Lbb1fe:
	mov	r4, #0x97
	lsl	r4, #1
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb210
	add	r6, #1
.Lbb210:
	ldr	r1, =0x12f
	add	r3, r5, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	ble	.Lbb304
	add	r6, #1
	b	.Lbb304
.Lbb222:
	mov	r2, #0x9c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb230
	mov	r6, #1
.Lbb230:
	ldr	r4, =0x139
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb23c
	add	r6, #1
.Lbb23c:
	mov	r1, #0x9d
	lsl	r1, #1
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb24a
	add	r6, #1
.Lbb24a:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb258
	add	r6, #1
.Lbb258:
	ldr	r4, =0x13d
	add	r3, r5, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb264
	add	r6, #1
.Lbb264:
	ldr	r1, =0x141
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb270
	add	r6, #1
.Lbb270:
	mov	r2, #0xa0
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbb27e
	add	r6, #1
.Lbb27e:
	ldr	r4, =0x131
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	b	.Lbb18e
.Lbb28a:
	ldr	r1, =0x141
	add	r3, r5, r1
	b	.Lbb2c0
.Lbb290:
	ldr	r2, =0x131
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	b	.Lbb2c2
.Lbb29c:
	ldr	r4, =0x131
	add	r3, r5, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	bgt	.Lbb304
	b	.Lbb142
.Lbb2ac:
	ldr	r1, =0x13b
	add	r3, r5, r1
	b	.Lbb2c0
.Lbb2b2:
	mov	r2, #0x9e
	lsl	r2, #1
	add	r3, r5, r2
	b	.Lbb2c0
.Lbb2ba:
	mov	r4, #0xa0
	lsl	r4, #1
	add	r3, r5, r4
.Lbb2c0:
	ldrb	r3, [r3]
.Lbb2c2:
	cmp	r3, #0
	bne	.Lbb304
	b	.Lbb142
.Lbb2c8:
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	ldrh	r1, [r5, #0x38]
	cmp	r3, #0
	bne	.Lbb316
	mov	r6, #0x64
	b	.Lbb306

	.pool_aligned

.Lbb304:
	ldrh	r1, [r5, #0x38]
.Lbb306:
	lsl	r3, r1, #16
	cmp	r3, #0
	bne	.Lbb316
	bl	_Func_8079ef8
	cmp	r0, #0
	bne	.Lbb316
	mov	r6, #0
.Lbb316:
	cmp	r6, #0
	bne	.Lbb38a
	ldrb	r2, [r7, #1]
	mov	r3, #0xf
	and	r3, r2
	sub	r3, #1
	cmp	r3, #9
	bhi	.Lbb386
	ldr	r2, =.Lbb330
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbb330:
	.word	.Lbb364
	.word	.Lbb376
	.word	.Lbb358
	.word	.Lbb358
	.word	.Lbb376
	.word	.Lbb376
	.word	.Lbb386
	.word	.Lbb376
	.word	.Lbb376
	.word	.Lbb35e
.Lbb358:
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	b	.Lbb380
.Lbb35e:
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	b	.Lbb380
.Lbb364:
	mov	r3, #0x38
	ldrsh	r2, [r5, r3]
	cmp	r2, #0
	beq	.Lbb386
	mov	r4, #0x34
	ldrsh	r3, [r5, r4]
	cmp	r2, r3
	bge	.Lbb386
	b	.Lbb384
.Lbb376:
	ldrh	r3, [r7, #0xa]
	cmp	r3, #0
	beq	.Lbb386
	mov	r0, #0x38
	ldrsh	r3, [r5, r0]
.Lbb380:
	cmp	r3, #0
	beq	.Lbb386
.Lbb384:
	add	r6, #1
.Lbb386:
	cmp	r6, #0
	beq	.Lbb3aa
.Lbb38a:
	ldr	r2, [sp, #0x14]
	mov	r4, r10
	mov	r6, r9
	ldr	r3, [r4, r6]
	lsl	r1, r2, #2
	str	r3, [r4, r1]
	ldr	r4, [sp, #0x18]
	add	r2, sp, #0x50
	lsl	r3, r4, #1
	ldrh	r3, [r2, r3]
	mov	r0, sp
	add	r0, #0x20
	str	r3, [r0, r1]
	ldr	r6, [sp, #0x14]
	add	r6, #1
	str	r6, [sp, #0x14]
.Lbb3aa:
	ldr	r0, [sp, #0x18]
	add	r0, #1
	str	r0, [sp, #0x18]
	cmp	r0, r8
	bge	.Lbb3b6
	b	.Lbaf60
.Lbb3b6:
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	bne	.Lbb3c2
	mov	r0, #1
	neg	r0, r0
	b	.Lbb572
.Lbb3c2:
	ldrb	r3, [r7]
	mov	r2, sp
	add	r2, #0x20
	str	r2, [sp, #0xc]
	cmp	r3, #1
	beq	.Lbb3d0
	b	.Lbb560
.Lbb3d0:
	ldrb	r3, [r7, #8]
	cmp	r3, #1
	beq	.Lbb3d8
	b	.Lbb54a
.Lbb3d8:
	ldr	r0, [sp, #0x1c]
	bl	_GetUnit
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	_GetEnemyInfo
	add	r0, #0x35
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	cmp	r3, #2
	bne	.Lbb3f6
	b	.Lbb552
.Lbb3f6:
	ldrb	r2, [r7, #1]
	mov	r3, #0xf
	and	r3, r2
	sub	r3, #3
	cmp	r3, #2
	bls	.Lbb404
	b	.Lbb55a
.Lbb404:
	ldr	r6, [sp, #0x14]
	mov	r1, #1
	mov	r4, #0
	neg	r1, r1
	str	r4, [sp, #0x18]
	cmp	r4, r6
	bge	.Lbb4d2
	mov	r0, sp
	add	r0, #0x20
	sub	r6, #1
	str	r0, [sp, #0xc]
	str	r6, [sp, #8]
.Lbb41c:
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	bge	.Lbb4c4
	mov	r4, sp
	lsl	r3, r2, #2
	add	r4, #0x38
	add	r6, r3, r4
	str	r4, [sp, #0x10]
	add	r0, r3, #4
	mov	r5, r3
	ldr	r4, [sp, #0x18]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #0xc]
	ldr	r7, [sp, #0x10]
	mov	r10, r0
	sub	r3, r4
	str	r6, [sp, #4]
	mov	r9, r2
	mov	r11, r3
	add	r7, r10
.Lbb446:
	ldr	r6, [sp, #0x10]
	ldr	r0, [r5, r6]
	str	r1, [sp]
	bl	_GetUnit
	mov	r8, r0
	ldr	r0, [r7]
	bl	_GetUnit
	mov	r6, r0
	ldr	r0, [sp, #0x1c]
	bl	_GetUnit
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r0, [r0]
	bl	_GetEnemyInfo
	add	r0, #0x35
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	ldr	r1, [sp]
	cmp	r3, #0
	bne	.Lbb484
	mov	r0, r8
	mov	r4, #0x38
	ldrsh	r3, [r0, r4]
	mov	r2, #0x38
	ldrsh	r0, [r6, r2]
	b	.Lbb48e
.Lbb484:
	mov	r0, r8
	mov	r4, #0x34
	ldrsh	r3, [r0, r4]
	mov	r2, #0x34
	ldrsh	r0, [r6, r2]
.Lbb48e:
	cmp	r3, r0
	bge	.Lbb4aa
	ldr	r3, [sp, #0x10]
	ldr	r4, [sp, #4]
	ldr	r2, [r5, r3]
	ldr	r3, [r7]
	str	r3, [r4]
	str	r2, [r7]
	mov	r6, r9
	mov	r0, r10
	ldr	r2, [r6, r5]
	ldr	r3, [r6, r0]
	str	r3, [r6, r5]
	str	r2, [r6, r0]
.Lbb4aa:
	mov	r4, #1
	ldr	r2, [sp, #4]
	neg	r4, r4
	add	r11, r4
	add	r2, #4
	mov	r3, #4
	mov	r6, r11
	str	r2, [sp, #4]
	add	r7, #4
	add	r10, r3
	add	r5, #4
	cmp	r6, #0
	bne	.Lbb446
.Lbb4c4:
	ldr	r0, [sp, #0x18]
	ldr	r2, [sp, #0x14]
	add	r0, #1
	str	r0, [sp, #0x18]
	cmp	r0, r2
	blt	.Lbb41c
	b	.Lbb4d8
.Lbb4d2:
	mov	r3, sp
	add	r3, #0x20
	str	r3, [sp, #0xc]
.Lbb4d8:
	ldr	r4, [sp, #0x14]
	cmp	r4, #2
	beq	.Lbb4f4
	cmp	r4, #2
	bgt	.Lbb4e8
	cmp	r4, #1
	beq	.Lbb52c
	b	.Lbb53e
.Lbb4e8:
	ldr	r6, [sp, #0x14]
	cmp	r6, #3
	beq	.Lbb508
	cmp	r6, #4
	beq	.Lbb51c
	b	.Lbb53e
.Lbb4f4:
	bl	Random
	mov	r3, #0xb
	mul	r3, r0
	lsr	r3, #16
	mov	r1, #0
	cmp	r3, #5
	bls	.Lbb53e
.Lbb504:
	mov	r1, #1
	b	.Lbb53e
.Lbb508:
	bl	Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsr	r1, r3, #16
	cmp	r1, #5
	ble	.Lbb52c
	cmp	r1, #0xa
	bgt	.Lbb538
	b	.Lbb504
.Lbb51c:
	bl	Random
	lsl	r3, r0, #3
	add	r3, r0
	lsl	r3, #1
	lsr	r1, r3, #16
	cmp	r1, #5
	bgt	.Lbb530
.Lbb52c:
	mov	r1, #0
	b	.Lbb53e
.Lbb530:
	cmp	r1, #0xa
	ble	.Lbb504
	cmp	r1, #0xe
	bgt	.Lbb53c
.Lbb538:
	mov	r1, #2
	b	.Lbb53e
.Lbb53c:
	mov	r1, #3
.Lbb53e:
	cmp	r1, #0
	blt	.Lbb560
	lsl	r3, r1, #2
	ldr	r1, [sp, #0xc]
	ldr	r0, [r1, r3]
	b	.Lbb572
.Lbb54a:
	mov	r2, sp
	add	r2, #0x20
	str	r2, [sp, #0xc]
	b	.Lbb560
.Lbb552:
	mov	r3, sp
	add	r3, #0x20
	str	r3, [sp, #0xc]
	b	.Lbb560
.Lbb55a:
	mov	r4, sp
	add	r4, #0x20
	str	r4, [sp, #0xc]
.Lbb560:
	bl	Random
	ldr	r6, [sp, #0x14]
	mov	r3, r6
	mul	r3, r0
	ldr	r1, [sp, #0xc]
	lsr	r3, #16
	lsl	r3, #2
	ldr	r0, [r1, r3]
.Lbb572:
	add	sp, #0x5c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bae40
