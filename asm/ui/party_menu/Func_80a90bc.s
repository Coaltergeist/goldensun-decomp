	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a90bc  @ 0x080a90bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x2c
	mov	r1, #0
	mov	r8, r3
	str	r1, [sp, #0xc]
	mov	r11, r1
	bl	LoadMoveRangeIcons
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r8
	ldr	r0, [r3]
	bl	_Func_8016498
	mov	r3, #5
	str	r3, [sp]
	mov	r0, r8
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x1e
	add	r0, #0x2c
	bl	Func_80a10d0
	ldr	r3, =0x242
	ldr	r1, .La9134	@ 0xfffffff0
	mov	r2, #3
	add	r3, r8
.La9106:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La9106
	mov	r1, r8
	mov	r0, #0xf5
	add	r1, #0x48
	mov	r2, #0x1f
.La9118:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.La9120
	strb	r0, [r3, #0xf]
.La9120:
	sub	r2, #1
	cmp	r2, #0
	bge	.La9118
	ldr	r0, =Func_80a19a0
	bl	StopTask
	mov	r3, #0x86
	lsl	r3, #1
	b	.La9144

	.align	2, 0
.La9134:
	.word	0xfffffff0
	.pool

.La9144:
	add	r3, r8
	ldr	r1, [r3]
	mov	r0, r8
	bl	Func_80a33d4
	mov	r6, #0x18
	ldr	r5, =0xb06
	mov	r2, r8
	neg	r6, r6
	ldr	r1, [r2, #0x24]
	mov	r0, r5
	mov	r2, #0x50
	mov	r3, r6
	bl	_Func_801e7c0
	add	r5, #2
	mov	r3, r8
	ldr	r1, [r3, #0x24]
	mov	r0, r5
	mov	r2, #0
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r1, =0x21a
	add	r1, r8
	mov	r9, r1
	b	.La92c0
.La917a:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #0xc]
	mov	r11, r2
	b	.La92c0
.La9188:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	mov	r3, #1
	mov	r11, r1
	mov	r1, #0xc8
	neg	r3, r3
	ldr	r0, =Func_80a19a0
	lsl	r1, #4
	str	r3, [sp, #0xc]
	bl	StartTask
	b	.La92c0
.La91a4:
	cmp	r4, #0
	beq	.La91d8
	mov	r2, r10
	mov	r4, #0
	cmp	r2, #0
	beq	.La91c2
	mov	r3, r8
	ldr	r0, [r3, #0x24]
	mov	r1, #0
	mov	r2, r6
	mov	r10, r4
	str	r4, [sp, #8]
	bl	Func_80a8f40
	ldr	r4, [sp, #8]
.La91c2:
	mov	r1, r8
	ldr	r0, [r1, #0x24]
	mov	r1, #0
	mov	r2, r6
	str	r4, [sp, #8]
	bl	Func_80a8d34
	mov	r0, #1
	bl	WaitFrames
	ldr	r4, [sp, #8]
.La91d8:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
	add	r3, sp, #0x18
	ldr	r1, [r6, #0x14]
	mov	r2, #5
	str	r3, [sp]
	mov	r0, #0
	add	r3, sp, #0x20
	bl	Func_80a1fd4
	mov	r2, r8
	ldr	r1, [r6, #0x10]
	ldr	r3, [r2, #0x14]
	mov	r7, #1
	lsl	r1, #4
	mov	r5, r0
	strb	r7, [r3, #5]
	add	r1, #0x3c
	mov	r0, #0x37
	bl	Func_80a1a40
	ldr	r4, [sp, #8]
	cmp	r5, #1
	bne	.La9212
	mov	r3, #1
	mov	r10, r3
	mov	r4, #1
.La9212:
	cmp	r5, #0
	bne	.La9218
	mov	r4, #1
.La9218:
	mov	r1, #1
	neg	r1, r1
	cmp	r5, r1
	bne	.La9222
	mov	r4, #0
.La9222:
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	and	r3, r7
	cmp	r3, #0
	bne	.La917a
	ldr	r2, [r2]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.La9188
	ldr	r5, =gKeyRepeat
	mov	r7, #0x80
	ldr	r3, [r5]
	lsl	r7, #1
	and	r3, r7
	cmp	r3, #0
	bne	.La9250
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La92ae
.La9250:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, r8
	mov	r0, #0x1c
	ldrsb	r0, [r2, r0]
	mov	r1, #0x82
	lsl	r1, #2
	lsl	r3, r0, #1
	add	r3, r1
	ldrh	r3, [r2, r3]
	mov	r2, #0x98
	lsl	r2, #2
	add	r3, r2
	ldr	r2, [r6, #0x18]
	mov	r1, r8
	strb	r2, [r1, r3]
	ldr	r3, [r5]
	and	r3, r7
	cmp	r3, #0
	beq	.La927e
	add	r0, #1
	b	.La9280
.La927e:
	sub	r0, #1
.La9280:
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r1, [r3]
	add	r0, r1
	bl	__modsi3
	mov	r3, #0x82
	lsl	r2, r0, #1
	lsl	r3, #2
	mov	r1, r8
	add	r2, r3
	ldrh	r3, [r1, r2]
	str	r3, [r1, #8]
	ldrh	r3, [r1, r2]
	mov	r1, r9
	strb	r3, [r1]
	mov	r3, r8
	strb	r0, [r3, #0x1c]
	mov	r0, r8
	ldrh	r1, [r3, r2]
	bl	Func_80a1804
	b	.La92c0
.La92ae:
	mov	r0, #0xa8
	lsl	r0, #1
	str	r4, [sp, #8]
	bl	_GetFlag
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.La92c0
	b	.La91a4
.La92c0:
	mov	r1, r11
	cmp	r1, #0
	bne	.La931c
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La931c
	bl	Func_80a9cbc
	mov	r2, r8
	ldr	r0, [r2, #0x24]
	bl	_Func_8016498
	mov	r3, r9
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0
	add	r1, r8
	bl	Func_80a68ec
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r8
	strb	r0, [r3]
	mov	r0, #1
	bl	WaitFrames
	add	r6, sp, #0x10
	mov	r1, #0
	mov	r0, r6
	bl	Func_80a8b8c
	mov	r1, r8
	mov	r2, r9
	ldr	r0, [r1, #0x24]
	ldrb	r1, [r2]
	bl	Func_80a9374
	mov	r4, #1
	mov	r10, r4
	b	.La92ae
.La931c:
	mov	r3, r8
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	mov	r1, r8
	ldr	r0, [r1, #0x2c]
	bl	_Func_8016498
	bl	Func_80a345c
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r8
	ldr	r0, [r3]
	bl	_Func_80164ac
	mov	r2, r8
	ldr	r0, [r2, #0x24]
	bl	_Func_8016498
	ldr	r0, [sp, #0xc]
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a90bc

