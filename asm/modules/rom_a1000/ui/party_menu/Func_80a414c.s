	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a414c  @ 0x080a414c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	sub	sp, #0x10
	mov	r10, r1
	mov	r1, #8
	ldr	r3, =iwram_3001f2c
	add	r1, sp
	mov	r11, r1
	mov	r2, #0
	ldr	r6, [r3]
	mov	r0, r11
	mov	r3, #1
	mov	r8, r2
	mov	r9, r3
	bl	Func_80a448c
	mov	r2, #0x88
	lsl	r2, #2
	add	r2, r6, r2
	str	r2, [sp, #4]
	ldrh	r3, [r2]
	mov	r7, #0
	cmp	r3, #1
	beq	.La41e0
	bl	Func_80a345c
	ldr	r0, [r6, #0x34]
	bl	_Func_8016498
	mov	r1, #0x86
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r5, [r3]
	bl	Func_80a4eb8
	mov	r0, r5
	bl	_Func_8016498
	mov	r3, #3
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #0x10
	mov	r0, r5
	mov	r1, #0
	bl	_Func_801e41c
	bl	Func_80a51d0
	mov	r1, r5
	mov	r0, r11
	bl	Func_80a45cc
	ldr	r0, [r6, #0x2c]
	bl	_Func_8016498
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	ldr	r3, =0x75
	ldr	r1, [r6, #0x2c]
	add	r0, r3
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La41e0:
	ldr	r1, [sp, #4]
	mov	r3, r10
	ldr	r2, =0x25d
	strh	r3, [r1]
	add	r3, r6, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	bne	.La4258
	mov	r1, r11
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4206
	mov	r2, #0
	mov	r7, #2
	mov	r8, r2
.La4206:
	mov	r1, r11
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4216
	mov	r2, #1
	mov	r7, #0
	mov	r8, r2
.La4216:
	mov	r1, r11
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4226
	mov	r2, #0
	mov	r7, #1
	mov	r8, r2
.La4226:
	mov	r1, r11
	mov	r3, #4
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La4236
	mov	r2, #1
	mov	r7, #1
	mov	r8, r2
.La4236:
	mov	r1, r11
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #1
	bne	.La427a
	mov	r2, #0
	mov	r7, #0
	mov	r8, r2
	b	.La427a
.La4248:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r3, #1
	neg	r3, r3
	ldr	r1, =0x25d
	mov	r10, r3
	b	.La43c0
.La4258:
	mov	r1, #3
	mov	r0, r5
	bl	__modsi3
	lsl	r0, #24
	asr	r7, r0, #24
	mov	r1, #3
	mov	r0, r5
	bl	__divsi3
	lsl	r0, #24
	asr	r0, #24
	mov	r8, r0
	lsl	r3, r0, #1
	add	r3, r8
	add	r3, r7
	mov	r10, r3
.La427a:
	mov	r1, r8
	mov	r0, r7
	bl	Func_80a4110
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_80a413c
	mov	r1, r0
	mov	r0, r5
	bl	Func_80a1ac0
	b	.La4436
.La4296:
	mov	r3, r9
	cmp	r3, #0
	beq	.La4330
	mov	r1, #0
	add	r0, r7, #3
	mov	r9, r1
	mov	r1, #3
	bl	__modsi3
	mov	r2, r8
	add	r2, #2
	lsr	r3, r2, #31
	add	r3, r2, r3
	asr	r3, #1
	lsl	r3, #1
	sub	r2, r3
	mov	r8, r2
	lsl	r3, r2, #1
	mov	r7, r0
	add	r3, r8
	add	r3, r7
	mov	r10, r3
	bl	Func_80a3c98
	mov	r2, r10
	cmp	r2, #2
	ble	.La42fc
	mov	r3, #0x97
	lsl	r3, #2
	add	r2, r6, r3
	ldr	r1, =0x21a
	mov	r3, #1
	strb	r3, [r2]
	add	r3, r6, r1
	ldrb	r3, [r3]
	sub	r1, #0xa6
	add	r2, r6, r1
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	mov	r2, r10
	cmp	r2, #3
	bne	.La4330
	mov	r1, #0xc8
	ldr	r0, =Func_80a3c08
	lsl	r1, #4
	bl	StartTask
	b	.La4330
.La42fc:
	mov	r3, r10
	cmp	r3, #0
	beq	.La4320
	mov	r1, #0x97
	lsl	r1, #2
	add	r3, r6, r1
	ldr	r2, =0x21a
	strb	r5, [r3]
	add	r3, r6, r2
	sub	r1, #0xe8
	ldrb	r3, [r3]
	add	r2, r6, r1
	ldrh	r1, [r2]
	mov	r0, r3
	mov	r2, #0
	bl	Func_80a3ef0
	b	.La4330
.La4320:
	ldr	r2, =0x21a
	add	r3, r6, r2
	ldrb	r1, [r3]
	ldr	r0, [r6, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_80a112c
.La4330:
	mov	r1, r8
	mov	r0, r7
	bl	Func_80a4110
	mov	r1, r8
	mov	r5, r0
	mov	r0, r7
	bl	Func_80a413c
	mov	r1, r0
	mov	r0, r5
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r5, =gKeyPress
	ldr	r2, [r5]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La43c8
	mov	r1, r11
	mov	r2, r10
	ldrsb	r3, [r1, r2]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.La4372
	mov	r0, #0x72
	bl	_PlaySound
	b	.La43c8
.La4372:
	mov	r2, r10
	cmp	r2, #5
	bhi	.La43b8
	lsl	r3, r2, #2
	ldr	r2, =.La4380
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La4380:
	.word	.La4398
	.word	.La43a0
	.word	.La43a8
	.word	.La43a8
	.word	.La43b0
	.word	.La43a8
.La4398:
	mov	r0, #0xae
	bl	_PlaySound
	b	.La43be
.La43a0:
	mov	r0, #0xaf
	bl	_PlaySound
	b	.La43be
.La43a8:
	mov	r0, #0x70
	bl	_PlaySound
	b	.La43be
.La43b0:
	mov	r0, #0x75
	bl	_PlaySound
	b	.La43be
.La43b8:
	mov	r0, #0x70
	bl	_PlaySound
.La43be:
	ldr	r1, =0x25d
.La43c0:
	mov	r2, r10
	add	r3, r6, r1
	strb	r2, [r3]
	b	.La4446
.La43c8:
	ldr	r2, [r5]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La43d4
	b	.La4248
.La43d4:
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.La43f0
	sub	r3, #0x41
	mov	r1, #1
	mov	r0, #0x6f
	add	r8, r3
	mov	r9, r1
	bl	_PlaySound
	b	.La4436
.La43f0:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.La4408
	mov	r2, #1
	mov	r0, #0x6f
	add	r8, r2
	mov	r9, r2
	bl	_PlaySound
	b	.La4436
.La4408:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La4420
	mov	r3, #1
	mov	r0, #0x6f
	add	r7, #1
	mov	r9, r3
	bl	_PlaySound
	b	.La4436
.La4420:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La4436
	mov	r1, #1
	mov	r0, #0x6f
	sub	r7, #1
	mov	r9, r1
	bl	_PlaySound
.La4436:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.La4446
	b	.La4296
.La4446:
	mov	r3, #0x97
	lsl	r3, #2
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	bl	Func_80a3c98
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a414c

